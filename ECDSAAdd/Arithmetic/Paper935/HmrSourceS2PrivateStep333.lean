import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep331
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

private def s2Step333CompleteMoves : List (Wire × Wire) := [(816,103)]

private def s2Step333EarlyControlLog : HmrEarlyControlLog := ⟨[816, 806, 779, 794, 877],[827],[784],[800, 894, 896, 901, 903, 907],[]⟩

private def s2Step333FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [834]],[[794], [779], [806], [829]],[[], [], [], []]⟩,[786],[822],[877],[827],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[877, 827, 784, 800]⟩

private def s2Step333CompleteLog : HmrEarlyStepLog := ⟨s2Step333FrontLog,s2Step333CompleteMoves,s2Step333EarlyControlLog⟩

private def s2Step333ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩

private def s2Step333ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829],770⟩

private def s2Step333ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],769⟩

private def s2Step333ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834],771⟩

private def s2Step333FrontOut : WindowBank := ⟨s2Step333ExitFOut,s2Step333ExitGOut,s2Step333ExitFvOut,s2Step333ExitGvOut⟩

private def s2Step333CompleteOut : WindowBank := s2Step333FrontOut.repacked s2Step333CompleteMoves

private def s2Step333EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step333EarlyControlPositiveArena,[827],s2Step333EarlyControlEqualityArena,[784],⟨⟨786,false⟩,[⟨⟨827,false⟩,784⟩]⟩⟩

private def s2Step333EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,816⟩,⟨⟨774,false⟩,806⟩,⟨⟨775,false⟩,779⟩,⟨⟨776,false⟩,794⟩,⟨⟨777,false⟩,877⟩]⟩

private def s2Step333EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step333EarlyControlZeroArena,s2Step333EarlyControlZeroPlan,s2Step333EarlyControlClassPlan,s2Step333EarlyControlFlagArena,s2Step333EarlyControlFittedArena,s2Step333EarlyControlHistoryArena,s2Step333EarlyControlSigmaArena,s2Step333EarlyControlOutputArena,s2Step333EarlyControlLog⟩

private def s2Step333CounterWork : List Wire := [877, 827, 784, 800]

private theorem s2Step333Counter_bounded : s2Step333CounterWork.toFinset⊆arenaWires := by norm_num [s2Step333CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step333HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333CounterDuring : Arena := ⟨s2Step333HeadFvAfter.live∪s2Step333CounterWork.toFinset,Finset.union_subset s2Step333HeadFvAfter.bounded s2Step333Counter_bounded⟩

private def s2Step333EntryFFresh : List Wire := []

private def s2Step333EntryFvFresh : List Wire := []

private def s2Step333EntryGFresh : List Wire := []

private def s2Step333EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333EntryGvFresh : List Wire := [834]

private def s2Step333ExitFExtra : List Wire := [779]

private def s2Step333ExitGExtra : List Wire := [103, 794]

private def s2Step333ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333ExitGvExtra : List Wire := [806]

private def s2Step333Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333Add0Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step333Add0_bounded : s2Step333Add0Work.toFinset⊆arenaWires := by
  have h : s2Step333Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step333Add0During : Arena := ⟨s2Step333Add0Arena.live∪s2Step333Add0Work.toFinset,Finset.union_subset s2Step333Add0Arena.bounded s2Step333Add0_bounded⟩

private def s2Step333Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333Add1Work : List Wire := [784, 800, 894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step333Add1_bounded : s2Step333Add1Work.toFinset⊆arenaWires := by
  have h : s2Step333Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step333Add1During : Arena := ⟨s2Step333Add1Arena.live∪s2Step333Add1Work.toFinset,Finset.union_subset s2Step333Add1Arena.bounded s2Step333Add1_bounded⟩

private def s2Step333F4FlagArena : Arena := ⟨s2Step333HeadFvAfter.live∪{877},Finset.union_subset s2Step333HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step333F4Plan : HmrHybridF4Plan := ⟨s2Step333F4FlagArena,[877],s2Step333Add0Arena,[827],s2Step333Add0During,s2Step333Add0Work,s2Step333Add1During,s2Step333Add1Work⟩

private def s2Step333HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 779],768⟩

private def s2Step333HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829],770⟩

private def s2Step333HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 794],769⟩

private def s2Step333HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 806],771⟩

private def s2Step333FrontHead : WindowBank := ⟨s2Step333HeadFOut,s2Step333HeadGOut,s2Step333HeadFvOut,s2Step333HeadGvOut⟩

private def s2Step333EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩

private def s2Step333EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836],770⟩

private def s2Step333EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],769⟩

private def s2Step333EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834],771⟩

private def s2Step333FrontPair : WindowBank := ⟨s2Step333EntryFOut,s2Step333EntryGOut,s2Step333EntryFvOut,s2Step333EntryGvOut⟩

private def s2Step333FrontSigmaArena : Arena := ⟨s2Step333EntryGvAfter.live∪{786},Finset.union_subset s2Step333EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step333HeadFFresh : List Wire := [779]

private def s2Step333HeadFvFresh : List Wire := [829]

private def s2Step333HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333HeadGFresh : List Wire := [794]

private def s2Step333HeadGvFresh : List Wire := [806]

private def s2Step333FrontPlan : HmrSourceFront := ⟨s2Step333EntryGvAfter,s2Step333FrontPair,(growRow 768 s2Step333EntryFFresh ++ (growRow 769 s2Step333EntryGFresh ++ (growRow 770 s2Step333EntryFvFresh ++ (growRow 771 s2Step333EntryGvFresh ++ [])))),s2Step333FrontSigmaArena,[786],s2Step333HeadGBefore,[822],
  s2Step333HeadFvAfter,s2Step333FrontHead,(growRow 769 s2Step333HeadGFresh ++ (growRow 768 s2Step333HeadFFresh ++ (growRow 771 s2Step333HeadGvFresh ++ (growRow 770 s2Step333HeadFvFresh ++ [])))),s2Step333F4Plan,s2Step333CounterDuring,s2Step333CounterWork,s2Step333ExitGvAfter,s2Step333FrontOut,(shrinkRow 769 s2Step333ExitGExtra ++ (shrinkRow 768 s2Step333ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step333ExitGvExtra ++ []))))⟩

private def s2Step333CompletePlan : HmrEarlyStepPlan := ⟨s2Step333FrontPlan,s2Step333EarlyControlArena,s2Step333EarlyControlPlan,s2Step333CompleteMoves⟩

private theorem s2Step333Complete_apart : List.Disjoint (s2Step333CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [786, 822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step333CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[786, 822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step333Complete_owned : (s2Step333CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step333EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step333EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step333CompleteMoveArena : Arena := ⟨s2Step333ExitGvAfter.live∪{103},Finset.union_subset s2Step333ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step333Complete_repack : s2Step333ExitGvAfter.checkRepack s2Step333CompleteMoves=some s2Step333EarlyControlArena := by
  have owned : 816∈s2Step333ExitGvAfter.live := by norm_num [s2Step333ExitGvAfter,arenaWires]
  have reserve : s2Step333ExitGvAfter.reserve {103}=some s2Step333CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step333ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step333CompleteMoveArena.retireSet {816}=s2Step333EarlyControlArena := by
    unfold Arena.retireSet s2Step333EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step333CompleteMoveArena,s2Step333ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step333CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step333CompleteMoveArena.retireSet {816}).checkRepack []=some s2Step333EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step333EarlyControl_branchOwned : ([822] : List Wire).toFinset⊆s2Step333EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step333EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333EarlyControl_branch : compileHmrBranchRetirement s2Step333EarlyControlSigmaArena 822=some s2Step333EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step333EarlyControl_branchOwned
  · ext q
    simp [s2Step333EarlyControlOutputArena,s2Step333EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step333EarlyControl_classEqualityBorrow : s2Step333EarlyControlPositiveArena.checkBorrow (([786, 827] : List Wire).length-1) s2Step333EarlyControlLog.classWork=some s2Step333EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step333EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step333EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step333EarlyControlEqualityArena,s2Step333EarlyControlPositiveArena,s2Step333EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step333EarlyControl_classEqualityOwned : ([786, 827] : List Wire).toFinset⊆s2Step333EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step333EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333EarlyControl_classEquality : compileHmrEqualityLog s2Step333EarlyControlPositiveArena [786, 827] 0 s2Step333EarlyControlLog.classWork=some (s2Step333EarlyControlEqualityArena,s2Step333EarlyControlLog.classWork,s2Step333EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step333EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step333EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step333EarlyControl_classOwned : ([777, 877, 786] : List Wire).toFinset⊆s2Step333EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step333EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333EarlyControl_positiveBorrow : s2Step333EarlyControlZeroArena.checkBorrow (1) s2Step333EarlyControlLog.positiveWork=some s2Step333EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step333EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step333EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step333EarlyControlPositiveArena,s2Step333EarlyControlZeroArena,s2Step333EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step333EarlyControl_class : compileHmrSourceClassLog s2Step333EarlyControlZeroArena false 777 s2Step333EarlyControlZeroPlan.top 0 786 s2Step333EarlyControlLog.positiveWork s2Step333EarlyControlLog.classWork=some s2Step333EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step333EarlyControlClassPlan s2Step333EarlyControlZeroArena false 777 s2Step333EarlyControlZeroPlan.top 0 786
  constructor
  · decide +kernel
  · exact s2Step333EarlyControl_classOwned
  · exact s2Step333EarlyControl_positiveBorrow
  · exact s2Step333EarlyControl_classEquality

private theorem s2Step333EarlyControl_entryRecordOwned : ([822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step333EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step333EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333EarlyControl_entrySigmaOwned : ([786, 254] : List Wire).toFinset⊆s2Step333EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step333EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333EarlyControl_fitBorrow : s2Step333EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step333EarlyControlLog.recordFresh=some s2Step333EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step333EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step333EarlyControlFlagArena (fun q => (0≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step333EarlyControlFittedArena,s2Step333EarlyControlFlagArena,s2Step333EarlyControlLog,arenaWires]

private theorem s2Step333EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step333EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step333EarlyControlFlagArena (fun q => (0≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333EarlyControl_fit : compileHmrRecordGrowLog s2Step333EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step333EarlyControlLog.recordFresh=some s2Step333EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step333EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step333EarlyControl_fitBorrow

private theorem s2Step333EarlyControl_flagsBorrow : s2Step333EarlyControlEqualityArena.checkBorrow (6) s2Step333EarlyControlLog.flagWork=some s2Step333EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step333EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step333EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step333EarlyControlFlagArena,s2Step333EarlyControlEqualityArena,s2Step333EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step333EarlyControl_flagsOwned : ([784, 253, 252, 251] : List Wire).toFinset⊆s2Step333EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step333EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333EarlyControl_flags : compileHmrFlagsLog s2Step333EarlyControlClassPlan.equalityArena s2Step333EarlyControlClassPlan.equality.top 253 252 251 s2Step333EarlyControlLog.flagWork=some s2Step333EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step333EarlyControl_flagsOwned⟩
  · exact s2Step333EarlyControl_flagsBorrow

private theorem s2Step333EarlyControl_historyBorrow : s2Step333EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step333EarlyControlLog.recordFresh=some s2Step333EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step333EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step333EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step333EarlyControlHistoryArena,s2Step333EarlyControlArena,s2Step333EarlyControlLog,arenaWires]

private theorem s2Step333EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step333EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step333EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333EarlyControl_history : compileHmrRecordGrowLog s2Step333EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step333EarlyControlLog.recordFresh=some s2Step333EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step333EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step333EarlyControl_historyBorrow

private theorem s2Step333EarlyControl_sigmaOwned : ([254, 786] : List Wire).toFinset⊆s2Step333EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step333EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333EarlyControl_sigmaReleaseOwned : ([786] : List Wire).toFinset⊆s2Step333EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step333EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333EarlyControl_sigmaRelease : s2Step333EarlyControlHistoryArena.release {786} (fun _ => false)=some s2Step333EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step333EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step333EarlyControlSigmaArena,s2Step333EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step333EarlyControl_sigma : compileHmrSigmaDropLog s2Step333EarlyControlHistoryArena false 0 0 254 786 []=some s2Step333EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step333EarlyControl_sigmaOwned⟩
  · exact s2Step333EarlyControl_sigmaRelease

private theorem s2Step333EarlyControl_zeroBorrow : s2Step333EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step333EarlyControlLog.zeroWork=some s2Step333EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step333EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step333EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step333EarlyControlZeroArena,s2Step333EarlyControlArena,s2Step333EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step333EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step333EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step333EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333EarlyControl_zero : compileHmrEqualityLog s2Step333EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step333EarlyControlLog.zeroWork=some (s2Step333EarlyControlZeroArena,s2Step333EarlyControlLog.zeroWork,s2Step333EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step333EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step333EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step333EarlyControl_logged : s2Step333EarlyControlPlan.Logged s2Step333EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 254 253 252 251 822 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step333EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step333EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step333EarlyControl_zero
  · exact s2Step333EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step333EarlyControl_flags
  · exact s2Step333EarlyControl_fit
  · exact s2Step333EarlyControl_history
  · exact s2Step333EarlyControl_sigma
  · exact s2Step333EarlyControl_branch

private theorem s2Step333EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step333EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 254 253 252 251 822 60 s2Step333EarlyControlLog=some s2Step333EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step333EarlyControlPlan s2Step333EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 254 253 252 251 822 60 s2Step333EarlyControl_logged

private def s2Step333EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩

private def s2Step333EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836],770⟩

private def s2Step333EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],769⟩

private def s2Step333EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817],771⟩

private def s2Step333FrontBank : WindowBank := ⟨s2Step333EntryFRow,s2Step333EntryGRow,s2Step333EntryFvRow,s2Step333EntryGvRow⟩

private def s2Step333Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 779, 768]

private def s2Step333Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 794, 769]

private def s2Step333Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 770]

private def s2Step333Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 806, 771]

private theorem s2Step333Counter_apart : Disjoint s2Step333HeadFvAfter.live s2Step333CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step333HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333Counter_borrowed : s2Step333HeadFvAfter.checkBorrow 4 s2Step333CounterWork=some s2Step333CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step333HeadFvAfter s2Step333CounterDuring s2Step333CounterWork.toFinset s2Step333Counter_bounded s2Step333Counter_apart rfl

private theorem s2Step333Counter_owned : (786::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step333HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step333HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333Counter_checked : compileHmrCounterStepLog s2Step333HeadFvAfter true 786 [772, 773, 774, 775, 776, 777] s2Step333CounterWork=some s2Step333CounterDuring := by
  have owned : ∀q∈786::[772, 773, 774, 775, 776, 777],q∈s2Step333HeadFvAfter.live := fun q hq => s2Step333Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step333Counter_borrowed

private def s2Step333EntryFAfter : Arena := s2Step333EntryFBefore

private theorem s2Step333EntryBank_incomingDistinct : ([s2Step333EntryFRow,s2Step333EntryGRow,s2Step333EntryFvRow,s2Step333EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333EntryF_Incoming : rowsOwned s2Step333EntryFBefore [s2Step333EntryFRow,s2Step333EntryGRow,s2Step333EntryFvRow,s2Step333EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step333EntryFRow,s2Step333EntryGRow,s2Step333EntryFvRow,s2Step333EntryGvRow] 0 s2Step333EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step333EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step333EntryBank_outgoingOwned : rowsOwned s2Step333EntryGvAfter [s2Step333EntryFOut,s2Step333EntryGOut,s2Step333EntryFvOut,s2Step333EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step333EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step333EntryF_Outgoing : rowsOwned s2Step333EntryGvAfter [s2Step333EntryFOut,s2Step333EntryGOut,s2Step333EntryFvOut,s2Step333EntryGvOut] :=
  hmrRows_owned_drop s2Step333EntryGvAfter [s2Step333EntryFOut,s2Step333EntryGOut,s2Step333EntryFvOut,s2Step333EntryGvOut] 0 s2Step333EntryBank_outgoingOwned

private theorem s2Step333EntryF_distinct : (s2Step333EntryFRow.sign::s2Step333EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333EntryF_owned : (s2Step333EntryFRow.sign::s2Step333EntryFRow.payload).toFinset⊆s2Step333EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step333EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333EntryF_reserved : s2Step333EntryFBefore.reserve s2Step333EntryFFresh.toFinset=some s2Step333EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step333EntryFFresh,arenaWires]
  · norm_num [s2Step333EntryFBefore,s2Step333EntryFFresh,arenaWires]
  · simp only [s2Step333EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step333EntryF_checked : planRowResizeLog s2Step333EntryFBefore s2Step333EntryFRow 104 s2Step333EntryFFresh=
    some (s2Step333EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩,growRow 768 s2Step333EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step333EntryFBefore s2Step333EntryFAfter s2Step333EntryFRow 104 s2Step333EntryFFresh
    s2Step333EntryF_distinct s2Step333EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step333EntryF_reserved
  have rowEq : WindowRow.mk (s2Step333EntryFRow.payload++s2Step333EntryFFresh) s2Step333EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step333EntryFvAfter : Arena := s2Step333EntryFBefore

private def s2Step333EntryFvBefore : Arena := s2Step333EntryFBefore

private theorem s2Step333EntryFv_Incoming : rowsOwned s2Step333EntryFvBefore [s2Step333EntryFvRow,s2Step333EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step333EntryFRow,s2Step333EntryGRow,s2Step333EntryFvRow,s2Step333EntryGvRow] 2 s2Step333EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step333EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step333EntryFv_Outgoing : rowsOwned s2Step333EntryGvAfter [s2Step333EntryFvOut,s2Step333EntryGvOut] :=
  hmrRows_owned_drop s2Step333EntryGvAfter [s2Step333EntryFOut,s2Step333EntryGOut,s2Step333EntryFvOut,s2Step333EntryGvOut] 2 s2Step333EntryBank_outgoingOwned

private theorem s2Step333EntryFv_distinct : (s2Step333EntryFvRow.sign::s2Step333EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333EntryFv_owned : (s2Step333EntryFvRow.sign::s2Step333EntryFvRow.payload).toFinset⊆s2Step333EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step333EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333EntryFv_reserved : s2Step333EntryFvBefore.reserve s2Step333EntryFvFresh.toFinset=some s2Step333EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step333EntryFvFresh,arenaWires]
  · norm_num [s2Step333EntryFvBefore,s2Step333EntryFBefore,s2Step333EntryFvFresh,arenaWires]
  · simp only [s2Step333EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step333EntryFv_checked : planRowResizeLog s2Step333EntryFvBefore s2Step333EntryFvRow 182 s2Step333EntryFvFresh=
    some (s2Step333EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836],770⟩,growRow 770 s2Step333EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step333EntryFvBefore s2Step333EntryFvAfter s2Step333EntryFvRow 182 s2Step333EntryFvFresh
    s2Step333EntryFv_distinct s2Step333EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step333EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step333EntryFvRow.payload++s2Step333EntryFvFresh) s2Step333EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step333EntryGAfter : Arena := s2Step333EntryFBefore

private def s2Step333EntryGBefore : Arena := s2Step333EntryFBefore

private theorem s2Step333EntryG_Incoming : rowsOwned s2Step333EntryGBefore [s2Step333EntryGRow,s2Step333EntryFvRow,s2Step333EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step333EntryFRow,s2Step333EntryGRow,s2Step333EntryFvRow,s2Step333EntryGvRow] 1 s2Step333EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step333EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step333EntryG_Outgoing : rowsOwned s2Step333EntryGvAfter [s2Step333EntryGOut,s2Step333EntryFvOut,s2Step333EntryGvOut] :=
  hmrRows_owned_drop s2Step333EntryGvAfter [s2Step333EntryFOut,s2Step333EntryGOut,s2Step333EntryFvOut,s2Step333EntryGvOut] 1 s2Step333EntryBank_outgoingOwned

private theorem s2Step333EntryG_distinct : (s2Step333EntryGRow.sign::s2Step333EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333EntryG_owned : (s2Step333EntryGRow.sign::s2Step333EntryGRow.payload).toFinset⊆s2Step333EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step333EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333EntryG_reserved : s2Step333EntryGBefore.reserve s2Step333EntryGFresh.toFinset=some s2Step333EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step333EntryGFresh,arenaWires]
  · norm_num [s2Step333EntryGBefore,s2Step333EntryFBefore,s2Step333EntryGFresh,arenaWires]
  · simp only [s2Step333EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step333EntryG_checked : planRowResizeLog s2Step333EntryGBefore s2Step333EntryGRow 104 s2Step333EntryGFresh=
    some (s2Step333EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],769⟩,growRow 769 s2Step333EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step333EntryGBefore s2Step333EntryGAfter s2Step333EntryGRow 104 s2Step333EntryGFresh
    s2Step333EntryG_distinct s2Step333EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step333EntryG_reserved
  have rowEq : WindowRow.mk (s2Step333EntryGRow.payload++s2Step333EntryGFresh) s2Step333EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step333EntryGvBefore : Arena := s2Step333EntryFBefore

private theorem s2Step333EntryGv_Incoming : rowsOwned s2Step333EntryGvBefore [s2Step333EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step333EntryFRow,s2Step333EntryGRow,s2Step333EntryFvRow,s2Step333EntryGvRow] 3 s2Step333EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step333EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step333EntryGv_Outgoing : rowsOwned s2Step333EntryGvAfter [s2Step333EntryGvOut] :=
  hmrRows_owned_drop s2Step333EntryGvAfter [s2Step333EntryFOut,s2Step333EntryGOut,s2Step333EntryFvOut,s2Step333EntryGvOut] 3 s2Step333EntryBank_outgoingOwned

private theorem s2Step333EntryGv_distinct : (s2Step333EntryGvRow.sign::s2Step333EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333EntryGv_owned : (s2Step333EntryGvRow.sign::s2Step333EntryGvRow.payload).toFinset⊆s2Step333EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step333EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333EntryGv_reserved : s2Step333EntryGvBefore.reserve s2Step333EntryGvFresh.toFinset=some s2Step333EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step333EntryGvFresh,arenaWires]
  · norm_num [s2Step333EntryGvBefore,s2Step333EntryFBefore,s2Step333EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step333EntryGvAfter,s2Step333EntryGvBefore,s2Step333EntryFBefore,s2Step333EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step333EntryGv_checked : planRowResizeLog s2Step333EntryGvBefore s2Step333EntryGvRow 182 s2Step333EntryGvFresh=
    some (s2Step333EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834],771⟩,growRow 771 s2Step333EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step333EntryGvBefore s2Step333EntryGvAfter s2Step333EntryGvRow 182 s2Step333EntryGvFresh
    s2Step333EntryGv_distinct s2Step333EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step333EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step333EntryGvRow.payload++s2Step333EntryGvFresh) s2Step333EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step333EntryBank_rows : planWindowRowsLog s2Step333EntryFBefore [(s2Step333EntryFRow,104),(s2Step333EntryGRow,104),(s2Step333EntryFvRow,182),(s2Step333EntryGvRow,182)] [s2Step333EntryFFresh,s2Step333EntryGFresh,s2Step333EntryFvFresh,s2Step333EntryGvFresh]=
    some (s2Step333EntryGvAfter,[s2Step333EntryFOut,s2Step333EntryGOut,s2Step333EntryFvOut,s2Step333EntryGvOut],(growRow 768 s2Step333EntryFFresh ++ (growRow 769 s2Step333EntryGFresh ++ (growRow 770 s2Step333EntryFvFresh ++ (growRow 771 s2Step333EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step333EntryGvAfter [] []=some (s2Step333EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step333EntryGvBefore s2Step333EntryGvAfter s2Step333EntryGvAfter
    s2Step333EntryGvRow s2Step333EntryGvOut 182 s2Step333EntryGvFresh [] [] []
    (growRow 771 s2Step333EntryGvFresh) ([]) s2Step333EntryGv_Incoming s2Step333EntryGv_checked h4 s2Step333EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step333EntryFvBefore s2Step333EntryFvAfter s2Step333EntryGvAfter
    s2Step333EntryFvRow s2Step333EntryFvOut 182 s2Step333EntryFvFresh [(s2Step333EntryGvRow,182)] [s2Step333EntryGvFresh] [s2Step333EntryGvOut]
    (growRow 770 s2Step333EntryFvFresh) ((growRow 771 s2Step333EntryGvFresh ++ [])) s2Step333EntryFv_Incoming s2Step333EntryFv_checked h3 s2Step333EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step333EntryGBefore s2Step333EntryGAfter s2Step333EntryGvAfter
    s2Step333EntryGRow s2Step333EntryGOut 104 s2Step333EntryGFresh [(s2Step333EntryFvRow,182),(s2Step333EntryGvRow,182)] [s2Step333EntryFvFresh,s2Step333EntryGvFresh] [s2Step333EntryFvOut,s2Step333EntryGvOut]
    (growRow 769 s2Step333EntryGFresh) ((growRow 770 s2Step333EntryFvFresh ++ (growRow 771 s2Step333EntryGvFresh ++ []))) s2Step333EntryG_Incoming s2Step333EntryG_checked h2 s2Step333EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step333EntryFBefore s2Step333EntryFAfter s2Step333EntryGvAfter
    s2Step333EntryFRow s2Step333EntryFOut 104 s2Step333EntryFFresh [(s2Step333EntryGRow,104),(s2Step333EntryFvRow,182),(s2Step333EntryGvRow,182)] [s2Step333EntryGFresh,s2Step333EntryFvFresh,s2Step333EntryGvFresh] [s2Step333EntryGOut,s2Step333EntryFvOut,s2Step333EntryGvOut]
    (growRow 768 s2Step333EntryFFresh) ((growRow 769 s2Step333EntryGFresh ++ (growRow 770 s2Step333EntryFvFresh ++ (growRow 771 s2Step333EntryGvFresh ++ [])))) s2Step333EntryF_Incoming s2Step333EntryF_checked h1 s2Step333EntryF_Outgoing
  exact h0

private theorem s2Step333EntryBank_checked : compileHmrBankResizeLog .entry s2Step333EntryFBefore ⟨s2Step333EntryFRow,s2Step333EntryGRow,s2Step333EntryFvRow,s2Step333EntryGvRow⟩ ⟨104,104,182,182⟩ [s2Step333EntryFFresh,s2Step333EntryGFresh,s2Step333EntryFvFresh,s2Step333EntryGvFresh]=
    some (s2Step333EntryGvAfter,⟨s2Step333EntryFOut,s2Step333EntryGOut,s2Step333EntryFvOut,s2Step333EntryGvOut⟩,(growRow 768 s2Step333EntryFFresh ++ (growRow 769 s2Step333EntryGFresh ++ (growRow 770 s2Step333EntryFvFresh ++ (growRow 771 s2Step333EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step333EntryBank_rows]
  rfl

private def s2Step333ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333ExitFBefore : Arena := s2Step333ExitGAfter

private def s2Step333ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 779],768⟩

private def s2Step333ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829],770⟩

private def s2Step333ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 794],769⟩

private def s2Step333ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 806],771⟩

private theorem s2Step333ExitBank_incomingDistinct : ([s2Step333ExitGRow,s2Step333ExitFRow,s2Step333ExitFvRow,s2Step333ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333ExitF_Incoming : rowsOwned s2Step333ExitFBefore [s2Step333ExitFRow,s2Step333ExitFvRow,s2Step333ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step333ExitGRow,s2Step333ExitFRow,s2Step333ExitFvRow,s2Step333ExitGvRow] 1 s2Step333ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step333ExitFBefore (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step333ExitBank_outgoingOwned : rowsOwned s2Step333ExitGvAfter [s2Step333ExitGOut,s2Step333ExitFOut,s2Step333ExitFvOut,s2Step333ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step333ExitGvAfter (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step333ExitF_Outgoing : rowsOwned s2Step333ExitGvAfter [s2Step333ExitFOut,s2Step333ExitFvOut,s2Step333ExitGvOut] :=
  hmrRows_owned_drop s2Step333ExitGvAfter [s2Step333ExitGOut,s2Step333ExitFOut,s2Step333ExitFvOut,s2Step333ExitGvOut] 1 s2Step333ExitBank_outgoingOwned

private theorem s2Step333ExitF_distinct : (s2Step333ExitFRow.sign::s2Step333ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333ExitF_owned : (s2Step333ExitFRow.sign::s2Step333ExitFRow.payload).toFinset⊆s2Step333ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step333ExitFBefore (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333ExitF_retired : s2Step333ExitFBefore.retireSet s2Step333ExitFExtra.toFinset=s2Step333ExitFAfter := by
  unfold Arena.retireSet s2Step333ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step333ExitFBefore,s2Step333ExitGAfter,s2Step333ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step333ExitF_checked : planRowResizeLog s2Step333ExitFBefore s2Step333ExitFRow 104 []=
    some (s2Step333ExitFAfter,s2Step333ExitFOut,shrinkRow 768 s2Step333ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step333ExitFBefore s2Step333ExitFRow 104 s2Step333ExitF_distinct s2Step333ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step333ExitFRow.payload.take 104) s2Step333ExitFRow.sign=s2Step333ExitFOut := by decide +kernel
  have hi : s2Step333ExitFRow.payload.drop 104=s2Step333ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step333ExitF_retired] at result
  exact result

private def s2Step333ExitFvAfter : Arena := s2Step333ExitFAfter

private def s2Step333ExitFvBefore : Arena := s2Step333ExitFAfter

private theorem s2Step333ExitFv_Incoming : rowsOwned s2Step333ExitFvBefore [s2Step333ExitFvRow,s2Step333ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step333ExitGRow,s2Step333ExitFRow,s2Step333ExitFvRow,s2Step333ExitGvRow] 2 s2Step333ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step333ExitFvBefore (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step333ExitFv_Outgoing : rowsOwned s2Step333ExitGvAfter [s2Step333ExitFvOut,s2Step333ExitGvOut] :=
  hmrRows_owned_drop s2Step333ExitGvAfter [s2Step333ExitGOut,s2Step333ExitFOut,s2Step333ExitFvOut,s2Step333ExitGvOut] 2 s2Step333ExitBank_outgoingOwned

private theorem s2Step333ExitFv_distinct : (s2Step333ExitFvRow.sign::s2Step333ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333ExitFv_owned : (s2Step333ExitFvRow.sign::s2Step333ExitFvRow.payload).toFinset⊆s2Step333ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step333ExitFvBefore (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333ExitFv_reserved : s2Step333ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step333ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step333ExitFv_checked : planRowResizeLog s2Step333ExitFvBefore s2Step333ExitFvRow 183 []=
    some (s2Step333ExitFvAfter,s2Step333ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step333ExitFvBefore s2Step333ExitFvAfter s2Step333ExitFvRow 183 []
    s2Step333ExitFv_distinct s2Step333ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step333ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step333ExitFvRow.payload++[]) s2Step333ExitFvRow.sign=s2Step333ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step333ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step333ExitG_Incoming : rowsOwned s2Step333ExitGBefore [s2Step333ExitGRow,s2Step333ExitFRow,s2Step333ExitFvRow,s2Step333ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step333ExitGRow,s2Step333ExitFRow,s2Step333ExitFvRow,s2Step333ExitGvRow] 0 s2Step333ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step333ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step333ExitG_Outgoing : rowsOwned s2Step333ExitGvAfter [s2Step333ExitGOut,s2Step333ExitFOut,s2Step333ExitFvOut,s2Step333ExitGvOut] :=
  hmrRows_owned_drop s2Step333ExitGvAfter [s2Step333ExitGOut,s2Step333ExitFOut,s2Step333ExitFvOut,s2Step333ExitGvOut] 0 s2Step333ExitBank_outgoingOwned

private theorem s2Step333ExitG_distinct : (s2Step333ExitGRow.sign::s2Step333ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333ExitG_owned : (s2Step333ExitGRow.sign::s2Step333ExitGRow.payload).toFinset⊆s2Step333ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step333ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333ExitG_retired : s2Step333ExitGBefore.retireSet s2Step333ExitGExtra.toFinset=s2Step333ExitGAfter := by
  unfold Arena.retireSet s2Step333ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step333ExitGBefore,s2Step333ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step333ExitG_checked : planRowResizeLog s2Step333ExitGBefore s2Step333ExitGRow 103 []=
    some (s2Step333ExitGAfter,s2Step333ExitGOut,shrinkRow 769 s2Step333ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step333ExitGBefore s2Step333ExitGRow 103 s2Step333ExitG_distinct s2Step333ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step333ExitGRow.payload.take 103) s2Step333ExitGRow.sign=s2Step333ExitGOut := by decide +kernel
  have hi : s2Step333ExitGRow.payload.drop 103=s2Step333ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step333ExitG_retired] at result
  exact result

private def s2Step333ExitGvBefore : Arena := s2Step333ExitFAfter

private theorem s2Step333ExitGv_Incoming : rowsOwned s2Step333ExitGvBefore [s2Step333ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step333ExitGRow,s2Step333ExitFRow,s2Step333ExitFvRow,s2Step333ExitGvRow] 3 s2Step333ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step333ExitGvBefore (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step333ExitGv_Outgoing : rowsOwned s2Step333ExitGvAfter [s2Step333ExitGvOut] :=
  hmrRows_owned_drop s2Step333ExitGvAfter [s2Step333ExitGOut,s2Step333ExitFOut,s2Step333ExitFvOut,s2Step333ExitGvOut] 3 s2Step333ExitBank_outgoingOwned

private theorem s2Step333ExitGv_distinct : (s2Step333ExitGvRow.sign::s2Step333ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333ExitGv_owned : (s2Step333ExitGvRow.sign::s2Step333ExitGvRow.payload).toFinset⊆s2Step333ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step333ExitGvBefore (fun q => (0≤q ∧ q<103) ∨ (104≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333ExitGv_retired : s2Step333ExitGvBefore.retireSet s2Step333ExitGvExtra.toFinset=s2Step333ExitGvAfter := by
  unfold Arena.retireSet s2Step333ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step333ExitGvBefore,s2Step333ExitFAfter,s2Step333ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step333ExitGv_checked : planRowResizeLog s2Step333ExitGvBefore s2Step333ExitGvRow 182 []=
    some (s2Step333ExitGvAfter,s2Step333ExitGvOut,shrinkRow 771 s2Step333ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step333ExitGvBefore s2Step333ExitGvRow 182 s2Step333ExitGv_distinct s2Step333ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step333ExitGvRow.payload.take 182) s2Step333ExitGvRow.sign=s2Step333ExitGvOut := by decide +kernel
  have hi : s2Step333ExitGvRow.payload.drop 182=s2Step333ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step333ExitGv_retired] at result
  exact result

private theorem s2Step333ExitBank_rows : planWindowRowsLog s2Step333ExitGBefore [(s2Step333ExitGRow,103),(s2Step333ExitFRow,104),(s2Step333ExitFvRow,183),(s2Step333ExitGvRow,182)] [[],[],[],[]]=
    some (s2Step333ExitGvAfter,[s2Step333ExitGOut,s2Step333ExitFOut,s2Step333ExitFvOut,s2Step333ExitGvOut],(shrinkRow 769 s2Step333ExitGExtra ++ (shrinkRow 768 s2Step333ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step333ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step333ExitGvAfter [] []=some (s2Step333ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step333ExitGvBefore s2Step333ExitGvAfter s2Step333ExitGvAfter
    s2Step333ExitGvRow s2Step333ExitGvOut 182 [] [] [] []
    (shrinkRow 771 s2Step333ExitGvExtra) ([]) s2Step333ExitGv_Incoming s2Step333ExitGv_checked h4 s2Step333ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step333ExitFvBefore s2Step333ExitFvAfter s2Step333ExitGvAfter
    s2Step333ExitFvRow s2Step333ExitFvOut 183 [] [(s2Step333ExitGvRow,182)] [[]] [s2Step333ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step333ExitGvExtra ++ [])) s2Step333ExitFv_Incoming s2Step333ExitFv_checked h3 s2Step333ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step333ExitFBefore s2Step333ExitFAfter s2Step333ExitGvAfter
    s2Step333ExitFRow s2Step333ExitFOut 104 [] [(s2Step333ExitFvRow,183),(s2Step333ExitGvRow,182)] [[],[]] [s2Step333ExitFvOut,s2Step333ExitGvOut]
    (shrinkRow 768 s2Step333ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step333ExitGvExtra ++ []))) s2Step333ExitF_Incoming s2Step333ExitF_checked h2 s2Step333ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step333ExitGBefore s2Step333ExitGAfter s2Step333ExitGvAfter
    s2Step333ExitGRow s2Step333ExitGOut 103 [] [(s2Step333ExitFRow,104),(s2Step333ExitFvRow,183),(s2Step333ExitGvRow,182)] [[],[],[]] [s2Step333ExitFOut,s2Step333ExitFvOut,s2Step333ExitGvOut]
    (shrinkRow 769 s2Step333ExitGExtra) ((shrinkRow 768 s2Step333ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step333ExitGvExtra ++ [])))) s2Step333ExitG_Incoming s2Step333ExitG_checked h1 s2Step333ExitG_Outgoing
  exact h0

private theorem s2Step333ExitBank_checked : compileHmrBankResizeLog .exit s2Step333ExitGBefore ⟨s2Step333ExitFRow,s2Step333ExitGRow,s2Step333ExitFvRow,s2Step333ExitGvRow⟩ ⟨104,103,183,182⟩ [[],[],[],[]]=
    some (s2Step333ExitGvAfter,⟨s2Step333ExitFOut,s2Step333ExitGOut,s2Step333ExitFvOut,s2Step333ExitGvOut⟩,(shrinkRow 769 s2Step333ExitGExtra ++ (shrinkRow 768 s2Step333ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step333ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step333ExitBank_rows]
  rfl

private theorem s2Step333Add0_apart : Disjoint s2Step333Add0Arena.live s2Step333Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step333Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333Add0_card : s2Step333Add0Arena.live.card=906 := by
  decide +kernel

private theorem s2Step333Add0_borrowed : s2Step333Add0Arena.checkBorrow (hmrHybridCount s2Step333Add0Arena s2Step333Add0B.length) s2Step333Add0Work=some s2Step333Add0During := by
  have len : s2Step333Add0Work.length=hmrHybridCount s2Step333Add0Arena s2Step333Add0B.length := by
    rw [hmrHybridCount,s2Step333Add0_card]
    decide +kernel
  have nd : s2Step333Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step333Add0Arena s2Step333Add0During s2Step333Add0Work.toFinset s2Step333Add0_bounded s2Step333Add0_apart rfl

private theorem s2Step333Add0_distinct : (877::822::827::(s2Step333Add0A++s2Step333Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333Add0_owned : (877::822::827::(s2Step333Add0A++s2Step333Add0B)).toFinset⊆s2Step333Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step333Add0Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333Add0_checked : compileHmrHybridCinLog s2Step333Add0Arena 822 877 827 s2Step333Add0A s2Step333Add0B s2Step333Add0Work=some s2Step333Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step333Add0Arena s2Step333Add0During 822 877 827 s2Step333Add0A s2Step333Add0B s2Step333Add0Work
    (by decide +kernel) (by decide +kernel) s2Step333Add0_distinct
    (fun q hq => s2Step333Add0_owned (List.mem_toFinset.mpr hq)) s2Step333Add0_borrowed

private theorem s2Step333Add1_apart : Disjoint s2Step333Add1Arena.live s2Step333Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step333Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333Add1_card : s2Step333Add1Arena.live.card=906 := by
  decide +kernel

private theorem s2Step333Add1_borrowed : s2Step333Add1Arena.checkBorrow (hmrHybridCount s2Step333Add1Arena s2Step333Add1B.length) s2Step333Add1Work=some s2Step333Add1During := by
  have len : s2Step333Add1Work.length=hmrHybridCount s2Step333Add1Arena s2Step333Add1B.length := by
    rw [hmrHybridCount,s2Step333Add1_card]
    decide +kernel
  have nd : s2Step333Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step333Add1Arena s2Step333Add1During s2Step333Add1Work.toFinset s2Step333Add1_bounded s2Step333Add1_apart rfl

private theorem s2Step333Add1_distinct : (877::822::827::(s2Step333Add1A++s2Step333Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333Add1_owned : (877::822::827::(s2Step333Add1A++s2Step333Add1B)).toFinset⊆s2Step333Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step333Add1Arena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333Add1_checked : compileHmrHybridCinLog s2Step333Add1Arena 822 877 827 s2Step333Add1A s2Step333Add1B s2Step333Add1Work=some s2Step333Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step333Add1Arena s2Step333Add1During 822 877 827 s2Step333Add1A s2Step333Add1B s2Step333Add1Work
    (by decide +kernel) (by decide +kernel) s2Step333Add1_distinct
    (fun q hq => s2Step333Add1_owned (List.mem_toFinset.mpr hq)) s2Step333Add1_borrowed

private theorem s2Step333F4_apart : Disjoint (s2Step333Add0A++s2Step333Add0B).toFinset (s2Step333Add1A++s2Step333Add1B).toFinset := by
  have nd : ((s2Step333Add0A++s2Step333Add0B)++(s2Step333Add1A++s2Step333Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step333F4_carry : s2Step333F4FlagArena.checkBorrow 1 [827]=some s2Step333Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step333F4FlagArena,s2Step333HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step333F4FlagArena,s2Step333HeadFvAfter,s2Step333Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step333F4_distinct : (786::822::877::827::((s2Step333Add0A++s2Step333Add1A)++(s2Step333Add0B++s2Step333Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333F4_flag : s2Step333HeadFvAfter.checkBorrow 1 [877]=some s2Step333F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step333HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step333F4_owned : (786::822::((s2Step333Add0A++s2Step333Add1A)++(s2Step333Add0B++s2Step333Add1B))).toFinset⊆s2Step333HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step333HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333F4_checked : compileHmrHybridF4Log s2Step333HeadFvAfter 786 822 s2Step333Add0A s2Step333Add0B s2Step333Add1A s2Step333Add1B [877] [827] s2Step333Add0Work s2Step333Add1Work=some s2Step333F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step333HeadFvAfter s2Step333F4FlagArena s2Step333Add0Arena s2Step333Add0During s2Step333Add1During 786 822
    s2Step333Add0A s2Step333Add0B s2Step333Add1A s2Step333Add1B [877] [827] s2Step333Add0Work s2Step333Add1Work
    (fun q hq => s2Step333F4_owned (List.mem_toFinset.mpr hq)) s2Step333F4_flag s2Step333F4_carry
    s2Step333F4_distinct s2Step333F4_apart s2Step333Add0_checked s2Step333Add1_checked

private theorem s2Step333Front_branch : s2Step333FrontSigmaArena.checkBorrow 1 [822]=some s2Step333HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step333FrontSigmaArena,s2Step333EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step333FrontSigmaArena,s2Step333EntryGvAfter,s2Step333HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step333Front_entry : HmrFrontEntryValid s2Step333EntryFBefore s2Step333FrontBank 104 182 ⟨104,103,183,182⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step333FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step333EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step333EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step333FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step333Front_sigma : s2Step333EntryGvAfter.checkBorrow 1 [786]=some s2Step333FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step333EntryGvAfter,arenaWires]
  · rfl

private def s2Step333HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333HeadFBefore : Arena := s2Step333HeadGAfter

private def s2Step333HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615],768⟩

private def s2Step333HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836],770⟩

private def s2Step333HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],769⟩

private def s2Step333HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834],771⟩

private theorem s2Step333HeadBank_incomingDistinct : ([s2Step333HeadGRow,s2Step333HeadFRow,s2Step333HeadGvRow,s2Step333HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333HeadF_Incoming : rowsOwned s2Step333HeadFBefore [s2Step333HeadFRow,s2Step333HeadGvRow,s2Step333HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step333HeadGRow,s2Step333HeadFRow,s2Step333HeadGvRow,s2Step333HeadFvRow] 1 s2Step333HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step333HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step333HeadBank_outgoingOwned : rowsOwned s2Step333HeadFvAfter [s2Step333HeadGOut,s2Step333HeadFOut,s2Step333HeadGvOut,s2Step333HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step333HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step333HeadF_Outgoing : rowsOwned s2Step333HeadFvAfter [s2Step333HeadFOut,s2Step333HeadGvOut,s2Step333HeadFvOut] :=
  hmrRows_owned_drop s2Step333HeadFvAfter [s2Step333HeadGOut,s2Step333HeadFOut,s2Step333HeadGvOut,s2Step333HeadFvOut] 1 s2Step333HeadBank_outgoingOwned

private theorem s2Step333HeadF_distinct : (s2Step333HeadFRow.sign::s2Step333HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333HeadF_owned : (s2Step333HeadFRow.sign::s2Step333HeadFRow.payload).toFinset⊆s2Step333HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step333HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333HeadF_reserved : s2Step333HeadFBefore.reserve s2Step333HeadFFresh.toFinset=some s2Step333HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step333HeadFFresh,arenaWires]
  · norm_num [s2Step333HeadFBefore,s2Step333HeadGAfter,s2Step333HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step333HeadFAfter,s2Step333HeadFBefore,s2Step333HeadGAfter,s2Step333HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step333HeadF_checked : planRowResizeLog s2Step333HeadFBefore s2Step333HeadFRow 105 s2Step333HeadFFresh=
    some (s2Step333HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 779],768⟩,growRow 768 s2Step333HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step333HeadFBefore s2Step333HeadFAfter s2Step333HeadFRow 105 s2Step333HeadFFresh
    s2Step333HeadF_distinct s2Step333HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step333HeadF_reserved
  have rowEq : WindowRow.mk (s2Step333HeadFRow.payload++s2Step333HeadFFresh) s2Step333HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 779],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step333HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step333HeadFvBefore : Arena := s2Step333HeadGvAfter

private theorem s2Step333HeadFv_Incoming : rowsOwned s2Step333HeadFvBefore [s2Step333HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step333HeadGRow,s2Step333HeadFRow,s2Step333HeadGvRow,s2Step333HeadFvRow] 3 s2Step333HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step333HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step333HeadFv_Outgoing : rowsOwned s2Step333HeadFvAfter [s2Step333HeadFvOut] :=
  hmrRows_owned_drop s2Step333HeadFvAfter [s2Step333HeadGOut,s2Step333HeadFOut,s2Step333HeadGvOut,s2Step333HeadFvOut] 3 s2Step333HeadBank_outgoingOwned

private theorem s2Step333HeadFv_distinct : (s2Step333HeadFvRow.sign::s2Step333HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333HeadFv_owned : (s2Step333HeadFvRow.sign::s2Step333HeadFvRow.payload).toFinset⊆s2Step333HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step333HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333HeadFv_reserved : s2Step333HeadFvBefore.reserve s2Step333HeadFvFresh.toFinset=some s2Step333HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step333HeadFvFresh,arenaWires]
  · norm_num [s2Step333HeadFvBefore,s2Step333HeadGvAfter,s2Step333HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step333HeadFvAfter,s2Step333HeadFvBefore,s2Step333HeadGvAfter,s2Step333HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step333HeadFv_checked : planRowResizeLog s2Step333HeadFvBefore s2Step333HeadFvRow 183 s2Step333HeadFvFresh=
    some (s2Step333HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829],770⟩,growRow 770 s2Step333HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step333HeadFvBefore s2Step333HeadFvAfter s2Step333HeadFvRow 183 s2Step333HeadFvFresh
    s2Step333HeadFv_distinct s2Step333HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step333HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step333HeadFvRow.payload++s2Step333HeadFvFresh) s2Step333HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step333HeadG_Incoming : rowsOwned s2Step333HeadGBefore [s2Step333HeadGRow,s2Step333HeadFRow,s2Step333HeadGvRow,s2Step333HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step333HeadGRow,s2Step333HeadFRow,s2Step333HeadGvRow,s2Step333HeadFvRow] 0 s2Step333HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step333HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step333HeadG_Outgoing : rowsOwned s2Step333HeadFvAfter [s2Step333HeadGOut,s2Step333HeadFOut,s2Step333HeadGvOut,s2Step333HeadFvOut] :=
  hmrRows_owned_drop s2Step333HeadFvAfter [s2Step333HeadGOut,s2Step333HeadFOut,s2Step333HeadGvOut,s2Step333HeadFvOut] 0 s2Step333HeadBank_outgoingOwned

private theorem s2Step333HeadG_distinct : (s2Step333HeadGRow.sign::s2Step333HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333HeadG_owned : (s2Step333HeadGRow.sign::s2Step333HeadGRow.payload).toFinset⊆s2Step333HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step333HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333HeadG_reserved : s2Step333HeadGBefore.reserve s2Step333HeadGFresh.toFinset=some s2Step333HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step333HeadGFresh,arenaWires]
  · norm_num [s2Step333HeadGBefore,s2Step333HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step333HeadGAfter,s2Step333HeadGBefore,s2Step333HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step333HeadG_checked : planRowResizeLog s2Step333HeadGBefore s2Step333HeadGRow 105 s2Step333HeadGFresh=
    some (s2Step333HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 794],769⟩,growRow 769 s2Step333HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step333HeadGBefore s2Step333HeadGAfter s2Step333HeadGRow 105 s2Step333HeadGFresh
    s2Step333HeadG_distinct s2Step333HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step333HeadG_reserved
  have rowEq : WindowRow.mk (s2Step333HeadGRow.payload++s2Step333HeadGFresh) s2Step333HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 794],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step333HeadGvBefore : Arena := s2Step333HeadFAfter

private theorem s2Step333HeadGv_Incoming : rowsOwned s2Step333HeadGvBefore [s2Step333HeadGvRow,s2Step333HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step333HeadGRow,s2Step333HeadFRow,s2Step333HeadGvRow,s2Step333HeadFvRow] 2 s2Step333HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step333HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step333HeadGv_Outgoing : rowsOwned s2Step333HeadFvAfter [s2Step333HeadGvOut,s2Step333HeadFvOut] :=
  hmrRows_owned_drop s2Step333HeadFvAfter [s2Step333HeadGOut,s2Step333HeadFOut,s2Step333HeadGvOut,s2Step333HeadFvOut] 2 s2Step333HeadBank_outgoingOwned

private theorem s2Step333HeadGv_distinct : (s2Step333HeadGvRow.sign::s2Step333HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step333HeadGv_owned : (s2Step333HeadGvRow.sign::s2Step333HeadGvRow.payload).toFinset⊆s2Step333HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step333HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step333HeadGv_reserved : s2Step333HeadGvBefore.reserve s2Step333HeadGvFresh.toFinset=some s2Step333HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step333HeadGvFresh,arenaWires]
  · norm_num [s2Step333HeadGvBefore,s2Step333HeadFAfter,s2Step333HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step333HeadGvAfter,s2Step333HeadGvBefore,s2Step333HeadFAfter,s2Step333HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step333HeadGv_checked : planRowResizeLog s2Step333HeadGvBefore s2Step333HeadGvRow 183 s2Step333HeadGvFresh=
    some (s2Step333HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 806],771⟩,growRow 771 s2Step333HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step333HeadGvBefore s2Step333HeadGvAfter s2Step333HeadGvRow 183 s2Step333HeadGvFresh
    s2Step333HeadGv_distinct s2Step333HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step333HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step333HeadGvRow.payload++s2Step333HeadGvFresh) s2Step333HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 806],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step333HeadBank_rows : planWindowRowsLog s2Step333HeadGBefore [(s2Step333HeadGRow,105),(s2Step333HeadFRow,105),(s2Step333HeadGvRow,183),(s2Step333HeadFvRow,183)] [s2Step333HeadGFresh,s2Step333HeadFFresh,s2Step333HeadGvFresh,s2Step333HeadFvFresh]=
    some (s2Step333HeadFvAfter,[s2Step333HeadGOut,s2Step333HeadFOut,s2Step333HeadGvOut,s2Step333HeadFvOut],(growRow 769 s2Step333HeadGFresh ++ (growRow 768 s2Step333HeadFFresh ++ (growRow 771 s2Step333HeadGvFresh ++ (growRow 770 s2Step333HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step333HeadFvAfter [] []=some (s2Step333HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step333HeadFvBefore s2Step333HeadFvAfter s2Step333HeadFvAfter
    s2Step333HeadFvRow s2Step333HeadFvOut 183 s2Step333HeadFvFresh [] [] []
    (growRow 770 s2Step333HeadFvFresh) ([]) s2Step333HeadFv_Incoming s2Step333HeadFv_checked h4 s2Step333HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step333HeadGvBefore s2Step333HeadGvAfter s2Step333HeadFvAfter
    s2Step333HeadGvRow s2Step333HeadGvOut 183 s2Step333HeadGvFresh [(s2Step333HeadFvRow,183)] [s2Step333HeadFvFresh] [s2Step333HeadFvOut]
    (growRow 771 s2Step333HeadGvFresh) ((growRow 770 s2Step333HeadFvFresh ++ [])) s2Step333HeadGv_Incoming s2Step333HeadGv_checked h3 s2Step333HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step333HeadFBefore s2Step333HeadFAfter s2Step333HeadFvAfter
    s2Step333HeadFRow s2Step333HeadFOut 105 s2Step333HeadFFresh [(s2Step333HeadGvRow,183),(s2Step333HeadFvRow,183)] [s2Step333HeadGvFresh,s2Step333HeadFvFresh] [s2Step333HeadGvOut,s2Step333HeadFvOut]
    (growRow 768 s2Step333HeadFFresh) ((growRow 771 s2Step333HeadGvFresh ++ (growRow 770 s2Step333HeadFvFresh ++ []))) s2Step333HeadF_Incoming s2Step333HeadF_checked h2 s2Step333HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step333HeadGBefore s2Step333HeadGAfter s2Step333HeadFvAfter
    s2Step333HeadGRow s2Step333HeadGOut 105 s2Step333HeadGFresh [(s2Step333HeadFRow,105),(s2Step333HeadGvRow,183),(s2Step333HeadFvRow,183)] [s2Step333HeadFFresh,s2Step333HeadGvFresh,s2Step333HeadFvFresh] [s2Step333HeadFOut,s2Step333HeadGvOut,s2Step333HeadFvOut]
    (growRow 769 s2Step333HeadGFresh) ((growRow 768 s2Step333HeadFFresh ++ (growRow 771 s2Step333HeadGvFresh ++ (growRow 770 s2Step333HeadFvFresh ++ [])))) s2Step333HeadG_Incoming s2Step333HeadG_checked h1 s2Step333HeadG_Outgoing
  exact h0

private theorem s2Step333HeadBank_checked : compileHmrBankResizeLog .headroom s2Step333HeadGBefore ⟨s2Step333HeadFRow,s2Step333HeadGRow,s2Step333HeadFvRow,s2Step333HeadGvRow⟩ ⟨105,105,183,183⟩ [s2Step333HeadGFresh,s2Step333HeadFFresh,s2Step333HeadGvFresh,s2Step333HeadFvFresh]=
    some (s2Step333HeadFvAfter,⟨s2Step333HeadFOut,s2Step333HeadGOut,s2Step333HeadFvOut,s2Step333HeadGvOut⟩,(growRow 769 s2Step333HeadGFresh ++ (growRow 768 s2Step333HeadFFresh ++ (growRow 771 s2Step333HeadGvFresh ++ (growRow 770 s2Step333HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step333HeadBank_rows]
  rfl

private theorem s2Step333Front_checked : compileHmrSourceFrontLog s2Step333EntryFBefore s2Step333FrontBank 104 182 ⟨104,103,183,182⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step333FrontLog=some s2Step333FrontPlan := by
  have pairEq : s2Step333FrontPair=⟨s2Step333HeadFRow,s2Step333HeadGRow,s2Step333HeadFvRow,s2Step333HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step333FrontHead=⟨s2Step333ExitFRow,s2Step333ExitGRow,s2Step333ExitFvRow,s2Step333ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step333Add0A=s2Step333FrontHead.f.wires := by decide +kernel
  have gEq : s2Step333Add0B=s2Step333FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step333Add1A=s2Step333FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step333Add1B=s2Step333FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step333EntryFBefore s2Step333FrontBank 104 182 ⟨104,103,183,182⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step333FrontLog s2Step333FrontPlan
  · exact s2Step333Front_entry
  · exact s2Step333EntryBank_checked
  · exact s2Step333Front_sigma
  · rfl
  · exact s2Step333Front_branch
  · rfl
  · simpa only [s2Step333FrontPlan,pairEq] using s2Step333HeadBank_checked
  · simpa only [s2Step333FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step333F4_checked
  · exact s2Step333Counter_checked
  · rfl
  · simpa only [s2Step333FrontPlan,headEq] using s2Step333ExitBank_checked

private theorem s2Step333Complete_explicit_checked : compileHmrEarlyStepLog s2Step333EntryFBefore s2Step333FrontBank 104 182 ⟨104,103,183,182⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step333CompleteLog=some s2Step333CompletePlan := by
  let Q := s2Step333EarlyControlPlan
  have hq := s2Step333EarlyControl_plan_checked
  have fv1 : s2Step333CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step333CompleteOut.fv.payload[2]?.getD s2Step333CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step333CompleteOut.fv.payload[3]?.getD s2Step333CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step333CompleteOut.fv.payload[4]?.getD s2Step333CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step333EntryFBefore s2Step333EarlyControlArena s2Step333FrontBank 104 182 ⟨104,103,183,182⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step333CompleteLog s2Step333FrontPlan Q
    s2Step333Front_checked s2Step333Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step333Complete_owned s2Step333Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step333EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 s2Step333CompleteOut.fv.second (s2Step333CompleteOut.fv.payload[2]?.getD s2Step333CompleteOut.fv.sign) (s2Step333CompleteOut.fv.payload[3]?.getD s2Step333CompleteOut.fv.sign) (s2Step333CompleteOut.fv.payload[4]?.getD s2Step333CompleteOut.fv.sign) 822 60 s2Step333EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep333Arena : Arena := s2Step333EntryFBefore
def s2PrivateStep333Bank : WindowBank := s2Step333FrontBank
def s2PrivateStep333Spec : HmrSourceWalkStepLog := ⟨104,182,⟨104,103,183,182⟩,60,.early s2Step333CompleteLog⟩
def s2PrivateStep333Plan : HmrSourceStepPlan := .early s2Step333CompletePlan
theorem s2PrivateStep333_source : s2PrivateStep333Spec=s2ObservedLogs320[13] := rfl
theorem s2PrivateStep333_checked : compileHmrSourceStepLog s2PrivateStep333Arena s2PrivateStep333Bank
    s2PrivateStep333Spec.fgWidth s2PrivateStep333Spec.vWidth s2PrivateStep333Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 333 s2PrivateStep333Spec.need none s2PrivateStep333Spec.log=some s2PrivateStep333Plan := by
  change compileHmrSourceStepLog s2Step333EntryFBefore s2Step333FrontBank 104 182 ⟨104,103,183,182⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 333 60 none (.early s2Step333CompleteLog)=some (.early s2Step333CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 333<498)]
  rw [s2Step333Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
