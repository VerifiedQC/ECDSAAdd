import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep337
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

private def s2Step339CompleteMoves : List (Wire × Wire) := [(778,614)]

private def s2Step339EarlyControlLog : HmrEarlyControlLog := ⟨[778, 789, 806, 877, 827],[800],[894],[896, 901, 903, 907, 913, 914],[]⟩

private def s2Step339FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [827], [], []],[[800], [806], [789], [851]],[[], [], [], []]⟩,[794],[784],[894],[896],[901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903]⟩

private def s2Step339CompleteLog : HmrEarlyStepLog := ⟨s2Step339FrontLog,s2Step339CompleteMoves,s2Step339EarlyControlLog⟩

private def s2Step339ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613],768⟩

private def s2Step339ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851],770⟩

private def s2Step339ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100],769⟩

private def s2Step339ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841],771⟩

private def s2Step339FrontOut : WindowBank := ⟨s2Step339ExitFOut,s2Step339ExitGOut,s2Step339ExitFvOut,s2Step339ExitGvOut⟩

private def s2Step339CompleteOut : WindowBank := s2Step339FrontOut.repacked s2Step339CompleteMoves

private def s2Step339EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step339EarlyControlPositiveArena,[800],s2Step339EarlyControlEqualityArena,[894],⟨⟨794,false⟩,[⟨⟨800,false⟩,894⟩]⟩⟩

private def s2Step339EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step339EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step339EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,778⟩,⟨⟨774,false⟩,789⟩,⟨⟨775,false⟩,806⟩,⟨⟨776,false⟩,877⟩,⟨⟨777,false⟩,827⟩]⟩

private def s2Step339EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step339EarlyControlZeroArena,s2Step339EarlyControlZeroPlan,s2Step339EarlyControlClassPlan,s2Step339EarlyControlFlagArena,s2Step339EarlyControlFittedArena,s2Step339EarlyControlHistoryArena,s2Step339EarlyControlSigmaArena,s2Step339EarlyControlOutputArena,s2Step339EarlyControlLog⟩

private def s2Step339CounterWork : List Wire := [894, 896, 901, 903]

private theorem s2Step339Counter_bounded : s2Step339CounterWork.toFinset⊆arenaWires := by norm_num [s2Step339CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step339HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339CounterDuring : Arena := ⟨s2Step339HeadFvAfter.live∪s2Step339CounterWork.toFinset,Finset.union_subset s2Step339HeadFvAfter.bounded s2Step339Counter_bounded⟩

private def s2Step339EntryFFresh : List Wire := []

private def s2Step339EntryFvFresh : List Wire := []

private def s2Step339EntryGFresh : List Wire := [827]

private def s2Step339EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339EntryGvAfter : Arena := s2Step339EntryGAfter

private def s2Step339EntryGvFresh : List Wire := []

private def s2Step339ExitFExtra : List Wire := [614, 806]

private def s2Step339ExitGExtra : List Wire := [877, 827, 800]

private def s2Step339ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<614) ∨ (615≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339ExitGvExtra : List Wire := [789]

private def s2Step339Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339Add0Work : List Wire := [901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step339Add0_bounded : s2Step339Add0Work.toFinset⊆arenaWires := by
  have h : s2Step339Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step339Add0During : Arena := ⟨s2Step339Add0Arena.live∪s2Step339Add0Work.toFinset,Finset.union_subset s2Step339Add0Arena.bounded s2Step339Add0_bounded⟩

private def s2Step339Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339Add1Work : List Wire := [901, 903, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step339Add1_bounded : s2Step339Add1Work.toFinset⊆arenaWires := by
  have h : s2Step339Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step339Add1During : Arena := ⟨s2Step339Add1Arena.live∪s2Step339Add1Work.toFinset,Finset.union_subset s2Step339Add1Arena.bounded s2Step339Add1_bounded⟩

private def s2Step339F4FlagArena : Arena := ⟨s2Step339HeadFvAfter.live∪{894},Finset.union_subset s2Step339HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step339F4Plan : HmrHybridF4Plan := ⟨s2Step339F4FlagArena,[894],s2Step339Add0Arena,[896],s2Step339Add0During,s2Step339Add0Work,s2Step339Add1During,s2Step339Add1Work⟩

private def s2Step339HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 806],768⟩

private def s2Step339HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851],770⟩

private def s2Step339HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 827, 800],769⟩

private def s2Step339HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 789],771⟩

private def s2Step339FrontHead : WindowBank := ⟨s2Step339HeadFOut,s2Step339HeadGOut,s2Step339HeadFvOut,s2Step339HeadGvOut⟩

private def s2Step339EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩

private def s2Step339EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822],770⟩

private def s2Step339EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 827],769⟩

private def s2Step339EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841],771⟩

private def s2Step339FrontPair : WindowBank := ⟨s2Step339EntryFOut,s2Step339EntryGOut,s2Step339EntryFvOut,s2Step339EntryGvOut⟩

private def s2Step339FrontSigmaArena : Arena := ⟨s2Step339EntryGvAfter.live∪{794},Finset.union_subset s2Step339EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step339HeadFFresh : List Wire := [806]

private def s2Step339HeadFvFresh : List Wire := [851]

private def s2Step339HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339HeadGFresh : List Wire := [800]

private def s2Step339HeadGvFresh : List Wire := [789]

private def s2Step339FrontPlan : HmrSourceFront := ⟨s2Step339EntryGvAfter,s2Step339FrontPair,(growRow 768 s2Step339EntryFFresh ++ (growRow 769 s2Step339EntryGFresh ++ (growRow 770 s2Step339EntryFvFresh ++ (growRow 771 s2Step339EntryGvFresh ++ [])))),s2Step339FrontSigmaArena,[794],s2Step339HeadGBefore,[784],
  s2Step339HeadFvAfter,s2Step339FrontHead,(growRow 769 s2Step339HeadGFresh ++ (growRow 768 s2Step339HeadFFresh ++ (growRow 771 s2Step339HeadGvFresh ++ (growRow 770 s2Step339HeadFvFresh ++ [])))),s2Step339F4Plan,s2Step339CounterDuring,s2Step339CounterWork,s2Step339ExitGvAfter,s2Step339FrontOut,(shrinkRow 769 s2Step339ExitGExtra ++ (shrinkRow 768 s2Step339ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step339ExitGvExtra ++ []))))⟩

private def s2Step339CompletePlan : HmrEarlyStepPlan := ⟨s2Step339FrontPlan,s2Step339EarlyControlArena,s2Step339EarlyControlPlan,s2Step339CompleteMoves⟩

private theorem s2Step339Complete_apart : List.Disjoint (s2Step339CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [794, 784, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step339CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[794, 784, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step339Complete_owned : (s2Step339CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step339EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step339EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step339CompleteMoveArena : Arena := ⟨s2Step339ExitGvAfter.live∪{614},Finset.union_subset s2Step339ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step339Complete_repack : s2Step339ExitGvAfter.checkRepack s2Step339CompleteMoves=some s2Step339EarlyControlArena := by
  have owned : 778∈s2Step339ExitGvAfter.live := by norm_num [s2Step339ExitGvAfter,arenaWires]
  have reserve : s2Step339ExitGvAfter.reserve {614}=some s2Step339CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step339ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step339CompleteMoveArena.retireSet {778}=s2Step339EarlyControlArena := by
    unfold Arena.retireSet s2Step339EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step339CompleteMoveArena,s2Step339ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step339CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step339CompleteMoveArena.retireSet {778}).checkRepack []=some s2Step339EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step339EarlyControl_branchOwned : ([784] : List Wire).toFinset⊆s2Step339EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step339EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339EarlyControl_branch : compileHmrBranchRetirement s2Step339EarlyControlSigmaArena 784=some s2Step339EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step339EarlyControl_branchOwned
  · ext q
    simp [s2Step339EarlyControlOutputArena,s2Step339EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step339EarlyControl_classEqualityBorrow : s2Step339EarlyControlPositiveArena.checkBorrow (([794, 800] : List Wire).length-1) s2Step339EarlyControlLog.classWork=some s2Step339EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step339EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step339EarlyControlPositiveArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step339EarlyControlEqualityArena,s2Step339EarlyControlPositiveArena,s2Step339EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step339EarlyControl_classEqualityOwned : ([794, 800] : List Wire).toFinset⊆s2Step339EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step339EarlyControlPositiveArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339EarlyControl_classEquality : compileHmrEqualityLog s2Step339EarlyControlPositiveArena [794, 800] 0 s2Step339EarlyControlLog.classWork=some (s2Step339EarlyControlEqualityArena,s2Step339EarlyControlLog.classWork,s2Step339EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step339EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step339EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step339EarlyControl_classOwned : ([777, 827, 794] : List Wire).toFinset⊆s2Step339EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step339EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339EarlyControl_positiveBorrow : s2Step339EarlyControlZeroArena.checkBorrow (1) s2Step339EarlyControlLog.positiveWork=some s2Step339EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step339EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step339EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step339EarlyControlPositiveArena,s2Step339EarlyControlZeroArena,s2Step339EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step339EarlyControl_class : compileHmrSourceClassLog s2Step339EarlyControlZeroArena false 777 s2Step339EarlyControlZeroPlan.top 0 794 s2Step339EarlyControlLog.positiveWork s2Step339EarlyControlLog.classWork=some s2Step339EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step339EarlyControlClassPlan s2Step339EarlyControlZeroArena false 777 s2Step339EarlyControlZeroPlan.top 0 794
  constructor
  · decide +kernel
  · exact s2Step339EarlyControl_classOwned
  · exact s2Step339EarlyControl_positiveBorrow
  · exact s2Step339EarlyControl_classEquality

private theorem s2Step339EarlyControl_entryRecordOwned : ([784, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step339EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step339EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339EarlyControl_entrySigmaOwned : ([794, 254] : List Wire).toFinset⊆s2Step339EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step339EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339EarlyControl_fitBorrow : s2Step339EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step339EarlyControlLog.recordFresh=some s2Step339EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step339EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step339EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
      decide +kernel
    · ext q
      simp [s2Step339EarlyControlFittedArena,s2Step339EarlyControlFlagArena,s2Step339EarlyControlLog,arenaWires]

private theorem s2Step339EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step339EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step339EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
  decide +kernel

private theorem s2Step339EarlyControl_fit : compileHmrRecordGrowLog s2Step339EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step339EarlyControlLog.recordFresh=some s2Step339EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step339EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step339EarlyControl_fitBorrow

private theorem s2Step339EarlyControl_flagsBorrow : s2Step339EarlyControlEqualityArena.checkBorrow (6) s2Step339EarlyControlLog.flagWork=some s2Step339EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step339EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step339EarlyControlEqualityArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step339EarlyControlFlagArena,s2Step339EarlyControlEqualityArena,s2Step339EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step339EarlyControl_flagsOwned : ([894, 253, 252, 251] : List Wire).toFinset⊆s2Step339EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step339EarlyControlEqualityArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339EarlyControl_flags : compileHmrFlagsLog s2Step339EarlyControlClassPlan.equalityArena s2Step339EarlyControlClassPlan.equality.top 253 252 251 s2Step339EarlyControlLog.flagWork=some s2Step339EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step339EarlyControl_flagsOwned⟩
  · exact s2Step339EarlyControl_flagsBorrow

private theorem s2Step339EarlyControl_historyBorrow : s2Step339EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step339EarlyControlLog.recordFresh=some s2Step339EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step339EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step339EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step339EarlyControlHistoryArena,s2Step339EarlyControlArena,s2Step339EarlyControlLog,arenaWires]

private theorem s2Step339EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step339EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step339EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339EarlyControl_history : compileHmrRecordGrowLog s2Step339EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step339EarlyControlLog.recordFresh=some s2Step339EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step339EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step339EarlyControl_historyBorrow

private theorem s2Step339EarlyControl_sigmaOwned : ([254, 794] : List Wire).toFinset⊆s2Step339EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step339EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339EarlyControl_sigmaReleaseOwned : ([794] : List Wire).toFinset⊆s2Step339EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step339EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339EarlyControl_sigmaRelease : s2Step339EarlyControlHistoryArena.release {794} (fun _ => false)=some s2Step339EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step339EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step339EarlyControlSigmaArena,s2Step339EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step339EarlyControl_sigma : compileHmrSigmaDropLog s2Step339EarlyControlHistoryArena false 0 0 254 794 []=some s2Step339EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step339EarlyControl_sigmaOwned⟩
  · exact s2Step339EarlyControl_sigmaRelease

private theorem s2Step339EarlyControl_zeroBorrow : s2Step339EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step339EarlyControlLog.zeroWork=some s2Step339EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step339EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step339EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step339EarlyControlZeroArena,s2Step339EarlyControlArena,s2Step339EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step339EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step339EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step339EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339EarlyControl_zero : compileHmrEqualityLog s2Step339EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step339EarlyControlLog.zeroWork=some (s2Step339EarlyControlZeroArena,s2Step339EarlyControlLog.zeroWork,s2Step339EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step339EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step339EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step339EarlyControl_logged : s2Step339EarlyControlPlan.Logged s2Step339EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 794 254 253 252 251 784 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step339EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step339EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step339EarlyControl_zero
  · exact s2Step339EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step339EarlyControl_flags
  · exact s2Step339EarlyControl_fit
  · exact s2Step339EarlyControl_history
  · exact s2Step339EarlyControl_sigma
  · exact s2Step339EarlyControl_branch

private theorem s2Step339EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step339EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 794 254 253 252 251 784 60 s2Step339EarlyControlLog=some s2Step339EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step339EarlyControlPlan s2Step339EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 794 254 253 252 251 784 60 s2Step339EarlyControl_logged

private def s2Step339EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩

private def s2Step339EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822],770⟩

private def s2Step339EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877],769⟩

private def s2Step339EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841],771⟩

private def s2Step339FrontBank : WindowBank := ⟨s2Step339EntryFRow,s2Step339EntryGRow,s2Step339EntryFvRow,s2Step339EntryGvRow⟩

private def s2Step339Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 806, 768]

private def s2Step339Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 827, 800, 769]

private def s2Step339Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 770]

private def s2Step339Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 789, 771]

private theorem s2Step339Counter_apart : Disjoint s2Step339HeadFvAfter.live s2Step339CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step339HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339Counter_borrowed : s2Step339HeadFvAfter.checkBorrow 4 s2Step339CounterWork=some s2Step339CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step339HeadFvAfter s2Step339CounterDuring s2Step339CounterWork.toFinset s2Step339Counter_bounded s2Step339Counter_apart rfl

private theorem s2Step339Counter_owned : (794::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step339HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step339HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339Counter_checked : compileHmrCounterStepLog s2Step339HeadFvAfter true 794 [772, 773, 774, 775, 776, 777] s2Step339CounterWork=some s2Step339CounterDuring := by
  have owned : ∀q∈794::[772, 773, 774, 775, 776, 777],q∈s2Step339HeadFvAfter.live := fun q hq => s2Step339Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step339Counter_borrowed

private def s2Step339EntryFAfter : Arena := s2Step339EntryFBefore

private theorem s2Step339EntryBank_incomingDistinct : ([s2Step339EntryFRow,s2Step339EntryGRow,s2Step339EntryFvRow,s2Step339EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339EntryF_Incoming : rowsOwned s2Step339EntryFBefore [s2Step339EntryFRow,s2Step339EntryGRow,s2Step339EntryFvRow,s2Step339EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step339EntryFRow,s2Step339EntryGRow,s2Step339EntryFvRow,s2Step339EntryGvRow] 0 s2Step339EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step339EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step339EntryBank_outgoingOwned : rowsOwned s2Step339EntryGvAfter [s2Step339EntryFOut,s2Step339EntryGOut,s2Step339EntryFvOut,s2Step339EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step339EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step339EntryF_Outgoing : rowsOwned s2Step339EntryGvAfter [s2Step339EntryFOut,s2Step339EntryGOut,s2Step339EntryFvOut,s2Step339EntryGvOut] :=
  hmrRows_owned_drop s2Step339EntryGvAfter [s2Step339EntryFOut,s2Step339EntryGOut,s2Step339EntryFvOut,s2Step339EntryGvOut] 0 s2Step339EntryBank_outgoingOwned

private theorem s2Step339EntryF_distinct : (s2Step339EntryFRow.sign::s2Step339EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339EntryF_owned : (s2Step339EntryFRow.sign::s2Step339EntryFRow.payload).toFinset⊆s2Step339EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step339EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339EntryF_reserved : s2Step339EntryFBefore.reserve s2Step339EntryFFresh.toFinset=some s2Step339EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step339EntryFFresh,arenaWires]
  · norm_num [s2Step339EntryFBefore,s2Step339EntryFFresh,arenaWires]
  · simp only [s2Step339EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step339EntryF_checked : planRowResizeLog s2Step339EntryFBefore s2Step339EntryFRow 103 s2Step339EntryFFresh=
    some (s2Step339EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩,growRow 768 s2Step339EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step339EntryFBefore s2Step339EntryFAfter s2Step339EntryFRow 103 s2Step339EntryFFresh
    s2Step339EntryF_distinct s2Step339EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step339EntryF_reserved
  have rowEq : WindowRow.mk (s2Step339EntryFRow.payload++s2Step339EntryFFresh) s2Step339EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step339EntryFvAfter : Arena := s2Step339EntryGAfter

private def s2Step339EntryFvBefore : Arena := s2Step339EntryGAfter

private theorem s2Step339EntryFv_Incoming : rowsOwned s2Step339EntryFvBefore [s2Step339EntryFvRow,s2Step339EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step339EntryFRow,s2Step339EntryGRow,s2Step339EntryFvRow,s2Step339EntryGvRow] 2 s2Step339EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step339EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step339EntryFv_Outgoing : rowsOwned s2Step339EntryGvAfter [s2Step339EntryFvOut,s2Step339EntryGvOut] :=
  hmrRows_owned_drop s2Step339EntryGvAfter [s2Step339EntryFOut,s2Step339EntryGOut,s2Step339EntryFvOut,s2Step339EntryGvOut] 2 s2Step339EntryBank_outgoingOwned

private theorem s2Step339EntryFv_distinct : (s2Step339EntryFvRow.sign::s2Step339EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339EntryFv_owned : (s2Step339EntryFvRow.sign::s2Step339EntryFvRow.payload).toFinset⊆s2Step339EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step339EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339EntryFv_reserved : s2Step339EntryFvBefore.reserve s2Step339EntryFvFresh.toFinset=some s2Step339EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step339EntryFvFresh,arenaWires]
  · norm_num [s2Step339EntryFvBefore,s2Step339EntryGAfter,s2Step339EntryFvFresh,arenaWires]
  · simp only [s2Step339EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step339EntryFv_checked : planRowResizeLog s2Step339EntryFvBefore s2Step339EntryFvRow 185 s2Step339EntryFvFresh=
    some (s2Step339EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822],770⟩,growRow 770 s2Step339EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step339EntryFvBefore s2Step339EntryFvAfter s2Step339EntryFvRow 185 s2Step339EntryFvFresh
    s2Step339EntryFv_distinct s2Step339EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step339EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step339EntryFvRow.payload++s2Step339EntryFvFresh) s2Step339EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step339EntryGBefore : Arena := s2Step339EntryFBefore

private theorem s2Step339EntryG_Incoming : rowsOwned s2Step339EntryGBefore [s2Step339EntryGRow,s2Step339EntryFvRow,s2Step339EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step339EntryFRow,s2Step339EntryGRow,s2Step339EntryFvRow,s2Step339EntryGvRow] 1 s2Step339EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step339EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step339EntryG_Outgoing : rowsOwned s2Step339EntryGvAfter [s2Step339EntryGOut,s2Step339EntryFvOut,s2Step339EntryGvOut] :=
  hmrRows_owned_drop s2Step339EntryGvAfter [s2Step339EntryFOut,s2Step339EntryGOut,s2Step339EntryFvOut,s2Step339EntryGvOut] 1 s2Step339EntryBank_outgoingOwned

private theorem s2Step339EntryG_distinct : (s2Step339EntryGRow.sign::s2Step339EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339EntryG_owned : (s2Step339EntryGRow.sign::s2Step339EntryGRow.payload).toFinset⊆s2Step339EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step339EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339EntryG_reserved : s2Step339EntryGBefore.reserve s2Step339EntryGFresh.toFinset=some s2Step339EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step339EntryGFresh,arenaWires]
  · norm_num [s2Step339EntryGBefore,s2Step339EntryFBefore,s2Step339EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step339EntryGAfter,s2Step339EntryGBefore,s2Step339EntryFBefore,s2Step339EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step339EntryG_checked : planRowResizeLog s2Step339EntryGBefore s2Step339EntryGRow 103 s2Step339EntryGFresh=
    some (s2Step339EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 827],769⟩,growRow 769 s2Step339EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step339EntryGBefore s2Step339EntryGAfter s2Step339EntryGRow 103 s2Step339EntryGFresh
    s2Step339EntryG_distinct s2Step339EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step339EntryG_reserved
  have rowEq : WindowRow.mk (s2Step339EntryGRow.payload++s2Step339EntryGFresh) s2Step339EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 827],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step339EntryGvBefore : Arena := s2Step339EntryGAfter

private theorem s2Step339EntryGv_Incoming : rowsOwned s2Step339EntryGvBefore [s2Step339EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step339EntryFRow,s2Step339EntryGRow,s2Step339EntryFvRow,s2Step339EntryGvRow] 3 s2Step339EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step339EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step339EntryGv_Outgoing : rowsOwned s2Step339EntryGvAfter [s2Step339EntryGvOut] :=
  hmrRows_owned_drop s2Step339EntryGvAfter [s2Step339EntryFOut,s2Step339EntryGOut,s2Step339EntryFvOut,s2Step339EntryGvOut] 3 s2Step339EntryBank_outgoingOwned

private theorem s2Step339EntryGv_distinct : (s2Step339EntryGvRow.sign::s2Step339EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339EntryGv_owned : (s2Step339EntryGvRow.sign::s2Step339EntryGvRow.payload).toFinset⊆s2Step339EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step339EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339EntryGv_reserved : s2Step339EntryGvBefore.reserve s2Step339EntryGvFresh.toFinset=some s2Step339EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step339EntryGvFresh,arenaWires]
  · norm_num [s2Step339EntryGvBefore,s2Step339EntryGAfter,s2Step339EntryGvFresh,arenaWires]
  · simp only [s2Step339EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step339EntryGv_checked : planRowResizeLog s2Step339EntryGvBefore s2Step339EntryGvRow 185 s2Step339EntryGvFresh=
    some (s2Step339EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841],771⟩,growRow 771 s2Step339EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step339EntryGvBefore s2Step339EntryGvAfter s2Step339EntryGvRow 185 s2Step339EntryGvFresh
    s2Step339EntryGv_distinct s2Step339EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step339EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step339EntryGvRow.payload++s2Step339EntryGvFresh) s2Step339EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step339EntryBank_rows : planWindowRowsLog s2Step339EntryFBefore [(s2Step339EntryFRow,103),(s2Step339EntryGRow,103),(s2Step339EntryFvRow,185),(s2Step339EntryGvRow,185)] [s2Step339EntryFFresh,s2Step339EntryGFresh,s2Step339EntryFvFresh,s2Step339EntryGvFresh]=
    some (s2Step339EntryGvAfter,[s2Step339EntryFOut,s2Step339EntryGOut,s2Step339EntryFvOut,s2Step339EntryGvOut],(growRow 768 s2Step339EntryFFresh ++ (growRow 769 s2Step339EntryGFresh ++ (growRow 770 s2Step339EntryFvFresh ++ (growRow 771 s2Step339EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step339EntryGvAfter [] []=some (s2Step339EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step339EntryGvBefore s2Step339EntryGvAfter s2Step339EntryGvAfter
    s2Step339EntryGvRow s2Step339EntryGvOut 185 s2Step339EntryGvFresh [] [] []
    (growRow 771 s2Step339EntryGvFresh) ([]) s2Step339EntryGv_Incoming s2Step339EntryGv_checked h4 s2Step339EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step339EntryFvBefore s2Step339EntryFvAfter s2Step339EntryGvAfter
    s2Step339EntryFvRow s2Step339EntryFvOut 185 s2Step339EntryFvFresh [(s2Step339EntryGvRow,185)] [s2Step339EntryGvFresh] [s2Step339EntryGvOut]
    (growRow 770 s2Step339EntryFvFresh) ((growRow 771 s2Step339EntryGvFresh ++ [])) s2Step339EntryFv_Incoming s2Step339EntryFv_checked h3 s2Step339EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step339EntryGBefore s2Step339EntryGAfter s2Step339EntryGvAfter
    s2Step339EntryGRow s2Step339EntryGOut 103 s2Step339EntryGFresh [(s2Step339EntryFvRow,185),(s2Step339EntryGvRow,185)] [s2Step339EntryFvFresh,s2Step339EntryGvFresh] [s2Step339EntryFvOut,s2Step339EntryGvOut]
    (growRow 769 s2Step339EntryGFresh) ((growRow 770 s2Step339EntryFvFresh ++ (growRow 771 s2Step339EntryGvFresh ++ []))) s2Step339EntryG_Incoming s2Step339EntryG_checked h2 s2Step339EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step339EntryFBefore s2Step339EntryFAfter s2Step339EntryGvAfter
    s2Step339EntryFRow s2Step339EntryFOut 103 s2Step339EntryFFresh [(s2Step339EntryGRow,103),(s2Step339EntryFvRow,185),(s2Step339EntryGvRow,185)] [s2Step339EntryGFresh,s2Step339EntryFvFresh,s2Step339EntryGvFresh] [s2Step339EntryGOut,s2Step339EntryFvOut,s2Step339EntryGvOut]
    (growRow 768 s2Step339EntryFFresh) ((growRow 769 s2Step339EntryGFresh ++ (growRow 770 s2Step339EntryFvFresh ++ (growRow 771 s2Step339EntryGvFresh ++ [])))) s2Step339EntryF_Incoming s2Step339EntryF_checked h1 s2Step339EntryF_Outgoing
  exact h0

private theorem s2Step339EntryBank_checked : compileHmrBankResizeLog .entry s2Step339EntryFBefore ⟨s2Step339EntryFRow,s2Step339EntryGRow,s2Step339EntryFvRow,s2Step339EntryGvRow⟩ ⟨103,103,185,185⟩ [s2Step339EntryFFresh,s2Step339EntryGFresh,s2Step339EntryFvFresh,s2Step339EntryGvFresh]=
    some (s2Step339EntryGvAfter,⟨s2Step339EntryFOut,s2Step339EntryGOut,s2Step339EntryFvOut,s2Step339EntryGvOut⟩,(growRow 768 s2Step339EntryFFresh ++ (growRow 769 s2Step339EntryGFresh ++ (growRow 770 s2Step339EntryFvFresh ++ (growRow 771 s2Step339EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step339EntryBank_rows]
  rfl

private def s2Step339ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<614) ∨ (615≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339ExitFBefore : Arena := s2Step339ExitGAfter

private def s2Step339ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 806],768⟩

private def s2Step339ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851],770⟩

private def s2Step339ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 827, 800],769⟩

private def s2Step339ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 789],771⟩

private theorem s2Step339ExitBank_incomingDistinct : ([s2Step339ExitGRow,s2Step339ExitFRow,s2Step339ExitFvRow,s2Step339ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339ExitF_Incoming : rowsOwned s2Step339ExitFBefore [s2Step339ExitFRow,s2Step339ExitFvRow,s2Step339ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step339ExitGRow,s2Step339ExitFRow,s2Step339ExitFvRow,s2Step339ExitGvRow] 1 s2Step339ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step339ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step339ExitBank_outgoingOwned : rowsOwned s2Step339ExitGvAfter [s2Step339ExitGOut,s2Step339ExitFOut,s2Step339ExitFvOut,s2Step339ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step339ExitGvAfter (fun q => (0≤q ∧ q<614) ∨ (615≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step339ExitF_Outgoing : rowsOwned s2Step339ExitGvAfter [s2Step339ExitFOut,s2Step339ExitFvOut,s2Step339ExitGvOut] :=
  hmrRows_owned_drop s2Step339ExitGvAfter [s2Step339ExitGOut,s2Step339ExitFOut,s2Step339ExitFvOut,s2Step339ExitGvOut] 1 s2Step339ExitBank_outgoingOwned

private theorem s2Step339ExitF_distinct : (s2Step339ExitFRow.sign::s2Step339ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339ExitF_owned : (s2Step339ExitFRow.sign::s2Step339ExitFRow.payload).toFinset⊆s2Step339ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step339ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339ExitF_retired : s2Step339ExitFBefore.retireSet s2Step339ExitFExtra.toFinset=s2Step339ExitFAfter := by
  unfold Arena.retireSet s2Step339ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step339ExitFBefore,s2Step339ExitGAfter,s2Step339ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step339ExitF_checked : planRowResizeLog s2Step339ExitFBefore s2Step339ExitFRow 102 []=
    some (s2Step339ExitFAfter,s2Step339ExitFOut,shrinkRow 768 s2Step339ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step339ExitFBefore s2Step339ExitFRow 102 s2Step339ExitF_distinct s2Step339ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step339ExitFRow.payload.take 102) s2Step339ExitFRow.sign=s2Step339ExitFOut := by decide +kernel
  have hi : s2Step339ExitFRow.payload.drop 102=s2Step339ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step339ExitF_retired] at result
  exact result

private def s2Step339ExitFvAfter : Arena := s2Step339ExitFAfter

private def s2Step339ExitFvBefore : Arena := s2Step339ExitFAfter

private theorem s2Step339ExitFv_Incoming : rowsOwned s2Step339ExitFvBefore [s2Step339ExitFvRow,s2Step339ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step339ExitGRow,s2Step339ExitFRow,s2Step339ExitFvRow,s2Step339ExitGvRow] 2 s2Step339ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step339ExitFvBefore (fun q => (0≤q ∧ q<614) ∨ (615≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step339ExitFv_Outgoing : rowsOwned s2Step339ExitGvAfter [s2Step339ExitFvOut,s2Step339ExitGvOut] :=
  hmrRows_owned_drop s2Step339ExitGvAfter [s2Step339ExitGOut,s2Step339ExitFOut,s2Step339ExitFvOut,s2Step339ExitGvOut] 2 s2Step339ExitBank_outgoingOwned

private theorem s2Step339ExitFv_distinct : (s2Step339ExitFvRow.sign::s2Step339ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339ExitFv_owned : (s2Step339ExitFvRow.sign::s2Step339ExitFvRow.payload).toFinset⊆s2Step339ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step339ExitFvBefore (fun q => (0≤q ∧ q<614) ∨ (615≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339ExitFv_reserved : s2Step339ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step339ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step339ExitFv_checked : planRowResizeLog s2Step339ExitFvBefore s2Step339ExitFvRow 186 []=
    some (s2Step339ExitFvAfter,s2Step339ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step339ExitFvBefore s2Step339ExitFvAfter s2Step339ExitFvRow 186 []
    s2Step339ExitFv_distinct s2Step339ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step339ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step339ExitFvRow.payload++[]) s2Step339ExitFvRow.sign=s2Step339ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step339ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step339ExitG_Incoming : rowsOwned s2Step339ExitGBefore [s2Step339ExitGRow,s2Step339ExitFRow,s2Step339ExitFvRow,s2Step339ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step339ExitGRow,s2Step339ExitFRow,s2Step339ExitFvRow,s2Step339ExitGvRow] 0 s2Step339ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step339ExitGBefore (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step339ExitG_Outgoing : rowsOwned s2Step339ExitGvAfter [s2Step339ExitGOut,s2Step339ExitFOut,s2Step339ExitFvOut,s2Step339ExitGvOut] :=
  hmrRows_owned_drop s2Step339ExitGvAfter [s2Step339ExitGOut,s2Step339ExitFOut,s2Step339ExitFvOut,s2Step339ExitGvOut] 0 s2Step339ExitBank_outgoingOwned

private theorem s2Step339ExitG_distinct : (s2Step339ExitGRow.sign::s2Step339ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339ExitG_owned : (s2Step339ExitGRow.sign::s2Step339ExitGRow.payload).toFinset⊆s2Step339ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step339ExitGBefore (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339ExitG_retired : s2Step339ExitGBefore.retireSet s2Step339ExitGExtra.toFinset=s2Step339ExitGAfter := by
  unfold Arena.retireSet s2Step339ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step339ExitGBefore,s2Step339ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step339ExitG_checked : planRowResizeLog s2Step339ExitGBefore s2Step339ExitGRow 101 []=
    some (s2Step339ExitGAfter,s2Step339ExitGOut,shrinkRow 769 s2Step339ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step339ExitGBefore s2Step339ExitGRow 101 s2Step339ExitG_distinct s2Step339ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step339ExitGRow.payload.take 101) s2Step339ExitGRow.sign=s2Step339ExitGOut := by decide +kernel
  have hi : s2Step339ExitGRow.payload.drop 101=s2Step339ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step339ExitG_retired] at result
  exact result

private def s2Step339ExitGvBefore : Arena := s2Step339ExitFAfter

private theorem s2Step339ExitGv_Incoming : rowsOwned s2Step339ExitGvBefore [s2Step339ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step339ExitGRow,s2Step339ExitFRow,s2Step339ExitFvRow,s2Step339ExitGvRow] 3 s2Step339ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step339ExitGvBefore (fun q => (0≤q ∧ q<614) ∨ (615≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step339ExitGv_Outgoing : rowsOwned s2Step339ExitGvAfter [s2Step339ExitGvOut] :=
  hmrRows_owned_drop s2Step339ExitGvAfter [s2Step339ExitGOut,s2Step339ExitFOut,s2Step339ExitFvOut,s2Step339ExitGvOut] 3 s2Step339ExitBank_outgoingOwned

private theorem s2Step339ExitGv_distinct : (s2Step339ExitGvRow.sign::s2Step339ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339ExitGv_owned : (s2Step339ExitGvRow.sign::s2Step339ExitGvRow.payload).toFinset⊆s2Step339ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step339ExitGvBefore (fun q => (0≤q ∧ q<614) ∨ (615≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339ExitGv_retired : s2Step339ExitGvBefore.retireSet s2Step339ExitGvExtra.toFinset=s2Step339ExitGvAfter := by
  unfold Arena.retireSet s2Step339ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step339ExitGvBefore,s2Step339ExitFAfter,s2Step339ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step339ExitGv_checked : planRowResizeLog s2Step339ExitGvBefore s2Step339ExitGvRow 185 []=
    some (s2Step339ExitGvAfter,s2Step339ExitGvOut,shrinkRow 771 s2Step339ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step339ExitGvBefore s2Step339ExitGvRow 185 s2Step339ExitGv_distinct s2Step339ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step339ExitGvRow.payload.take 185) s2Step339ExitGvRow.sign=s2Step339ExitGvOut := by decide +kernel
  have hi : s2Step339ExitGvRow.payload.drop 185=s2Step339ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step339ExitGv_retired] at result
  exact result

private theorem s2Step339ExitBank_rows : planWindowRowsLog s2Step339ExitGBefore [(s2Step339ExitGRow,101),(s2Step339ExitFRow,102),(s2Step339ExitFvRow,186),(s2Step339ExitGvRow,185)] [[],[],[],[]]=
    some (s2Step339ExitGvAfter,[s2Step339ExitGOut,s2Step339ExitFOut,s2Step339ExitFvOut,s2Step339ExitGvOut],(shrinkRow 769 s2Step339ExitGExtra ++ (shrinkRow 768 s2Step339ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step339ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step339ExitGvAfter [] []=some (s2Step339ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step339ExitGvBefore s2Step339ExitGvAfter s2Step339ExitGvAfter
    s2Step339ExitGvRow s2Step339ExitGvOut 185 [] [] [] []
    (shrinkRow 771 s2Step339ExitGvExtra) ([]) s2Step339ExitGv_Incoming s2Step339ExitGv_checked h4 s2Step339ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step339ExitFvBefore s2Step339ExitFvAfter s2Step339ExitGvAfter
    s2Step339ExitFvRow s2Step339ExitFvOut 186 [] [(s2Step339ExitGvRow,185)] [[]] [s2Step339ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step339ExitGvExtra ++ [])) s2Step339ExitFv_Incoming s2Step339ExitFv_checked h3 s2Step339ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step339ExitFBefore s2Step339ExitFAfter s2Step339ExitGvAfter
    s2Step339ExitFRow s2Step339ExitFOut 102 [] [(s2Step339ExitFvRow,186),(s2Step339ExitGvRow,185)] [[],[]] [s2Step339ExitFvOut,s2Step339ExitGvOut]
    (shrinkRow 768 s2Step339ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step339ExitGvExtra ++ []))) s2Step339ExitF_Incoming s2Step339ExitF_checked h2 s2Step339ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step339ExitGBefore s2Step339ExitGAfter s2Step339ExitGvAfter
    s2Step339ExitGRow s2Step339ExitGOut 101 [] [(s2Step339ExitFRow,102),(s2Step339ExitFvRow,186),(s2Step339ExitGvRow,185)] [[],[],[]] [s2Step339ExitFOut,s2Step339ExitFvOut,s2Step339ExitGvOut]
    (shrinkRow 769 s2Step339ExitGExtra) ((shrinkRow 768 s2Step339ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step339ExitGvExtra ++ [])))) s2Step339ExitG_Incoming s2Step339ExitG_checked h1 s2Step339ExitG_Outgoing
  exact h0

private theorem s2Step339ExitBank_checked : compileHmrBankResizeLog .exit s2Step339ExitGBefore ⟨s2Step339ExitFRow,s2Step339ExitGRow,s2Step339ExitFvRow,s2Step339ExitGvRow⟩ ⟨102,101,186,185⟩ [[],[],[],[]]=
    some (s2Step339ExitGvAfter,⟨s2Step339ExitFOut,s2Step339ExitGOut,s2Step339ExitFvOut,s2Step339ExitGvOut⟩,(shrinkRow 769 s2Step339ExitGExtra ++ (shrinkRow 768 s2Step339ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step339ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step339ExitBank_rows]
  rfl

private theorem s2Step339Add0_apart : Disjoint s2Step339Add0Arena.live s2Step339Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step339Add0Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339Add0_card : s2Step339Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step339Add0_borrowed : s2Step339Add0Arena.checkBorrow (hmrHybridCount s2Step339Add0Arena s2Step339Add0B.length) s2Step339Add0Work=some s2Step339Add0During := by
  have len : s2Step339Add0Work.length=hmrHybridCount s2Step339Add0Arena s2Step339Add0B.length := by
    rw [hmrHybridCount,s2Step339Add0_card]
    decide +kernel
  have nd : s2Step339Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step339Add0Arena s2Step339Add0During s2Step339Add0Work.toFinset s2Step339Add0_bounded s2Step339Add0_apart rfl

private theorem s2Step339Add0_distinct : (894::784::896::(s2Step339Add0A++s2Step339Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339Add0_owned : (894::784::896::(s2Step339Add0A++s2Step339Add0B)).toFinset⊆s2Step339Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step339Add0Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339Add0_checked : compileHmrHybridCinLog s2Step339Add0Arena 784 894 896 s2Step339Add0A s2Step339Add0B s2Step339Add0Work=some s2Step339Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step339Add0Arena s2Step339Add0During 784 894 896 s2Step339Add0A s2Step339Add0B s2Step339Add0Work
    (by decide +kernel) (by decide +kernel) s2Step339Add0_distinct
    (fun q hq => s2Step339Add0_owned (List.mem_toFinset.mpr hq)) s2Step339Add0_borrowed

private theorem s2Step339Add1_apart : Disjoint s2Step339Add1Arena.live s2Step339Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step339Add1Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339Add1_card : s2Step339Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step339Add1_borrowed : s2Step339Add1Arena.checkBorrow (hmrHybridCount s2Step339Add1Arena s2Step339Add1B.length) s2Step339Add1Work=some s2Step339Add1During := by
  have len : s2Step339Add1Work.length=hmrHybridCount s2Step339Add1Arena s2Step339Add1B.length := by
    rw [hmrHybridCount,s2Step339Add1_card]
    decide +kernel
  have nd : s2Step339Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step339Add1Arena s2Step339Add1During s2Step339Add1Work.toFinset s2Step339Add1_bounded s2Step339Add1_apart rfl

private theorem s2Step339Add1_distinct : (894::784::896::(s2Step339Add1A++s2Step339Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339Add1_owned : (894::784::896::(s2Step339Add1A++s2Step339Add1B)).toFinset⊆s2Step339Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step339Add1Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339Add1_checked : compileHmrHybridCinLog s2Step339Add1Arena 784 894 896 s2Step339Add1A s2Step339Add1B s2Step339Add1Work=some s2Step339Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step339Add1Arena s2Step339Add1During 784 894 896 s2Step339Add1A s2Step339Add1B s2Step339Add1Work
    (by decide +kernel) (by decide +kernel) s2Step339Add1_distinct
    (fun q hq => s2Step339Add1_owned (List.mem_toFinset.mpr hq)) s2Step339Add1_borrowed

private theorem s2Step339F4_apart : Disjoint (s2Step339Add0A++s2Step339Add0B).toFinset (s2Step339Add1A++s2Step339Add1B).toFinset := by
  have nd : ((s2Step339Add0A++s2Step339Add0B)++(s2Step339Add1A++s2Step339Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step339F4_carry : s2Step339F4FlagArena.checkBorrow 1 [896]=some s2Step339Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step339F4FlagArena,s2Step339HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step339F4FlagArena,s2Step339HeadFvAfter,s2Step339Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step339F4_distinct : (794::784::894::896::((s2Step339Add0A++s2Step339Add1A)++(s2Step339Add0B++s2Step339Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339F4_flag : s2Step339HeadFvAfter.checkBorrow 1 [894]=some s2Step339F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step339HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step339F4_owned : (794::784::((s2Step339Add0A++s2Step339Add1A)++(s2Step339Add0B++s2Step339Add1B))).toFinset⊆s2Step339HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step339HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339F4_checked : compileHmrHybridF4Log s2Step339HeadFvAfter 794 784 s2Step339Add0A s2Step339Add0B s2Step339Add1A s2Step339Add1B [894] [896] s2Step339Add0Work s2Step339Add1Work=some s2Step339F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step339HeadFvAfter s2Step339F4FlagArena s2Step339Add0Arena s2Step339Add0During s2Step339Add1During 794 784
    s2Step339Add0A s2Step339Add0B s2Step339Add1A s2Step339Add1B [894] [896] s2Step339Add0Work s2Step339Add1Work
    (fun q hq => s2Step339F4_owned (List.mem_toFinset.mpr hq)) s2Step339F4_flag s2Step339F4_carry
    s2Step339F4_distinct s2Step339F4_apart s2Step339Add0_checked s2Step339Add1_checked

private theorem s2Step339Front_branch : s2Step339FrontSigmaArena.checkBorrow 1 [784]=some s2Step339HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step339FrontSigmaArena,s2Step339EntryGvAfter,s2Step339EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step339FrontSigmaArena,s2Step339EntryGvAfter,s2Step339EntryGAfter,s2Step339HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step339Front_entry : HmrFrontEntryValid s2Step339EntryFBefore s2Step339FrontBank 103 185 ⟨102,101,186,185⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step339FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step339EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step339EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<789) ∨ (790≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step339FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step339Front_sigma : s2Step339EntryGvAfter.checkBorrow 1 [794]=some s2Step339FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step339EntryGvAfter,s2Step339EntryGAfter,arenaWires]
  · rfl

private def s2Step339HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339HeadFBefore : Arena := s2Step339HeadGAfter

private def s2Step339HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614],768⟩

private def s2Step339HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822],770⟩

private def s2Step339HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 827],769⟩

private def s2Step339HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841],771⟩

private theorem s2Step339HeadBank_incomingDistinct : ([s2Step339HeadGRow,s2Step339HeadFRow,s2Step339HeadGvRow,s2Step339HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339HeadF_Incoming : rowsOwned s2Step339HeadFBefore [s2Step339HeadFRow,s2Step339HeadGvRow,s2Step339HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step339HeadGRow,s2Step339HeadFRow,s2Step339HeadGvRow,s2Step339HeadFvRow] 1 s2Step339HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step339HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step339HeadBank_outgoingOwned : rowsOwned s2Step339HeadFvAfter [s2Step339HeadGOut,s2Step339HeadFOut,s2Step339HeadGvOut,s2Step339HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step339HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step339HeadF_Outgoing : rowsOwned s2Step339HeadFvAfter [s2Step339HeadFOut,s2Step339HeadGvOut,s2Step339HeadFvOut] :=
  hmrRows_owned_drop s2Step339HeadFvAfter [s2Step339HeadGOut,s2Step339HeadFOut,s2Step339HeadGvOut,s2Step339HeadFvOut] 1 s2Step339HeadBank_outgoingOwned

private theorem s2Step339HeadF_distinct : (s2Step339HeadFRow.sign::s2Step339HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339HeadF_owned : (s2Step339HeadFRow.sign::s2Step339HeadFRow.payload).toFinset⊆s2Step339HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step339HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339HeadF_reserved : s2Step339HeadFBefore.reserve s2Step339HeadFFresh.toFinset=some s2Step339HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step339HeadFFresh,arenaWires]
  · norm_num [s2Step339HeadFBefore,s2Step339HeadGAfter,s2Step339HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step339HeadFAfter,s2Step339HeadFBefore,s2Step339HeadGAfter,s2Step339HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step339HeadF_checked : planRowResizeLog s2Step339HeadFBefore s2Step339HeadFRow 104 s2Step339HeadFFresh=
    some (s2Step339HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 806],768⟩,growRow 768 s2Step339HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step339HeadFBefore s2Step339HeadFAfter s2Step339HeadFRow 104 s2Step339HeadFFresh
    s2Step339HeadF_distinct s2Step339HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step339HeadF_reserved
  have rowEq : WindowRow.mk (s2Step339HeadFRow.payload++s2Step339HeadFFresh) s2Step339HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 806],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step339HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step339HeadFvBefore : Arena := s2Step339HeadGvAfter

private theorem s2Step339HeadFv_Incoming : rowsOwned s2Step339HeadFvBefore [s2Step339HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step339HeadGRow,s2Step339HeadFRow,s2Step339HeadGvRow,s2Step339HeadFvRow] 3 s2Step339HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step339HeadFvBefore (fun q => (0≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step339HeadFv_Outgoing : rowsOwned s2Step339HeadFvAfter [s2Step339HeadFvOut] :=
  hmrRows_owned_drop s2Step339HeadFvAfter [s2Step339HeadGOut,s2Step339HeadFOut,s2Step339HeadGvOut,s2Step339HeadFvOut] 3 s2Step339HeadBank_outgoingOwned

private theorem s2Step339HeadFv_distinct : (s2Step339HeadFvRow.sign::s2Step339HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339HeadFv_owned : (s2Step339HeadFvRow.sign::s2Step339HeadFvRow.payload).toFinset⊆s2Step339HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step339HeadFvBefore (fun q => (0≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339HeadFv_reserved : s2Step339HeadFvBefore.reserve s2Step339HeadFvFresh.toFinset=some s2Step339HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step339HeadFvFresh,arenaWires]
  · norm_num [s2Step339HeadFvBefore,s2Step339HeadGvAfter,s2Step339HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step339HeadFvAfter,s2Step339HeadFvBefore,s2Step339HeadGvAfter,s2Step339HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step339HeadFv_checked : planRowResizeLog s2Step339HeadFvBefore s2Step339HeadFvRow 186 s2Step339HeadFvFresh=
    some (s2Step339HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851],770⟩,growRow 770 s2Step339HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step339HeadFvBefore s2Step339HeadFvAfter s2Step339HeadFvRow 186 s2Step339HeadFvFresh
    s2Step339HeadFv_distinct s2Step339HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step339HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step339HeadFvRow.payload++s2Step339HeadFvFresh) s2Step339HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step339HeadG_Incoming : rowsOwned s2Step339HeadGBefore [s2Step339HeadGRow,s2Step339HeadFRow,s2Step339HeadGvRow,s2Step339HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step339HeadGRow,s2Step339HeadFRow,s2Step339HeadGvRow,s2Step339HeadFvRow] 0 s2Step339HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step339HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step339HeadG_Outgoing : rowsOwned s2Step339HeadFvAfter [s2Step339HeadGOut,s2Step339HeadFOut,s2Step339HeadGvOut,s2Step339HeadFvOut] :=
  hmrRows_owned_drop s2Step339HeadFvAfter [s2Step339HeadGOut,s2Step339HeadFOut,s2Step339HeadGvOut,s2Step339HeadFvOut] 0 s2Step339HeadBank_outgoingOwned

private theorem s2Step339HeadG_distinct : (s2Step339HeadGRow.sign::s2Step339HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339HeadG_owned : (s2Step339HeadGRow.sign::s2Step339HeadGRow.payload).toFinset⊆s2Step339HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step339HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339HeadG_reserved : s2Step339HeadGBefore.reserve s2Step339HeadGFresh.toFinset=some s2Step339HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step339HeadGFresh,arenaWires]
  · norm_num [s2Step339HeadGBefore,s2Step339HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step339HeadGAfter,s2Step339HeadGBefore,s2Step339HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step339HeadG_checked : planRowResizeLog s2Step339HeadGBefore s2Step339HeadGRow 104 s2Step339HeadGFresh=
    some (s2Step339HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 827, 800],769⟩,growRow 769 s2Step339HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step339HeadGBefore s2Step339HeadGAfter s2Step339HeadGRow 104 s2Step339HeadGFresh
    s2Step339HeadG_distinct s2Step339HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step339HeadG_reserved
  have rowEq : WindowRow.mk (s2Step339HeadGRow.payload++s2Step339HeadGFresh) s2Step339HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 877, 827, 800],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step339HeadGvBefore : Arena := s2Step339HeadFAfter

private theorem s2Step339HeadGv_Incoming : rowsOwned s2Step339HeadGvBefore [s2Step339HeadGvRow,s2Step339HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step339HeadGRow,s2Step339HeadFRow,s2Step339HeadGvRow,s2Step339HeadFvRow] 2 s2Step339HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step339HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step339HeadGv_Outgoing : rowsOwned s2Step339HeadFvAfter [s2Step339HeadGvOut,s2Step339HeadFvOut] :=
  hmrRows_owned_drop s2Step339HeadFvAfter [s2Step339HeadGOut,s2Step339HeadFOut,s2Step339HeadGvOut,s2Step339HeadFvOut] 2 s2Step339HeadBank_outgoingOwned

private theorem s2Step339HeadGv_distinct : (s2Step339HeadGvRow.sign::s2Step339HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step339HeadGv_owned : (s2Step339HeadGvRow.sign::s2Step339HeadGvRow.payload).toFinset⊆s2Step339HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step339HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<851) ∨ (852≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step339HeadGv_reserved : s2Step339HeadGvBefore.reserve s2Step339HeadGvFresh.toFinset=some s2Step339HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step339HeadGvFresh,arenaWires]
  · norm_num [s2Step339HeadGvBefore,s2Step339HeadFAfter,s2Step339HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step339HeadGvAfter,s2Step339HeadGvBefore,s2Step339HeadFAfter,s2Step339HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step339HeadGv_checked : planRowResizeLog s2Step339HeadGvBefore s2Step339HeadGvRow 186 s2Step339HeadGvFresh=
    some (s2Step339HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 789],771⟩,growRow 771 s2Step339HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step339HeadGvBefore s2Step339HeadGvAfter s2Step339HeadGvRow 186 s2Step339HeadGvFresh
    s2Step339HeadGv_distinct s2Step339HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step339HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step339HeadGvRow.payload++s2Step339HeadGvFresh) s2Step339HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 789],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step339HeadBank_rows : planWindowRowsLog s2Step339HeadGBefore [(s2Step339HeadGRow,104),(s2Step339HeadFRow,104),(s2Step339HeadGvRow,186),(s2Step339HeadFvRow,186)] [s2Step339HeadGFresh,s2Step339HeadFFresh,s2Step339HeadGvFresh,s2Step339HeadFvFresh]=
    some (s2Step339HeadFvAfter,[s2Step339HeadGOut,s2Step339HeadFOut,s2Step339HeadGvOut,s2Step339HeadFvOut],(growRow 769 s2Step339HeadGFresh ++ (growRow 768 s2Step339HeadFFresh ++ (growRow 771 s2Step339HeadGvFresh ++ (growRow 770 s2Step339HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step339HeadFvAfter [] []=some (s2Step339HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step339HeadFvBefore s2Step339HeadFvAfter s2Step339HeadFvAfter
    s2Step339HeadFvRow s2Step339HeadFvOut 186 s2Step339HeadFvFresh [] [] []
    (growRow 770 s2Step339HeadFvFresh) ([]) s2Step339HeadFv_Incoming s2Step339HeadFv_checked h4 s2Step339HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step339HeadGvBefore s2Step339HeadGvAfter s2Step339HeadFvAfter
    s2Step339HeadGvRow s2Step339HeadGvOut 186 s2Step339HeadGvFresh [(s2Step339HeadFvRow,186)] [s2Step339HeadFvFresh] [s2Step339HeadFvOut]
    (growRow 771 s2Step339HeadGvFresh) ((growRow 770 s2Step339HeadFvFresh ++ [])) s2Step339HeadGv_Incoming s2Step339HeadGv_checked h3 s2Step339HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step339HeadFBefore s2Step339HeadFAfter s2Step339HeadFvAfter
    s2Step339HeadFRow s2Step339HeadFOut 104 s2Step339HeadFFresh [(s2Step339HeadGvRow,186),(s2Step339HeadFvRow,186)] [s2Step339HeadGvFresh,s2Step339HeadFvFresh] [s2Step339HeadGvOut,s2Step339HeadFvOut]
    (growRow 768 s2Step339HeadFFresh) ((growRow 771 s2Step339HeadGvFresh ++ (growRow 770 s2Step339HeadFvFresh ++ []))) s2Step339HeadF_Incoming s2Step339HeadF_checked h2 s2Step339HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step339HeadGBefore s2Step339HeadGAfter s2Step339HeadFvAfter
    s2Step339HeadGRow s2Step339HeadGOut 104 s2Step339HeadGFresh [(s2Step339HeadFRow,104),(s2Step339HeadGvRow,186),(s2Step339HeadFvRow,186)] [s2Step339HeadFFresh,s2Step339HeadGvFresh,s2Step339HeadFvFresh] [s2Step339HeadFOut,s2Step339HeadGvOut,s2Step339HeadFvOut]
    (growRow 769 s2Step339HeadGFresh) ((growRow 768 s2Step339HeadFFresh ++ (growRow 771 s2Step339HeadGvFresh ++ (growRow 770 s2Step339HeadFvFresh ++ [])))) s2Step339HeadG_Incoming s2Step339HeadG_checked h1 s2Step339HeadG_Outgoing
  exact h0

private theorem s2Step339HeadBank_checked : compileHmrBankResizeLog .headroom s2Step339HeadGBefore ⟨s2Step339HeadFRow,s2Step339HeadGRow,s2Step339HeadFvRow,s2Step339HeadGvRow⟩ ⟨104,104,186,186⟩ [s2Step339HeadGFresh,s2Step339HeadFFresh,s2Step339HeadGvFresh,s2Step339HeadFvFresh]=
    some (s2Step339HeadFvAfter,⟨s2Step339HeadFOut,s2Step339HeadGOut,s2Step339HeadFvOut,s2Step339HeadGvOut⟩,(growRow 769 s2Step339HeadGFresh ++ (growRow 768 s2Step339HeadFFresh ++ (growRow 771 s2Step339HeadGvFresh ++ (growRow 770 s2Step339HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step339HeadBank_rows]
  rfl

private theorem s2Step339Front_checked : compileHmrSourceFrontLog s2Step339EntryFBefore s2Step339FrontBank 103 185 ⟨102,101,186,185⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step339FrontLog=some s2Step339FrontPlan := by
  have pairEq : s2Step339FrontPair=⟨s2Step339HeadFRow,s2Step339HeadGRow,s2Step339HeadFvRow,s2Step339HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step339FrontHead=⟨s2Step339ExitFRow,s2Step339ExitGRow,s2Step339ExitFvRow,s2Step339ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step339Add0A=s2Step339FrontHead.f.wires := by decide +kernel
  have gEq : s2Step339Add0B=s2Step339FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step339Add1A=s2Step339FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step339Add1B=s2Step339FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step339EntryFBefore s2Step339FrontBank 103 185 ⟨102,101,186,185⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step339FrontLog s2Step339FrontPlan
  · exact s2Step339Front_entry
  · exact s2Step339EntryBank_checked
  · exact s2Step339Front_sigma
  · rfl
  · exact s2Step339Front_branch
  · rfl
  · simpa only [s2Step339FrontPlan,pairEq] using s2Step339HeadBank_checked
  · simpa only [s2Step339FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step339F4_checked
  · exact s2Step339Counter_checked
  · rfl
  · simpa only [s2Step339FrontPlan,headEq] using s2Step339ExitBank_checked

private theorem s2Step339Complete_explicit_checked : compileHmrEarlyStepLog s2Step339EntryFBefore s2Step339FrontBank 103 185 ⟨102,101,186,185⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step339CompleteLog=some s2Step339CompletePlan := by
  let Q := s2Step339EarlyControlPlan
  have hq := s2Step339EarlyControl_plan_checked
  have fv1 : s2Step339CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step339CompleteOut.fv.payload[2]?.getD s2Step339CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step339CompleteOut.fv.payload[3]?.getD s2Step339CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step339CompleteOut.fv.payload[4]?.getD s2Step339CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step339EntryFBefore s2Step339EarlyControlArena s2Step339FrontBank 103 185 ⟨102,101,186,185⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step339CompleteLog s2Step339FrontPlan Q
    s2Step339Front_checked s2Step339Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step339Complete_owned s2Step339Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step339EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 794 s2Step339CompleteOut.fv.second (s2Step339CompleteOut.fv.payload[2]?.getD s2Step339CompleteOut.fv.sign) (s2Step339CompleteOut.fv.payload[3]?.getD s2Step339CompleteOut.fv.sign) (s2Step339CompleteOut.fv.payload[4]?.getD s2Step339CompleteOut.fv.sign) 784 60 s2Step339EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep339Arena : Arena := s2Step339EntryFBefore
def s2PrivateStep339Bank : WindowBank := s2Step339FrontBank
def s2PrivateStep339Spec : HmrSourceWalkStepLog := ⟨103,185,⟨102,101,186,185⟩,60,.early s2Step339CompleteLog⟩
def s2PrivateStep339Plan : HmrSourceStepPlan := .early s2Step339CompletePlan
theorem s2PrivateStep339_source : s2PrivateStep339Spec=s2ObservedLogs336[3] := rfl
theorem s2PrivateStep339_checked : compileHmrSourceStepLog s2PrivateStep339Arena s2PrivateStep339Bank
    s2PrivateStep339Spec.fgWidth s2PrivateStep339Spec.vWidth s2PrivateStep339Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 339 s2PrivateStep339Spec.need none s2PrivateStep339Spec.log=some s2PrivateStep339Plan := by
  change compileHmrSourceStepLog s2Step339EntryFBefore s2Step339FrontBank 103 185 ⟨102,101,186,185⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 339 60 none (.early s2Step339CompleteLog)=some (.early s2Step339CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 339<498)]
  rw [s2Step339Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
