import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep357
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

private def s2Step359CompleteMoves : List (Wire × Wire) := []

private def s2Step359EarlyControlLog : HmrEarlyControlLog := ⟨[821, 785, 903, 812, 839],[800],[789],[827, 844, 907, 913, 914, 915],[]⟩

private def s2Step359FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [785], [], []],[[903], [821], [790], [832]],[[], [], [], []]⟩,[796],[882],[812],[839],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[812, 839, 800, 789]⟩

private def s2Step359CompleteLog : HmrEarlyStepLog := ⟨s2Step359FrontLog,s2Step359CompleteMoves,s2Step359EarlyControlLog⟩

private def s2Step359ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩

private def s2Step359ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832],770⟩

private def s2Step359ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],769⟩

private def s2Step359ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790],771⟩

private def s2Step359FrontOut : WindowBank := ⟨s2Step359ExitFOut,s2Step359ExitGOut,s2Step359ExitFvOut,s2Step359ExitGvOut⟩

private def s2Step359CompleteOut : WindowBank := s2Step359FrontOut.repacked s2Step359CompleteMoves

private def s2Step359EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step359EarlyControlPositiveArena,[800],s2Step359EarlyControlEqualityArena,[789],⟨⟨796,false⟩,[⟨⟨800,false⟩,789⟩]⟩⟩

private def s2Step359EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step359EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step359EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,821⟩,⟨⟨774,false⟩,785⟩,⟨⟨775,false⟩,903⟩,⟨⟨776,false⟩,812⟩,⟨⟨777,false⟩,839⟩]⟩

private def s2Step359EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step359EarlyControlZeroArena,s2Step359EarlyControlZeroPlan,s2Step359EarlyControlClassPlan,s2Step359EarlyControlFlagArena,s2Step359EarlyControlFittedArena,s2Step359EarlyControlHistoryArena,s2Step359EarlyControlSigmaArena,s2Step359EarlyControlOutputArena,s2Step359EarlyControlLog⟩

private def s2Step359CounterWork : List Wire := [812, 839, 800, 789]

private theorem s2Step359Counter_bounded : s2Step359CounterWork.toFinset⊆arenaWires := by norm_num [s2Step359CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step359HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359CounterDuring : Arena := ⟨s2Step359HeadFvAfter.live∪s2Step359CounterWork.toFinset,Finset.union_subset s2Step359HeadFvAfter.bounded s2Step359Counter_bounded⟩

private def s2Step359EntryFFresh : List Wire := []

private def s2Step359EntryFvFresh : List Wire := []

private def s2Step359EntryGFresh : List Wire := [785]

private def s2Step359EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359EntryGvAfter : Arena := s2Step359EntryGAfter

private def s2Step359EntryGvFresh : List Wire := []

private def s2Step359ExitFExtra : List Wire := [821]

private def s2Step359ExitGExtra : List Wire := [785, 903]

private def s2Step359ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359ExitGvAfter : Arena := s2Step359ExitFAfter

private def s2Step359Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359Add0Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step359Add0_bounded : s2Step359Add0Work.toFinset⊆arenaWires := by
  have h : s2Step359Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step359Add0During : Arena := ⟨s2Step359Add0Arena.live∪s2Step359Add0Work.toFinset,Finset.union_subset s2Step359Add0Arena.bounded s2Step359Add0_bounded⟩

private def s2Step359Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359Add1Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step359Add1_bounded : s2Step359Add1Work.toFinset⊆arenaWires := by
  have h : s2Step359Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step359Add1During : Arena := ⟨s2Step359Add1Arena.live∪s2Step359Add1Work.toFinset,Finset.union_subset s2Step359Add1Arena.bounded s2Step359Add1_bounded⟩

private def s2Step359F4FlagArena : Arena := ⟨s2Step359HeadFvAfter.live∪{812},Finset.union_subset s2Step359HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step359F4Plan : HmrHybridF4Plan := ⟨s2Step359F4FlagArena,[812],s2Step359Add0Arena,[839],s2Step359Add0During,s2Step359Add0Work,s2Step359Add1During,s2Step359Add1Work⟩

private def s2Step359HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 821],768⟩

private def s2Step359HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832],770⟩

private def s2Step359HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 785, 903],769⟩

private def s2Step359HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790],771⟩

private def s2Step359FrontHead : WindowBank := ⟨s2Step359HeadFOut,s2Step359HeadGOut,s2Step359HeadFvOut,s2Step359HeadGvOut⟩

private def s2Step359EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩

private def s2Step359EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩

private def s2Step359EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 785],769⟩

private def s2Step359EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808],771⟩

private def s2Step359FrontPair : WindowBank := ⟨s2Step359EntryFOut,s2Step359EntryGOut,s2Step359EntryFvOut,s2Step359EntryGvOut⟩

private def s2Step359FrontSigmaArena : Arena := ⟨s2Step359EntryGvAfter.live∪{796},Finset.union_subset s2Step359EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step359HeadFFresh : List Wire := [821]

private def s2Step359HeadFvFresh : List Wire := [832]

private def s2Step359HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359HeadGFresh : List Wire := [903]

private def s2Step359HeadGvFresh : List Wire := [790]

private def s2Step359FrontPlan : HmrSourceFront := ⟨s2Step359EntryGvAfter,s2Step359FrontPair,(growRow 768 s2Step359EntryFFresh ++ (growRow 769 s2Step359EntryGFresh ++ (growRow 770 s2Step359EntryFvFresh ++ (growRow 771 s2Step359EntryGvFresh ++ [])))),s2Step359FrontSigmaArena,[796],s2Step359HeadGBefore,[882],
  s2Step359HeadFvAfter,s2Step359FrontHead,(growRow 769 s2Step359HeadGFresh ++ (growRow 768 s2Step359HeadFFresh ++ (growRow 771 s2Step359HeadGvFresh ++ (growRow 770 s2Step359HeadFvFresh ++ [])))),s2Step359F4Plan,s2Step359CounterDuring,s2Step359CounterWork,s2Step359ExitGvAfter,s2Step359FrontOut,(shrinkRow 769 s2Step359ExitGExtra ++ (shrinkRow 768 s2Step359ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step359CompletePlan : HmrEarlyStepPlan := ⟨s2Step359FrontPlan,s2Step359EarlyControlArena,s2Step359EarlyControlPlan,s2Step359CompleteMoves⟩

private theorem s2Step359Complete_apart : List.Disjoint (s2Step359CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [796, 882, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step359CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[796, 882, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step359Complete_owned : (s2Step359CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step359EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step359EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359Complete_repack : s2Step359ExitGvAfter.checkRepack s2Step359CompleteMoves=some s2Step359EarlyControlArena := by rfl

private theorem s2Step359EarlyControl_branchOwned : ([882] : List Wire).toFinset⊆s2Step359EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step359EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359EarlyControl_branch : compileHmrBranchRetirement s2Step359EarlyControlSigmaArena 882=some s2Step359EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step359EarlyControl_branchOwned
  · ext q
    simp [s2Step359EarlyControlOutputArena,s2Step359EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step359EarlyControl_classEqualityBorrow : s2Step359EarlyControlPositiveArena.checkBorrow (([796, 800] : List Wire).length-1) s2Step359EarlyControlLog.classWork=some s2Step359EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step359EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step359EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step359EarlyControlEqualityArena,s2Step359EarlyControlPositiveArena,s2Step359EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step359EarlyControl_classEqualityOwned : ([796, 800] : List Wire).toFinset⊆s2Step359EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step359EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359EarlyControl_classEquality : compileHmrEqualityLog s2Step359EarlyControlPositiveArena [796, 800] 0 s2Step359EarlyControlLog.classWork=some (s2Step359EarlyControlEqualityArena,s2Step359EarlyControlLog.classWork,s2Step359EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step359EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step359EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step359EarlyControl_classOwned : ([777, 839, 796] : List Wire).toFinset⊆s2Step359EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step359EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359EarlyControl_positiveBorrow : s2Step359EarlyControlZeroArena.checkBorrow (1) s2Step359EarlyControlLog.positiveWork=some s2Step359EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step359EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step359EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step359EarlyControlPositiveArena,s2Step359EarlyControlZeroArena,s2Step359EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step359EarlyControl_class : compileHmrSourceClassLog s2Step359EarlyControlZeroArena false 777 s2Step359EarlyControlZeroPlan.top 0 796 s2Step359EarlyControlLog.positiveWork s2Step359EarlyControlLog.classWork=some s2Step359EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step359EarlyControlClassPlan s2Step359EarlyControlZeroArena false 777 s2Step359EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s2Step359EarlyControl_classOwned
  · exact s2Step359EarlyControl_positiveBorrow
  · exact s2Step359EarlyControl_classEquality

private theorem s2Step359EarlyControl_entryRecordOwned : ([882, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step359EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step359EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s2Step359EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step359EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359EarlyControl_fitBorrow : s2Step359EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step359EarlyControlLog.recordFresh=some s2Step359EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step359EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step359EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
      decide +kernel
    · ext q
      simp [s2Step359EarlyControlFittedArena,s2Step359EarlyControlFlagArena,s2Step359EarlyControlLog,arenaWires]

private theorem s2Step359EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step359EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step359EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
  decide +kernel

private theorem s2Step359EarlyControl_fit : compileHmrRecordGrowLog s2Step359EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step359EarlyControlLog.recordFresh=some s2Step359EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step359EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step359EarlyControl_fitBorrow

private theorem s2Step359EarlyControl_flagsBorrow : s2Step359EarlyControlEqualityArena.checkBorrow (6) s2Step359EarlyControlLog.flagWork=some s2Step359EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step359EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step359EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step359EarlyControlFlagArena,s2Step359EarlyControlEqualityArena,s2Step359EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step359EarlyControl_flagsOwned : ([789, 253, 252, 251] : List Wire).toFinset⊆s2Step359EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step359EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359EarlyControl_flags : compileHmrFlagsLog s2Step359EarlyControlClassPlan.equalityArena s2Step359EarlyControlClassPlan.equality.top 253 252 251 s2Step359EarlyControlLog.flagWork=some s2Step359EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step359EarlyControl_flagsOwned⟩
  · exact s2Step359EarlyControl_flagsBorrow

private theorem s2Step359EarlyControl_historyBorrow : s2Step359EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step359EarlyControlLog.recordFresh=some s2Step359EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step359EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step359EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step359EarlyControlHistoryArena,s2Step359EarlyControlArena,s2Step359EarlyControlLog,arenaWires]

private theorem s2Step359EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step359EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step359EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359EarlyControl_history : compileHmrRecordGrowLog s2Step359EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step359EarlyControlLog.recordFresh=some s2Step359EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step359EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step359EarlyControl_historyBorrow

private theorem s2Step359EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s2Step359EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step359EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s2Step359EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step359EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359EarlyControl_sigmaRelease : s2Step359EarlyControlHistoryArena.release {796} (fun _ => false)=some s2Step359EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step359EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step359EarlyControlSigmaArena,s2Step359EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step359EarlyControl_sigma : compileHmrSigmaDropLog s2Step359EarlyControlHistoryArena false 0 0 254 796 []=some s2Step359EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step359EarlyControl_sigmaOwned⟩
  · exact s2Step359EarlyControl_sigmaRelease

private theorem s2Step359EarlyControl_zeroBorrow : s2Step359EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step359EarlyControlLog.zeroWork=some s2Step359EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step359EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step359EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step359EarlyControlZeroArena,s2Step359EarlyControlArena,s2Step359EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step359EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step359EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step359EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359EarlyControl_zero : compileHmrEqualityLog s2Step359EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step359EarlyControlLog.zeroWork=some (s2Step359EarlyControlZeroArena,s2Step359EarlyControlLog.zeroWork,s2Step359EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step359EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step359EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step359EarlyControl_logged : s2Step359EarlyControlPlan.Logged s2Step359EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 882 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step359EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step359EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step359EarlyControl_zero
  · exact s2Step359EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step359EarlyControl_flags
  · exact s2Step359EarlyControl_fit
  · exact s2Step359EarlyControl_history
  · exact s2Step359EarlyControl_sigma
  · exact s2Step359EarlyControl_branch

private theorem s2Step359EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step359EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 882 60 s2Step359EarlyControlLog=some s2Step359EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step359EarlyControlPlan s2Step359EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 882 60 s2Step359EarlyControl_logged

private def s2Step359EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩

private def s2Step359EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩

private def s2Step359EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],769⟩

private def s2Step359EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808],771⟩

private def s2Step359FrontBank : WindowBank := ⟨s2Step359EntryFRow,s2Step359EntryGRow,s2Step359EntryFvRow,s2Step359EntryGvRow⟩

private def s2Step359Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 821, 768]

private def s2Step359Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 785, 903, 769]

private def s2Step359Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 770]

private def s2Step359Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 771]

private theorem s2Step359Counter_apart : Disjoint s2Step359HeadFvAfter.live s2Step359CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step359HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359Counter_borrowed : s2Step359HeadFvAfter.checkBorrow 4 s2Step359CounterWork=some s2Step359CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step359HeadFvAfter s2Step359CounterDuring s2Step359CounterWork.toFinset s2Step359Counter_bounded s2Step359Counter_apart rfl

private theorem s2Step359Counter_owned : (796::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step359HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step359HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359Counter_checked : compileHmrCounterStepLog s2Step359HeadFvAfter true 796 [772, 773, 774, 775, 776, 777] s2Step359CounterWork=some s2Step359CounterDuring := by
  have owned : ∀q∈796::[772, 773, 774, 775, 776, 777],q∈s2Step359HeadFvAfter.live := fun q hq => s2Step359Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step359Counter_borrowed

private def s2Step359EntryFAfter : Arena := s2Step359EntryFBefore

private theorem s2Step359EntryBank_incomingDistinct : ([s2Step359EntryFRow,s2Step359EntryGRow,s2Step359EntryFvRow,s2Step359EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359EntryF_Incoming : rowsOwned s2Step359EntryFBefore [s2Step359EntryFRow,s2Step359EntryGRow,s2Step359EntryFvRow,s2Step359EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step359EntryFRow,s2Step359EntryGRow,s2Step359EntryFvRow,s2Step359EntryGvRow] 0 s2Step359EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step359EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step359EntryBank_outgoingOwned : rowsOwned s2Step359EntryGvAfter [s2Step359EntryFOut,s2Step359EntryGOut,s2Step359EntryFvOut,s2Step359EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step359EntryGvAfter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step359EntryF_Outgoing : rowsOwned s2Step359EntryGvAfter [s2Step359EntryFOut,s2Step359EntryGOut,s2Step359EntryFvOut,s2Step359EntryGvOut] :=
  hmrRows_owned_drop s2Step359EntryGvAfter [s2Step359EntryFOut,s2Step359EntryGOut,s2Step359EntryFvOut,s2Step359EntryGvOut] 0 s2Step359EntryBank_outgoingOwned

private theorem s2Step359EntryF_distinct : (s2Step359EntryFRow.sign::s2Step359EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359EntryF_owned : (s2Step359EntryFRow.sign::s2Step359EntryFRow.payload).toFinset⊆s2Step359EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step359EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359EntryF_reserved : s2Step359EntryFBefore.reserve s2Step359EntryFFresh.toFinset=some s2Step359EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step359EntryFFresh,arenaWires]
  · norm_num [s2Step359EntryFBefore,s2Step359EntryFFresh,arenaWires]
  · simp only [s2Step359EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step359EntryF_checked : planRowResizeLog s2Step359EntryFBefore s2Step359EntryFRow 92 s2Step359EntryFFresh=
    some (s2Step359EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩,growRow 768 s2Step359EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step359EntryFBefore s2Step359EntryFAfter s2Step359EntryFRow 92 s2Step359EntryFFresh
    s2Step359EntryF_distinct s2Step359EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step359EntryF_reserved
  have rowEq : WindowRow.mk (s2Step359EntryFRow.payload++s2Step359EntryFFresh) s2Step359EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step359EntryFvAfter : Arena := s2Step359EntryGAfter

private def s2Step359EntryFvBefore : Arena := s2Step359EntryGAfter

private theorem s2Step359EntryFv_Incoming : rowsOwned s2Step359EntryFvBefore [s2Step359EntryFvRow,s2Step359EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step359EntryFRow,s2Step359EntryGRow,s2Step359EntryFvRow,s2Step359EntryGvRow] 2 s2Step359EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step359EntryFvBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step359EntryFv_Outgoing : rowsOwned s2Step359EntryGvAfter [s2Step359EntryFvOut,s2Step359EntryGvOut] :=
  hmrRows_owned_drop s2Step359EntryGvAfter [s2Step359EntryFOut,s2Step359EntryGOut,s2Step359EntryFvOut,s2Step359EntryGvOut] 2 s2Step359EntryBank_outgoingOwned

private theorem s2Step359EntryFv_distinct : (s2Step359EntryFvRow.sign::s2Step359EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359EntryFv_owned : (s2Step359EntryFvRow.sign::s2Step359EntryFvRow.payload).toFinset⊆s2Step359EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step359EntryFvBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359EntryFv_reserved : s2Step359EntryFvBefore.reserve s2Step359EntryFvFresh.toFinset=some s2Step359EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step359EntryFvFresh,arenaWires]
  · norm_num [s2Step359EntryFvBefore,s2Step359EntryGAfter,s2Step359EntryFvFresh,arenaWires]
  · simp only [s2Step359EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step359EntryFv_checked : planRowResizeLog s2Step359EntryFvBefore s2Step359EntryFvRow 195 s2Step359EntryFvFresh=
    some (s2Step359EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩,growRow 770 s2Step359EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step359EntryFvBefore s2Step359EntryFvAfter s2Step359EntryFvRow 195 s2Step359EntryFvFresh
    s2Step359EntryFv_distinct s2Step359EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step359EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step359EntryFvRow.payload++s2Step359EntryFvFresh) s2Step359EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step359EntryGBefore : Arena := s2Step359EntryFBefore

private theorem s2Step359EntryG_Incoming : rowsOwned s2Step359EntryGBefore [s2Step359EntryGRow,s2Step359EntryFvRow,s2Step359EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step359EntryFRow,s2Step359EntryGRow,s2Step359EntryFvRow,s2Step359EntryGvRow] 1 s2Step359EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step359EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step359EntryG_Outgoing : rowsOwned s2Step359EntryGvAfter [s2Step359EntryGOut,s2Step359EntryFvOut,s2Step359EntryGvOut] :=
  hmrRows_owned_drop s2Step359EntryGvAfter [s2Step359EntryFOut,s2Step359EntryGOut,s2Step359EntryFvOut,s2Step359EntryGvOut] 1 s2Step359EntryBank_outgoingOwned

private theorem s2Step359EntryG_distinct : (s2Step359EntryGRow.sign::s2Step359EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359EntryG_owned : (s2Step359EntryGRow.sign::s2Step359EntryGRow.payload).toFinset⊆s2Step359EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step359EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359EntryG_reserved : s2Step359EntryGBefore.reserve s2Step359EntryGFresh.toFinset=some s2Step359EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step359EntryGFresh,arenaWires]
  · norm_num [s2Step359EntryGBefore,s2Step359EntryFBefore,s2Step359EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step359EntryGAfter,s2Step359EntryGBefore,s2Step359EntryFBefore,s2Step359EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step359EntryG_checked : planRowResizeLog s2Step359EntryGBefore s2Step359EntryGRow 92 s2Step359EntryGFresh=
    some (s2Step359EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 785],769⟩,growRow 769 s2Step359EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step359EntryGBefore s2Step359EntryGAfter s2Step359EntryGRow 92 s2Step359EntryGFresh
    s2Step359EntryG_distinct s2Step359EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step359EntryG_reserved
  have rowEq : WindowRow.mk (s2Step359EntryGRow.payload++s2Step359EntryGFresh) s2Step359EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step359EntryGvBefore : Arena := s2Step359EntryGAfter

private theorem s2Step359EntryGv_Incoming : rowsOwned s2Step359EntryGvBefore [s2Step359EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step359EntryFRow,s2Step359EntryGRow,s2Step359EntryFvRow,s2Step359EntryGvRow] 3 s2Step359EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step359EntryGvBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step359EntryGv_Outgoing : rowsOwned s2Step359EntryGvAfter [s2Step359EntryGvOut] :=
  hmrRows_owned_drop s2Step359EntryGvAfter [s2Step359EntryFOut,s2Step359EntryGOut,s2Step359EntryFvOut,s2Step359EntryGvOut] 3 s2Step359EntryBank_outgoingOwned

private theorem s2Step359EntryGv_distinct : (s2Step359EntryGvRow.sign::s2Step359EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359EntryGv_owned : (s2Step359EntryGvRow.sign::s2Step359EntryGvRow.payload).toFinset⊆s2Step359EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step359EntryGvBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359EntryGv_reserved : s2Step359EntryGvBefore.reserve s2Step359EntryGvFresh.toFinset=some s2Step359EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step359EntryGvFresh,arenaWires]
  · norm_num [s2Step359EntryGvBefore,s2Step359EntryGAfter,s2Step359EntryGvFresh,arenaWires]
  · simp only [s2Step359EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step359EntryGv_checked : planRowResizeLog s2Step359EntryGvBefore s2Step359EntryGvRow 195 s2Step359EntryGvFresh=
    some (s2Step359EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808],771⟩,growRow 771 s2Step359EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step359EntryGvBefore s2Step359EntryGvAfter s2Step359EntryGvRow 195 s2Step359EntryGvFresh
    s2Step359EntryGv_distinct s2Step359EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step359EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step359EntryGvRow.payload++s2Step359EntryGvFresh) s2Step359EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step359EntryBank_rows : planWindowRowsLog s2Step359EntryFBefore [(s2Step359EntryFRow,92),(s2Step359EntryGRow,92),(s2Step359EntryFvRow,195),(s2Step359EntryGvRow,195)] [s2Step359EntryFFresh,s2Step359EntryGFresh,s2Step359EntryFvFresh,s2Step359EntryGvFresh]=
    some (s2Step359EntryGvAfter,[s2Step359EntryFOut,s2Step359EntryGOut,s2Step359EntryFvOut,s2Step359EntryGvOut],(growRow 768 s2Step359EntryFFresh ++ (growRow 769 s2Step359EntryGFresh ++ (growRow 770 s2Step359EntryFvFresh ++ (growRow 771 s2Step359EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step359EntryGvAfter [] []=some (s2Step359EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step359EntryGvBefore s2Step359EntryGvAfter s2Step359EntryGvAfter
    s2Step359EntryGvRow s2Step359EntryGvOut 195 s2Step359EntryGvFresh [] [] []
    (growRow 771 s2Step359EntryGvFresh) ([]) s2Step359EntryGv_Incoming s2Step359EntryGv_checked h4 s2Step359EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step359EntryFvBefore s2Step359EntryFvAfter s2Step359EntryGvAfter
    s2Step359EntryFvRow s2Step359EntryFvOut 195 s2Step359EntryFvFresh [(s2Step359EntryGvRow,195)] [s2Step359EntryGvFresh] [s2Step359EntryGvOut]
    (growRow 770 s2Step359EntryFvFresh) ((growRow 771 s2Step359EntryGvFresh ++ [])) s2Step359EntryFv_Incoming s2Step359EntryFv_checked h3 s2Step359EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step359EntryGBefore s2Step359EntryGAfter s2Step359EntryGvAfter
    s2Step359EntryGRow s2Step359EntryGOut 92 s2Step359EntryGFresh [(s2Step359EntryFvRow,195),(s2Step359EntryGvRow,195)] [s2Step359EntryFvFresh,s2Step359EntryGvFresh] [s2Step359EntryFvOut,s2Step359EntryGvOut]
    (growRow 769 s2Step359EntryGFresh) ((growRow 770 s2Step359EntryFvFresh ++ (growRow 771 s2Step359EntryGvFresh ++ []))) s2Step359EntryG_Incoming s2Step359EntryG_checked h2 s2Step359EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step359EntryFBefore s2Step359EntryFAfter s2Step359EntryGvAfter
    s2Step359EntryFRow s2Step359EntryFOut 92 s2Step359EntryFFresh [(s2Step359EntryGRow,92),(s2Step359EntryFvRow,195),(s2Step359EntryGvRow,195)] [s2Step359EntryGFresh,s2Step359EntryFvFresh,s2Step359EntryGvFresh] [s2Step359EntryGOut,s2Step359EntryFvOut,s2Step359EntryGvOut]
    (growRow 768 s2Step359EntryFFresh) ((growRow 769 s2Step359EntryGFresh ++ (growRow 770 s2Step359EntryFvFresh ++ (growRow 771 s2Step359EntryGvFresh ++ [])))) s2Step359EntryF_Incoming s2Step359EntryF_checked h1 s2Step359EntryF_Outgoing
  exact h0

private theorem s2Step359EntryBank_checked : compileHmrBankResizeLog .entry s2Step359EntryFBefore ⟨s2Step359EntryFRow,s2Step359EntryGRow,s2Step359EntryFvRow,s2Step359EntryGvRow⟩ ⟨92,92,195,195⟩ [s2Step359EntryFFresh,s2Step359EntryGFresh,s2Step359EntryFvFresh,s2Step359EntryGvFresh]=
    some (s2Step359EntryGvAfter,⟨s2Step359EntryFOut,s2Step359EntryGOut,s2Step359EntryFvOut,s2Step359EntryGvOut⟩,(growRow 768 s2Step359EntryFFresh ++ (growRow 769 s2Step359EntryGFresh ++ (growRow 770 s2Step359EntryFvFresh ++ (growRow 771 s2Step359EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step359EntryBank_rows]
  rfl

private def s2Step359ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359ExitFBefore : Arena := s2Step359ExitGAfter

private def s2Step359ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 821],768⟩

private def s2Step359ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832],770⟩

private def s2Step359ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 785, 903],769⟩

private def s2Step359ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790],771⟩

private theorem s2Step359ExitBank_incomingDistinct : ([s2Step359ExitGRow,s2Step359ExitFRow,s2Step359ExitFvRow,s2Step359ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359ExitF_Incoming : rowsOwned s2Step359ExitFBefore [s2Step359ExitFRow,s2Step359ExitFvRow,s2Step359ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step359ExitGRow,s2Step359ExitFRow,s2Step359ExitFvRow,s2Step359ExitGvRow] 1 s2Step359ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step359ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step359ExitBank_outgoingOwned : rowsOwned s2Step359ExitGvAfter [s2Step359ExitGOut,s2Step359ExitFOut,s2Step359ExitFvOut,s2Step359ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step359ExitGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step359ExitF_Outgoing : rowsOwned s2Step359ExitGvAfter [s2Step359ExitFOut,s2Step359ExitFvOut,s2Step359ExitGvOut] :=
  hmrRows_owned_drop s2Step359ExitGvAfter [s2Step359ExitGOut,s2Step359ExitFOut,s2Step359ExitFvOut,s2Step359ExitGvOut] 1 s2Step359ExitBank_outgoingOwned

private theorem s2Step359ExitF_distinct : (s2Step359ExitFRow.sign::s2Step359ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359ExitF_owned : (s2Step359ExitFRow.sign::s2Step359ExitFRow.payload).toFinset⊆s2Step359ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step359ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359ExitF_retired : s2Step359ExitFBefore.retireSet s2Step359ExitFExtra.toFinset=s2Step359ExitFAfter := by
  unfold Arena.retireSet s2Step359ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step359ExitFBefore,s2Step359ExitGAfter,s2Step359ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step359ExitF_checked : planRowResizeLog s2Step359ExitFBefore s2Step359ExitFRow 92 []=
    some (s2Step359ExitFAfter,s2Step359ExitFOut,shrinkRow 768 s2Step359ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step359ExitFBefore s2Step359ExitFRow 92 s2Step359ExitF_distinct s2Step359ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step359ExitFRow.payload.take 92) s2Step359ExitFRow.sign=s2Step359ExitFOut := by decide +kernel
  have hi : s2Step359ExitFRow.payload.drop 92=s2Step359ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step359ExitF_retired] at result
  exact result

private def s2Step359ExitFvAfter : Arena := s2Step359ExitFAfter

private def s2Step359ExitFvBefore : Arena := s2Step359ExitFAfter

private theorem s2Step359ExitFv_Incoming : rowsOwned s2Step359ExitFvBefore [s2Step359ExitFvRow,s2Step359ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step359ExitGRow,s2Step359ExitFRow,s2Step359ExitFvRow,s2Step359ExitGvRow] 2 s2Step359ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step359ExitFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step359ExitFv_Outgoing : rowsOwned s2Step359ExitGvAfter [s2Step359ExitFvOut,s2Step359ExitGvOut] :=
  hmrRows_owned_drop s2Step359ExitGvAfter [s2Step359ExitGOut,s2Step359ExitFOut,s2Step359ExitFvOut,s2Step359ExitGvOut] 2 s2Step359ExitBank_outgoingOwned

private theorem s2Step359ExitFv_distinct : (s2Step359ExitFvRow.sign::s2Step359ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359ExitFv_owned : (s2Step359ExitFvRow.sign::s2Step359ExitFvRow.payload).toFinset⊆s2Step359ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step359ExitFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359ExitFv_reserved : s2Step359ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step359ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step359ExitFv_checked : planRowResizeLog s2Step359ExitFvBefore s2Step359ExitFvRow 196 []=
    some (s2Step359ExitFvAfter,s2Step359ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step359ExitFvBefore s2Step359ExitFvAfter s2Step359ExitFvRow 196 []
    s2Step359ExitFv_distinct s2Step359ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step359ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step359ExitFvRow.payload++[]) s2Step359ExitFvRow.sign=s2Step359ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step359ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step359ExitG_Incoming : rowsOwned s2Step359ExitGBefore [s2Step359ExitGRow,s2Step359ExitFRow,s2Step359ExitFvRow,s2Step359ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step359ExitGRow,s2Step359ExitFRow,s2Step359ExitFvRow,s2Step359ExitGvRow] 0 s2Step359ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step359ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step359ExitG_Outgoing : rowsOwned s2Step359ExitGvAfter [s2Step359ExitGOut,s2Step359ExitFOut,s2Step359ExitFvOut,s2Step359ExitGvOut] :=
  hmrRows_owned_drop s2Step359ExitGvAfter [s2Step359ExitGOut,s2Step359ExitFOut,s2Step359ExitFvOut,s2Step359ExitGvOut] 0 s2Step359ExitBank_outgoingOwned

private theorem s2Step359ExitG_distinct : (s2Step359ExitGRow.sign::s2Step359ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359ExitG_owned : (s2Step359ExitGRow.sign::s2Step359ExitGRow.payload).toFinset⊆s2Step359ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step359ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359ExitG_retired : s2Step359ExitGBefore.retireSet s2Step359ExitGExtra.toFinset=s2Step359ExitGAfter := by
  unfold Arena.retireSet s2Step359ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step359ExitGBefore,s2Step359ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step359ExitG_checked : planRowResizeLog s2Step359ExitGBefore s2Step359ExitGRow 91 []=
    some (s2Step359ExitGAfter,s2Step359ExitGOut,shrinkRow 769 s2Step359ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step359ExitGBefore s2Step359ExitGRow 91 s2Step359ExitG_distinct s2Step359ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step359ExitGRow.payload.take 91) s2Step359ExitGRow.sign=s2Step359ExitGOut := by decide +kernel
  have hi : s2Step359ExitGRow.payload.drop 91=s2Step359ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step359ExitG_retired] at result
  exact result

private def s2Step359ExitGvBefore : Arena := s2Step359ExitFAfter

private theorem s2Step359ExitGv_Incoming : rowsOwned s2Step359ExitGvBefore [s2Step359ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step359ExitGRow,s2Step359ExitFRow,s2Step359ExitFvRow,s2Step359ExitGvRow] 3 s2Step359ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step359ExitGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step359ExitGv_Outgoing : rowsOwned s2Step359ExitGvAfter [s2Step359ExitGvOut] :=
  hmrRows_owned_drop s2Step359ExitGvAfter [s2Step359ExitGOut,s2Step359ExitFOut,s2Step359ExitFvOut,s2Step359ExitGvOut] 3 s2Step359ExitBank_outgoingOwned

private theorem s2Step359ExitGv_distinct : (s2Step359ExitGvRow.sign::s2Step359ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359ExitGv_owned : (s2Step359ExitGvRow.sign::s2Step359ExitGvRow.payload).toFinset⊆s2Step359ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step359ExitGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359ExitGv_reserved : s2Step359ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step359ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step359ExitGv_checked : planRowResizeLog s2Step359ExitGvBefore s2Step359ExitGvRow 196 []=
    some (s2Step359ExitGvAfter,s2Step359ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step359ExitGvBefore s2Step359ExitGvAfter s2Step359ExitGvRow 196 []
    s2Step359ExitGv_distinct s2Step359ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step359ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step359ExitGvRow.payload++[]) s2Step359ExitGvRow.sign=s2Step359ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step359ExitBank_rows : planWindowRowsLog s2Step359ExitGBefore [(s2Step359ExitGRow,91),(s2Step359ExitFRow,92),(s2Step359ExitFvRow,196),(s2Step359ExitGvRow,196)] [[],[],[],[]]=
    some (s2Step359ExitGvAfter,[s2Step359ExitGOut,s2Step359ExitFOut,s2Step359ExitFvOut,s2Step359ExitGvOut],(shrinkRow 769 s2Step359ExitGExtra ++ (shrinkRow 768 s2Step359ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step359ExitGvAfter [] []=some (s2Step359ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step359ExitGvBefore s2Step359ExitGvAfter s2Step359ExitGvAfter
    s2Step359ExitGvRow s2Step359ExitGvOut 196 [] [] [] []
    (growRow 771 []) ([]) s2Step359ExitGv_Incoming s2Step359ExitGv_checked h4 s2Step359ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step359ExitFvBefore s2Step359ExitFvAfter s2Step359ExitGvAfter
    s2Step359ExitFvRow s2Step359ExitFvOut 196 [] [(s2Step359ExitGvRow,196)] [[]] [s2Step359ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step359ExitFv_Incoming s2Step359ExitFv_checked h3 s2Step359ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step359ExitFBefore s2Step359ExitFAfter s2Step359ExitGvAfter
    s2Step359ExitFRow s2Step359ExitFOut 92 [] [(s2Step359ExitFvRow,196),(s2Step359ExitGvRow,196)] [[],[]] [s2Step359ExitFvOut,s2Step359ExitGvOut]
    (shrinkRow 768 s2Step359ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step359ExitF_Incoming s2Step359ExitF_checked h2 s2Step359ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step359ExitGBefore s2Step359ExitGAfter s2Step359ExitGvAfter
    s2Step359ExitGRow s2Step359ExitGOut 91 [] [(s2Step359ExitFRow,92),(s2Step359ExitFvRow,196),(s2Step359ExitGvRow,196)] [[],[],[]] [s2Step359ExitFOut,s2Step359ExitFvOut,s2Step359ExitGvOut]
    (shrinkRow 769 s2Step359ExitGExtra) ((shrinkRow 768 s2Step359ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step359ExitG_Incoming s2Step359ExitG_checked h1 s2Step359ExitG_Outgoing
  exact h0

private theorem s2Step359ExitBank_checked : compileHmrBankResizeLog .exit s2Step359ExitGBefore ⟨s2Step359ExitFRow,s2Step359ExitGRow,s2Step359ExitFvRow,s2Step359ExitGvRow⟩ ⟨92,91,196,196⟩ [[],[],[],[]]=
    some (s2Step359ExitGvAfter,⟨s2Step359ExitFOut,s2Step359ExitGOut,s2Step359ExitFvOut,s2Step359ExitGvOut⟩,(shrinkRow 769 s2Step359ExitGExtra ++ (shrinkRow 768 s2Step359ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step359ExitBank_rows]
  rfl

private theorem s2Step359Add0_apart : Disjoint s2Step359Add0Arena.live s2Step359Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step359Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359Add0_card : s2Step359Add0Arena.live.card=908 := by
  decide +kernel

private theorem s2Step359Add0_borrowed : s2Step359Add0Arena.checkBorrow (hmrHybridCount s2Step359Add0Arena s2Step359Add0B.length) s2Step359Add0Work=some s2Step359Add0During := by
  have len : s2Step359Add0Work.length=hmrHybridCount s2Step359Add0Arena s2Step359Add0B.length := by
    rw [hmrHybridCount,s2Step359Add0_card]
    decide +kernel
  have nd : s2Step359Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step359Add0Arena s2Step359Add0During s2Step359Add0Work.toFinset s2Step359Add0_bounded s2Step359Add0_apart rfl

private theorem s2Step359Add0_distinct : (812::882::839::(s2Step359Add0A++s2Step359Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359Add0_owned : (812::882::839::(s2Step359Add0A++s2Step359Add0B)).toFinset⊆s2Step359Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step359Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359Add0_checked : compileHmrHybridCinLog s2Step359Add0Arena 882 812 839 s2Step359Add0A s2Step359Add0B s2Step359Add0Work=some s2Step359Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step359Add0Arena s2Step359Add0During 882 812 839 s2Step359Add0A s2Step359Add0B s2Step359Add0Work
    (by decide +kernel) (by decide +kernel) s2Step359Add0_distinct
    (fun q hq => s2Step359Add0_owned (List.mem_toFinset.mpr hq)) s2Step359Add0_borrowed

private theorem s2Step359Add1_apart : Disjoint s2Step359Add1Arena.live s2Step359Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step359Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359Add1_card : s2Step359Add1Arena.live.card=908 := by
  decide +kernel

private theorem s2Step359Add1_borrowed : s2Step359Add1Arena.checkBorrow (hmrHybridCount s2Step359Add1Arena s2Step359Add1B.length) s2Step359Add1Work=some s2Step359Add1During := by
  have len : s2Step359Add1Work.length=hmrHybridCount s2Step359Add1Arena s2Step359Add1B.length := by
    rw [hmrHybridCount,s2Step359Add1_card]
    decide +kernel
  have nd : s2Step359Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step359Add1Arena s2Step359Add1During s2Step359Add1Work.toFinset s2Step359Add1_bounded s2Step359Add1_apart rfl

private theorem s2Step359Add1_distinct : (812::882::839::(s2Step359Add1A++s2Step359Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359Add1_owned : (812::882::839::(s2Step359Add1A++s2Step359Add1B)).toFinset⊆s2Step359Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step359Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359Add1_checked : compileHmrHybridCinLog s2Step359Add1Arena 882 812 839 s2Step359Add1A s2Step359Add1B s2Step359Add1Work=some s2Step359Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step359Add1Arena s2Step359Add1During 882 812 839 s2Step359Add1A s2Step359Add1B s2Step359Add1Work
    (by decide +kernel) (by decide +kernel) s2Step359Add1_distinct
    (fun q hq => s2Step359Add1_owned (List.mem_toFinset.mpr hq)) s2Step359Add1_borrowed

private theorem s2Step359F4_apart : Disjoint (s2Step359Add0A++s2Step359Add0B).toFinset (s2Step359Add1A++s2Step359Add1B).toFinset := by
  have nd : ((s2Step359Add0A++s2Step359Add0B)++(s2Step359Add1A++s2Step359Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step359F4_carry : s2Step359F4FlagArena.checkBorrow 1 [839]=some s2Step359Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step359F4FlagArena,s2Step359HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step359F4FlagArena,s2Step359HeadFvAfter,s2Step359Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step359F4_distinct : (796::882::812::839::((s2Step359Add0A++s2Step359Add1A)++(s2Step359Add0B++s2Step359Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359F4_flag : s2Step359HeadFvAfter.checkBorrow 1 [812]=some s2Step359F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step359HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step359F4_owned : (796::882::((s2Step359Add0A++s2Step359Add1A)++(s2Step359Add0B++s2Step359Add1B))).toFinset⊆s2Step359HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step359HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359F4_checked : compileHmrHybridF4Log s2Step359HeadFvAfter 796 882 s2Step359Add0A s2Step359Add0B s2Step359Add1A s2Step359Add1B [812] [839] s2Step359Add0Work s2Step359Add1Work=some s2Step359F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step359HeadFvAfter s2Step359F4FlagArena s2Step359Add0Arena s2Step359Add0During s2Step359Add1During 796 882
    s2Step359Add0A s2Step359Add0B s2Step359Add1A s2Step359Add1B [812] [839] s2Step359Add0Work s2Step359Add1Work
    (fun q hq => s2Step359F4_owned (List.mem_toFinset.mpr hq)) s2Step359F4_flag s2Step359F4_carry
    s2Step359F4_distinct s2Step359F4_apart s2Step359Add0_checked s2Step359Add1_checked

private theorem s2Step359Front_branch : s2Step359FrontSigmaArena.checkBorrow 1 [882]=some s2Step359HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step359FrontSigmaArena,s2Step359EntryGvAfter,s2Step359EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step359FrontSigmaArena,s2Step359EntryGvAfter,s2Step359EntryGAfter,s2Step359HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step359Front_entry : HmrFrontEntryValid s2Step359EntryFBefore s2Step359FrontBank 92 195 ⟨92,91,196,196⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step359FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step359EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step359EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step359FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step359Front_sigma : s2Step359EntryGvAfter.checkBorrow 1 [796]=some s2Step359FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step359EntryGvAfter,s2Step359EntryGAfter,arenaWires]
  · rfl

private def s2Step359HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359HeadFBefore : Arena := s2Step359HeadGAfter

private def s2Step359HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩

private def s2Step359HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩

private def s2Step359HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 785],769⟩

private def s2Step359HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808],771⟩

private theorem s2Step359HeadBank_incomingDistinct : ([s2Step359HeadGRow,s2Step359HeadFRow,s2Step359HeadGvRow,s2Step359HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359HeadF_Incoming : rowsOwned s2Step359HeadFBefore [s2Step359HeadFRow,s2Step359HeadGvRow,s2Step359HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step359HeadGRow,s2Step359HeadFRow,s2Step359HeadGvRow,s2Step359HeadFvRow] 1 s2Step359HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step359HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step359HeadBank_outgoingOwned : rowsOwned s2Step359HeadFvAfter [s2Step359HeadGOut,s2Step359HeadFOut,s2Step359HeadGvOut,s2Step359HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step359HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step359HeadF_Outgoing : rowsOwned s2Step359HeadFvAfter [s2Step359HeadFOut,s2Step359HeadGvOut,s2Step359HeadFvOut] :=
  hmrRows_owned_drop s2Step359HeadFvAfter [s2Step359HeadGOut,s2Step359HeadFOut,s2Step359HeadGvOut,s2Step359HeadFvOut] 1 s2Step359HeadBank_outgoingOwned

private theorem s2Step359HeadF_distinct : (s2Step359HeadFRow.sign::s2Step359HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359HeadF_owned : (s2Step359HeadFRow.sign::s2Step359HeadFRow.payload).toFinset⊆s2Step359HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step359HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359HeadF_reserved : s2Step359HeadFBefore.reserve s2Step359HeadFFresh.toFinset=some s2Step359HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step359HeadFFresh,arenaWires]
  · norm_num [s2Step359HeadFBefore,s2Step359HeadGAfter,s2Step359HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step359HeadFAfter,s2Step359HeadFBefore,s2Step359HeadGAfter,s2Step359HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step359HeadF_checked : planRowResizeLog s2Step359HeadFBefore s2Step359HeadFRow 93 s2Step359HeadFFresh=
    some (s2Step359HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 821],768⟩,growRow 768 s2Step359HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step359HeadFBefore s2Step359HeadFAfter s2Step359HeadFRow 93 s2Step359HeadFFresh
    s2Step359HeadF_distinct s2Step359HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step359HeadF_reserved
  have rowEq : WindowRow.mk (s2Step359HeadFRow.payload++s2Step359HeadFFresh) s2Step359HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 821],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step359HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step359HeadFvBefore : Arena := s2Step359HeadGvAfter

private theorem s2Step359HeadFv_Incoming : rowsOwned s2Step359HeadFvBefore [s2Step359HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step359HeadGRow,s2Step359HeadFRow,s2Step359HeadGvRow,s2Step359HeadFvRow] 3 s2Step359HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step359HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step359HeadFv_Outgoing : rowsOwned s2Step359HeadFvAfter [s2Step359HeadFvOut] :=
  hmrRows_owned_drop s2Step359HeadFvAfter [s2Step359HeadGOut,s2Step359HeadFOut,s2Step359HeadGvOut,s2Step359HeadFvOut] 3 s2Step359HeadBank_outgoingOwned

private theorem s2Step359HeadFv_distinct : (s2Step359HeadFvRow.sign::s2Step359HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359HeadFv_owned : (s2Step359HeadFvRow.sign::s2Step359HeadFvRow.payload).toFinset⊆s2Step359HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step359HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359HeadFv_reserved : s2Step359HeadFvBefore.reserve s2Step359HeadFvFresh.toFinset=some s2Step359HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step359HeadFvFresh,arenaWires]
  · norm_num [s2Step359HeadFvBefore,s2Step359HeadGvAfter,s2Step359HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step359HeadFvAfter,s2Step359HeadFvBefore,s2Step359HeadGvAfter,s2Step359HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step359HeadFv_checked : planRowResizeLog s2Step359HeadFvBefore s2Step359HeadFvRow 196 s2Step359HeadFvFresh=
    some (s2Step359HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832],770⟩,growRow 770 s2Step359HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step359HeadFvBefore s2Step359HeadFvAfter s2Step359HeadFvRow 196 s2Step359HeadFvFresh
    s2Step359HeadFv_distinct s2Step359HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step359HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step359HeadFvRow.payload++s2Step359HeadFvFresh) s2Step359HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step359HeadG_Incoming : rowsOwned s2Step359HeadGBefore [s2Step359HeadGRow,s2Step359HeadFRow,s2Step359HeadGvRow,s2Step359HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step359HeadGRow,s2Step359HeadFRow,s2Step359HeadGvRow,s2Step359HeadFvRow] 0 s2Step359HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step359HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step359HeadG_Outgoing : rowsOwned s2Step359HeadFvAfter [s2Step359HeadGOut,s2Step359HeadFOut,s2Step359HeadGvOut,s2Step359HeadFvOut] :=
  hmrRows_owned_drop s2Step359HeadFvAfter [s2Step359HeadGOut,s2Step359HeadFOut,s2Step359HeadGvOut,s2Step359HeadFvOut] 0 s2Step359HeadBank_outgoingOwned

private theorem s2Step359HeadG_distinct : (s2Step359HeadGRow.sign::s2Step359HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359HeadG_owned : (s2Step359HeadGRow.sign::s2Step359HeadGRow.payload).toFinset⊆s2Step359HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step359HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359HeadG_reserved : s2Step359HeadGBefore.reserve s2Step359HeadGFresh.toFinset=some s2Step359HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step359HeadGFresh,arenaWires]
  · norm_num [s2Step359HeadGBefore,s2Step359HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step359HeadGAfter,s2Step359HeadGBefore,s2Step359HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step359HeadG_checked : planRowResizeLog s2Step359HeadGBefore s2Step359HeadGRow 93 s2Step359HeadGFresh=
    some (s2Step359HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 785, 903],769⟩,growRow 769 s2Step359HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step359HeadGBefore s2Step359HeadGAfter s2Step359HeadGRow 93 s2Step359HeadGFresh
    s2Step359HeadG_distinct s2Step359HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step359HeadG_reserved
  have rowEq : WindowRow.mk (s2Step359HeadGRow.payload++s2Step359HeadGFresh) s2Step359HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 785, 903],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step359HeadGvBefore : Arena := s2Step359HeadFAfter

private theorem s2Step359HeadGv_Incoming : rowsOwned s2Step359HeadGvBefore [s2Step359HeadGvRow,s2Step359HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step359HeadGRow,s2Step359HeadFRow,s2Step359HeadGvRow,s2Step359HeadFvRow] 2 s2Step359HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step359HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step359HeadGv_Outgoing : rowsOwned s2Step359HeadFvAfter [s2Step359HeadGvOut,s2Step359HeadFvOut] :=
  hmrRows_owned_drop s2Step359HeadFvAfter [s2Step359HeadGOut,s2Step359HeadFOut,s2Step359HeadGvOut,s2Step359HeadFvOut] 2 s2Step359HeadBank_outgoingOwned

private theorem s2Step359HeadGv_distinct : (s2Step359HeadGvRow.sign::s2Step359HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step359HeadGv_owned : (s2Step359HeadGvRow.sign::s2Step359HeadGvRow.payload).toFinset⊆s2Step359HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step359HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step359HeadGv_reserved : s2Step359HeadGvBefore.reserve s2Step359HeadGvFresh.toFinset=some s2Step359HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step359HeadGvFresh,arenaWires]
  · norm_num [s2Step359HeadGvBefore,s2Step359HeadFAfter,s2Step359HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step359HeadGvAfter,s2Step359HeadGvBefore,s2Step359HeadFAfter,s2Step359HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step359HeadGv_checked : planRowResizeLog s2Step359HeadGvBefore s2Step359HeadGvRow 196 s2Step359HeadGvFresh=
    some (s2Step359HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790],771⟩,growRow 771 s2Step359HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step359HeadGvBefore s2Step359HeadGvAfter s2Step359HeadGvRow 196 s2Step359HeadGvFresh
    s2Step359HeadGv_distinct s2Step359HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step359HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step359HeadGvRow.payload++s2Step359HeadGvFresh) s2Step359HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step359HeadBank_rows : planWindowRowsLog s2Step359HeadGBefore [(s2Step359HeadGRow,93),(s2Step359HeadFRow,93),(s2Step359HeadGvRow,196),(s2Step359HeadFvRow,196)] [s2Step359HeadGFresh,s2Step359HeadFFresh,s2Step359HeadGvFresh,s2Step359HeadFvFresh]=
    some (s2Step359HeadFvAfter,[s2Step359HeadGOut,s2Step359HeadFOut,s2Step359HeadGvOut,s2Step359HeadFvOut],(growRow 769 s2Step359HeadGFresh ++ (growRow 768 s2Step359HeadFFresh ++ (growRow 771 s2Step359HeadGvFresh ++ (growRow 770 s2Step359HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step359HeadFvAfter [] []=some (s2Step359HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step359HeadFvBefore s2Step359HeadFvAfter s2Step359HeadFvAfter
    s2Step359HeadFvRow s2Step359HeadFvOut 196 s2Step359HeadFvFresh [] [] []
    (growRow 770 s2Step359HeadFvFresh) ([]) s2Step359HeadFv_Incoming s2Step359HeadFv_checked h4 s2Step359HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step359HeadGvBefore s2Step359HeadGvAfter s2Step359HeadFvAfter
    s2Step359HeadGvRow s2Step359HeadGvOut 196 s2Step359HeadGvFresh [(s2Step359HeadFvRow,196)] [s2Step359HeadFvFresh] [s2Step359HeadFvOut]
    (growRow 771 s2Step359HeadGvFresh) ((growRow 770 s2Step359HeadFvFresh ++ [])) s2Step359HeadGv_Incoming s2Step359HeadGv_checked h3 s2Step359HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step359HeadFBefore s2Step359HeadFAfter s2Step359HeadFvAfter
    s2Step359HeadFRow s2Step359HeadFOut 93 s2Step359HeadFFresh [(s2Step359HeadGvRow,196),(s2Step359HeadFvRow,196)] [s2Step359HeadGvFresh,s2Step359HeadFvFresh] [s2Step359HeadGvOut,s2Step359HeadFvOut]
    (growRow 768 s2Step359HeadFFresh) ((growRow 771 s2Step359HeadGvFresh ++ (growRow 770 s2Step359HeadFvFresh ++ []))) s2Step359HeadF_Incoming s2Step359HeadF_checked h2 s2Step359HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step359HeadGBefore s2Step359HeadGAfter s2Step359HeadFvAfter
    s2Step359HeadGRow s2Step359HeadGOut 93 s2Step359HeadGFresh [(s2Step359HeadFRow,93),(s2Step359HeadGvRow,196),(s2Step359HeadFvRow,196)] [s2Step359HeadFFresh,s2Step359HeadGvFresh,s2Step359HeadFvFresh] [s2Step359HeadFOut,s2Step359HeadGvOut,s2Step359HeadFvOut]
    (growRow 769 s2Step359HeadGFresh) ((growRow 768 s2Step359HeadFFresh ++ (growRow 771 s2Step359HeadGvFresh ++ (growRow 770 s2Step359HeadFvFresh ++ [])))) s2Step359HeadG_Incoming s2Step359HeadG_checked h1 s2Step359HeadG_Outgoing
  exact h0

private theorem s2Step359HeadBank_checked : compileHmrBankResizeLog .headroom s2Step359HeadGBefore ⟨s2Step359HeadFRow,s2Step359HeadGRow,s2Step359HeadFvRow,s2Step359HeadGvRow⟩ ⟨93,93,196,196⟩ [s2Step359HeadGFresh,s2Step359HeadFFresh,s2Step359HeadGvFresh,s2Step359HeadFvFresh]=
    some (s2Step359HeadFvAfter,⟨s2Step359HeadFOut,s2Step359HeadGOut,s2Step359HeadFvOut,s2Step359HeadGvOut⟩,(growRow 769 s2Step359HeadGFresh ++ (growRow 768 s2Step359HeadFFresh ++ (growRow 771 s2Step359HeadGvFresh ++ (growRow 770 s2Step359HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step359HeadBank_rows]
  rfl

private theorem s2Step359Front_checked : compileHmrSourceFrontLog s2Step359EntryFBefore s2Step359FrontBank 92 195 ⟨92,91,196,196⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step359FrontLog=some s2Step359FrontPlan := by
  have pairEq : s2Step359FrontPair=⟨s2Step359HeadFRow,s2Step359HeadGRow,s2Step359HeadFvRow,s2Step359HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step359FrontHead=⟨s2Step359ExitFRow,s2Step359ExitGRow,s2Step359ExitFvRow,s2Step359ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step359Add0A=s2Step359FrontHead.f.wires := by decide +kernel
  have gEq : s2Step359Add0B=s2Step359FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step359Add1A=s2Step359FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step359Add1B=s2Step359FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step359EntryFBefore s2Step359FrontBank 92 195 ⟨92,91,196,196⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step359FrontLog s2Step359FrontPlan
  · exact s2Step359Front_entry
  · exact s2Step359EntryBank_checked
  · exact s2Step359Front_sigma
  · rfl
  · exact s2Step359Front_branch
  · rfl
  · simpa only [s2Step359FrontPlan,pairEq] using s2Step359HeadBank_checked
  · simpa only [s2Step359FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step359F4_checked
  · exact s2Step359Counter_checked
  · rfl
  · simpa only [s2Step359FrontPlan,headEq] using s2Step359ExitBank_checked

private theorem s2Step359Complete_explicit_checked : compileHmrEarlyStepLog s2Step359EntryFBefore s2Step359FrontBank 92 195 ⟨92,91,196,196⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step359CompleteLog=some s2Step359CompletePlan := by
  let Q := s2Step359EarlyControlPlan
  have hq := s2Step359EarlyControl_plan_checked
  have fv1 : s2Step359CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step359CompleteOut.fv.payload[2]?.getD s2Step359CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step359CompleteOut.fv.payload[3]?.getD s2Step359CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step359CompleteOut.fv.payload[4]?.getD s2Step359CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step359EntryFBefore s2Step359EarlyControlArena s2Step359FrontBank 92 195 ⟨92,91,196,196⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step359CompleteLog s2Step359FrontPlan Q
    s2Step359Front_checked s2Step359Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step359Complete_owned s2Step359Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step359EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 s2Step359CompleteOut.fv.second (s2Step359CompleteOut.fv.payload[2]?.getD s2Step359CompleteOut.fv.sign) (s2Step359CompleteOut.fv.payload[3]?.getD s2Step359CompleteOut.fv.sign) (s2Step359CompleteOut.fv.payload[4]?.getD s2Step359CompleteOut.fv.sign) 882 60 s2Step359EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep359Arena : Arena := s2Step359EntryFBefore
def s2PrivateStep359Bank : WindowBank := s2Step359FrontBank
def s2PrivateStep359Spec : HmrSourceWalkStepLog := ⟨92,195,⟨92,91,196,196⟩,60,.early s2Step359CompleteLog⟩
def s2PrivateStep359Plan : HmrSourceStepPlan := .early s2Step359CompletePlan
theorem s2PrivateStep359_source : s2PrivateStep359Spec=s2ObservedLogs352[7] := rfl
theorem s2PrivateStep359_checked : compileHmrSourceStepLog s2PrivateStep359Arena s2PrivateStep359Bank
    s2PrivateStep359Spec.fgWidth s2PrivateStep359Spec.vWidth s2PrivateStep359Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 359 s2PrivateStep359Spec.need none s2PrivateStep359Spec.log=some s2PrivateStep359Plan := by
  change compileHmrSourceStepLog s2Step359EntryFBefore s2Step359FrontBank 92 195 ⟨92,91,196,196⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 359 60 none (.early s2Step359CompleteLog)=some (.early s2Step359CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 359<498)]
  rw [s2Step359Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
