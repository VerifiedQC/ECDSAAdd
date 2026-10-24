import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep330
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

private def s2Step332CompleteMoves : List (Wire × Wire) := [(822,616)]

private def s2Step332EarlyControlLog : HmrEarlyControlLog := ⟨[822, 794, 779, 806, 829],[877],[827],[784, 800, 894, 896, 901, 903],[]⟩

private def s2Step332FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [806], [], []],[[829], [779], [794], [836]],[[], [], [], []]⟩,[786],[834],[877],[827],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[877, 827, 784, 800]⟩

private def s2Step332CompleteLog : HmrEarlyStepLog := ⟨s2Step332FrontLog,s2Step332CompleteMoves,s2Step332EarlyControlLog⟩

private def s2Step332ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩

private def s2Step332ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836],770⟩

private def s2Step332ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],769⟩

private def s2Step332ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817],771⟩

private def s2Step332FrontOut : WindowBank := ⟨s2Step332ExitFOut,s2Step332ExitGOut,s2Step332ExitFvOut,s2Step332ExitGvOut⟩

private def s2Step332CompleteOut : WindowBank := s2Step332FrontOut.repacked s2Step332CompleteMoves

private def s2Step332EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step332EarlyControlPositiveArena,[877],s2Step332EarlyControlEqualityArena,[827],⟨⟨786,false⟩,[⟨⟨877,false⟩,827⟩]⟩⟩

private def s2Step332EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,822⟩,⟨⟨774,false⟩,794⟩,⟨⟨775,false⟩,779⟩,⟨⟨776,false⟩,806⟩,⟨⟨777,false⟩,829⟩]⟩

private def s2Step332EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step332EarlyControlZeroArena,s2Step332EarlyControlZeroPlan,s2Step332EarlyControlClassPlan,s2Step332EarlyControlFlagArena,s2Step332EarlyControlFittedArena,s2Step332EarlyControlHistoryArena,s2Step332EarlyControlSigmaArena,s2Step332EarlyControlOutputArena,s2Step332EarlyControlLog⟩

private def s2Step332CounterWork : List Wire := [877, 827, 784, 800]

private theorem s2Step332Counter_bounded : s2Step332CounterWork.toFinset⊆arenaWires := by norm_num [s2Step332CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step332HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332CounterDuring : Arena := ⟨s2Step332HeadFvAfter.live∪s2Step332CounterWork.toFinset,Finset.union_subset s2Step332HeadFvAfter.bounded s2Step332Counter_bounded⟩

private def s2Step332EntryFFresh : List Wire := []

private def s2Step332EntryFvFresh : List Wire := []

private def s2Step332EntryGFresh : List Wire := [806]

private def s2Step332EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332EntryGvAfter : Arena := s2Step332EntryGAfter

private def s2Step332EntryGvFresh : List Wire := []

private def s2Step332ExitFExtra : List Wire := [616, 779]

private def s2Step332ExitGExtra : List Wire := [806, 829]

private def s2Step332ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<616) ∨ (617≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332ExitGvExtra : List Wire := [794]

private def s2Step332Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332Add0Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step332Add0_bounded : s2Step332Add0Work.toFinset⊆arenaWires := by
  have h : s2Step332Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step332Add0During : Arena := ⟨s2Step332Add0Arena.live∪s2Step332Add0Work.toFinset,Finset.union_subset s2Step332Add0Arena.bounded s2Step332Add0_bounded⟩

private def s2Step332Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332Add1Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step332Add1_bounded : s2Step332Add1Work.toFinset⊆arenaWires := by
  have h : s2Step332Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step332Add1During : Arena := ⟨s2Step332Add1Arena.live∪s2Step332Add1Work.toFinset,Finset.union_subset s2Step332Add1Arena.bounded s2Step332Add1_bounded⟩

private def s2Step332F4FlagArena : Arena := ⟨s2Step332HeadFvAfter.live∪{877},Finset.union_subset s2Step332HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step332F4Plan : HmrHybridF4Plan := ⟨s2Step332F4FlagArena,[877],s2Step332Add0Arena,[827],s2Step332Add0During,s2Step332Add0Work,s2Step332Add1During,s2Step332Add1Work⟩

private def s2Step332HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 779],768⟩

private def s2Step332HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836],770⟩

private def s2Step332HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 806, 829],769⟩

private def s2Step332HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 794],771⟩

private def s2Step332FrontHead : WindowBank := ⟨s2Step332HeadFOut,s2Step332HeadGOut,s2Step332HeadFvOut,s2Step332HeadGvOut⟩

private def s2Step332EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩

private def s2Step332EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩

private def s2Step332EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 806],769⟩

private def s2Step332EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817],771⟩

private def s2Step332FrontPair : WindowBank := ⟨s2Step332EntryFOut,s2Step332EntryGOut,s2Step332EntryFvOut,s2Step332EntryGvOut⟩

private def s2Step332FrontSigmaArena : Arena := ⟨s2Step332EntryGvAfter.live∪{786},Finset.union_subset s2Step332EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step332HeadFFresh : List Wire := [779]

private def s2Step332HeadFvFresh : List Wire := [836]

private def s2Step332HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332HeadGFresh : List Wire := [829]

private def s2Step332HeadGvFresh : List Wire := [794]

private def s2Step332FrontPlan : HmrSourceFront := ⟨s2Step332EntryGvAfter,s2Step332FrontPair,(growRow 768 s2Step332EntryFFresh ++ (growRow 769 s2Step332EntryGFresh ++ (growRow 770 s2Step332EntryFvFresh ++ (growRow 771 s2Step332EntryGvFresh ++ [])))),s2Step332FrontSigmaArena,[786],s2Step332HeadGBefore,[834],
  s2Step332HeadFvAfter,s2Step332FrontHead,(growRow 769 s2Step332HeadGFresh ++ (growRow 768 s2Step332HeadFFresh ++ (growRow 771 s2Step332HeadGvFresh ++ (growRow 770 s2Step332HeadFvFresh ++ [])))),s2Step332F4Plan,s2Step332CounterDuring,s2Step332CounterWork,s2Step332ExitGvAfter,s2Step332FrontOut,(shrinkRow 769 s2Step332ExitGExtra ++ (shrinkRow 768 s2Step332ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step332ExitGvExtra ++ []))))⟩

private def s2Step332CompletePlan : HmrEarlyStepPlan := ⟨s2Step332FrontPlan,s2Step332EarlyControlArena,s2Step332EarlyControlPlan,s2Step332CompleteMoves⟩

private theorem s2Step332Complete_apart : List.Disjoint (s2Step332CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [786, 834, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step332CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[786, 834, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step332Complete_owned : (s2Step332CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step332EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step332EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step332CompleteMoveArena : Arena := ⟨s2Step332ExitGvAfter.live∪{616},Finset.union_subset s2Step332ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step332Complete_repack : s2Step332ExitGvAfter.checkRepack s2Step332CompleteMoves=some s2Step332EarlyControlArena := by
  have owned : 822∈s2Step332ExitGvAfter.live := by norm_num [s2Step332ExitGvAfter,arenaWires]
  have reserve : s2Step332ExitGvAfter.reserve {616}=some s2Step332CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step332ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step332CompleteMoveArena.retireSet {822}=s2Step332EarlyControlArena := by
    unfold Arena.retireSet s2Step332EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step332CompleteMoveArena,s2Step332ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step332CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step332CompleteMoveArena.retireSet {822}).checkRepack []=some s2Step332EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step332EarlyControl_branchOwned : ([834] : List Wire).toFinset⊆s2Step332EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step332EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332EarlyControl_branch : compileHmrBranchRetirement s2Step332EarlyControlSigmaArena 834=some s2Step332EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step332EarlyControl_branchOwned
  · ext q
    simp [s2Step332EarlyControlOutputArena,s2Step332EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step332EarlyControl_classEqualityBorrow : s2Step332EarlyControlPositiveArena.checkBorrow (([786, 877] : List Wire).length-1) s2Step332EarlyControlLog.classWork=some s2Step332EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step332EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step332EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step332EarlyControlEqualityArena,s2Step332EarlyControlPositiveArena,s2Step332EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step332EarlyControl_classEqualityOwned : ([786, 877] : List Wire).toFinset⊆s2Step332EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step332EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332EarlyControl_classEquality : compileHmrEqualityLog s2Step332EarlyControlPositiveArena [786, 877] 0 s2Step332EarlyControlLog.classWork=some (s2Step332EarlyControlEqualityArena,s2Step332EarlyControlLog.classWork,s2Step332EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step332EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step332EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step332EarlyControl_classOwned : ([777, 829, 786] : List Wire).toFinset⊆s2Step332EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step332EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332EarlyControl_positiveBorrow : s2Step332EarlyControlZeroArena.checkBorrow (1) s2Step332EarlyControlLog.positiveWork=some s2Step332EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step332EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step332EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step332EarlyControlPositiveArena,s2Step332EarlyControlZeroArena,s2Step332EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step332EarlyControl_class : compileHmrSourceClassLog s2Step332EarlyControlZeroArena false 777 s2Step332EarlyControlZeroPlan.top 0 786 s2Step332EarlyControlLog.positiveWork s2Step332EarlyControlLog.classWork=some s2Step332EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step332EarlyControlClassPlan s2Step332EarlyControlZeroArena false 777 s2Step332EarlyControlZeroPlan.top 0 786
  constructor
  · decide +kernel
  · exact s2Step332EarlyControl_classOwned
  · exact s2Step332EarlyControl_positiveBorrow
  · exact s2Step332EarlyControl_classEquality

private theorem s2Step332EarlyControl_entryRecordOwned : ([834, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step332EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step332EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332EarlyControl_entrySigmaOwned : ([786, 254] : List Wire).toFinset⊆s2Step332EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step332EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332EarlyControl_fitBorrow : s2Step332EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step332EarlyControlLog.recordFresh=some s2Step332EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step332EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step332EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step332EarlyControlFittedArena,s2Step332EarlyControlFlagArena,s2Step332EarlyControlLog,arenaWires]

private theorem s2Step332EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step332EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step332EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332EarlyControl_fit : compileHmrRecordGrowLog s2Step332EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step332EarlyControlLog.recordFresh=some s2Step332EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step332EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step332EarlyControl_fitBorrow

private theorem s2Step332EarlyControl_flagsBorrow : s2Step332EarlyControlEqualityArena.checkBorrow (6) s2Step332EarlyControlLog.flagWork=some s2Step332EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step332EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step332EarlyControlEqualityArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step332EarlyControlFlagArena,s2Step332EarlyControlEqualityArena,s2Step332EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step332EarlyControl_flagsOwned : ([827, 253, 252, 251] : List Wire).toFinset⊆s2Step332EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step332EarlyControlEqualityArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332EarlyControl_flags : compileHmrFlagsLog s2Step332EarlyControlClassPlan.equalityArena s2Step332EarlyControlClassPlan.equality.top 253 252 251 s2Step332EarlyControlLog.flagWork=some s2Step332EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step332EarlyControl_flagsOwned⟩
  · exact s2Step332EarlyControl_flagsBorrow

private theorem s2Step332EarlyControl_historyBorrow : s2Step332EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step332EarlyControlLog.recordFresh=some s2Step332EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step332EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step332EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step332EarlyControlHistoryArena,s2Step332EarlyControlArena,s2Step332EarlyControlLog,arenaWires]

private theorem s2Step332EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step332EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step332EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332EarlyControl_history : compileHmrRecordGrowLog s2Step332EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step332EarlyControlLog.recordFresh=some s2Step332EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step332EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step332EarlyControl_historyBorrow

private theorem s2Step332EarlyControl_sigmaOwned : ([254, 786] : List Wire).toFinset⊆s2Step332EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step332EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332EarlyControl_sigmaReleaseOwned : ([786] : List Wire).toFinset⊆s2Step332EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step332EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332EarlyControl_sigmaRelease : s2Step332EarlyControlHistoryArena.release {786} (fun _ => false)=some s2Step332EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step332EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step332EarlyControlSigmaArena,s2Step332EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step332EarlyControl_sigma : compileHmrSigmaDropLog s2Step332EarlyControlHistoryArena false 0 0 254 786 []=some s2Step332EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step332EarlyControl_sigmaOwned⟩
  · exact s2Step332EarlyControl_sigmaRelease

private theorem s2Step332EarlyControl_zeroBorrow : s2Step332EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step332EarlyControlLog.zeroWork=some s2Step332EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step332EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step332EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step332EarlyControlZeroArena,s2Step332EarlyControlArena,s2Step332EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step332EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step332EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step332EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332EarlyControl_zero : compileHmrEqualityLog s2Step332EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step332EarlyControlLog.zeroWork=some (s2Step332EarlyControlZeroArena,s2Step332EarlyControlLog.zeroWork,s2Step332EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step332EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step332EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step332EarlyControl_logged : s2Step332EarlyControlPlan.Logged s2Step332EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 254 253 252 251 834 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step332EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step332EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step332EarlyControl_zero
  · exact s2Step332EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step332EarlyControl_flags
  · exact s2Step332EarlyControl_fit
  · exact s2Step332EarlyControl_history
  · exact s2Step332EarlyControl_sigma
  · exact s2Step332EarlyControl_branch

private theorem s2Step332EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step332EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 254 253 252 251 834 60 s2Step332EarlyControlLog=some s2Step332EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step332EarlyControlPlan s2Step332EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 254 253 252 251 834 60 s2Step332EarlyControl_logged

private def s2Step332EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩

private def s2Step332EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩

private def s2Step332EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],769⟩

private def s2Step332EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817],771⟩

private def s2Step332FrontBank : WindowBank := ⟨s2Step332EntryFRow,s2Step332EntryGRow,s2Step332EntryFvRow,s2Step332EntryGvRow⟩

private def s2Step332Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 779, 768]

private def s2Step332Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 806, 829, 769]

private def s2Step332Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 770]

private def s2Step332Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 794, 771]

private theorem s2Step332Counter_apart : Disjoint s2Step332HeadFvAfter.live s2Step332CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step332HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332Counter_borrowed : s2Step332HeadFvAfter.checkBorrow 4 s2Step332CounterWork=some s2Step332CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step332HeadFvAfter s2Step332CounterDuring s2Step332CounterWork.toFinset s2Step332Counter_bounded s2Step332Counter_apart rfl

private theorem s2Step332Counter_owned : (786::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step332HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step332HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332Counter_checked : compileHmrCounterStepLog s2Step332HeadFvAfter true 786 [772, 773, 774, 775, 776, 777] s2Step332CounterWork=some s2Step332CounterDuring := by
  have owned : ∀q∈786::[772, 773, 774, 775, 776, 777],q∈s2Step332HeadFvAfter.live := fun q hq => s2Step332Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step332Counter_borrowed

private def s2Step332EntryFAfter : Arena := s2Step332EntryFBefore

private theorem s2Step332EntryBank_incomingDistinct : ([s2Step332EntryFRow,s2Step332EntryGRow,s2Step332EntryFvRow,s2Step332EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332EntryF_Incoming : rowsOwned s2Step332EntryFBefore [s2Step332EntryFRow,s2Step332EntryGRow,s2Step332EntryFvRow,s2Step332EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step332EntryFRow,s2Step332EntryGRow,s2Step332EntryFvRow,s2Step332EntryGvRow] 0 s2Step332EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step332EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step332EntryBank_outgoingOwned : rowsOwned s2Step332EntryGvAfter [s2Step332EntryFOut,s2Step332EntryGOut,s2Step332EntryFvOut,s2Step332EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step332EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step332EntryF_Outgoing : rowsOwned s2Step332EntryGvAfter [s2Step332EntryFOut,s2Step332EntryGOut,s2Step332EntryFvOut,s2Step332EntryGvOut] :=
  hmrRows_owned_drop s2Step332EntryGvAfter [s2Step332EntryFOut,s2Step332EntryGOut,s2Step332EntryFvOut,s2Step332EntryGvOut] 0 s2Step332EntryBank_outgoingOwned

private theorem s2Step332EntryF_distinct : (s2Step332EntryFRow.sign::s2Step332EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332EntryF_owned : (s2Step332EntryFRow.sign::s2Step332EntryFRow.payload).toFinset⊆s2Step332EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step332EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332EntryF_reserved : s2Step332EntryFBefore.reserve s2Step332EntryFFresh.toFinset=some s2Step332EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step332EntryFFresh,arenaWires]
  · norm_num [s2Step332EntryFBefore,s2Step332EntryFFresh,arenaWires]
  · simp only [s2Step332EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step332EntryF_checked : planRowResizeLog s2Step332EntryFBefore s2Step332EntryFRow 105 s2Step332EntryFFresh=
    some (s2Step332EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩,growRow 768 s2Step332EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step332EntryFBefore s2Step332EntryFAfter s2Step332EntryFRow 105 s2Step332EntryFFresh
    s2Step332EntryF_distinct s2Step332EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step332EntryF_reserved
  have rowEq : WindowRow.mk (s2Step332EntryFRow.payload++s2Step332EntryFFresh) s2Step332EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step332EntryFvAfter : Arena := s2Step332EntryGAfter

private def s2Step332EntryFvBefore : Arena := s2Step332EntryGAfter

private theorem s2Step332EntryFv_Incoming : rowsOwned s2Step332EntryFvBefore [s2Step332EntryFvRow,s2Step332EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step332EntryFRow,s2Step332EntryGRow,s2Step332EntryFvRow,s2Step332EntryGvRow] 2 s2Step332EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step332EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step332EntryFv_Outgoing : rowsOwned s2Step332EntryGvAfter [s2Step332EntryFvOut,s2Step332EntryGvOut] :=
  hmrRows_owned_drop s2Step332EntryGvAfter [s2Step332EntryFOut,s2Step332EntryGOut,s2Step332EntryFvOut,s2Step332EntryGvOut] 2 s2Step332EntryBank_outgoingOwned

private theorem s2Step332EntryFv_distinct : (s2Step332EntryFvRow.sign::s2Step332EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332EntryFv_owned : (s2Step332EntryFvRow.sign::s2Step332EntryFvRow.payload).toFinset⊆s2Step332EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step332EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332EntryFv_reserved : s2Step332EntryFvBefore.reserve s2Step332EntryFvFresh.toFinset=some s2Step332EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step332EntryFvFresh,arenaWires]
  · norm_num [s2Step332EntryFvBefore,s2Step332EntryGAfter,s2Step332EntryFvFresh,arenaWires]
  · simp only [s2Step332EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step332EntryFv_checked : planRowResizeLog s2Step332EntryFvBefore s2Step332EntryFvRow 181 s2Step332EntryFvFresh=
    some (s2Step332EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩,growRow 770 s2Step332EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step332EntryFvBefore s2Step332EntryFvAfter s2Step332EntryFvRow 181 s2Step332EntryFvFresh
    s2Step332EntryFv_distinct s2Step332EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step332EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step332EntryFvRow.payload++s2Step332EntryFvFresh) s2Step332EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step332EntryGBefore : Arena := s2Step332EntryFBefore

private theorem s2Step332EntryG_Incoming : rowsOwned s2Step332EntryGBefore [s2Step332EntryGRow,s2Step332EntryFvRow,s2Step332EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step332EntryFRow,s2Step332EntryGRow,s2Step332EntryFvRow,s2Step332EntryGvRow] 1 s2Step332EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step332EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step332EntryG_Outgoing : rowsOwned s2Step332EntryGvAfter [s2Step332EntryGOut,s2Step332EntryFvOut,s2Step332EntryGvOut] :=
  hmrRows_owned_drop s2Step332EntryGvAfter [s2Step332EntryFOut,s2Step332EntryGOut,s2Step332EntryFvOut,s2Step332EntryGvOut] 1 s2Step332EntryBank_outgoingOwned

private theorem s2Step332EntryG_distinct : (s2Step332EntryGRow.sign::s2Step332EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332EntryG_owned : (s2Step332EntryGRow.sign::s2Step332EntryGRow.payload).toFinset⊆s2Step332EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step332EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332EntryG_reserved : s2Step332EntryGBefore.reserve s2Step332EntryGFresh.toFinset=some s2Step332EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step332EntryGFresh,arenaWires]
  · norm_num [s2Step332EntryGBefore,s2Step332EntryFBefore,s2Step332EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step332EntryGAfter,s2Step332EntryGBefore,s2Step332EntryFBefore,s2Step332EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step332EntryG_checked : planRowResizeLog s2Step332EntryGBefore s2Step332EntryGRow 105 s2Step332EntryGFresh=
    some (s2Step332EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 806],769⟩,growRow 769 s2Step332EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step332EntryGBefore s2Step332EntryGAfter s2Step332EntryGRow 105 s2Step332EntryGFresh
    s2Step332EntryG_distinct s2Step332EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step332EntryG_reserved
  have rowEq : WindowRow.mk (s2Step332EntryGRow.payload++s2Step332EntryGFresh) s2Step332EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 806],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step332EntryGvBefore : Arena := s2Step332EntryGAfter

private theorem s2Step332EntryGv_Incoming : rowsOwned s2Step332EntryGvBefore [s2Step332EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step332EntryFRow,s2Step332EntryGRow,s2Step332EntryFvRow,s2Step332EntryGvRow] 3 s2Step332EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step332EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step332EntryGv_Outgoing : rowsOwned s2Step332EntryGvAfter [s2Step332EntryGvOut] :=
  hmrRows_owned_drop s2Step332EntryGvAfter [s2Step332EntryFOut,s2Step332EntryGOut,s2Step332EntryFvOut,s2Step332EntryGvOut] 3 s2Step332EntryBank_outgoingOwned

private theorem s2Step332EntryGv_distinct : (s2Step332EntryGvRow.sign::s2Step332EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332EntryGv_owned : (s2Step332EntryGvRow.sign::s2Step332EntryGvRow.payload).toFinset⊆s2Step332EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step332EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332EntryGv_reserved : s2Step332EntryGvBefore.reserve s2Step332EntryGvFresh.toFinset=some s2Step332EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step332EntryGvFresh,arenaWires]
  · norm_num [s2Step332EntryGvBefore,s2Step332EntryGAfter,s2Step332EntryGvFresh,arenaWires]
  · simp only [s2Step332EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step332EntryGv_checked : planRowResizeLog s2Step332EntryGvBefore s2Step332EntryGvRow 181 s2Step332EntryGvFresh=
    some (s2Step332EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817],771⟩,growRow 771 s2Step332EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step332EntryGvBefore s2Step332EntryGvAfter s2Step332EntryGvRow 181 s2Step332EntryGvFresh
    s2Step332EntryGv_distinct s2Step332EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step332EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step332EntryGvRow.payload++s2Step332EntryGvFresh) s2Step332EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step332EntryBank_rows : planWindowRowsLog s2Step332EntryFBefore [(s2Step332EntryFRow,105),(s2Step332EntryGRow,105),(s2Step332EntryFvRow,181),(s2Step332EntryGvRow,181)] [s2Step332EntryFFresh,s2Step332EntryGFresh,s2Step332EntryFvFresh,s2Step332EntryGvFresh]=
    some (s2Step332EntryGvAfter,[s2Step332EntryFOut,s2Step332EntryGOut,s2Step332EntryFvOut,s2Step332EntryGvOut],(growRow 768 s2Step332EntryFFresh ++ (growRow 769 s2Step332EntryGFresh ++ (growRow 770 s2Step332EntryFvFresh ++ (growRow 771 s2Step332EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step332EntryGvAfter [] []=some (s2Step332EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step332EntryGvBefore s2Step332EntryGvAfter s2Step332EntryGvAfter
    s2Step332EntryGvRow s2Step332EntryGvOut 181 s2Step332EntryGvFresh [] [] []
    (growRow 771 s2Step332EntryGvFresh) ([]) s2Step332EntryGv_Incoming s2Step332EntryGv_checked h4 s2Step332EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step332EntryFvBefore s2Step332EntryFvAfter s2Step332EntryGvAfter
    s2Step332EntryFvRow s2Step332EntryFvOut 181 s2Step332EntryFvFresh [(s2Step332EntryGvRow,181)] [s2Step332EntryGvFresh] [s2Step332EntryGvOut]
    (growRow 770 s2Step332EntryFvFresh) ((growRow 771 s2Step332EntryGvFresh ++ [])) s2Step332EntryFv_Incoming s2Step332EntryFv_checked h3 s2Step332EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step332EntryGBefore s2Step332EntryGAfter s2Step332EntryGvAfter
    s2Step332EntryGRow s2Step332EntryGOut 105 s2Step332EntryGFresh [(s2Step332EntryFvRow,181),(s2Step332EntryGvRow,181)] [s2Step332EntryFvFresh,s2Step332EntryGvFresh] [s2Step332EntryFvOut,s2Step332EntryGvOut]
    (growRow 769 s2Step332EntryGFresh) ((growRow 770 s2Step332EntryFvFresh ++ (growRow 771 s2Step332EntryGvFresh ++ []))) s2Step332EntryG_Incoming s2Step332EntryG_checked h2 s2Step332EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step332EntryFBefore s2Step332EntryFAfter s2Step332EntryGvAfter
    s2Step332EntryFRow s2Step332EntryFOut 105 s2Step332EntryFFresh [(s2Step332EntryGRow,105),(s2Step332EntryFvRow,181),(s2Step332EntryGvRow,181)] [s2Step332EntryGFresh,s2Step332EntryFvFresh,s2Step332EntryGvFresh] [s2Step332EntryGOut,s2Step332EntryFvOut,s2Step332EntryGvOut]
    (growRow 768 s2Step332EntryFFresh) ((growRow 769 s2Step332EntryGFresh ++ (growRow 770 s2Step332EntryFvFresh ++ (growRow 771 s2Step332EntryGvFresh ++ [])))) s2Step332EntryF_Incoming s2Step332EntryF_checked h1 s2Step332EntryF_Outgoing
  exact h0

private theorem s2Step332EntryBank_checked : compileHmrBankResizeLog .entry s2Step332EntryFBefore ⟨s2Step332EntryFRow,s2Step332EntryGRow,s2Step332EntryFvRow,s2Step332EntryGvRow⟩ ⟨105,105,181,181⟩ [s2Step332EntryFFresh,s2Step332EntryGFresh,s2Step332EntryFvFresh,s2Step332EntryGvFresh]=
    some (s2Step332EntryGvAfter,⟨s2Step332EntryFOut,s2Step332EntryGOut,s2Step332EntryFvOut,s2Step332EntryGvOut⟩,(growRow 768 s2Step332EntryFFresh ++ (growRow 769 s2Step332EntryGFresh ++ (growRow 770 s2Step332EntryFvFresh ++ (growRow 771 s2Step332EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step332EntryBank_rows]
  rfl

private def s2Step332ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<616) ∨ (617≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332ExitFBefore : Arena := s2Step332ExitGAfter

private def s2Step332ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 779],768⟩

private def s2Step332ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836],770⟩

private def s2Step332ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 806, 829],769⟩

private def s2Step332ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 794],771⟩

private theorem s2Step332ExitBank_incomingDistinct : ([s2Step332ExitGRow,s2Step332ExitFRow,s2Step332ExitFvRow,s2Step332ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332ExitF_Incoming : rowsOwned s2Step332ExitFBefore [s2Step332ExitFRow,s2Step332ExitFvRow,s2Step332ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step332ExitGRow,s2Step332ExitFRow,s2Step332ExitFvRow,s2Step332ExitGvRow] 1 s2Step332ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step332ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step332ExitBank_outgoingOwned : rowsOwned s2Step332ExitGvAfter [s2Step332ExitGOut,s2Step332ExitFOut,s2Step332ExitFvOut,s2Step332ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step332ExitGvAfter (fun q => (0≤q ∧ q<616) ∨ (617≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step332ExitF_Outgoing : rowsOwned s2Step332ExitGvAfter [s2Step332ExitFOut,s2Step332ExitFvOut,s2Step332ExitGvOut] :=
  hmrRows_owned_drop s2Step332ExitGvAfter [s2Step332ExitGOut,s2Step332ExitFOut,s2Step332ExitFvOut,s2Step332ExitGvOut] 1 s2Step332ExitBank_outgoingOwned

private theorem s2Step332ExitF_distinct : (s2Step332ExitFRow.sign::s2Step332ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332ExitF_owned : (s2Step332ExitFRow.sign::s2Step332ExitFRow.payload).toFinset⊆s2Step332ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step332ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332ExitF_retired : s2Step332ExitFBefore.retireSet s2Step332ExitFExtra.toFinset=s2Step332ExitFAfter := by
  unfold Arena.retireSet s2Step332ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step332ExitFBefore,s2Step332ExitGAfter,s2Step332ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step332ExitF_checked : planRowResizeLog s2Step332ExitFBefore s2Step332ExitFRow 104 []=
    some (s2Step332ExitFAfter,s2Step332ExitFOut,shrinkRow 768 s2Step332ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step332ExitFBefore s2Step332ExitFRow 104 s2Step332ExitF_distinct s2Step332ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step332ExitFRow.payload.take 104) s2Step332ExitFRow.sign=s2Step332ExitFOut := by decide +kernel
  have hi : s2Step332ExitFRow.payload.drop 104=s2Step332ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step332ExitF_retired] at result
  exact result

private def s2Step332ExitFvAfter : Arena := s2Step332ExitFAfter

private def s2Step332ExitFvBefore : Arena := s2Step332ExitFAfter

private theorem s2Step332ExitFv_Incoming : rowsOwned s2Step332ExitFvBefore [s2Step332ExitFvRow,s2Step332ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step332ExitGRow,s2Step332ExitFRow,s2Step332ExitFvRow,s2Step332ExitGvRow] 2 s2Step332ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step332ExitFvBefore (fun q => (0≤q ∧ q<616) ∨ (617≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step332ExitFv_Outgoing : rowsOwned s2Step332ExitGvAfter [s2Step332ExitFvOut,s2Step332ExitGvOut] :=
  hmrRows_owned_drop s2Step332ExitGvAfter [s2Step332ExitGOut,s2Step332ExitFOut,s2Step332ExitFvOut,s2Step332ExitGvOut] 2 s2Step332ExitBank_outgoingOwned

private theorem s2Step332ExitFv_distinct : (s2Step332ExitFvRow.sign::s2Step332ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332ExitFv_owned : (s2Step332ExitFvRow.sign::s2Step332ExitFvRow.payload).toFinset⊆s2Step332ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step332ExitFvBefore (fun q => (0≤q ∧ q<616) ∨ (617≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332ExitFv_reserved : s2Step332ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step332ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step332ExitFv_checked : planRowResizeLog s2Step332ExitFvBefore s2Step332ExitFvRow 182 []=
    some (s2Step332ExitFvAfter,s2Step332ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step332ExitFvBefore s2Step332ExitFvAfter s2Step332ExitFvRow 182 []
    s2Step332ExitFv_distinct s2Step332ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step332ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step332ExitFvRow.payload++[]) s2Step332ExitFvRow.sign=s2Step332ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step332ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step332ExitG_Incoming : rowsOwned s2Step332ExitGBefore [s2Step332ExitGRow,s2Step332ExitFRow,s2Step332ExitFvRow,s2Step332ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step332ExitGRow,s2Step332ExitFRow,s2Step332ExitFvRow,s2Step332ExitGvRow] 0 s2Step332ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step332ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step332ExitG_Outgoing : rowsOwned s2Step332ExitGvAfter [s2Step332ExitGOut,s2Step332ExitFOut,s2Step332ExitFvOut,s2Step332ExitGvOut] :=
  hmrRows_owned_drop s2Step332ExitGvAfter [s2Step332ExitGOut,s2Step332ExitFOut,s2Step332ExitFvOut,s2Step332ExitGvOut] 0 s2Step332ExitBank_outgoingOwned

private theorem s2Step332ExitG_distinct : (s2Step332ExitGRow.sign::s2Step332ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332ExitG_owned : (s2Step332ExitGRow.sign::s2Step332ExitGRow.payload).toFinset⊆s2Step332ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step332ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332ExitG_retired : s2Step332ExitGBefore.retireSet s2Step332ExitGExtra.toFinset=s2Step332ExitGAfter := by
  unfold Arena.retireSet s2Step332ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step332ExitGBefore,s2Step332ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step332ExitG_checked : planRowResizeLog s2Step332ExitGBefore s2Step332ExitGRow 104 []=
    some (s2Step332ExitGAfter,s2Step332ExitGOut,shrinkRow 769 s2Step332ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step332ExitGBefore s2Step332ExitGRow 104 s2Step332ExitG_distinct s2Step332ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step332ExitGRow.payload.take 104) s2Step332ExitGRow.sign=s2Step332ExitGOut := by decide +kernel
  have hi : s2Step332ExitGRow.payload.drop 104=s2Step332ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step332ExitG_retired] at result
  exact result

private def s2Step332ExitGvBefore : Arena := s2Step332ExitFAfter

private theorem s2Step332ExitGv_Incoming : rowsOwned s2Step332ExitGvBefore [s2Step332ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step332ExitGRow,s2Step332ExitFRow,s2Step332ExitFvRow,s2Step332ExitGvRow] 3 s2Step332ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step332ExitGvBefore (fun q => (0≤q ∧ q<616) ∨ (617≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step332ExitGv_Outgoing : rowsOwned s2Step332ExitGvAfter [s2Step332ExitGvOut] :=
  hmrRows_owned_drop s2Step332ExitGvAfter [s2Step332ExitGOut,s2Step332ExitFOut,s2Step332ExitFvOut,s2Step332ExitGvOut] 3 s2Step332ExitBank_outgoingOwned

private theorem s2Step332ExitGv_distinct : (s2Step332ExitGvRow.sign::s2Step332ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332ExitGv_owned : (s2Step332ExitGvRow.sign::s2Step332ExitGvRow.payload).toFinset⊆s2Step332ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step332ExitGvBefore (fun q => (0≤q ∧ q<616) ∨ (617≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332ExitGv_retired : s2Step332ExitGvBefore.retireSet s2Step332ExitGvExtra.toFinset=s2Step332ExitGvAfter := by
  unfold Arena.retireSet s2Step332ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step332ExitGvBefore,s2Step332ExitFAfter,s2Step332ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step332ExitGv_checked : planRowResizeLog s2Step332ExitGvBefore s2Step332ExitGvRow 181 []=
    some (s2Step332ExitGvAfter,s2Step332ExitGvOut,shrinkRow 771 s2Step332ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step332ExitGvBefore s2Step332ExitGvRow 181 s2Step332ExitGv_distinct s2Step332ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step332ExitGvRow.payload.take 181) s2Step332ExitGvRow.sign=s2Step332ExitGvOut := by decide +kernel
  have hi : s2Step332ExitGvRow.payload.drop 181=s2Step332ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step332ExitGv_retired] at result
  exact result

private theorem s2Step332ExitBank_rows : planWindowRowsLog s2Step332ExitGBefore [(s2Step332ExitGRow,104),(s2Step332ExitFRow,104),(s2Step332ExitFvRow,182),(s2Step332ExitGvRow,181)] [[],[],[],[]]=
    some (s2Step332ExitGvAfter,[s2Step332ExitGOut,s2Step332ExitFOut,s2Step332ExitFvOut,s2Step332ExitGvOut],(shrinkRow 769 s2Step332ExitGExtra ++ (shrinkRow 768 s2Step332ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step332ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step332ExitGvAfter [] []=some (s2Step332ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step332ExitGvBefore s2Step332ExitGvAfter s2Step332ExitGvAfter
    s2Step332ExitGvRow s2Step332ExitGvOut 181 [] [] [] []
    (shrinkRow 771 s2Step332ExitGvExtra) ([]) s2Step332ExitGv_Incoming s2Step332ExitGv_checked h4 s2Step332ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step332ExitFvBefore s2Step332ExitFvAfter s2Step332ExitGvAfter
    s2Step332ExitFvRow s2Step332ExitFvOut 182 [] [(s2Step332ExitGvRow,181)] [[]] [s2Step332ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step332ExitGvExtra ++ [])) s2Step332ExitFv_Incoming s2Step332ExitFv_checked h3 s2Step332ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step332ExitFBefore s2Step332ExitFAfter s2Step332ExitGvAfter
    s2Step332ExitFRow s2Step332ExitFOut 104 [] [(s2Step332ExitFvRow,182),(s2Step332ExitGvRow,181)] [[],[]] [s2Step332ExitFvOut,s2Step332ExitGvOut]
    (shrinkRow 768 s2Step332ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step332ExitGvExtra ++ []))) s2Step332ExitF_Incoming s2Step332ExitF_checked h2 s2Step332ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step332ExitGBefore s2Step332ExitGAfter s2Step332ExitGvAfter
    s2Step332ExitGRow s2Step332ExitGOut 104 [] [(s2Step332ExitFRow,104),(s2Step332ExitFvRow,182),(s2Step332ExitGvRow,181)] [[],[],[]] [s2Step332ExitFOut,s2Step332ExitFvOut,s2Step332ExitGvOut]
    (shrinkRow 769 s2Step332ExitGExtra) ((shrinkRow 768 s2Step332ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step332ExitGvExtra ++ [])))) s2Step332ExitG_Incoming s2Step332ExitG_checked h1 s2Step332ExitG_Outgoing
  exact h0

private theorem s2Step332ExitBank_checked : compileHmrBankResizeLog .exit s2Step332ExitGBefore ⟨s2Step332ExitFRow,s2Step332ExitGRow,s2Step332ExitFvRow,s2Step332ExitGvRow⟩ ⟨104,104,182,181⟩ [[],[],[],[]]=
    some (s2Step332ExitGvAfter,⟨s2Step332ExitFOut,s2Step332ExitGOut,s2Step332ExitFvOut,s2Step332ExitGvOut⟩,(shrinkRow 769 s2Step332ExitGExtra ++ (shrinkRow 768 s2Step332ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step332ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step332ExitBank_rows]
  rfl

private theorem s2Step332Add0_apart : Disjoint s2Step332Add0Arena.live s2Step332Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step332Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332Add0_card : s2Step332Add0Arena.live.card=906 := by
  decide +kernel

private theorem s2Step332Add0_borrowed : s2Step332Add0Arena.checkBorrow (hmrHybridCount s2Step332Add0Arena s2Step332Add0B.length) s2Step332Add0Work=some s2Step332Add0During := by
  have len : s2Step332Add0Work.length=hmrHybridCount s2Step332Add0Arena s2Step332Add0B.length := by
    rw [hmrHybridCount,s2Step332Add0_card]
    decide +kernel
  have nd : s2Step332Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step332Add0Arena s2Step332Add0During s2Step332Add0Work.toFinset s2Step332Add0_bounded s2Step332Add0_apart rfl

private theorem s2Step332Add0_distinct : (877::834::827::(s2Step332Add0A++s2Step332Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332Add0_owned : (877::834::827::(s2Step332Add0A++s2Step332Add0B)).toFinset⊆s2Step332Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step332Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332Add0_checked : compileHmrHybridCinLog s2Step332Add0Arena 834 877 827 s2Step332Add0A s2Step332Add0B s2Step332Add0Work=some s2Step332Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step332Add0Arena s2Step332Add0During 834 877 827 s2Step332Add0A s2Step332Add0B s2Step332Add0Work
    (by decide +kernel) (by decide +kernel) s2Step332Add0_distinct
    (fun q hq => s2Step332Add0_owned (List.mem_toFinset.mpr hq)) s2Step332Add0_borrowed

private theorem s2Step332Add1_apart : Disjoint s2Step332Add1Arena.live s2Step332Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step332Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332Add1_card : s2Step332Add1Arena.live.card=906 := by
  decide +kernel

private theorem s2Step332Add1_borrowed : s2Step332Add1Arena.checkBorrow (hmrHybridCount s2Step332Add1Arena s2Step332Add1B.length) s2Step332Add1Work=some s2Step332Add1During := by
  have len : s2Step332Add1Work.length=hmrHybridCount s2Step332Add1Arena s2Step332Add1B.length := by
    rw [hmrHybridCount,s2Step332Add1_card]
    decide +kernel
  have nd : s2Step332Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step332Add1Arena s2Step332Add1During s2Step332Add1Work.toFinset s2Step332Add1_bounded s2Step332Add1_apart rfl

private theorem s2Step332Add1_distinct : (877::834::827::(s2Step332Add1A++s2Step332Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332Add1_owned : (877::834::827::(s2Step332Add1A++s2Step332Add1B)).toFinset⊆s2Step332Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step332Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332Add1_checked : compileHmrHybridCinLog s2Step332Add1Arena 834 877 827 s2Step332Add1A s2Step332Add1B s2Step332Add1Work=some s2Step332Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step332Add1Arena s2Step332Add1During 834 877 827 s2Step332Add1A s2Step332Add1B s2Step332Add1Work
    (by decide +kernel) (by decide +kernel) s2Step332Add1_distinct
    (fun q hq => s2Step332Add1_owned (List.mem_toFinset.mpr hq)) s2Step332Add1_borrowed

private theorem s2Step332F4_apart : Disjoint (s2Step332Add0A++s2Step332Add0B).toFinset (s2Step332Add1A++s2Step332Add1B).toFinset := by
  have nd : ((s2Step332Add0A++s2Step332Add0B)++(s2Step332Add1A++s2Step332Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step332F4_carry : s2Step332F4FlagArena.checkBorrow 1 [827]=some s2Step332Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step332F4FlagArena,s2Step332HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step332F4FlagArena,s2Step332HeadFvAfter,s2Step332Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step332F4_distinct : (786::834::877::827::((s2Step332Add0A++s2Step332Add1A)++(s2Step332Add0B++s2Step332Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332F4_flag : s2Step332HeadFvAfter.checkBorrow 1 [877]=some s2Step332F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step332HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step332F4_owned : (786::834::((s2Step332Add0A++s2Step332Add1A)++(s2Step332Add0B++s2Step332Add1B))).toFinset⊆s2Step332HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step332HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332F4_checked : compileHmrHybridF4Log s2Step332HeadFvAfter 786 834 s2Step332Add0A s2Step332Add0B s2Step332Add1A s2Step332Add1B [877] [827] s2Step332Add0Work s2Step332Add1Work=some s2Step332F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step332HeadFvAfter s2Step332F4FlagArena s2Step332Add0Arena s2Step332Add0During s2Step332Add1During 786 834
    s2Step332Add0A s2Step332Add0B s2Step332Add1A s2Step332Add1B [877] [827] s2Step332Add0Work s2Step332Add1Work
    (fun q hq => s2Step332F4_owned (List.mem_toFinset.mpr hq)) s2Step332F4_flag s2Step332F4_carry
    s2Step332F4_distinct s2Step332F4_apart s2Step332Add0_checked s2Step332Add1_checked

private theorem s2Step332Front_branch : s2Step332FrontSigmaArena.checkBorrow 1 [834]=some s2Step332HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step332FrontSigmaArena,s2Step332EntryGvAfter,s2Step332EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step332FrontSigmaArena,s2Step332EntryGvAfter,s2Step332EntryGAfter,s2Step332HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step332Front_entry : HmrFrontEntryValid s2Step332EntryFBefore s2Step332FrontBank 105 181 ⟨104,104,182,181⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step332FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step332EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step332EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step332FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step332Front_sigma : s2Step332EntryGvAfter.checkBorrow 1 [786]=some s2Step332FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step332EntryGvAfter,s2Step332EntryGAfter,arenaWires]
  · rfl

private def s2Step332HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332HeadFBefore : Arena := s2Step332HeadGAfter

private def s2Step332HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616],768⟩

private def s2Step332HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782],770⟩

private def s2Step332HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 806],769⟩

private def s2Step332HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817],771⟩

private theorem s2Step332HeadBank_incomingDistinct : ([s2Step332HeadGRow,s2Step332HeadFRow,s2Step332HeadGvRow,s2Step332HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332HeadF_Incoming : rowsOwned s2Step332HeadFBefore [s2Step332HeadFRow,s2Step332HeadGvRow,s2Step332HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step332HeadGRow,s2Step332HeadFRow,s2Step332HeadGvRow,s2Step332HeadFvRow] 1 s2Step332HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step332HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step332HeadBank_outgoingOwned : rowsOwned s2Step332HeadFvAfter [s2Step332HeadGOut,s2Step332HeadFOut,s2Step332HeadGvOut,s2Step332HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step332HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step332HeadF_Outgoing : rowsOwned s2Step332HeadFvAfter [s2Step332HeadFOut,s2Step332HeadGvOut,s2Step332HeadFvOut] :=
  hmrRows_owned_drop s2Step332HeadFvAfter [s2Step332HeadGOut,s2Step332HeadFOut,s2Step332HeadGvOut,s2Step332HeadFvOut] 1 s2Step332HeadBank_outgoingOwned

private theorem s2Step332HeadF_distinct : (s2Step332HeadFRow.sign::s2Step332HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332HeadF_owned : (s2Step332HeadFRow.sign::s2Step332HeadFRow.payload).toFinset⊆s2Step332HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step332HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332HeadF_reserved : s2Step332HeadFBefore.reserve s2Step332HeadFFresh.toFinset=some s2Step332HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step332HeadFFresh,arenaWires]
  · norm_num [s2Step332HeadFBefore,s2Step332HeadGAfter,s2Step332HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step332HeadFAfter,s2Step332HeadFBefore,s2Step332HeadGAfter,s2Step332HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step332HeadF_checked : planRowResizeLog s2Step332HeadFBefore s2Step332HeadFRow 106 s2Step332HeadFFresh=
    some (s2Step332HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 779],768⟩,growRow 768 s2Step332HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step332HeadFBefore s2Step332HeadFAfter s2Step332HeadFRow 106 s2Step332HeadFFresh
    s2Step332HeadF_distinct s2Step332HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step332HeadF_reserved
  have rowEq : WindowRow.mk (s2Step332HeadFRow.payload++s2Step332HeadFFresh) s2Step332HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 779],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step332HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step332HeadFvBefore : Arena := s2Step332HeadGvAfter

private theorem s2Step332HeadFv_Incoming : rowsOwned s2Step332HeadFvBefore [s2Step332HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step332HeadGRow,s2Step332HeadFRow,s2Step332HeadGvRow,s2Step332HeadFvRow] 3 s2Step332HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step332HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step332HeadFv_Outgoing : rowsOwned s2Step332HeadFvAfter [s2Step332HeadFvOut] :=
  hmrRows_owned_drop s2Step332HeadFvAfter [s2Step332HeadGOut,s2Step332HeadFOut,s2Step332HeadGvOut,s2Step332HeadFvOut] 3 s2Step332HeadBank_outgoingOwned

private theorem s2Step332HeadFv_distinct : (s2Step332HeadFvRow.sign::s2Step332HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332HeadFv_owned : (s2Step332HeadFvRow.sign::s2Step332HeadFvRow.payload).toFinset⊆s2Step332HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step332HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332HeadFv_reserved : s2Step332HeadFvBefore.reserve s2Step332HeadFvFresh.toFinset=some s2Step332HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step332HeadFvFresh,arenaWires]
  · norm_num [s2Step332HeadFvBefore,s2Step332HeadGvAfter,s2Step332HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step332HeadFvAfter,s2Step332HeadFvBefore,s2Step332HeadGvAfter,s2Step332HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step332HeadFv_checked : planRowResizeLog s2Step332HeadFvBefore s2Step332HeadFvRow 182 s2Step332HeadFvFresh=
    some (s2Step332HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836],770⟩,growRow 770 s2Step332HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step332HeadFvBefore s2Step332HeadFvAfter s2Step332HeadFvRow 182 s2Step332HeadFvFresh
    s2Step332HeadFv_distinct s2Step332HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step332HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step332HeadFvRow.payload++s2Step332HeadFvFresh) s2Step332HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step332HeadG_Incoming : rowsOwned s2Step332HeadGBefore [s2Step332HeadGRow,s2Step332HeadFRow,s2Step332HeadGvRow,s2Step332HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step332HeadGRow,s2Step332HeadFRow,s2Step332HeadGvRow,s2Step332HeadFvRow] 0 s2Step332HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step332HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step332HeadG_Outgoing : rowsOwned s2Step332HeadFvAfter [s2Step332HeadGOut,s2Step332HeadFOut,s2Step332HeadGvOut,s2Step332HeadFvOut] :=
  hmrRows_owned_drop s2Step332HeadFvAfter [s2Step332HeadGOut,s2Step332HeadFOut,s2Step332HeadGvOut,s2Step332HeadFvOut] 0 s2Step332HeadBank_outgoingOwned

private theorem s2Step332HeadG_distinct : (s2Step332HeadGRow.sign::s2Step332HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332HeadG_owned : (s2Step332HeadGRow.sign::s2Step332HeadGRow.payload).toFinset⊆s2Step332HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step332HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332HeadG_reserved : s2Step332HeadGBefore.reserve s2Step332HeadGFresh.toFinset=some s2Step332HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step332HeadGFresh,arenaWires]
  · norm_num [s2Step332HeadGBefore,s2Step332HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step332HeadGAfter,s2Step332HeadGBefore,s2Step332HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step332HeadG_checked : planRowResizeLog s2Step332HeadGBefore s2Step332HeadGRow 106 s2Step332HeadGFresh=
    some (s2Step332HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 806, 829],769⟩,growRow 769 s2Step332HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step332HeadGBefore s2Step332HeadGAfter s2Step332HeadGRow 106 s2Step332HeadGFresh
    s2Step332HeadG_distinct s2Step332HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step332HeadG_reserved
  have rowEq : WindowRow.mk (s2Step332HeadGRow.payload++s2Step332HeadGFresh) s2Step332HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 806, 829],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step332HeadGvBefore : Arena := s2Step332HeadFAfter

private theorem s2Step332HeadGv_Incoming : rowsOwned s2Step332HeadGvBefore [s2Step332HeadGvRow,s2Step332HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step332HeadGRow,s2Step332HeadFRow,s2Step332HeadGvRow,s2Step332HeadFvRow] 2 s2Step332HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step332HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step332HeadGv_Outgoing : rowsOwned s2Step332HeadFvAfter [s2Step332HeadGvOut,s2Step332HeadFvOut] :=
  hmrRows_owned_drop s2Step332HeadFvAfter [s2Step332HeadGOut,s2Step332HeadFOut,s2Step332HeadGvOut,s2Step332HeadFvOut] 2 s2Step332HeadBank_outgoingOwned

private theorem s2Step332HeadGv_distinct : (s2Step332HeadGvRow.sign::s2Step332HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step332HeadGv_owned : (s2Step332HeadGvRow.sign::s2Step332HeadGvRow.payload).toFinset⊆s2Step332HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step332HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step332HeadGv_reserved : s2Step332HeadGvBefore.reserve s2Step332HeadGvFresh.toFinset=some s2Step332HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step332HeadGvFresh,arenaWires]
  · norm_num [s2Step332HeadGvBefore,s2Step332HeadFAfter,s2Step332HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step332HeadGvAfter,s2Step332HeadGvBefore,s2Step332HeadFAfter,s2Step332HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step332HeadGv_checked : planRowResizeLog s2Step332HeadGvBefore s2Step332HeadGvRow 182 s2Step332HeadGvFresh=
    some (s2Step332HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 794],771⟩,growRow 771 s2Step332HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step332HeadGvBefore s2Step332HeadGvAfter s2Step332HeadGvRow 182 s2Step332HeadGvFresh
    s2Step332HeadGv_distinct s2Step332HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step332HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step332HeadGvRow.payload++s2Step332HeadGvFresh) s2Step332HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step332HeadBank_rows : planWindowRowsLog s2Step332HeadGBefore [(s2Step332HeadGRow,106),(s2Step332HeadFRow,106),(s2Step332HeadGvRow,182),(s2Step332HeadFvRow,182)] [s2Step332HeadGFresh,s2Step332HeadFFresh,s2Step332HeadGvFresh,s2Step332HeadFvFresh]=
    some (s2Step332HeadFvAfter,[s2Step332HeadGOut,s2Step332HeadFOut,s2Step332HeadGvOut,s2Step332HeadFvOut],(growRow 769 s2Step332HeadGFresh ++ (growRow 768 s2Step332HeadFFresh ++ (growRow 771 s2Step332HeadGvFresh ++ (growRow 770 s2Step332HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step332HeadFvAfter [] []=some (s2Step332HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step332HeadFvBefore s2Step332HeadFvAfter s2Step332HeadFvAfter
    s2Step332HeadFvRow s2Step332HeadFvOut 182 s2Step332HeadFvFresh [] [] []
    (growRow 770 s2Step332HeadFvFresh) ([]) s2Step332HeadFv_Incoming s2Step332HeadFv_checked h4 s2Step332HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step332HeadGvBefore s2Step332HeadGvAfter s2Step332HeadFvAfter
    s2Step332HeadGvRow s2Step332HeadGvOut 182 s2Step332HeadGvFresh [(s2Step332HeadFvRow,182)] [s2Step332HeadFvFresh] [s2Step332HeadFvOut]
    (growRow 771 s2Step332HeadGvFresh) ((growRow 770 s2Step332HeadFvFresh ++ [])) s2Step332HeadGv_Incoming s2Step332HeadGv_checked h3 s2Step332HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step332HeadFBefore s2Step332HeadFAfter s2Step332HeadFvAfter
    s2Step332HeadFRow s2Step332HeadFOut 106 s2Step332HeadFFresh [(s2Step332HeadGvRow,182),(s2Step332HeadFvRow,182)] [s2Step332HeadGvFresh,s2Step332HeadFvFresh] [s2Step332HeadGvOut,s2Step332HeadFvOut]
    (growRow 768 s2Step332HeadFFresh) ((growRow 771 s2Step332HeadGvFresh ++ (growRow 770 s2Step332HeadFvFresh ++ []))) s2Step332HeadF_Incoming s2Step332HeadF_checked h2 s2Step332HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step332HeadGBefore s2Step332HeadGAfter s2Step332HeadFvAfter
    s2Step332HeadGRow s2Step332HeadGOut 106 s2Step332HeadGFresh [(s2Step332HeadFRow,106),(s2Step332HeadGvRow,182),(s2Step332HeadFvRow,182)] [s2Step332HeadFFresh,s2Step332HeadGvFresh,s2Step332HeadFvFresh] [s2Step332HeadFOut,s2Step332HeadGvOut,s2Step332HeadFvOut]
    (growRow 769 s2Step332HeadGFresh) ((growRow 768 s2Step332HeadFFresh ++ (growRow 771 s2Step332HeadGvFresh ++ (growRow 770 s2Step332HeadFvFresh ++ [])))) s2Step332HeadG_Incoming s2Step332HeadG_checked h1 s2Step332HeadG_Outgoing
  exact h0

private theorem s2Step332HeadBank_checked : compileHmrBankResizeLog .headroom s2Step332HeadGBefore ⟨s2Step332HeadFRow,s2Step332HeadGRow,s2Step332HeadFvRow,s2Step332HeadGvRow⟩ ⟨106,106,182,182⟩ [s2Step332HeadGFresh,s2Step332HeadFFresh,s2Step332HeadGvFresh,s2Step332HeadFvFresh]=
    some (s2Step332HeadFvAfter,⟨s2Step332HeadFOut,s2Step332HeadGOut,s2Step332HeadFvOut,s2Step332HeadGvOut⟩,(growRow 769 s2Step332HeadGFresh ++ (growRow 768 s2Step332HeadFFresh ++ (growRow 771 s2Step332HeadGvFresh ++ (growRow 770 s2Step332HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step332HeadBank_rows]
  rfl

private theorem s2Step332Front_checked : compileHmrSourceFrontLog s2Step332EntryFBefore s2Step332FrontBank 105 181 ⟨104,104,182,181⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step332FrontLog=some s2Step332FrontPlan := by
  have pairEq : s2Step332FrontPair=⟨s2Step332HeadFRow,s2Step332HeadGRow,s2Step332HeadFvRow,s2Step332HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step332FrontHead=⟨s2Step332ExitFRow,s2Step332ExitGRow,s2Step332ExitFvRow,s2Step332ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step332Add0A=s2Step332FrontHead.f.wires := by decide +kernel
  have gEq : s2Step332Add0B=s2Step332FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step332Add1A=s2Step332FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step332Add1B=s2Step332FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step332EntryFBefore s2Step332FrontBank 105 181 ⟨104,104,182,181⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step332FrontLog s2Step332FrontPlan
  · exact s2Step332Front_entry
  · exact s2Step332EntryBank_checked
  · exact s2Step332Front_sigma
  · rfl
  · exact s2Step332Front_branch
  · rfl
  · simpa only [s2Step332FrontPlan,pairEq] using s2Step332HeadBank_checked
  · simpa only [s2Step332FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step332F4_checked
  · exact s2Step332Counter_checked
  · rfl
  · simpa only [s2Step332FrontPlan,headEq] using s2Step332ExitBank_checked

private theorem s2Step332Complete_explicit_checked : compileHmrEarlyStepLog s2Step332EntryFBefore s2Step332FrontBank 105 181 ⟨104,104,182,181⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step332CompleteLog=some s2Step332CompletePlan := by
  let Q := s2Step332EarlyControlPlan
  have hq := s2Step332EarlyControl_plan_checked
  have fv1 : s2Step332CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step332CompleteOut.fv.payload[2]?.getD s2Step332CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step332CompleteOut.fv.payload[3]?.getD s2Step332CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step332CompleteOut.fv.payload[4]?.getD s2Step332CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step332EntryFBefore s2Step332EarlyControlArena s2Step332FrontBank 105 181 ⟨104,104,182,181⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step332CompleteLog s2Step332FrontPlan Q
    s2Step332Front_checked s2Step332Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step332Complete_owned s2Step332Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step332EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 s2Step332CompleteOut.fv.second (s2Step332CompleteOut.fv.payload[2]?.getD s2Step332CompleteOut.fv.sign) (s2Step332CompleteOut.fv.payload[3]?.getD s2Step332CompleteOut.fv.sign) (s2Step332CompleteOut.fv.payload[4]?.getD s2Step332CompleteOut.fv.sign) 834 60 s2Step332EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep332Arena : Arena := s2Step332EntryFBefore
def s2PrivateStep332Bank : WindowBank := s2Step332FrontBank
def s2PrivateStep332Spec : HmrSourceWalkStepLog := ⟨105,181,⟨104,104,182,181⟩,60,.early s2Step332CompleteLog⟩
def s2PrivateStep332Plan : HmrSourceStepPlan := .early s2Step332CompletePlan
theorem s2PrivateStep332_source : s2PrivateStep332Spec=s2ObservedLogs320[12] := rfl
theorem s2PrivateStep332_checked : compileHmrSourceStepLog s2PrivateStep332Arena s2PrivateStep332Bank
    s2PrivateStep332Spec.fgWidth s2PrivateStep332Spec.vWidth s2PrivateStep332Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 332 s2PrivateStep332Spec.need none s2PrivateStep332Spec.log=some s2PrivateStep332Plan := by
  change compileHmrSourceStepLog s2Step332EntryFBefore s2Step332FrontBank 105 181 ⟨104,104,182,181⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 332 60 none (.early s2Step332CompleteLog)=some (.early s2Step332CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 332<498)]
  rw [s2Step332Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
