import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep334
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

private def s2Step336CompleteMoves : List (Wire × Wire) := [(789,102)]

private def s2Step336EarlyControlLog : HmrEarlyControlLog := ⟨[789, 877, 806, 827, 794],[822],[784],[800, 894, 896, 901, 903, 907],[]⟩

private def s2Step336FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [877]],[[822], [794], [806], [827]],[[], [], [], []]⟩,[786],[851],[784],[800],[894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[784, 800, 894, 896]⟩

private def s2Step336CompleteLog : HmrEarlyStepLog := ⟨s2Step336FrontLog,s2Step336CompleteMoves,s2Step336EarlyControlLog⟩

private def s2Step336ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩

private def s2Step336ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779],770⟩

private def s2Step336ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101],769⟩

private def s2Step336ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816],771⟩

private def s2Step336FrontOut : WindowBank := ⟨s2Step336ExitFOut,s2Step336ExitGOut,s2Step336ExitFvOut,s2Step336ExitGvOut⟩

private def s2Step336CompleteOut : WindowBank := s2Step336FrontOut.repacked s2Step336CompleteMoves

private def s2Step336EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step336EarlyControlPositiveArena,[822],s2Step336EarlyControlEqualityArena,[784],⟨⟨786,false⟩,[⟨⟨822,false⟩,784⟩]⟩⟩

private def s2Step336EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,789⟩,⟨⟨774,false⟩,877⟩,⟨⟨775,false⟩,806⟩,⟨⟨776,false⟩,827⟩,⟨⟨777,false⟩,794⟩]⟩

private def s2Step336EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step336EarlyControlZeroArena,s2Step336EarlyControlZeroPlan,s2Step336EarlyControlClassPlan,s2Step336EarlyControlFlagArena,s2Step336EarlyControlFittedArena,s2Step336EarlyControlHistoryArena,s2Step336EarlyControlSigmaArena,s2Step336EarlyControlOutputArena,s2Step336EarlyControlLog⟩

private def s2Step336CounterWork : List Wire := [784, 800, 894, 896]

private theorem s2Step336Counter_bounded : s2Step336CounterWork.toFinset⊆arenaWires := by norm_num [s2Step336CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step336HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336CounterDuring : Arena := ⟨s2Step336HeadFvAfter.live∪s2Step336CounterWork.toFinset,Finset.union_subset s2Step336HeadFvAfter.bounded s2Step336Counter_bounded⟩

private def s2Step336EntryFFresh : List Wire := []

private def s2Step336EntryFvFresh : List Wire := []

private def s2Step336EntryGFresh : List Wire := []

private def s2Step336EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336EntryGvFresh : List Wire := [877]

private def s2Step336ExitFExtra : List Wire := [794]

private def s2Step336ExitFvExtra : List Wire := [827]

private def s2Step336ExitGExtra : List Wire := [102, 822]

private def s2Step336ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336ExitGvExtra : List Wire := [877, 806]

private def s2Step336Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336Add0Work : List Wire := [894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step336Add0_bounded : s2Step336Add0Work.toFinset⊆arenaWires := by
  have h : s2Step336Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step336Add0During : Arena := ⟨s2Step336Add0Arena.live∪s2Step336Add0Work.toFinset,Finset.union_subset s2Step336Add0Arena.bounded s2Step336Add0_bounded⟩

private def s2Step336Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336Add1Work : List Wire := [894, 896, 901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step336Add1_bounded : s2Step336Add1Work.toFinset⊆arenaWires := by
  have h : s2Step336Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step336Add1During : Arena := ⟨s2Step336Add1Arena.live∪s2Step336Add1Work.toFinset,Finset.union_subset s2Step336Add1Arena.bounded s2Step336Add1_bounded⟩

private def s2Step336F4FlagArena : Arena := ⟨s2Step336HeadFvAfter.live∪{784},Finset.union_subset s2Step336HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step336F4Plan : HmrHybridF4Plan := ⟨s2Step336F4FlagArena,[784],s2Step336Add0Arena,[800],s2Step336Add0During,s2Step336Add0Work,s2Step336Add1During,s2Step336Add1Work⟩

private def s2Step336HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 794],768⟩

private def s2Step336HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 827],770⟩

private def s2Step336HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 822],769⟩

private def s2Step336HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 877, 806],771⟩

private def s2Step336FrontHead : WindowBank := ⟨s2Step336HeadFOut,s2Step336HeadGOut,s2Step336HeadFvOut,s2Step336HeadGvOut⟩

private def s2Step336EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩

private def s2Step336EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779],770⟩

private def s2Step336EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],769⟩

private def s2Step336EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 877],771⟩

private def s2Step336FrontPair : WindowBank := ⟨s2Step336EntryFOut,s2Step336EntryGOut,s2Step336EntryFvOut,s2Step336EntryGvOut⟩

private def s2Step336FrontSigmaArena : Arena := ⟨s2Step336EntryGvAfter.live∪{786},Finset.union_subset s2Step336EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step336HeadFFresh : List Wire := [794]

private def s2Step336HeadFvFresh : List Wire := [827]

private def s2Step336HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336HeadGFresh : List Wire := [822]

private def s2Step336HeadGvFresh : List Wire := [806]

private def s2Step336FrontPlan : HmrSourceFront := ⟨s2Step336EntryGvAfter,s2Step336FrontPair,(growRow 768 s2Step336EntryFFresh ++ (growRow 769 s2Step336EntryGFresh ++ (growRow 770 s2Step336EntryFvFresh ++ (growRow 771 s2Step336EntryGvFresh ++ [])))),s2Step336FrontSigmaArena,[786],s2Step336HeadGBefore,[851],
  s2Step336HeadFvAfter,s2Step336FrontHead,(growRow 769 s2Step336HeadGFresh ++ (growRow 768 s2Step336HeadFFresh ++ (growRow 771 s2Step336HeadGvFresh ++ (growRow 770 s2Step336HeadFvFresh ++ [])))),s2Step336F4Plan,s2Step336CounterDuring,s2Step336CounterWork,s2Step336ExitGvAfter,s2Step336FrontOut,(shrinkRow 769 s2Step336ExitGExtra ++ (shrinkRow 768 s2Step336ExitFExtra ++ (shrinkRow 770 s2Step336ExitFvExtra ++ (shrinkRow 771 s2Step336ExitGvExtra ++ []))))⟩

private def s2Step336CompletePlan : HmrEarlyStepPlan := ⟨s2Step336FrontPlan,s2Step336EarlyControlArena,s2Step336EarlyControlPlan,s2Step336CompleteMoves⟩

private theorem s2Step336Complete_apart : List.Disjoint (s2Step336CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [786, 851, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step336CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[786, 851, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step336Complete_owned : (s2Step336CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step336EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step336EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step336CompleteMoveArena : Arena := ⟨s2Step336ExitGvAfter.live∪{102},Finset.union_subset s2Step336ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step336Complete_repack : s2Step336ExitGvAfter.checkRepack s2Step336CompleteMoves=some s2Step336EarlyControlArena := by
  have owned : 789∈s2Step336ExitGvAfter.live := by norm_num [s2Step336ExitGvAfter,arenaWires]
  have reserve : s2Step336ExitGvAfter.reserve {102}=some s2Step336CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step336ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step336CompleteMoveArena.retireSet {789}=s2Step336EarlyControlArena := by
    unfold Arena.retireSet s2Step336EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step336CompleteMoveArena,s2Step336ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step336CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step336CompleteMoveArena.retireSet {789}).checkRepack []=some s2Step336EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step336EarlyControl_branchOwned : ([851] : List Wire).toFinset⊆s2Step336EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step336EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336EarlyControl_branch : compileHmrBranchRetirement s2Step336EarlyControlSigmaArena 851=some s2Step336EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step336EarlyControl_branchOwned
  · ext q
    simp [s2Step336EarlyControlOutputArena,s2Step336EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step336EarlyControl_classEqualityBorrow : s2Step336EarlyControlPositiveArena.checkBorrow (([786, 822] : List Wire).length-1) s2Step336EarlyControlLog.classWork=some s2Step336EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step336EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step336EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step336EarlyControlEqualityArena,s2Step336EarlyControlPositiveArena,s2Step336EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step336EarlyControl_classEqualityOwned : ([786, 822] : List Wire).toFinset⊆s2Step336EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step336EarlyControlPositiveArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336EarlyControl_classEquality : compileHmrEqualityLog s2Step336EarlyControlPositiveArena [786, 822] 0 s2Step336EarlyControlLog.classWork=some (s2Step336EarlyControlEqualityArena,s2Step336EarlyControlLog.classWork,s2Step336EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step336EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step336EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step336EarlyControl_classOwned : ([777, 794, 786] : List Wire).toFinset⊆s2Step336EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step336EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336EarlyControl_positiveBorrow : s2Step336EarlyControlZeroArena.checkBorrow (1) s2Step336EarlyControlLog.positiveWork=some s2Step336EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step336EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step336EarlyControlZeroArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step336EarlyControlPositiveArena,s2Step336EarlyControlZeroArena,s2Step336EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step336EarlyControl_class : compileHmrSourceClassLog s2Step336EarlyControlZeroArena false 777 s2Step336EarlyControlZeroPlan.top 0 786 s2Step336EarlyControlLog.positiveWork s2Step336EarlyControlLog.classWork=some s2Step336EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step336EarlyControlClassPlan s2Step336EarlyControlZeroArena false 777 s2Step336EarlyControlZeroPlan.top 0 786
  constructor
  · decide +kernel
  · exact s2Step336EarlyControl_classOwned
  · exact s2Step336EarlyControl_positiveBorrow
  · exact s2Step336EarlyControl_classEquality

private theorem s2Step336EarlyControl_entryRecordOwned : ([851, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step336EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step336EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336EarlyControl_entrySigmaOwned : ([786, 254] : List Wire).toFinset⊆s2Step336EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step336EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336EarlyControl_fitBorrow : s2Step336EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step336EarlyControlLog.recordFresh=some s2Step336EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step336EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step336EarlyControlFlagArena (fun q => (0≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step336EarlyControlFittedArena,s2Step336EarlyControlFlagArena,s2Step336EarlyControlLog,arenaWires]

private theorem s2Step336EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step336EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step336EarlyControlFlagArena (fun q => (0≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336EarlyControl_fit : compileHmrRecordGrowLog s2Step336EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step336EarlyControlLog.recordFresh=some s2Step336EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step336EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step336EarlyControl_fitBorrow

private theorem s2Step336EarlyControl_flagsBorrow : s2Step336EarlyControlEqualityArena.checkBorrow (6) s2Step336EarlyControlLog.flagWork=some s2Step336EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step336EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step336EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step336EarlyControlFlagArena,s2Step336EarlyControlEqualityArena,s2Step336EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step336EarlyControl_flagsOwned : ([784, 253, 252, 251] : List Wire).toFinset⊆s2Step336EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step336EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336EarlyControl_flags : compileHmrFlagsLog s2Step336EarlyControlClassPlan.equalityArena s2Step336EarlyControlClassPlan.equality.top 253 252 251 s2Step336EarlyControlLog.flagWork=some s2Step336EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step336EarlyControl_flagsOwned⟩
  · exact s2Step336EarlyControl_flagsBorrow

private theorem s2Step336EarlyControl_historyBorrow : s2Step336EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step336EarlyControlLog.recordFresh=some s2Step336EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step336EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step336EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step336EarlyControlHistoryArena,s2Step336EarlyControlArena,s2Step336EarlyControlLog,arenaWires]

private theorem s2Step336EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step336EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step336EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336EarlyControl_history : compileHmrRecordGrowLog s2Step336EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step336EarlyControlLog.recordFresh=some s2Step336EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step336EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step336EarlyControl_historyBorrow

private theorem s2Step336EarlyControl_sigmaOwned : ([254, 786] : List Wire).toFinset⊆s2Step336EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step336EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336EarlyControl_sigmaReleaseOwned : ([786] : List Wire).toFinset⊆s2Step336EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step336EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336EarlyControl_sigmaRelease : s2Step336EarlyControlHistoryArena.release {786} (fun _ => false)=some s2Step336EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step336EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step336EarlyControlSigmaArena,s2Step336EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step336EarlyControl_sigma : compileHmrSigmaDropLog s2Step336EarlyControlHistoryArena false 0 0 254 786 []=some s2Step336EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step336EarlyControl_sigmaOwned⟩
  · exact s2Step336EarlyControl_sigmaRelease

private theorem s2Step336EarlyControl_zeroBorrow : s2Step336EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step336EarlyControlLog.zeroWork=some s2Step336EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step336EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step336EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step336EarlyControlZeroArena,s2Step336EarlyControlArena,s2Step336EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step336EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step336EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step336EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336EarlyControl_zero : compileHmrEqualityLog s2Step336EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step336EarlyControlLog.zeroWork=some (s2Step336EarlyControlZeroArena,s2Step336EarlyControlLog.zeroWork,s2Step336EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step336EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step336EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step336EarlyControl_logged : s2Step336EarlyControlPlan.Logged s2Step336EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 254 253 252 251 851 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step336EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step336EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step336EarlyControl_zero
  · exact s2Step336EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step336EarlyControl_flags
  · exact s2Step336EarlyControl_fit
  · exact s2Step336EarlyControl_history
  · exact s2Step336EarlyControl_sigma
  · exact s2Step336EarlyControl_branch

private theorem s2Step336EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step336EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 254 253 252 251 851 60 s2Step336EarlyControlLog=some s2Step336EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step336EarlyControlPlan s2Step336EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 254 253 252 251 851 60 s2Step336EarlyControl_logged

private def s2Step336EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩

private def s2Step336EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779],770⟩

private def s2Step336EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],769⟩

private def s2Step336EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816],771⟩

private def s2Step336FrontBank : WindowBank := ⟨s2Step336EntryFRow,s2Step336EntryGRow,s2Step336EntryFvRow,s2Step336EntryGvRow⟩

private def s2Step336Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 794, 768]

private def s2Step336Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 822, 769]

private def s2Step336Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 827, 770]

private def s2Step336Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 877, 806, 771]

private theorem s2Step336Counter_apart : Disjoint s2Step336HeadFvAfter.live s2Step336CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step336HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336Counter_borrowed : s2Step336HeadFvAfter.checkBorrow 4 s2Step336CounterWork=some s2Step336CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step336HeadFvAfter s2Step336CounterDuring s2Step336CounterWork.toFinset s2Step336Counter_bounded s2Step336Counter_apart rfl

private theorem s2Step336Counter_owned : (786::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step336HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step336HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336Counter_checked : compileHmrCounterStepLog s2Step336HeadFvAfter true 786 [772, 773, 774, 775, 776, 777] s2Step336CounterWork=some s2Step336CounterDuring := by
  have owned : ∀q∈786::[772, 773, 774, 775, 776, 777],q∈s2Step336HeadFvAfter.live := fun q hq => s2Step336Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step336Counter_borrowed

private def s2Step336EntryFAfter : Arena := s2Step336EntryFBefore

private theorem s2Step336EntryBank_incomingDistinct : ([s2Step336EntryFRow,s2Step336EntryGRow,s2Step336EntryFvRow,s2Step336EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336EntryF_Incoming : rowsOwned s2Step336EntryFBefore [s2Step336EntryFRow,s2Step336EntryGRow,s2Step336EntryFvRow,s2Step336EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step336EntryFRow,s2Step336EntryGRow,s2Step336EntryFvRow,s2Step336EntryGvRow] 0 s2Step336EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step336EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step336EntryBank_outgoingOwned : rowsOwned s2Step336EntryGvAfter [s2Step336EntryFOut,s2Step336EntryGOut,s2Step336EntryFvOut,s2Step336EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step336EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step336EntryF_Outgoing : rowsOwned s2Step336EntryGvAfter [s2Step336EntryFOut,s2Step336EntryGOut,s2Step336EntryFvOut,s2Step336EntryGvOut] :=
  hmrRows_owned_drop s2Step336EntryGvAfter [s2Step336EntryFOut,s2Step336EntryGOut,s2Step336EntryFvOut,s2Step336EntryGvOut] 0 s2Step336EntryBank_outgoingOwned

private theorem s2Step336EntryF_distinct : (s2Step336EntryFRow.sign::s2Step336EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336EntryF_owned : (s2Step336EntryFRow.sign::s2Step336EntryFRow.payload).toFinset⊆s2Step336EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step336EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336EntryF_reserved : s2Step336EntryFBefore.reserve s2Step336EntryFFresh.toFinset=some s2Step336EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step336EntryFFresh,arenaWires]
  · norm_num [s2Step336EntryFBefore,s2Step336EntryFFresh,arenaWires]
  · simp only [s2Step336EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step336EntryF_checked : planRowResizeLog s2Step336EntryFBefore s2Step336EntryFRow 103 s2Step336EntryFFresh=
    some (s2Step336EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩,growRow 768 s2Step336EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step336EntryFBefore s2Step336EntryFAfter s2Step336EntryFRow 103 s2Step336EntryFFresh
    s2Step336EntryF_distinct s2Step336EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step336EntryF_reserved
  have rowEq : WindowRow.mk (s2Step336EntryFRow.payload++s2Step336EntryFFresh) s2Step336EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step336EntryFvAfter : Arena := s2Step336EntryFBefore

private def s2Step336EntryFvBefore : Arena := s2Step336EntryFBefore

private theorem s2Step336EntryFv_Incoming : rowsOwned s2Step336EntryFvBefore [s2Step336EntryFvRow,s2Step336EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step336EntryFRow,s2Step336EntryGRow,s2Step336EntryFvRow,s2Step336EntryGvRow] 2 s2Step336EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step336EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step336EntryFv_Outgoing : rowsOwned s2Step336EntryGvAfter [s2Step336EntryFvOut,s2Step336EntryGvOut] :=
  hmrRows_owned_drop s2Step336EntryGvAfter [s2Step336EntryFOut,s2Step336EntryGOut,s2Step336EntryFvOut,s2Step336EntryGvOut] 2 s2Step336EntryBank_outgoingOwned

private theorem s2Step336EntryFv_distinct : (s2Step336EntryFvRow.sign::s2Step336EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336EntryFv_owned : (s2Step336EntryFvRow.sign::s2Step336EntryFvRow.payload).toFinset⊆s2Step336EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step336EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336EntryFv_reserved : s2Step336EntryFvBefore.reserve s2Step336EntryFvFresh.toFinset=some s2Step336EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step336EntryFvFresh,arenaWires]
  · norm_num [s2Step336EntryFvBefore,s2Step336EntryFBefore,s2Step336EntryFvFresh,arenaWires]
  · simp only [s2Step336EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step336EntryFv_checked : planRowResizeLog s2Step336EntryFvBefore s2Step336EntryFvRow 184 s2Step336EntryFvFresh=
    some (s2Step336EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779],770⟩,growRow 770 s2Step336EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step336EntryFvBefore s2Step336EntryFvAfter s2Step336EntryFvRow 184 s2Step336EntryFvFresh
    s2Step336EntryFv_distinct s2Step336EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step336EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step336EntryFvRow.payload++s2Step336EntryFvFresh) s2Step336EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step336EntryGAfter : Arena := s2Step336EntryFBefore

private def s2Step336EntryGBefore : Arena := s2Step336EntryFBefore

private theorem s2Step336EntryG_Incoming : rowsOwned s2Step336EntryGBefore [s2Step336EntryGRow,s2Step336EntryFvRow,s2Step336EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step336EntryFRow,s2Step336EntryGRow,s2Step336EntryFvRow,s2Step336EntryGvRow] 1 s2Step336EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step336EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step336EntryG_Outgoing : rowsOwned s2Step336EntryGvAfter [s2Step336EntryGOut,s2Step336EntryFvOut,s2Step336EntryGvOut] :=
  hmrRows_owned_drop s2Step336EntryGvAfter [s2Step336EntryFOut,s2Step336EntryGOut,s2Step336EntryFvOut,s2Step336EntryGvOut] 1 s2Step336EntryBank_outgoingOwned

private theorem s2Step336EntryG_distinct : (s2Step336EntryGRow.sign::s2Step336EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336EntryG_owned : (s2Step336EntryGRow.sign::s2Step336EntryGRow.payload).toFinset⊆s2Step336EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step336EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336EntryG_reserved : s2Step336EntryGBefore.reserve s2Step336EntryGFresh.toFinset=some s2Step336EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step336EntryGFresh,arenaWires]
  · norm_num [s2Step336EntryGBefore,s2Step336EntryFBefore,s2Step336EntryGFresh,arenaWires]
  · simp only [s2Step336EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step336EntryG_checked : planRowResizeLog s2Step336EntryGBefore s2Step336EntryGRow 103 s2Step336EntryGFresh=
    some (s2Step336EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],769⟩,growRow 769 s2Step336EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step336EntryGBefore s2Step336EntryGAfter s2Step336EntryGRow 103 s2Step336EntryGFresh
    s2Step336EntryG_distinct s2Step336EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step336EntryG_reserved
  have rowEq : WindowRow.mk (s2Step336EntryGRow.payload++s2Step336EntryGFresh) s2Step336EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step336EntryGvBefore : Arena := s2Step336EntryFBefore

private theorem s2Step336EntryGv_Incoming : rowsOwned s2Step336EntryGvBefore [s2Step336EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step336EntryFRow,s2Step336EntryGRow,s2Step336EntryFvRow,s2Step336EntryGvRow] 3 s2Step336EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step336EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step336EntryGv_Outgoing : rowsOwned s2Step336EntryGvAfter [s2Step336EntryGvOut] :=
  hmrRows_owned_drop s2Step336EntryGvAfter [s2Step336EntryFOut,s2Step336EntryGOut,s2Step336EntryFvOut,s2Step336EntryGvOut] 3 s2Step336EntryBank_outgoingOwned

private theorem s2Step336EntryGv_distinct : (s2Step336EntryGvRow.sign::s2Step336EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336EntryGv_owned : (s2Step336EntryGvRow.sign::s2Step336EntryGvRow.payload).toFinset⊆s2Step336EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step336EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336EntryGv_reserved : s2Step336EntryGvBefore.reserve s2Step336EntryGvFresh.toFinset=some s2Step336EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step336EntryGvFresh,arenaWires]
  · norm_num [s2Step336EntryGvBefore,s2Step336EntryFBefore,s2Step336EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step336EntryGvAfter,s2Step336EntryGvBefore,s2Step336EntryFBefore,s2Step336EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step336EntryGv_checked : planRowResizeLog s2Step336EntryGvBefore s2Step336EntryGvRow 184 s2Step336EntryGvFresh=
    some (s2Step336EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 877],771⟩,growRow 771 s2Step336EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step336EntryGvBefore s2Step336EntryGvAfter s2Step336EntryGvRow 184 s2Step336EntryGvFresh
    s2Step336EntryGv_distinct s2Step336EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step336EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step336EntryGvRow.payload++s2Step336EntryGvFresh) s2Step336EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 877],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step336EntryBank_rows : planWindowRowsLog s2Step336EntryFBefore [(s2Step336EntryFRow,103),(s2Step336EntryGRow,103),(s2Step336EntryFvRow,184),(s2Step336EntryGvRow,184)] [s2Step336EntryFFresh,s2Step336EntryGFresh,s2Step336EntryFvFresh,s2Step336EntryGvFresh]=
    some (s2Step336EntryGvAfter,[s2Step336EntryFOut,s2Step336EntryGOut,s2Step336EntryFvOut,s2Step336EntryGvOut],(growRow 768 s2Step336EntryFFresh ++ (growRow 769 s2Step336EntryGFresh ++ (growRow 770 s2Step336EntryFvFresh ++ (growRow 771 s2Step336EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step336EntryGvAfter [] []=some (s2Step336EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step336EntryGvBefore s2Step336EntryGvAfter s2Step336EntryGvAfter
    s2Step336EntryGvRow s2Step336EntryGvOut 184 s2Step336EntryGvFresh [] [] []
    (growRow 771 s2Step336EntryGvFresh) ([]) s2Step336EntryGv_Incoming s2Step336EntryGv_checked h4 s2Step336EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step336EntryFvBefore s2Step336EntryFvAfter s2Step336EntryGvAfter
    s2Step336EntryFvRow s2Step336EntryFvOut 184 s2Step336EntryFvFresh [(s2Step336EntryGvRow,184)] [s2Step336EntryGvFresh] [s2Step336EntryGvOut]
    (growRow 770 s2Step336EntryFvFresh) ((growRow 771 s2Step336EntryGvFresh ++ [])) s2Step336EntryFv_Incoming s2Step336EntryFv_checked h3 s2Step336EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step336EntryGBefore s2Step336EntryGAfter s2Step336EntryGvAfter
    s2Step336EntryGRow s2Step336EntryGOut 103 s2Step336EntryGFresh [(s2Step336EntryFvRow,184),(s2Step336EntryGvRow,184)] [s2Step336EntryFvFresh,s2Step336EntryGvFresh] [s2Step336EntryFvOut,s2Step336EntryGvOut]
    (growRow 769 s2Step336EntryGFresh) ((growRow 770 s2Step336EntryFvFresh ++ (growRow 771 s2Step336EntryGvFresh ++ []))) s2Step336EntryG_Incoming s2Step336EntryG_checked h2 s2Step336EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step336EntryFBefore s2Step336EntryFAfter s2Step336EntryGvAfter
    s2Step336EntryFRow s2Step336EntryFOut 103 s2Step336EntryFFresh [(s2Step336EntryGRow,103),(s2Step336EntryFvRow,184),(s2Step336EntryGvRow,184)] [s2Step336EntryGFresh,s2Step336EntryFvFresh,s2Step336EntryGvFresh] [s2Step336EntryGOut,s2Step336EntryFvOut,s2Step336EntryGvOut]
    (growRow 768 s2Step336EntryFFresh) ((growRow 769 s2Step336EntryGFresh ++ (growRow 770 s2Step336EntryFvFresh ++ (growRow 771 s2Step336EntryGvFresh ++ [])))) s2Step336EntryF_Incoming s2Step336EntryF_checked h1 s2Step336EntryF_Outgoing
  exact h0

private theorem s2Step336EntryBank_checked : compileHmrBankResizeLog .entry s2Step336EntryFBefore ⟨s2Step336EntryFRow,s2Step336EntryGRow,s2Step336EntryFvRow,s2Step336EntryGvRow⟩ ⟨103,103,184,184⟩ [s2Step336EntryFFresh,s2Step336EntryGFresh,s2Step336EntryFvFresh,s2Step336EntryGvFresh]=
    some (s2Step336EntryGvAfter,⟨s2Step336EntryFOut,s2Step336EntryGOut,s2Step336EntryFvOut,s2Step336EntryGvOut⟩,(growRow 768 s2Step336EntryFFresh ++ (growRow 769 s2Step336EntryGFresh ++ (growRow 770 s2Step336EntryFvFresh ++ (growRow 771 s2Step336EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step336EntryBank_rows]
  rfl

private def s2Step336ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336ExitFBefore : Arena := s2Step336ExitGAfter

private def s2Step336ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 794],768⟩

private def s2Step336ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 827],770⟩

private def s2Step336ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 822],769⟩

private def s2Step336ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 877, 806],771⟩

private theorem s2Step336ExitBank_incomingDistinct : ([s2Step336ExitGRow,s2Step336ExitFRow,s2Step336ExitFvRow,s2Step336ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336ExitF_Incoming : rowsOwned s2Step336ExitFBefore [s2Step336ExitFRow,s2Step336ExitFvRow,s2Step336ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step336ExitGRow,s2Step336ExitFRow,s2Step336ExitFvRow,s2Step336ExitGvRow] 1 s2Step336ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step336ExitFBefore (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step336ExitBank_outgoingOwned : rowsOwned s2Step336ExitGvAfter [s2Step336ExitGOut,s2Step336ExitFOut,s2Step336ExitFvOut,s2Step336ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step336ExitGvAfter (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step336ExitF_Outgoing : rowsOwned s2Step336ExitGvAfter [s2Step336ExitFOut,s2Step336ExitFvOut,s2Step336ExitGvOut] :=
  hmrRows_owned_drop s2Step336ExitGvAfter [s2Step336ExitGOut,s2Step336ExitFOut,s2Step336ExitFvOut,s2Step336ExitGvOut] 1 s2Step336ExitBank_outgoingOwned

private theorem s2Step336ExitF_distinct : (s2Step336ExitFRow.sign::s2Step336ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336ExitF_owned : (s2Step336ExitFRow.sign::s2Step336ExitFRow.payload).toFinset⊆s2Step336ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step336ExitFBefore (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336ExitF_retired : s2Step336ExitFBefore.retireSet s2Step336ExitFExtra.toFinset=s2Step336ExitFAfter := by
  unfold Arena.retireSet s2Step336ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step336ExitFBefore,s2Step336ExitGAfter,s2Step336ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step336ExitF_checked : planRowResizeLog s2Step336ExitFBefore s2Step336ExitFRow 103 []=
    some (s2Step336ExitFAfter,s2Step336ExitFOut,shrinkRow 768 s2Step336ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step336ExitFBefore s2Step336ExitFRow 103 s2Step336ExitF_distinct s2Step336ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step336ExitFRow.payload.take 103) s2Step336ExitFRow.sign=s2Step336ExitFOut := by decide +kernel
  have hi : s2Step336ExitFRow.payload.drop 103=s2Step336ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step336ExitF_retired] at result
  exact result

private def s2Step336ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336ExitFvBefore : Arena := s2Step336ExitFAfter

private theorem s2Step336ExitFv_Incoming : rowsOwned s2Step336ExitFvBefore [s2Step336ExitFvRow,s2Step336ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step336ExitGRow,s2Step336ExitFRow,s2Step336ExitFvRow,s2Step336ExitGvRow] 2 s2Step336ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step336ExitFvBefore (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step336ExitFv_Outgoing : rowsOwned s2Step336ExitGvAfter [s2Step336ExitFvOut,s2Step336ExitGvOut] :=
  hmrRows_owned_drop s2Step336ExitGvAfter [s2Step336ExitGOut,s2Step336ExitFOut,s2Step336ExitFvOut,s2Step336ExitGvOut] 2 s2Step336ExitBank_outgoingOwned

private theorem s2Step336ExitFv_distinct : (s2Step336ExitFvRow.sign::s2Step336ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336ExitFv_owned : (s2Step336ExitFvRow.sign::s2Step336ExitFvRow.payload).toFinset⊆s2Step336ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step336ExitFvBefore (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336ExitFv_retired : s2Step336ExitFvBefore.retireSet s2Step336ExitFvExtra.toFinset=s2Step336ExitFvAfter := by
  unfold Arena.retireSet s2Step336ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step336ExitFvBefore,s2Step336ExitFAfter,s2Step336ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step336ExitFv_checked : planRowResizeLog s2Step336ExitFvBefore s2Step336ExitFvRow 184 []=
    some (s2Step336ExitFvAfter,s2Step336ExitFvOut,shrinkRow 770 s2Step336ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step336ExitFvBefore s2Step336ExitFvRow 184 s2Step336ExitFv_distinct s2Step336ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step336ExitFvRow.payload.take 184) s2Step336ExitFvRow.sign=s2Step336ExitFvOut := by decide +kernel
  have hi : s2Step336ExitFvRow.payload.drop 184=s2Step336ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step336ExitFv_retired] at result
  exact result

private def s2Step336ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step336ExitG_Incoming : rowsOwned s2Step336ExitGBefore [s2Step336ExitGRow,s2Step336ExitFRow,s2Step336ExitFvRow,s2Step336ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step336ExitGRow,s2Step336ExitFRow,s2Step336ExitFvRow,s2Step336ExitGvRow] 0 s2Step336ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step336ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step336ExitG_Outgoing : rowsOwned s2Step336ExitGvAfter [s2Step336ExitGOut,s2Step336ExitFOut,s2Step336ExitFvOut,s2Step336ExitGvOut] :=
  hmrRows_owned_drop s2Step336ExitGvAfter [s2Step336ExitGOut,s2Step336ExitFOut,s2Step336ExitFvOut,s2Step336ExitGvOut] 0 s2Step336ExitBank_outgoingOwned

private theorem s2Step336ExitG_distinct : (s2Step336ExitGRow.sign::s2Step336ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336ExitG_owned : (s2Step336ExitGRow.sign::s2Step336ExitGRow.payload).toFinset⊆s2Step336ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step336ExitGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336ExitG_retired : s2Step336ExitGBefore.retireSet s2Step336ExitGExtra.toFinset=s2Step336ExitGAfter := by
  unfold Arena.retireSet s2Step336ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step336ExitGBefore,s2Step336ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step336ExitG_checked : planRowResizeLog s2Step336ExitGBefore s2Step336ExitGRow 102 []=
    some (s2Step336ExitGAfter,s2Step336ExitGOut,shrinkRow 769 s2Step336ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step336ExitGBefore s2Step336ExitGRow 102 s2Step336ExitG_distinct s2Step336ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step336ExitGRow.payload.take 102) s2Step336ExitGRow.sign=s2Step336ExitGOut := by decide +kernel
  have hi : s2Step336ExitGRow.payload.drop 102=s2Step336ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step336ExitG_retired] at result
  exact result

private def s2Step336ExitGvBefore : Arena := s2Step336ExitFvAfter

private theorem s2Step336ExitGv_Incoming : rowsOwned s2Step336ExitGvBefore [s2Step336ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step336ExitGRow,s2Step336ExitFRow,s2Step336ExitFvRow,s2Step336ExitGvRow] 3 s2Step336ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step336ExitGvBefore (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step336ExitGv_Outgoing : rowsOwned s2Step336ExitGvAfter [s2Step336ExitGvOut] :=
  hmrRows_owned_drop s2Step336ExitGvAfter [s2Step336ExitGOut,s2Step336ExitFOut,s2Step336ExitFvOut,s2Step336ExitGvOut] 3 s2Step336ExitBank_outgoingOwned

private theorem s2Step336ExitGv_distinct : (s2Step336ExitGvRow.sign::s2Step336ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336ExitGv_owned : (s2Step336ExitGvRow.sign::s2Step336ExitGvRow.payload).toFinset⊆s2Step336ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step336ExitGvBefore (fun q => (0≤q ∧ q<102) ∨ (103≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336ExitGv_retired : s2Step336ExitGvBefore.retireSet s2Step336ExitGvExtra.toFinset=s2Step336ExitGvAfter := by
  unfold Arena.retireSet s2Step336ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step336ExitGvBefore,s2Step336ExitFvAfter,s2Step336ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step336ExitGv_checked : planRowResizeLog s2Step336ExitGvBefore s2Step336ExitGvRow 183 []=
    some (s2Step336ExitGvAfter,s2Step336ExitGvOut,shrinkRow 771 s2Step336ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step336ExitGvBefore s2Step336ExitGvRow 183 s2Step336ExitGv_distinct s2Step336ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step336ExitGvRow.payload.take 183) s2Step336ExitGvRow.sign=s2Step336ExitGvOut := by decide +kernel
  have hi : s2Step336ExitGvRow.payload.drop 183=s2Step336ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step336ExitGv_retired] at result
  exact result

private theorem s2Step336ExitBank_rows : planWindowRowsLog s2Step336ExitGBefore [(s2Step336ExitGRow,102),(s2Step336ExitFRow,103),(s2Step336ExitFvRow,184),(s2Step336ExitGvRow,183)] [[],[],[],[]]=
    some (s2Step336ExitGvAfter,[s2Step336ExitGOut,s2Step336ExitFOut,s2Step336ExitFvOut,s2Step336ExitGvOut],(shrinkRow 769 s2Step336ExitGExtra ++ (shrinkRow 768 s2Step336ExitFExtra ++ (shrinkRow 770 s2Step336ExitFvExtra ++ (shrinkRow 771 s2Step336ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step336ExitGvAfter [] []=some (s2Step336ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step336ExitGvBefore s2Step336ExitGvAfter s2Step336ExitGvAfter
    s2Step336ExitGvRow s2Step336ExitGvOut 183 [] [] [] []
    (shrinkRow 771 s2Step336ExitGvExtra) ([]) s2Step336ExitGv_Incoming s2Step336ExitGv_checked h4 s2Step336ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step336ExitFvBefore s2Step336ExitFvAfter s2Step336ExitGvAfter
    s2Step336ExitFvRow s2Step336ExitFvOut 184 [] [(s2Step336ExitGvRow,183)] [[]] [s2Step336ExitGvOut]
    (shrinkRow 770 s2Step336ExitFvExtra) ((shrinkRow 771 s2Step336ExitGvExtra ++ [])) s2Step336ExitFv_Incoming s2Step336ExitFv_checked h3 s2Step336ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step336ExitFBefore s2Step336ExitFAfter s2Step336ExitGvAfter
    s2Step336ExitFRow s2Step336ExitFOut 103 [] [(s2Step336ExitFvRow,184),(s2Step336ExitGvRow,183)] [[],[]] [s2Step336ExitFvOut,s2Step336ExitGvOut]
    (shrinkRow 768 s2Step336ExitFExtra) ((shrinkRow 770 s2Step336ExitFvExtra ++ (shrinkRow 771 s2Step336ExitGvExtra ++ []))) s2Step336ExitF_Incoming s2Step336ExitF_checked h2 s2Step336ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step336ExitGBefore s2Step336ExitGAfter s2Step336ExitGvAfter
    s2Step336ExitGRow s2Step336ExitGOut 102 [] [(s2Step336ExitFRow,103),(s2Step336ExitFvRow,184),(s2Step336ExitGvRow,183)] [[],[],[]] [s2Step336ExitFOut,s2Step336ExitFvOut,s2Step336ExitGvOut]
    (shrinkRow 769 s2Step336ExitGExtra) ((shrinkRow 768 s2Step336ExitFExtra ++ (shrinkRow 770 s2Step336ExitFvExtra ++ (shrinkRow 771 s2Step336ExitGvExtra ++ [])))) s2Step336ExitG_Incoming s2Step336ExitG_checked h1 s2Step336ExitG_Outgoing
  exact h0

private theorem s2Step336ExitBank_checked : compileHmrBankResizeLog .exit s2Step336ExitGBefore ⟨s2Step336ExitFRow,s2Step336ExitGRow,s2Step336ExitFvRow,s2Step336ExitGvRow⟩ ⟨103,102,184,183⟩ [[],[],[],[]]=
    some (s2Step336ExitGvAfter,⟨s2Step336ExitFOut,s2Step336ExitGOut,s2Step336ExitFvOut,s2Step336ExitGvOut⟩,(shrinkRow 769 s2Step336ExitGExtra ++ (shrinkRow 768 s2Step336ExitFExtra ++ (shrinkRow 770 s2Step336ExitFvExtra ++ (shrinkRow 771 s2Step336ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step336ExitBank_rows]
  rfl

private theorem s2Step336Add0_apart : Disjoint s2Step336Add0Arena.live s2Step336Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step336Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336Add0_card : s2Step336Add0Arena.live.card=908 := by
  decide +kernel

private theorem s2Step336Add0_borrowed : s2Step336Add0Arena.checkBorrow (hmrHybridCount s2Step336Add0Arena s2Step336Add0B.length) s2Step336Add0Work=some s2Step336Add0During := by
  have len : s2Step336Add0Work.length=hmrHybridCount s2Step336Add0Arena s2Step336Add0B.length := by
    rw [hmrHybridCount,s2Step336Add0_card]
    decide +kernel
  have nd : s2Step336Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step336Add0Arena s2Step336Add0During s2Step336Add0Work.toFinset s2Step336Add0_bounded s2Step336Add0_apart rfl

private theorem s2Step336Add0_distinct : (784::851::800::(s2Step336Add0A++s2Step336Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336Add0_owned : (784::851::800::(s2Step336Add0A++s2Step336Add0B)).toFinset⊆s2Step336Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step336Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336Add0_checked : compileHmrHybridCinLog s2Step336Add0Arena 851 784 800 s2Step336Add0A s2Step336Add0B s2Step336Add0Work=some s2Step336Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step336Add0Arena s2Step336Add0During 851 784 800 s2Step336Add0A s2Step336Add0B s2Step336Add0Work
    (by decide +kernel) (by decide +kernel) s2Step336Add0_distinct
    (fun q hq => s2Step336Add0_owned (List.mem_toFinset.mpr hq)) s2Step336Add0_borrowed

private theorem s2Step336Add1_apart : Disjoint s2Step336Add1Arena.live s2Step336Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step336Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336Add1_card : s2Step336Add1Arena.live.card=908 := by
  decide +kernel

private theorem s2Step336Add1_borrowed : s2Step336Add1Arena.checkBorrow (hmrHybridCount s2Step336Add1Arena s2Step336Add1B.length) s2Step336Add1Work=some s2Step336Add1During := by
  have len : s2Step336Add1Work.length=hmrHybridCount s2Step336Add1Arena s2Step336Add1B.length := by
    rw [hmrHybridCount,s2Step336Add1_card]
    decide +kernel
  have nd : s2Step336Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step336Add1Arena s2Step336Add1During s2Step336Add1Work.toFinset s2Step336Add1_bounded s2Step336Add1_apart rfl

private theorem s2Step336Add1_distinct : (784::851::800::(s2Step336Add1A++s2Step336Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336Add1_owned : (784::851::800::(s2Step336Add1A++s2Step336Add1B)).toFinset⊆s2Step336Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step336Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336Add1_checked : compileHmrHybridCinLog s2Step336Add1Arena 851 784 800 s2Step336Add1A s2Step336Add1B s2Step336Add1Work=some s2Step336Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step336Add1Arena s2Step336Add1During 851 784 800 s2Step336Add1A s2Step336Add1B s2Step336Add1Work
    (by decide +kernel) (by decide +kernel) s2Step336Add1_distinct
    (fun q hq => s2Step336Add1_owned (List.mem_toFinset.mpr hq)) s2Step336Add1_borrowed

private theorem s2Step336F4_apart : Disjoint (s2Step336Add0A++s2Step336Add0B).toFinset (s2Step336Add1A++s2Step336Add1B).toFinset := by
  have nd : ((s2Step336Add0A++s2Step336Add0B)++(s2Step336Add1A++s2Step336Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step336F4_carry : s2Step336F4FlagArena.checkBorrow 1 [800]=some s2Step336Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step336F4FlagArena,s2Step336HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step336F4FlagArena,s2Step336HeadFvAfter,s2Step336Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step336F4_distinct : (786::851::784::800::((s2Step336Add0A++s2Step336Add1A)++(s2Step336Add0B++s2Step336Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336F4_flag : s2Step336HeadFvAfter.checkBorrow 1 [784]=some s2Step336F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step336HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step336F4_owned : (786::851::((s2Step336Add0A++s2Step336Add1A)++(s2Step336Add0B++s2Step336Add1B))).toFinset⊆s2Step336HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step336HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336F4_checked : compileHmrHybridF4Log s2Step336HeadFvAfter 786 851 s2Step336Add0A s2Step336Add0B s2Step336Add1A s2Step336Add1B [784] [800] s2Step336Add0Work s2Step336Add1Work=some s2Step336F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step336HeadFvAfter s2Step336F4FlagArena s2Step336Add0Arena s2Step336Add0During s2Step336Add1During 786 851
    s2Step336Add0A s2Step336Add0B s2Step336Add1A s2Step336Add1B [784] [800] s2Step336Add0Work s2Step336Add1Work
    (fun q hq => s2Step336F4_owned (List.mem_toFinset.mpr hq)) s2Step336F4_flag s2Step336F4_carry
    s2Step336F4_distinct s2Step336F4_apart s2Step336Add0_checked s2Step336Add1_checked

private theorem s2Step336Front_branch : s2Step336FrontSigmaArena.checkBorrow 1 [851]=some s2Step336HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step336FrontSigmaArena,s2Step336EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step336FrontSigmaArena,s2Step336EntryGvAfter,s2Step336HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step336Front_entry : HmrFrontEntryValid s2Step336EntryFBefore s2Step336FrontBank 103 184 ⟨103,102,184,183⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step336FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step336EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step336EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step336FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step336Front_sigma : s2Step336EntryGvAfter.checkBorrow 1 [786]=some s2Step336FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step336EntryGvAfter,arenaWires]
  · rfl

private def s2Step336HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336HeadFBefore : Arena := s2Step336HeadGAfter

private def s2Step336HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩

private def s2Step336HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779],770⟩

private def s2Step336HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102],769⟩

private def s2Step336HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 877],771⟩

private theorem s2Step336HeadBank_incomingDistinct : ([s2Step336HeadGRow,s2Step336HeadFRow,s2Step336HeadGvRow,s2Step336HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336HeadF_Incoming : rowsOwned s2Step336HeadFBefore [s2Step336HeadFRow,s2Step336HeadGvRow,s2Step336HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step336HeadGRow,s2Step336HeadFRow,s2Step336HeadGvRow,s2Step336HeadFvRow] 1 s2Step336HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step336HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step336HeadBank_outgoingOwned : rowsOwned s2Step336HeadFvAfter [s2Step336HeadGOut,s2Step336HeadFOut,s2Step336HeadGvOut,s2Step336HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step336HeadFvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step336HeadF_Outgoing : rowsOwned s2Step336HeadFvAfter [s2Step336HeadFOut,s2Step336HeadGvOut,s2Step336HeadFvOut] :=
  hmrRows_owned_drop s2Step336HeadFvAfter [s2Step336HeadGOut,s2Step336HeadFOut,s2Step336HeadGvOut,s2Step336HeadFvOut] 1 s2Step336HeadBank_outgoingOwned

private theorem s2Step336HeadF_distinct : (s2Step336HeadFRow.sign::s2Step336HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336HeadF_owned : (s2Step336HeadFRow.sign::s2Step336HeadFRow.payload).toFinset⊆s2Step336HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step336HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336HeadF_reserved : s2Step336HeadFBefore.reserve s2Step336HeadFFresh.toFinset=some s2Step336HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step336HeadFFresh,arenaWires]
  · norm_num [s2Step336HeadFBefore,s2Step336HeadGAfter,s2Step336HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step336HeadFAfter,s2Step336HeadFBefore,s2Step336HeadGAfter,s2Step336HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step336HeadF_checked : planRowResizeLog s2Step336HeadFBefore s2Step336HeadFRow 104 s2Step336HeadFFresh=
    some (s2Step336HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 794],768⟩,growRow 768 s2Step336HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step336HeadFBefore s2Step336HeadFAfter s2Step336HeadFRow 104 s2Step336HeadFFresh
    s2Step336HeadF_distinct s2Step336HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step336HeadF_reserved
  have rowEq : WindowRow.mk (s2Step336HeadFRow.payload++s2Step336HeadFFresh) s2Step336HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 794],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step336HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step336HeadFvBefore : Arena := s2Step336HeadGvAfter

private theorem s2Step336HeadFv_Incoming : rowsOwned s2Step336HeadFvBefore [s2Step336HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step336HeadGRow,s2Step336HeadFRow,s2Step336HeadGvRow,s2Step336HeadFvRow] 3 s2Step336HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step336HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step336HeadFv_Outgoing : rowsOwned s2Step336HeadFvAfter [s2Step336HeadFvOut] :=
  hmrRows_owned_drop s2Step336HeadFvAfter [s2Step336HeadGOut,s2Step336HeadFOut,s2Step336HeadGvOut,s2Step336HeadFvOut] 3 s2Step336HeadBank_outgoingOwned

private theorem s2Step336HeadFv_distinct : (s2Step336HeadFvRow.sign::s2Step336HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336HeadFv_owned : (s2Step336HeadFvRow.sign::s2Step336HeadFvRow.payload).toFinset⊆s2Step336HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step336HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336HeadFv_reserved : s2Step336HeadFvBefore.reserve s2Step336HeadFvFresh.toFinset=some s2Step336HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step336HeadFvFresh,arenaWires]
  · norm_num [s2Step336HeadFvBefore,s2Step336HeadGvAfter,s2Step336HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step336HeadFvAfter,s2Step336HeadFvBefore,s2Step336HeadGvAfter,s2Step336HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step336HeadFv_checked : planRowResizeLog s2Step336HeadFvBefore s2Step336HeadFvRow 185 s2Step336HeadFvFresh=
    some (s2Step336HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 827],770⟩,growRow 770 s2Step336HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step336HeadFvBefore s2Step336HeadFvAfter s2Step336HeadFvRow 185 s2Step336HeadFvFresh
    s2Step336HeadFv_distinct s2Step336HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step336HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step336HeadFvRow.payload++s2Step336HeadFvFresh) s2Step336HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 827],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step336HeadG_Incoming : rowsOwned s2Step336HeadGBefore [s2Step336HeadGRow,s2Step336HeadFRow,s2Step336HeadGvRow,s2Step336HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step336HeadGRow,s2Step336HeadFRow,s2Step336HeadGvRow,s2Step336HeadFvRow] 0 s2Step336HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step336HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step336HeadG_Outgoing : rowsOwned s2Step336HeadFvAfter [s2Step336HeadGOut,s2Step336HeadFOut,s2Step336HeadGvOut,s2Step336HeadFvOut] :=
  hmrRows_owned_drop s2Step336HeadFvAfter [s2Step336HeadGOut,s2Step336HeadFOut,s2Step336HeadGvOut,s2Step336HeadFvOut] 0 s2Step336HeadBank_outgoingOwned

private theorem s2Step336HeadG_distinct : (s2Step336HeadGRow.sign::s2Step336HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336HeadG_owned : (s2Step336HeadGRow.sign::s2Step336HeadGRow.payload).toFinset⊆s2Step336HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step336HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336HeadG_reserved : s2Step336HeadGBefore.reserve s2Step336HeadGFresh.toFinset=some s2Step336HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step336HeadGFresh,arenaWires]
  · norm_num [s2Step336HeadGBefore,s2Step336HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step336HeadGAfter,s2Step336HeadGBefore,s2Step336HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step336HeadG_checked : planRowResizeLog s2Step336HeadGBefore s2Step336HeadGRow 104 s2Step336HeadGFresh=
    some (s2Step336HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 822],769⟩,growRow 769 s2Step336HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step336HeadGBefore s2Step336HeadGAfter s2Step336HeadGRow 104 s2Step336HeadGFresh
    s2Step336HeadG_distinct s2Step336HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step336HeadG_reserved
  have rowEq : WindowRow.mk (s2Step336HeadGRow.payload++s2Step336HeadGFresh) s2Step336HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 822],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step336HeadGvBefore : Arena := s2Step336HeadFAfter

private theorem s2Step336HeadGv_Incoming : rowsOwned s2Step336HeadGvBefore [s2Step336HeadGvRow,s2Step336HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step336HeadGRow,s2Step336HeadFRow,s2Step336HeadGvRow,s2Step336HeadFvRow] 2 s2Step336HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step336HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step336HeadGv_Outgoing : rowsOwned s2Step336HeadFvAfter [s2Step336HeadGvOut,s2Step336HeadFvOut] :=
  hmrRows_owned_drop s2Step336HeadFvAfter [s2Step336HeadGOut,s2Step336HeadFOut,s2Step336HeadGvOut,s2Step336HeadFvOut] 2 s2Step336HeadBank_outgoingOwned

private theorem s2Step336HeadGv_distinct : (s2Step336HeadGvRow.sign::s2Step336HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step336HeadGv_owned : (s2Step336HeadGvRow.sign::s2Step336HeadGvRow.payload).toFinset⊆s2Step336HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step336HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step336HeadGv_reserved : s2Step336HeadGvBefore.reserve s2Step336HeadGvFresh.toFinset=some s2Step336HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step336HeadGvFresh,arenaWires]
  · norm_num [s2Step336HeadGvBefore,s2Step336HeadFAfter,s2Step336HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step336HeadGvAfter,s2Step336HeadGvBefore,s2Step336HeadFAfter,s2Step336HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step336HeadGv_checked : planRowResizeLog s2Step336HeadGvBefore s2Step336HeadGvRow 185 s2Step336HeadGvFresh=
    some (s2Step336HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 877, 806],771⟩,growRow 771 s2Step336HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step336HeadGvBefore s2Step336HeadGvAfter s2Step336HeadGvRow 185 s2Step336HeadGvFresh
    s2Step336HeadGv_distinct s2Step336HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step336HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step336HeadGvRow.payload++s2Step336HeadGvFresh) s2Step336HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 877, 806],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step336HeadBank_rows : planWindowRowsLog s2Step336HeadGBefore [(s2Step336HeadGRow,104),(s2Step336HeadFRow,104),(s2Step336HeadGvRow,185),(s2Step336HeadFvRow,185)] [s2Step336HeadGFresh,s2Step336HeadFFresh,s2Step336HeadGvFresh,s2Step336HeadFvFresh]=
    some (s2Step336HeadFvAfter,[s2Step336HeadGOut,s2Step336HeadFOut,s2Step336HeadGvOut,s2Step336HeadFvOut],(growRow 769 s2Step336HeadGFresh ++ (growRow 768 s2Step336HeadFFresh ++ (growRow 771 s2Step336HeadGvFresh ++ (growRow 770 s2Step336HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step336HeadFvAfter [] []=some (s2Step336HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step336HeadFvBefore s2Step336HeadFvAfter s2Step336HeadFvAfter
    s2Step336HeadFvRow s2Step336HeadFvOut 185 s2Step336HeadFvFresh [] [] []
    (growRow 770 s2Step336HeadFvFresh) ([]) s2Step336HeadFv_Incoming s2Step336HeadFv_checked h4 s2Step336HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step336HeadGvBefore s2Step336HeadGvAfter s2Step336HeadFvAfter
    s2Step336HeadGvRow s2Step336HeadGvOut 185 s2Step336HeadGvFresh [(s2Step336HeadFvRow,185)] [s2Step336HeadFvFresh] [s2Step336HeadFvOut]
    (growRow 771 s2Step336HeadGvFresh) ((growRow 770 s2Step336HeadFvFresh ++ [])) s2Step336HeadGv_Incoming s2Step336HeadGv_checked h3 s2Step336HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step336HeadFBefore s2Step336HeadFAfter s2Step336HeadFvAfter
    s2Step336HeadFRow s2Step336HeadFOut 104 s2Step336HeadFFresh [(s2Step336HeadGvRow,185),(s2Step336HeadFvRow,185)] [s2Step336HeadGvFresh,s2Step336HeadFvFresh] [s2Step336HeadGvOut,s2Step336HeadFvOut]
    (growRow 768 s2Step336HeadFFresh) ((growRow 771 s2Step336HeadGvFresh ++ (growRow 770 s2Step336HeadFvFresh ++ []))) s2Step336HeadF_Incoming s2Step336HeadF_checked h2 s2Step336HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step336HeadGBefore s2Step336HeadGAfter s2Step336HeadFvAfter
    s2Step336HeadGRow s2Step336HeadGOut 104 s2Step336HeadGFresh [(s2Step336HeadFRow,104),(s2Step336HeadGvRow,185),(s2Step336HeadFvRow,185)] [s2Step336HeadFFresh,s2Step336HeadGvFresh,s2Step336HeadFvFresh] [s2Step336HeadFOut,s2Step336HeadGvOut,s2Step336HeadFvOut]
    (growRow 769 s2Step336HeadGFresh) ((growRow 768 s2Step336HeadFFresh ++ (growRow 771 s2Step336HeadGvFresh ++ (growRow 770 s2Step336HeadFvFresh ++ [])))) s2Step336HeadG_Incoming s2Step336HeadG_checked h1 s2Step336HeadG_Outgoing
  exact h0

private theorem s2Step336HeadBank_checked : compileHmrBankResizeLog .headroom s2Step336HeadGBefore ⟨s2Step336HeadFRow,s2Step336HeadGRow,s2Step336HeadFvRow,s2Step336HeadGvRow⟩ ⟨104,104,185,185⟩ [s2Step336HeadGFresh,s2Step336HeadFFresh,s2Step336HeadGvFresh,s2Step336HeadFvFresh]=
    some (s2Step336HeadFvAfter,⟨s2Step336HeadFOut,s2Step336HeadGOut,s2Step336HeadFvOut,s2Step336HeadGvOut⟩,(growRow 769 s2Step336HeadGFresh ++ (growRow 768 s2Step336HeadFFresh ++ (growRow 771 s2Step336HeadGvFresh ++ (growRow 770 s2Step336HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step336HeadBank_rows]
  rfl

private theorem s2Step336Front_checked : compileHmrSourceFrontLog s2Step336EntryFBefore s2Step336FrontBank 103 184 ⟨103,102,184,183⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step336FrontLog=some s2Step336FrontPlan := by
  have pairEq : s2Step336FrontPair=⟨s2Step336HeadFRow,s2Step336HeadGRow,s2Step336HeadFvRow,s2Step336HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step336FrontHead=⟨s2Step336ExitFRow,s2Step336ExitGRow,s2Step336ExitFvRow,s2Step336ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step336Add0A=s2Step336FrontHead.f.wires := by decide +kernel
  have gEq : s2Step336Add0B=s2Step336FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step336Add1A=s2Step336FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step336Add1B=s2Step336FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step336EntryFBefore s2Step336FrontBank 103 184 ⟨103,102,184,183⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step336FrontLog s2Step336FrontPlan
  · exact s2Step336Front_entry
  · exact s2Step336EntryBank_checked
  · exact s2Step336Front_sigma
  · rfl
  · exact s2Step336Front_branch
  · rfl
  · simpa only [s2Step336FrontPlan,pairEq] using s2Step336HeadBank_checked
  · simpa only [s2Step336FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step336F4_checked
  · exact s2Step336Counter_checked
  · rfl
  · simpa only [s2Step336FrontPlan,headEq] using s2Step336ExitBank_checked

private theorem s2Step336Complete_explicit_checked : compileHmrEarlyStepLog s2Step336EntryFBefore s2Step336FrontBank 103 184 ⟨103,102,184,183⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step336CompleteLog=some s2Step336CompletePlan := by
  let Q := s2Step336EarlyControlPlan
  have hq := s2Step336EarlyControl_plan_checked
  have fv1 : s2Step336CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step336CompleteOut.fv.payload[2]?.getD s2Step336CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step336CompleteOut.fv.payload[3]?.getD s2Step336CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step336CompleteOut.fv.payload[4]?.getD s2Step336CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step336EntryFBefore s2Step336EarlyControlArena s2Step336FrontBank 103 184 ⟨103,102,184,183⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step336CompleteLog s2Step336FrontPlan Q
    s2Step336Front_checked s2Step336Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step336Complete_owned s2Step336Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step336EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 786 s2Step336CompleteOut.fv.second (s2Step336CompleteOut.fv.payload[2]?.getD s2Step336CompleteOut.fv.sign) (s2Step336CompleteOut.fv.payload[3]?.getD s2Step336CompleteOut.fv.sign) (s2Step336CompleteOut.fv.payload[4]?.getD s2Step336CompleteOut.fv.sign) 851 60 s2Step336EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep336Arena : Arena := s2Step336EntryFBefore
def s2PrivateStep336Bank : WindowBank := s2Step336FrontBank
def s2PrivateStep336Spec : HmrSourceWalkStepLog := ⟨103,184,⟨103,102,184,183⟩,60,.early s2Step336CompleteLog⟩
def s2PrivateStep336Plan : HmrSourceStepPlan := .early s2Step336CompletePlan
theorem s2PrivateStep336_source : s2PrivateStep336Spec=s2ObservedLogs336[0] := rfl
theorem s2PrivateStep336_checked : compileHmrSourceStepLog s2PrivateStep336Arena s2PrivateStep336Bank
    s2PrivateStep336Spec.fgWidth s2PrivateStep336Spec.vWidth s2PrivateStep336Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 336 s2PrivateStep336Spec.need none s2PrivateStep336Spec.log=some s2PrivateStep336Plan := by
  change compileHmrSourceStepLog s2Step336EntryFBefore s2Step336FrontBank 103 184 ⟨103,102,184,183⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 336 60 none (.early s2Step336CompleteLog)=some (.early s2Step336CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 336<498)]
  rw [s2Step336Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
