import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep361
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

private def s2Step363CompleteMoves : List (Wire × Wire) := [(831,601)]

private def s2Step363EarlyControlLog : HmrEarlyControlLog := ⟨[831, 903, 785, 812, 847],[796],[783],[800, 789, 827, 844, 907, 913],[]⟩

private def s2Step363FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [796], [], [780]],[[783], [847], [903], [812]],[[], [], [], []]⟩,[797],[882],[800],[789],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844]⟩

private def s2Step363CompleteLog : HmrEarlyStepLog := ⟨s2Step363FrontLog,s2Step363CompleteMoves,s2Step363EarlyControlLog⟩

private def s2Step363ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600],768⟩

private def s2Step363ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839],770⟩

private def s2Step363ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88],769⟩

private def s2Step363ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩

private def s2Step363FrontOut : WindowBank := ⟨s2Step363ExitFOut,s2Step363ExitGOut,s2Step363ExitFvOut,s2Step363ExitGvOut⟩

private def s2Step363CompleteOut : WindowBank := s2Step363FrontOut.repacked s2Step363CompleteMoves

private def s2Step363EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step363EarlyControlPositiveArena,[796],s2Step363EarlyControlEqualityArena,[783],⟨⟨797,false⟩,[⟨⟨796,false⟩,783⟩]⟩⟩

private def s2Step363EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step363EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step363EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,831⟩,⟨⟨774,false⟩,903⟩,⟨⟨775,false⟩,785⟩,⟨⟨776,false⟩,812⟩,⟨⟨777,false⟩,847⟩]⟩

private def s2Step363EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step363EarlyControlZeroArena,s2Step363EarlyControlZeroPlan,s2Step363EarlyControlClassPlan,s2Step363EarlyControlFlagArena,s2Step363EarlyControlFittedArena,s2Step363EarlyControlHistoryArena,s2Step363EarlyControlSigmaArena,s2Step363EarlyControlOutputArena,s2Step363EarlyControlLog⟩

private def s2Step363CounterWork : List Wire := [800, 789, 827, 844]

private theorem s2Step363Counter_bounded : s2Step363CounterWork.toFinset⊆arenaWires := by norm_num [s2Step363CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step363HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363CounterDuring : Arena := ⟨s2Step363HeadFvAfter.live∪s2Step363CounterWork.toFinset,Finset.union_subset s2Step363HeadFvAfter.bounded s2Step363Counter_bounded⟩

private def s2Step363EntryFFresh : List Wire := []

private def s2Step363EntryFvFresh : List Wire := []

private def s2Step363EntryGFresh : List Wire := [796]

private def s2Step363EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363EntryGvFresh : List Wire := [780]

private def s2Step363ExitFExtra : List Wire := [601, 847]

private def s2Step363ExitFvExtra : List Wire := [785, 812]

private def s2Step363ExitGExtra : List Wire := [796, 783]

private def s2Step363ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<601) ∨ (602≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363ExitGvExtra : List Wire := [903]

private def s2Step363Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363Add0Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step363Add0_bounded : s2Step363Add0Work.toFinset⊆arenaWires := by
  have h : s2Step363Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step363Add0During : Arena := ⟨s2Step363Add0Arena.live∪s2Step363Add0Work.toFinset,Finset.union_subset s2Step363Add0Arena.bounded s2Step363Add0_bounded⟩

private def s2Step363Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363Add1Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step363Add1_bounded : s2Step363Add1Work.toFinset⊆arenaWires := by
  have h : s2Step363Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step363Add1During : Arena := ⟨s2Step363Add1Arena.live∪s2Step363Add1Work.toFinset,Finset.union_subset s2Step363Add1Arena.bounded s2Step363Add1_bounded⟩

private def s2Step363F4FlagArena : Arena := ⟨s2Step363HeadFvAfter.live∪{800},Finset.union_subset s2Step363HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step363F4Plan : HmrHybridF4Plan := ⟨s2Step363F4FlagArena,[800],s2Step363Add0Arena,[789],s2Step363Add0During,s2Step363Add0Work,s2Step363Add1During,s2Step363Add1Work⟩

private def s2Step363HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 847],768⟩

private def s2Step363HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 785, 812],770⟩

private def s2Step363HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 796, 783],769⟩

private def s2Step363HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 903],771⟩

private def s2Step363FrontHead : WindowBank := ⟨s2Step363HeadFOut,s2Step363HeadGOut,s2Step363HeadFvOut,s2Step363HeadGvOut⟩

private def s2Step363EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601],768⟩

private def s2Step363EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 785],770⟩

private def s2Step363EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 796],769⟩

private def s2Step363EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩

private def s2Step363FrontPair : WindowBank := ⟨s2Step363EntryFOut,s2Step363EntryGOut,s2Step363EntryFvOut,s2Step363EntryGvOut⟩

private def s2Step363FrontSigmaArena : Arena := ⟨s2Step363EntryGvAfter.live∪{797},Finset.union_subset s2Step363EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step363HeadFFresh : List Wire := [847]

private def s2Step363HeadFvFresh : List Wire := [812]

private def s2Step363HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363HeadGFresh : List Wire := [783]

private def s2Step363HeadGvFresh : List Wire := [903]

private def s2Step363FrontPlan : HmrSourceFront := ⟨s2Step363EntryGvAfter,s2Step363FrontPair,(growRow 768 s2Step363EntryFFresh ++ (growRow 769 s2Step363EntryGFresh ++ (growRow 770 s2Step363EntryFvFresh ++ (growRow 771 s2Step363EntryGvFresh ++ [])))),s2Step363FrontSigmaArena,[797],s2Step363HeadGBefore,[882],
  s2Step363HeadFvAfter,s2Step363FrontHead,(growRow 769 s2Step363HeadGFresh ++ (growRow 768 s2Step363HeadFFresh ++ (growRow 771 s2Step363HeadGvFresh ++ (growRow 770 s2Step363HeadFvFresh ++ [])))),s2Step363F4Plan,s2Step363CounterDuring,s2Step363CounterWork,s2Step363ExitGvAfter,s2Step363FrontOut,(shrinkRow 769 s2Step363ExitGExtra ++ (shrinkRow 768 s2Step363ExitFExtra ++ (shrinkRow 770 s2Step363ExitFvExtra ++ (shrinkRow 771 s2Step363ExitGvExtra ++ []))))⟩

private def s2Step363CompletePlan : HmrEarlyStepPlan := ⟨s2Step363FrontPlan,s2Step363EarlyControlArena,s2Step363EarlyControlPlan,s2Step363CompleteMoves⟩

private theorem s2Step363Complete_apart : List.Disjoint (s2Step363CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [797, 882, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step363CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[797, 882, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step363Complete_owned : (s2Step363CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step363EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step363EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step363CompleteMoveArena : Arena := ⟨s2Step363ExitGvAfter.live∪{601},Finset.union_subset s2Step363ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step363Complete_repack : s2Step363ExitGvAfter.checkRepack s2Step363CompleteMoves=some s2Step363EarlyControlArena := by
  have owned : 831∈s2Step363ExitGvAfter.live := by norm_num [s2Step363ExitGvAfter,arenaWires]
  have reserve : s2Step363ExitGvAfter.reserve {601}=some s2Step363CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step363ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step363CompleteMoveArena.retireSet {831}=s2Step363EarlyControlArena := by
    unfold Arena.retireSet s2Step363EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step363CompleteMoveArena,s2Step363ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step363CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step363CompleteMoveArena.retireSet {831}).checkRepack []=some s2Step363EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step363EarlyControl_branchOwned : ([882] : List Wire).toFinset⊆s2Step363EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step363EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363EarlyControl_branch : compileHmrBranchRetirement s2Step363EarlyControlSigmaArena 882=some s2Step363EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step363EarlyControl_branchOwned
  · ext q
    simp [s2Step363EarlyControlOutputArena,s2Step363EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step363EarlyControl_classEqualityBorrow : s2Step363EarlyControlPositiveArena.checkBorrow (([797, 796] : List Wire).length-1) s2Step363EarlyControlLog.classWork=some s2Step363EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step363EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step363EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step363EarlyControlEqualityArena,s2Step363EarlyControlPositiveArena,s2Step363EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step363EarlyControl_classEqualityOwned : ([797, 796] : List Wire).toFinset⊆s2Step363EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step363EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363EarlyControl_classEquality : compileHmrEqualityLog s2Step363EarlyControlPositiveArena [797, 796] 0 s2Step363EarlyControlLog.classWork=some (s2Step363EarlyControlEqualityArena,s2Step363EarlyControlLog.classWork,s2Step363EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step363EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step363EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step363EarlyControl_classOwned : ([777, 847, 797] : List Wire).toFinset⊆s2Step363EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step363EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363EarlyControl_positiveBorrow : s2Step363EarlyControlZeroArena.checkBorrow (1) s2Step363EarlyControlLog.positiveWork=some s2Step363EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step363EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step363EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step363EarlyControlPositiveArena,s2Step363EarlyControlZeroArena,s2Step363EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step363EarlyControl_class : compileHmrSourceClassLog s2Step363EarlyControlZeroArena false 777 s2Step363EarlyControlZeroPlan.top 0 797 s2Step363EarlyControlLog.positiveWork s2Step363EarlyControlLog.classWork=some s2Step363EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step363EarlyControlClassPlan s2Step363EarlyControlZeroArena false 777 s2Step363EarlyControlZeroPlan.top 0 797
  constructor
  · decide +kernel
  · exact s2Step363EarlyControl_classOwned
  · exact s2Step363EarlyControl_positiveBorrow
  · exact s2Step363EarlyControl_classEquality

private theorem s2Step363EarlyControl_entryRecordOwned : ([882, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step363EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step363EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363EarlyControl_entrySigmaOwned : ([797, 254] : List Wire).toFinset⊆s2Step363EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step363EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363EarlyControl_fitBorrow : s2Step363EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step363EarlyControlLog.recordFresh=some s2Step363EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step363EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step363EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
      decide +kernel
    · ext q
      simp [s2Step363EarlyControlFittedArena,s2Step363EarlyControlFlagArena,s2Step363EarlyControlLog,arenaWires]

private theorem s2Step363EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step363EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step363EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step363EarlyControl_fit : compileHmrRecordGrowLog s2Step363EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step363EarlyControlLog.recordFresh=some s2Step363EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step363EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step363EarlyControl_fitBorrow

private theorem s2Step363EarlyControl_flagsBorrow : s2Step363EarlyControlEqualityArena.checkBorrow (6) s2Step363EarlyControlLog.flagWork=some s2Step363EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step363EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step363EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step363EarlyControlFlagArena,s2Step363EarlyControlEqualityArena,s2Step363EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step363EarlyControl_flagsOwned : ([783, 253, 252, 251] : List Wire).toFinset⊆s2Step363EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step363EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363EarlyControl_flags : compileHmrFlagsLog s2Step363EarlyControlClassPlan.equalityArena s2Step363EarlyControlClassPlan.equality.top 253 252 251 s2Step363EarlyControlLog.flagWork=some s2Step363EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step363EarlyControl_flagsOwned⟩
  · exact s2Step363EarlyControl_flagsBorrow

private theorem s2Step363EarlyControl_historyBorrow : s2Step363EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step363EarlyControlLog.recordFresh=some s2Step363EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step363EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step363EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step363EarlyControlHistoryArena,s2Step363EarlyControlArena,s2Step363EarlyControlLog,arenaWires]

private theorem s2Step363EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step363EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step363EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363EarlyControl_history : compileHmrRecordGrowLog s2Step363EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step363EarlyControlLog.recordFresh=some s2Step363EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step363EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step363EarlyControl_historyBorrow

private theorem s2Step363EarlyControl_sigmaOwned : ([254, 797] : List Wire).toFinset⊆s2Step363EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step363EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363EarlyControl_sigmaReleaseOwned : ([797] : List Wire).toFinset⊆s2Step363EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step363EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363EarlyControl_sigmaRelease : s2Step363EarlyControlHistoryArena.release {797} (fun _ => false)=some s2Step363EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step363EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step363EarlyControlSigmaArena,s2Step363EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step363EarlyControl_sigma : compileHmrSigmaDropLog s2Step363EarlyControlHistoryArena false 0 0 254 797 []=some s2Step363EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step363EarlyControl_sigmaOwned⟩
  · exact s2Step363EarlyControl_sigmaRelease

private theorem s2Step363EarlyControl_zeroBorrow : s2Step363EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step363EarlyControlLog.zeroWork=some s2Step363EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step363EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step363EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step363EarlyControlZeroArena,s2Step363EarlyControlArena,s2Step363EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step363EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step363EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step363EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363EarlyControl_zero : compileHmrEqualityLog s2Step363EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step363EarlyControlLog.zeroWork=some (s2Step363EarlyControlZeroArena,s2Step363EarlyControlLog.zeroWork,s2Step363EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step363EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step363EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step363EarlyControl_logged : s2Step363EarlyControlPlan.Logged s2Step363EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 254 253 252 251 882 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step363EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step363EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step363EarlyControl_zero
  · exact s2Step363EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step363EarlyControl_flags
  · exact s2Step363EarlyControl_fit
  · exact s2Step363EarlyControl_history
  · exact s2Step363EarlyControl_sigma
  · exact s2Step363EarlyControl_branch

private theorem s2Step363EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step363EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 254 253 252 251 882 60 s2Step363EarlyControlLog=some s2Step363EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step363EarlyControlPlan s2Step363EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 254 253 252 251 882 60 s2Step363EarlyControl_logged

private def s2Step363EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601],768⟩

private def s2Step363EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 785],770⟩

private def s2Step363EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88],769⟩

private def s2Step363EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821],771⟩

private def s2Step363FrontBank : WindowBank := ⟨s2Step363EntryFRow,s2Step363EntryGRow,s2Step363EntryFvRow,s2Step363EntryGvRow⟩

private def s2Step363Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 847, 768]

private def s2Step363Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 796, 783, 769]

private def s2Step363Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 785, 812, 770]

private def s2Step363Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 903, 771]

private theorem s2Step363Counter_apart : Disjoint s2Step363HeadFvAfter.live s2Step363CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step363HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363Counter_borrowed : s2Step363HeadFvAfter.checkBorrow 4 s2Step363CounterWork=some s2Step363CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step363HeadFvAfter s2Step363CounterDuring s2Step363CounterWork.toFinset s2Step363Counter_bounded s2Step363Counter_apart rfl

private theorem s2Step363Counter_owned : (797::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step363HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step363HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363Counter_checked : compileHmrCounterStepLog s2Step363HeadFvAfter true 797 [772, 773, 774, 775, 776, 777] s2Step363CounterWork=some s2Step363CounterDuring := by
  have owned : ∀q∈797::[772, 773, 774, 775, 776, 777],q∈s2Step363HeadFvAfter.live := fun q hq => s2Step363Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step363Counter_borrowed

private def s2Step363EntryFAfter : Arena := s2Step363EntryFBefore

private theorem s2Step363EntryBank_incomingDistinct : ([s2Step363EntryFRow,s2Step363EntryGRow,s2Step363EntryFvRow,s2Step363EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363EntryF_Incoming : rowsOwned s2Step363EntryFBefore [s2Step363EntryFRow,s2Step363EntryGRow,s2Step363EntryFvRow,s2Step363EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step363EntryFRow,s2Step363EntryGRow,s2Step363EntryFvRow,s2Step363EntryGvRow] 0 s2Step363EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step363EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step363EntryBank_outgoingOwned : rowsOwned s2Step363EntryGvAfter [s2Step363EntryFOut,s2Step363EntryGOut,s2Step363EntryFvOut,s2Step363EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step363EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step363EntryF_Outgoing : rowsOwned s2Step363EntryGvAfter [s2Step363EntryFOut,s2Step363EntryGOut,s2Step363EntryFvOut,s2Step363EntryGvOut] :=
  hmrRows_owned_drop s2Step363EntryGvAfter [s2Step363EntryFOut,s2Step363EntryGOut,s2Step363EntryFvOut,s2Step363EntryGvOut] 0 s2Step363EntryBank_outgoingOwned

private theorem s2Step363EntryF_distinct : (s2Step363EntryFRow.sign::s2Step363EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363EntryF_owned : (s2Step363EntryFRow.sign::s2Step363EntryFRow.payload).toFinset⊆s2Step363EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step363EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363EntryF_reserved : s2Step363EntryFBefore.reserve s2Step363EntryFFresh.toFinset=some s2Step363EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step363EntryFFresh,arenaWires]
  · norm_num [s2Step363EntryFBefore,s2Step363EntryFFresh,arenaWires]
  · simp only [s2Step363EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step363EntryF_checked : planRowResizeLog s2Step363EntryFBefore s2Step363EntryFRow 90 s2Step363EntryFFresh=
    some (s2Step363EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601],768⟩,growRow 768 s2Step363EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step363EntryFBefore s2Step363EntryFAfter s2Step363EntryFRow 90 s2Step363EntryFFresh
    s2Step363EntryF_distinct s2Step363EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step363EntryF_reserved
  have rowEq : WindowRow.mk (s2Step363EntryFRow.payload++s2Step363EntryFFresh) s2Step363EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step363EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363EntryFvAfter : Arena := s2Step363EntryGAfter

private def s2Step363EntryFvBefore : Arena := s2Step363EntryGAfter

private theorem s2Step363EntryFv_Incoming : rowsOwned s2Step363EntryFvBefore [s2Step363EntryFvRow,s2Step363EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step363EntryFRow,s2Step363EntryGRow,s2Step363EntryFvRow,s2Step363EntryGvRow] 2 s2Step363EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step363EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step363EntryFv_Outgoing : rowsOwned s2Step363EntryGvAfter [s2Step363EntryFvOut,s2Step363EntryGvOut] :=
  hmrRows_owned_drop s2Step363EntryGvAfter [s2Step363EntryFOut,s2Step363EntryGOut,s2Step363EntryFvOut,s2Step363EntryGvOut] 2 s2Step363EntryBank_outgoingOwned

private theorem s2Step363EntryFv_distinct : (s2Step363EntryFvRow.sign::s2Step363EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363EntryFv_owned : (s2Step363EntryFvRow.sign::s2Step363EntryFvRow.payload).toFinset⊆s2Step363EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step363EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363EntryFv_reserved : s2Step363EntryFvBefore.reserve s2Step363EntryFvFresh.toFinset=some s2Step363EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step363EntryFvFresh,arenaWires]
  · norm_num [s2Step363EntryFvBefore,s2Step363EntryGAfter,s2Step363EntryFvFresh,arenaWires]
  · simp only [s2Step363EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step363EntryFv_checked : planRowResizeLog s2Step363EntryFvBefore s2Step363EntryFvRow 198 s2Step363EntryFvFresh=
    some (s2Step363EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 785],770⟩,growRow 770 s2Step363EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step363EntryFvBefore s2Step363EntryFvAfter s2Step363EntryFvRow 198 s2Step363EntryFvFresh
    s2Step363EntryFv_distinct s2Step363EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step363EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step363EntryFvRow.payload++s2Step363EntryFvFresh) s2Step363EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step363EntryGBefore : Arena := s2Step363EntryFBefore

private theorem s2Step363EntryG_Incoming : rowsOwned s2Step363EntryGBefore [s2Step363EntryGRow,s2Step363EntryFvRow,s2Step363EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step363EntryFRow,s2Step363EntryGRow,s2Step363EntryFvRow,s2Step363EntryGvRow] 1 s2Step363EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step363EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step363EntryG_Outgoing : rowsOwned s2Step363EntryGvAfter [s2Step363EntryGOut,s2Step363EntryFvOut,s2Step363EntryGvOut] :=
  hmrRows_owned_drop s2Step363EntryGvAfter [s2Step363EntryFOut,s2Step363EntryGOut,s2Step363EntryFvOut,s2Step363EntryGvOut] 1 s2Step363EntryBank_outgoingOwned

private theorem s2Step363EntryG_distinct : (s2Step363EntryGRow.sign::s2Step363EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363EntryG_owned : (s2Step363EntryGRow.sign::s2Step363EntryGRow.payload).toFinset⊆s2Step363EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step363EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363EntryG_reserved : s2Step363EntryGBefore.reserve s2Step363EntryGFresh.toFinset=some s2Step363EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step363EntryGFresh,arenaWires]
  · norm_num [s2Step363EntryGBefore,s2Step363EntryFBefore,s2Step363EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step363EntryGAfter,s2Step363EntryGBefore,s2Step363EntryFBefore,s2Step363EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step363EntryG_checked : planRowResizeLog s2Step363EntryGBefore s2Step363EntryGRow 90 s2Step363EntryGFresh=
    some (s2Step363EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 796],769⟩,growRow 769 s2Step363EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step363EntryGBefore s2Step363EntryGAfter s2Step363EntryGRow 90 s2Step363EntryGFresh
    s2Step363EntryG_distinct s2Step363EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step363EntryG_reserved
  have rowEq : WindowRow.mk (s2Step363EntryGRow.payload++s2Step363EntryGFresh) s2Step363EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 796],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step363EntryGvBefore : Arena := s2Step363EntryGAfter

private theorem s2Step363EntryGv_Incoming : rowsOwned s2Step363EntryGvBefore [s2Step363EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step363EntryFRow,s2Step363EntryGRow,s2Step363EntryFvRow,s2Step363EntryGvRow] 3 s2Step363EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step363EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step363EntryGv_Outgoing : rowsOwned s2Step363EntryGvAfter [s2Step363EntryGvOut] :=
  hmrRows_owned_drop s2Step363EntryGvAfter [s2Step363EntryFOut,s2Step363EntryGOut,s2Step363EntryFvOut,s2Step363EntryGvOut] 3 s2Step363EntryBank_outgoingOwned

private theorem s2Step363EntryGv_distinct : (s2Step363EntryGvRow.sign::s2Step363EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363EntryGv_owned : (s2Step363EntryGvRow.sign::s2Step363EntryGvRow.payload).toFinset⊆s2Step363EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step363EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363EntryGv_reserved : s2Step363EntryGvBefore.reserve s2Step363EntryGvFresh.toFinset=some s2Step363EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step363EntryGvFresh,arenaWires]
  · norm_num [s2Step363EntryGvBefore,s2Step363EntryGAfter,s2Step363EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step363EntryGvAfter,s2Step363EntryGvBefore,s2Step363EntryGAfter,s2Step363EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step363EntryGv_checked : planRowResizeLog s2Step363EntryGvBefore s2Step363EntryGvRow 198 s2Step363EntryGvFresh=
    some (s2Step363EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩,growRow 771 s2Step363EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step363EntryGvBefore s2Step363EntryGvAfter s2Step363EntryGvRow 198 s2Step363EntryGvFresh
    s2Step363EntryGv_distinct s2Step363EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step363EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step363EntryGvRow.payload++s2Step363EntryGvFresh) s2Step363EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step363EntryBank_rows : planWindowRowsLog s2Step363EntryFBefore [(s2Step363EntryFRow,90),(s2Step363EntryGRow,90),(s2Step363EntryFvRow,198),(s2Step363EntryGvRow,198)] [s2Step363EntryFFresh,s2Step363EntryGFresh,s2Step363EntryFvFresh,s2Step363EntryGvFresh]=
    some (s2Step363EntryGvAfter,[s2Step363EntryFOut,s2Step363EntryGOut,s2Step363EntryFvOut,s2Step363EntryGvOut],(growRow 768 s2Step363EntryFFresh ++ (growRow 769 s2Step363EntryGFresh ++ (growRow 770 s2Step363EntryFvFresh ++ (growRow 771 s2Step363EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step363EntryGvAfter [] []=some (s2Step363EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step363EntryGvBefore s2Step363EntryGvAfter s2Step363EntryGvAfter
    s2Step363EntryGvRow s2Step363EntryGvOut 198 s2Step363EntryGvFresh [] [] []
    (growRow 771 s2Step363EntryGvFresh) ([]) s2Step363EntryGv_Incoming s2Step363EntryGv_checked h4 s2Step363EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step363EntryFvBefore s2Step363EntryFvAfter s2Step363EntryGvAfter
    s2Step363EntryFvRow s2Step363EntryFvOut 198 s2Step363EntryFvFresh [(s2Step363EntryGvRow,198)] [s2Step363EntryGvFresh] [s2Step363EntryGvOut]
    (growRow 770 s2Step363EntryFvFresh) ((growRow 771 s2Step363EntryGvFresh ++ [])) s2Step363EntryFv_Incoming s2Step363EntryFv_checked h3 s2Step363EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step363EntryGBefore s2Step363EntryGAfter s2Step363EntryGvAfter
    s2Step363EntryGRow s2Step363EntryGOut 90 s2Step363EntryGFresh [(s2Step363EntryFvRow,198),(s2Step363EntryGvRow,198)] [s2Step363EntryFvFresh,s2Step363EntryGvFresh] [s2Step363EntryFvOut,s2Step363EntryGvOut]
    (growRow 769 s2Step363EntryGFresh) ((growRow 770 s2Step363EntryFvFresh ++ (growRow 771 s2Step363EntryGvFresh ++ []))) s2Step363EntryG_Incoming s2Step363EntryG_checked h2 s2Step363EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step363EntryFBefore s2Step363EntryFAfter s2Step363EntryGvAfter
    s2Step363EntryFRow s2Step363EntryFOut 90 s2Step363EntryFFresh [(s2Step363EntryGRow,90),(s2Step363EntryFvRow,198),(s2Step363EntryGvRow,198)] [s2Step363EntryGFresh,s2Step363EntryFvFresh,s2Step363EntryGvFresh] [s2Step363EntryGOut,s2Step363EntryFvOut,s2Step363EntryGvOut]
    (growRow 768 s2Step363EntryFFresh) ((growRow 769 s2Step363EntryGFresh ++ (growRow 770 s2Step363EntryFvFresh ++ (growRow 771 s2Step363EntryGvFresh ++ [])))) s2Step363EntryF_Incoming s2Step363EntryF_checked h1 s2Step363EntryF_Outgoing
  exact h0

private theorem s2Step363EntryBank_checked : compileHmrBankResizeLog .entry s2Step363EntryFBefore ⟨s2Step363EntryFRow,s2Step363EntryGRow,s2Step363EntryFvRow,s2Step363EntryGvRow⟩ ⟨90,90,198,198⟩ [s2Step363EntryFFresh,s2Step363EntryGFresh,s2Step363EntryFvFresh,s2Step363EntryGvFresh]=
    some (s2Step363EntryGvAfter,⟨s2Step363EntryFOut,s2Step363EntryGOut,s2Step363EntryFvOut,s2Step363EntryGvOut⟩,(growRow 768 s2Step363EntryFFresh ++ (growRow 769 s2Step363EntryGFresh ++ (growRow 770 s2Step363EntryFvFresh ++ (growRow 771 s2Step363EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step363EntryBank_rows]
  rfl

private def s2Step363ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<601) ∨ (602≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363ExitFBefore : Arena := s2Step363ExitGAfter

private def s2Step363ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 847],768⟩

private def s2Step363ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 785, 812],770⟩

private def s2Step363ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 796, 783],769⟩

private def s2Step363ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 903],771⟩

private theorem s2Step363ExitBank_incomingDistinct : ([s2Step363ExitGRow,s2Step363ExitFRow,s2Step363ExitFvRow,s2Step363ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363ExitF_Incoming : rowsOwned s2Step363ExitFBefore [s2Step363ExitFRow,s2Step363ExitFvRow,s2Step363ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step363ExitGRow,s2Step363ExitFRow,s2Step363ExitFvRow,s2Step363ExitGvRow] 1 s2Step363ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step363ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step363ExitBank_outgoingOwned : rowsOwned s2Step363ExitGvAfter [s2Step363ExitGOut,s2Step363ExitFOut,s2Step363ExitFvOut,s2Step363ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step363ExitGvAfter (fun q => (0≤q ∧ q<601) ∨ (602≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step363ExitF_Outgoing : rowsOwned s2Step363ExitGvAfter [s2Step363ExitFOut,s2Step363ExitFvOut,s2Step363ExitGvOut] :=
  hmrRows_owned_drop s2Step363ExitGvAfter [s2Step363ExitGOut,s2Step363ExitFOut,s2Step363ExitFvOut,s2Step363ExitGvOut] 1 s2Step363ExitBank_outgoingOwned

private theorem s2Step363ExitF_distinct : (s2Step363ExitFRow.sign::s2Step363ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363ExitF_owned : (s2Step363ExitFRow.sign::s2Step363ExitFRow.payload).toFinset⊆s2Step363ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step363ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363ExitF_retired : s2Step363ExitFBefore.retireSet s2Step363ExitFExtra.toFinset=s2Step363ExitFAfter := by
  unfold Arena.retireSet s2Step363ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step363ExitFBefore,s2Step363ExitGAfter,s2Step363ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step363ExitF_checked : planRowResizeLog s2Step363ExitFBefore s2Step363ExitFRow 89 []=
    some (s2Step363ExitFAfter,s2Step363ExitFOut,shrinkRow 768 s2Step363ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step363ExitFBefore s2Step363ExitFRow 89 s2Step363ExitF_distinct s2Step363ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step363ExitFRow.payload.take 89) s2Step363ExitFRow.sign=s2Step363ExitFOut := by decide +kernel
  have hi : s2Step363ExitFRow.payload.drop 89=s2Step363ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step363ExitF_retired] at result
  exact result

private def s2Step363ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<601) ∨ (602≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363ExitFvBefore : Arena := s2Step363ExitFAfter

private theorem s2Step363ExitFv_Incoming : rowsOwned s2Step363ExitFvBefore [s2Step363ExitFvRow,s2Step363ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step363ExitGRow,s2Step363ExitFRow,s2Step363ExitFvRow,s2Step363ExitGvRow] 2 s2Step363ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step363ExitFvBefore (fun q => (0≤q ∧ q<601) ∨ (602≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step363ExitFv_Outgoing : rowsOwned s2Step363ExitGvAfter [s2Step363ExitFvOut,s2Step363ExitGvOut] :=
  hmrRows_owned_drop s2Step363ExitGvAfter [s2Step363ExitGOut,s2Step363ExitFOut,s2Step363ExitFvOut,s2Step363ExitGvOut] 2 s2Step363ExitBank_outgoingOwned

private theorem s2Step363ExitFv_distinct : (s2Step363ExitFvRow.sign::s2Step363ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363ExitFv_owned : (s2Step363ExitFvRow.sign::s2Step363ExitFvRow.payload).toFinset⊆s2Step363ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step363ExitFvBefore (fun q => (0≤q ∧ q<601) ∨ (602≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363ExitFv_retired : s2Step363ExitFvBefore.retireSet s2Step363ExitFvExtra.toFinset=s2Step363ExitFvAfter := by
  unfold Arena.retireSet s2Step363ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step363ExitFvBefore,s2Step363ExitFAfter,s2Step363ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step363ExitFv_checked : planRowResizeLog s2Step363ExitFvBefore s2Step363ExitFvRow 197 []=
    some (s2Step363ExitFvAfter,s2Step363ExitFvOut,shrinkRow 770 s2Step363ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step363ExitFvBefore s2Step363ExitFvRow 197 s2Step363ExitFv_distinct s2Step363ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step363ExitFvRow.payload.take 197) s2Step363ExitFvRow.sign=s2Step363ExitFvOut := by decide +kernel
  have hi : s2Step363ExitFvRow.payload.drop 197=s2Step363ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step363ExitFv_retired] at result
  exact result

private def s2Step363ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step363ExitG_Incoming : rowsOwned s2Step363ExitGBefore [s2Step363ExitGRow,s2Step363ExitFRow,s2Step363ExitFvRow,s2Step363ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step363ExitGRow,s2Step363ExitFRow,s2Step363ExitFvRow,s2Step363ExitGvRow] 0 s2Step363ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step363ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step363ExitG_Outgoing : rowsOwned s2Step363ExitGvAfter [s2Step363ExitGOut,s2Step363ExitFOut,s2Step363ExitFvOut,s2Step363ExitGvOut] :=
  hmrRows_owned_drop s2Step363ExitGvAfter [s2Step363ExitGOut,s2Step363ExitFOut,s2Step363ExitFvOut,s2Step363ExitGvOut] 0 s2Step363ExitBank_outgoingOwned

private theorem s2Step363ExitG_distinct : (s2Step363ExitGRow.sign::s2Step363ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363ExitG_owned : (s2Step363ExitGRow.sign::s2Step363ExitGRow.payload).toFinset⊆s2Step363ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step363ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363ExitG_retired : s2Step363ExitGBefore.retireSet s2Step363ExitGExtra.toFinset=s2Step363ExitGAfter := by
  unfold Arena.retireSet s2Step363ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step363ExitGBefore,s2Step363ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step363ExitG_checked : planRowResizeLog s2Step363ExitGBefore s2Step363ExitGRow 89 []=
    some (s2Step363ExitGAfter,s2Step363ExitGOut,shrinkRow 769 s2Step363ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step363ExitGBefore s2Step363ExitGRow 89 s2Step363ExitG_distinct s2Step363ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step363ExitGRow.payload.take 89) s2Step363ExitGRow.sign=s2Step363ExitGOut := by decide +kernel
  have hi : s2Step363ExitGRow.payload.drop 89=s2Step363ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step363ExitG_retired] at result
  exact result

private def s2Step363ExitGvBefore : Arena := s2Step363ExitFvAfter

private theorem s2Step363ExitGv_Incoming : rowsOwned s2Step363ExitGvBefore [s2Step363ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step363ExitGRow,s2Step363ExitFRow,s2Step363ExitFvRow,s2Step363ExitGvRow] 3 s2Step363ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step363ExitGvBefore (fun q => (0≤q ∧ q<601) ∨ (602≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step363ExitGv_Outgoing : rowsOwned s2Step363ExitGvAfter [s2Step363ExitGvOut] :=
  hmrRows_owned_drop s2Step363ExitGvAfter [s2Step363ExitGOut,s2Step363ExitFOut,s2Step363ExitFvOut,s2Step363ExitGvOut] 3 s2Step363ExitBank_outgoingOwned

private theorem s2Step363ExitGv_distinct : (s2Step363ExitGvRow.sign::s2Step363ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363ExitGv_owned : (s2Step363ExitGvRow.sign::s2Step363ExitGvRow.payload).toFinset⊆s2Step363ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step363ExitGvBefore (fun q => (0≤q ∧ q<601) ∨ (602≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363ExitGv_retired : s2Step363ExitGvBefore.retireSet s2Step363ExitGvExtra.toFinset=s2Step363ExitGvAfter := by
  unfold Arena.retireSet s2Step363ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step363ExitGvBefore,s2Step363ExitFvAfter,s2Step363ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step363ExitGv_checked : planRowResizeLog s2Step363ExitGvBefore s2Step363ExitGvRow 198 []=
    some (s2Step363ExitGvAfter,s2Step363ExitGvOut,shrinkRow 771 s2Step363ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step363ExitGvBefore s2Step363ExitGvRow 198 s2Step363ExitGv_distinct s2Step363ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step363ExitGvRow.payload.take 198) s2Step363ExitGvRow.sign=s2Step363ExitGvOut := by decide +kernel
  have hi : s2Step363ExitGvRow.payload.drop 198=s2Step363ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step363ExitGv_retired] at result
  exact result

private theorem s2Step363ExitBank_rows : planWindowRowsLog s2Step363ExitGBefore [(s2Step363ExitGRow,89),(s2Step363ExitFRow,89),(s2Step363ExitFvRow,197),(s2Step363ExitGvRow,198)] [[],[],[],[]]=
    some (s2Step363ExitGvAfter,[s2Step363ExitGOut,s2Step363ExitFOut,s2Step363ExitFvOut,s2Step363ExitGvOut],(shrinkRow 769 s2Step363ExitGExtra ++ (shrinkRow 768 s2Step363ExitFExtra ++ (shrinkRow 770 s2Step363ExitFvExtra ++ (shrinkRow 771 s2Step363ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step363ExitGvAfter [] []=some (s2Step363ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step363ExitGvBefore s2Step363ExitGvAfter s2Step363ExitGvAfter
    s2Step363ExitGvRow s2Step363ExitGvOut 198 [] [] [] []
    (shrinkRow 771 s2Step363ExitGvExtra) ([]) s2Step363ExitGv_Incoming s2Step363ExitGv_checked h4 s2Step363ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step363ExitFvBefore s2Step363ExitFvAfter s2Step363ExitGvAfter
    s2Step363ExitFvRow s2Step363ExitFvOut 197 [] [(s2Step363ExitGvRow,198)] [[]] [s2Step363ExitGvOut]
    (shrinkRow 770 s2Step363ExitFvExtra) ((shrinkRow 771 s2Step363ExitGvExtra ++ [])) s2Step363ExitFv_Incoming s2Step363ExitFv_checked h3 s2Step363ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step363ExitFBefore s2Step363ExitFAfter s2Step363ExitGvAfter
    s2Step363ExitFRow s2Step363ExitFOut 89 [] [(s2Step363ExitFvRow,197),(s2Step363ExitGvRow,198)] [[],[]] [s2Step363ExitFvOut,s2Step363ExitGvOut]
    (shrinkRow 768 s2Step363ExitFExtra) ((shrinkRow 770 s2Step363ExitFvExtra ++ (shrinkRow 771 s2Step363ExitGvExtra ++ []))) s2Step363ExitF_Incoming s2Step363ExitF_checked h2 s2Step363ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step363ExitGBefore s2Step363ExitGAfter s2Step363ExitGvAfter
    s2Step363ExitGRow s2Step363ExitGOut 89 [] [(s2Step363ExitFRow,89),(s2Step363ExitFvRow,197),(s2Step363ExitGvRow,198)] [[],[],[]] [s2Step363ExitFOut,s2Step363ExitFvOut,s2Step363ExitGvOut]
    (shrinkRow 769 s2Step363ExitGExtra) ((shrinkRow 768 s2Step363ExitFExtra ++ (shrinkRow 770 s2Step363ExitFvExtra ++ (shrinkRow 771 s2Step363ExitGvExtra ++ [])))) s2Step363ExitG_Incoming s2Step363ExitG_checked h1 s2Step363ExitG_Outgoing
  exact h0

private theorem s2Step363ExitBank_checked : compileHmrBankResizeLog .exit s2Step363ExitGBefore ⟨s2Step363ExitFRow,s2Step363ExitGRow,s2Step363ExitFvRow,s2Step363ExitGvRow⟩ ⟨89,89,197,198⟩ [[],[],[],[]]=
    some (s2Step363ExitGvAfter,⟨s2Step363ExitFOut,s2Step363ExitGOut,s2Step363ExitFvOut,s2Step363ExitGvOut⟩,(shrinkRow 769 s2Step363ExitGExtra ++ (shrinkRow 768 s2Step363ExitFExtra ++ (shrinkRow 770 s2Step363ExitFvExtra ++ (shrinkRow 771 s2Step363ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step363ExitBank_rows]
  rfl

private theorem s2Step363Add0_apart : Disjoint s2Step363Add0Arena.live s2Step363Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step363Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363Add0_card : s2Step363Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step363Add0_borrowed : s2Step363Add0Arena.checkBorrow (hmrHybridCount s2Step363Add0Arena s2Step363Add0B.length) s2Step363Add0Work=some s2Step363Add0During := by
  have len : s2Step363Add0Work.length=hmrHybridCount s2Step363Add0Arena s2Step363Add0B.length := by
    rw [hmrHybridCount,s2Step363Add0_card]
    decide +kernel
  have nd : s2Step363Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step363Add0Arena s2Step363Add0During s2Step363Add0Work.toFinset s2Step363Add0_bounded s2Step363Add0_apart rfl

private theorem s2Step363Add0_distinct : (800::882::789::(s2Step363Add0A++s2Step363Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363Add0_owned : (800::882::789::(s2Step363Add0A++s2Step363Add0B)).toFinset⊆s2Step363Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step363Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363Add0_checked : compileHmrHybridCinLog s2Step363Add0Arena 882 800 789 s2Step363Add0A s2Step363Add0B s2Step363Add0Work=some s2Step363Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step363Add0Arena s2Step363Add0During 882 800 789 s2Step363Add0A s2Step363Add0B s2Step363Add0Work
    (by decide +kernel) (by decide +kernel) s2Step363Add0_distinct
    (fun q hq => s2Step363Add0_owned (List.mem_toFinset.mpr hq)) s2Step363Add0_borrowed

private theorem s2Step363Add1_apart : Disjoint s2Step363Add1Arena.live s2Step363Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step363Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363Add1_card : s2Step363Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step363Add1_borrowed : s2Step363Add1Arena.checkBorrow (hmrHybridCount s2Step363Add1Arena s2Step363Add1B.length) s2Step363Add1Work=some s2Step363Add1During := by
  have len : s2Step363Add1Work.length=hmrHybridCount s2Step363Add1Arena s2Step363Add1B.length := by
    rw [hmrHybridCount,s2Step363Add1_card]
    decide +kernel
  have nd : s2Step363Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step363Add1Arena s2Step363Add1During s2Step363Add1Work.toFinset s2Step363Add1_bounded s2Step363Add1_apart rfl

private theorem s2Step363Add1_distinct : (800::882::789::(s2Step363Add1A++s2Step363Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363Add1_owned : (800::882::789::(s2Step363Add1A++s2Step363Add1B)).toFinset⊆s2Step363Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step363Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363Add1_checked : compileHmrHybridCinLog s2Step363Add1Arena 882 800 789 s2Step363Add1A s2Step363Add1B s2Step363Add1Work=some s2Step363Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step363Add1Arena s2Step363Add1During 882 800 789 s2Step363Add1A s2Step363Add1B s2Step363Add1Work
    (by decide +kernel) (by decide +kernel) s2Step363Add1_distinct
    (fun q hq => s2Step363Add1_owned (List.mem_toFinset.mpr hq)) s2Step363Add1_borrowed

private theorem s2Step363F4_apart : Disjoint (s2Step363Add0A++s2Step363Add0B).toFinset (s2Step363Add1A++s2Step363Add1B).toFinset := by
  have nd : ((s2Step363Add0A++s2Step363Add0B)++(s2Step363Add1A++s2Step363Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step363F4_carry : s2Step363F4FlagArena.checkBorrow 1 [789]=some s2Step363Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step363F4FlagArena,s2Step363HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step363F4FlagArena,s2Step363HeadFvAfter,s2Step363Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step363F4_distinct : (797::882::800::789::((s2Step363Add0A++s2Step363Add1A)++(s2Step363Add0B++s2Step363Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363F4_flag : s2Step363HeadFvAfter.checkBorrow 1 [800]=some s2Step363F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step363HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step363F4_owned : (797::882::((s2Step363Add0A++s2Step363Add1A)++(s2Step363Add0B++s2Step363Add1B))).toFinset⊆s2Step363HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step363HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363F4_checked : compileHmrHybridF4Log s2Step363HeadFvAfter 797 882 s2Step363Add0A s2Step363Add0B s2Step363Add1A s2Step363Add1B [800] [789] s2Step363Add0Work s2Step363Add1Work=some s2Step363F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step363HeadFvAfter s2Step363F4FlagArena s2Step363Add0Arena s2Step363Add0During s2Step363Add1During 797 882
    s2Step363Add0A s2Step363Add0B s2Step363Add1A s2Step363Add1B [800] [789] s2Step363Add0Work s2Step363Add1Work
    (fun q hq => s2Step363F4_owned (List.mem_toFinset.mpr hq)) s2Step363F4_flag s2Step363F4_carry
    s2Step363F4_distinct s2Step363F4_apart s2Step363Add0_checked s2Step363Add1_checked

private theorem s2Step363Front_branch : s2Step363FrontSigmaArena.checkBorrow 1 [882]=some s2Step363HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step363FrontSigmaArena,s2Step363EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step363FrontSigmaArena,s2Step363EntryGvAfter,s2Step363HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step363Front_entry : HmrFrontEntryValid s2Step363EntryFBefore s2Step363FrontBank 90 198 ⟨89,89,197,198⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step363FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step363EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step363EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step363FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step363Front_sigma : s2Step363EntryGvAfter.checkBorrow 1 [797]=some s2Step363FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step363EntryGvAfter,arenaWires]
  · rfl

private def s2Step363HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363HeadFBefore : Arena := s2Step363HeadGAfter

private def s2Step363HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601],768⟩

private def s2Step363HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 785],770⟩

private def s2Step363HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 796],769⟩

private def s2Step363HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩

private theorem s2Step363HeadBank_incomingDistinct : ([s2Step363HeadGRow,s2Step363HeadFRow,s2Step363HeadGvRow,s2Step363HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363HeadF_Incoming : rowsOwned s2Step363HeadFBefore [s2Step363HeadFRow,s2Step363HeadGvRow,s2Step363HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step363HeadGRow,s2Step363HeadFRow,s2Step363HeadGvRow,s2Step363HeadFvRow] 1 s2Step363HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step363HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step363HeadBank_outgoingOwned : rowsOwned s2Step363HeadFvAfter [s2Step363HeadGOut,s2Step363HeadFOut,s2Step363HeadGvOut,s2Step363HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step363HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step363HeadF_Outgoing : rowsOwned s2Step363HeadFvAfter [s2Step363HeadFOut,s2Step363HeadGvOut,s2Step363HeadFvOut] :=
  hmrRows_owned_drop s2Step363HeadFvAfter [s2Step363HeadGOut,s2Step363HeadFOut,s2Step363HeadGvOut,s2Step363HeadFvOut] 1 s2Step363HeadBank_outgoingOwned

private theorem s2Step363HeadF_distinct : (s2Step363HeadFRow.sign::s2Step363HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363HeadF_owned : (s2Step363HeadFRow.sign::s2Step363HeadFRow.payload).toFinset⊆s2Step363HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step363HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363HeadF_reserved : s2Step363HeadFBefore.reserve s2Step363HeadFFresh.toFinset=some s2Step363HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step363HeadFFresh,arenaWires]
  · norm_num [s2Step363HeadFBefore,s2Step363HeadGAfter,s2Step363HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step363HeadFAfter,s2Step363HeadFBefore,s2Step363HeadGAfter,s2Step363HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step363HeadF_checked : planRowResizeLog s2Step363HeadFBefore s2Step363HeadFRow 91 s2Step363HeadFFresh=
    some (s2Step363HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 847],768⟩,growRow 768 s2Step363HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step363HeadFBefore s2Step363HeadFAfter s2Step363HeadFRow 91 s2Step363HeadFFresh
    s2Step363HeadF_distinct s2Step363HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step363HeadF_reserved
  have rowEq : WindowRow.mk (s2Step363HeadFRow.payload++s2Step363HeadFFresh) s2Step363HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 847],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step363HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step363HeadFvBefore : Arena := s2Step363HeadGvAfter

private theorem s2Step363HeadFv_Incoming : rowsOwned s2Step363HeadFvBefore [s2Step363HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step363HeadGRow,s2Step363HeadFRow,s2Step363HeadGvRow,s2Step363HeadFvRow] 3 s2Step363HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step363HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step363HeadFv_Outgoing : rowsOwned s2Step363HeadFvAfter [s2Step363HeadFvOut] :=
  hmrRows_owned_drop s2Step363HeadFvAfter [s2Step363HeadGOut,s2Step363HeadFOut,s2Step363HeadGvOut,s2Step363HeadFvOut] 3 s2Step363HeadBank_outgoingOwned

private theorem s2Step363HeadFv_distinct : (s2Step363HeadFvRow.sign::s2Step363HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363HeadFv_owned : (s2Step363HeadFvRow.sign::s2Step363HeadFvRow.payload).toFinset⊆s2Step363HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step363HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363HeadFv_reserved : s2Step363HeadFvBefore.reserve s2Step363HeadFvFresh.toFinset=some s2Step363HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step363HeadFvFresh,arenaWires]
  · norm_num [s2Step363HeadFvBefore,s2Step363HeadGvAfter,s2Step363HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step363HeadFvAfter,s2Step363HeadFvBefore,s2Step363HeadGvAfter,s2Step363HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step363HeadFv_checked : planRowResizeLog s2Step363HeadFvBefore s2Step363HeadFvRow 199 s2Step363HeadFvFresh=
    some (s2Step363HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 785, 812],770⟩,growRow 770 s2Step363HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step363HeadFvBefore s2Step363HeadFvAfter s2Step363HeadFvRow 199 s2Step363HeadFvFresh
    s2Step363HeadFv_distinct s2Step363HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step363HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step363HeadFvRow.payload++s2Step363HeadFvFresh) s2Step363HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 785, 812],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step363HeadG_Incoming : rowsOwned s2Step363HeadGBefore [s2Step363HeadGRow,s2Step363HeadFRow,s2Step363HeadGvRow,s2Step363HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step363HeadGRow,s2Step363HeadFRow,s2Step363HeadGvRow,s2Step363HeadFvRow] 0 s2Step363HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step363HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step363HeadG_Outgoing : rowsOwned s2Step363HeadFvAfter [s2Step363HeadGOut,s2Step363HeadFOut,s2Step363HeadGvOut,s2Step363HeadFvOut] :=
  hmrRows_owned_drop s2Step363HeadFvAfter [s2Step363HeadGOut,s2Step363HeadFOut,s2Step363HeadGvOut,s2Step363HeadFvOut] 0 s2Step363HeadBank_outgoingOwned

private theorem s2Step363HeadG_distinct : (s2Step363HeadGRow.sign::s2Step363HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363HeadG_owned : (s2Step363HeadGRow.sign::s2Step363HeadGRow.payload).toFinset⊆s2Step363HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step363HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363HeadG_reserved : s2Step363HeadGBefore.reserve s2Step363HeadGFresh.toFinset=some s2Step363HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step363HeadGFresh,arenaWires]
  · norm_num [s2Step363HeadGBefore,s2Step363HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step363HeadGAfter,s2Step363HeadGBefore,s2Step363HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step363HeadG_checked : planRowResizeLog s2Step363HeadGBefore s2Step363HeadGRow 91 s2Step363HeadGFresh=
    some (s2Step363HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 796, 783],769⟩,growRow 769 s2Step363HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step363HeadGBefore s2Step363HeadGAfter s2Step363HeadGRow 91 s2Step363HeadGFresh
    s2Step363HeadG_distinct s2Step363HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step363HeadG_reserved
  have rowEq : WindowRow.mk (s2Step363HeadGRow.payload++s2Step363HeadGFresh) s2Step363HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 796, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step363HeadGvBefore : Arena := s2Step363HeadFAfter

private theorem s2Step363HeadGv_Incoming : rowsOwned s2Step363HeadGvBefore [s2Step363HeadGvRow,s2Step363HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step363HeadGRow,s2Step363HeadFRow,s2Step363HeadGvRow,s2Step363HeadFvRow] 2 s2Step363HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step363HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step363HeadGv_Outgoing : rowsOwned s2Step363HeadFvAfter [s2Step363HeadGvOut,s2Step363HeadFvOut] :=
  hmrRows_owned_drop s2Step363HeadFvAfter [s2Step363HeadGOut,s2Step363HeadFOut,s2Step363HeadGvOut,s2Step363HeadFvOut] 2 s2Step363HeadBank_outgoingOwned

private theorem s2Step363HeadGv_distinct : (s2Step363HeadGvRow.sign::s2Step363HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step363HeadGv_owned : (s2Step363HeadGvRow.sign::s2Step363HeadGvRow.payload).toFinset⊆s2Step363HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step363HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step363HeadGv_reserved : s2Step363HeadGvBefore.reserve s2Step363HeadGvFresh.toFinset=some s2Step363HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step363HeadGvFresh,arenaWires]
  · norm_num [s2Step363HeadGvBefore,s2Step363HeadFAfter,s2Step363HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step363HeadGvAfter,s2Step363HeadGvBefore,s2Step363HeadFAfter,s2Step363HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step363HeadGv_checked : planRowResizeLog s2Step363HeadGvBefore s2Step363HeadGvRow 199 s2Step363HeadGvFresh=
    some (s2Step363HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 903],771⟩,growRow 771 s2Step363HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step363HeadGvBefore s2Step363HeadGvAfter s2Step363HeadGvRow 199 s2Step363HeadGvFresh
    s2Step363HeadGv_distinct s2Step363HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step363HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step363HeadGvRow.payload++s2Step363HeadGvFresh) s2Step363HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 903],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step363HeadBank_rows : planWindowRowsLog s2Step363HeadGBefore [(s2Step363HeadGRow,91),(s2Step363HeadFRow,91),(s2Step363HeadGvRow,199),(s2Step363HeadFvRow,199)] [s2Step363HeadGFresh,s2Step363HeadFFresh,s2Step363HeadGvFresh,s2Step363HeadFvFresh]=
    some (s2Step363HeadFvAfter,[s2Step363HeadGOut,s2Step363HeadFOut,s2Step363HeadGvOut,s2Step363HeadFvOut],(growRow 769 s2Step363HeadGFresh ++ (growRow 768 s2Step363HeadFFresh ++ (growRow 771 s2Step363HeadGvFresh ++ (growRow 770 s2Step363HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step363HeadFvAfter [] []=some (s2Step363HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step363HeadFvBefore s2Step363HeadFvAfter s2Step363HeadFvAfter
    s2Step363HeadFvRow s2Step363HeadFvOut 199 s2Step363HeadFvFresh [] [] []
    (growRow 770 s2Step363HeadFvFresh) ([]) s2Step363HeadFv_Incoming s2Step363HeadFv_checked h4 s2Step363HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step363HeadGvBefore s2Step363HeadGvAfter s2Step363HeadFvAfter
    s2Step363HeadGvRow s2Step363HeadGvOut 199 s2Step363HeadGvFresh [(s2Step363HeadFvRow,199)] [s2Step363HeadFvFresh] [s2Step363HeadFvOut]
    (growRow 771 s2Step363HeadGvFresh) ((growRow 770 s2Step363HeadFvFresh ++ [])) s2Step363HeadGv_Incoming s2Step363HeadGv_checked h3 s2Step363HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step363HeadFBefore s2Step363HeadFAfter s2Step363HeadFvAfter
    s2Step363HeadFRow s2Step363HeadFOut 91 s2Step363HeadFFresh [(s2Step363HeadGvRow,199),(s2Step363HeadFvRow,199)] [s2Step363HeadGvFresh,s2Step363HeadFvFresh] [s2Step363HeadGvOut,s2Step363HeadFvOut]
    (growRow 768 s2Step363HeadFFresh) ((growRow 771 s2Step363HeadGvFresh ++ (growRow 770 s2Step363HeadFvFresh ++ []))) s2Step363HeadF_Incoming s2Step363HeadF_checked h2 s2Step363HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step363HeadGBefore s2Step363HeadGAfter s2Step363HeadFvAfter
    s2Step363HeadGRow s2Step363HeadGOut 91 s2Step363HeadGFresh [(s2Step363HeadFRow,91),(s2Step363HeadGvRow,199),(s2Step363HeadFvRow,199)] [s2Step363HeadFFresh,s2Step363HeadGvFresh,s2Step363HeadFvFresh] [s2Step363HeadFOut,s2Step363HeadGvOut,s2Step363HeadFvOut]
    (growRow 769 s2Step363HeadGFresh) ((growRow 768 s2Step363HeadFFresh ++ (growRow 771 s2Step363HeadGvFresh ++ (growRow 770 s2Step363HeadFvFresh ++ [])))) s2Step363HeadG_Incoming s2Step363HeadG_checked h1 s2Step363HeadG_Outgoing
  exact h0

private theorem s2Step363HeadBank_checked : compileHmrBankResizeLog .headroom s2Step363HeadGBefore ⟨s2Step363HeadFRow,s2Step363HeadGRow,s2Step363HeadFvRow,s2Step363HeadGvRow⟩ ⟨91,91,199,199⟩ [s2Step363HeadGFresh,s2Step363HeadFFresh,s2Step363HeadGvFresh,s2Step363HeadFvFresh]=
    some (s2Step363HeadFvAfter,⟨s2Step363HeadFOut,s2Step363HeadGOut,s2Step363HeadFvOut,s2Step363HeadGvOut⟩,(growRow 769 s2Step363HeadGFresh ++ (growRow 768 s2Step363HeadFFresh ++ (growRow 771 s2Step363HeadGvFresh ++ (growRow 770 s2Step363HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step363HeadBank_rows]
  rfl

private theorem s2Step363Front_checked : compileHmrSourceFrontLog s2Step363EntryFBefore s2Step363FrontBank 90 198 ⟨89,89,197,198⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step363FrontLog=some s2Step363FrontPlan := by
  have pairEq : s2Step363FrontPair=⟨s2Step363HeadFRow,s2Step363HeadGRow,s2Step363HeadFvRow,s2Step363HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step363FrontHead=⟨s2Step363ExitFRow,s2Step363ExitGRow,s2Step363ExitFvRow,s2Step363ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step363Add0A=s2Step363FrontHead.f.wires := by decide +kernel
  have gEq : s2Step363Add0B=s2Step363FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step363Add1A=s2Step363FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step363Add1B=s2Step363FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step363EntryFBefore s2Step363FrontBank 90 198 ⟨89,89,197,198⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step363FrontLog s2Step363FrontPlan
  · exact s2Step363Front_entry
  · exact s2Step363EntryBank_checked
  · exact s2Step363Front_sigma
  · rfl
  · exact s2Step363Front_branch
  · rfl
  · simpa only [s2Step363FrontPlan,pairEq] using s2Step363HeadBank_checked
  · simpa only [s2Step363FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step363F4_checked
  · exact s2Step363Counter_checked
  · rfl
  · simpa only [s2Step363FrontPlan,headEq] using s2Step363ExitBank_checked

private theorem s2Step363Complete_explicit_checked : compileHmrEarlyStepLog s2Step363EntryFBefore s2Step363FrontBank 90 198 ⟨89,89,197,198⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step363CompleteLog=some s2Step363CompletePlan := by
  let Q := s2Step363EarlyControlPlan
  have hq := s2Step363EarlyControl_plan_checked
  have fv1 : s2Step363CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step363CompleteOut.fv.payload[2]?.getD s2Step363CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step363CompleteOut.fv.payload[3]?.getD s2Step363CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step363CompleteOut.fv.payload[4]?.getD s2Step363CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step363EntryFBefore s2Step363EarlyControlArena s2Step363FrontBank 90 198 ⟨89,89,197,198⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step363CompleteLog s2Step363FrontPlan Q
    s2Step363Front_checked s2Step363Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step363Complete_owned s2Step363Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step363EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 s2Step363CompleteOut.fv.second (s2Step363CompleteOut.fv.payload[2]?.getD s2Step363CompleteOut.fv.sign) (s2Step363CompleteOut.fv.payload[3]?.getD s2Step363CompleteOut.fv.sign) (s2Step363CompleteOut.fv.payload[4]?.getD s2Step363CompleteOut.fv.sign) 882 60 s2Step363EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep363Arena : Arena := s2Step363EntryFBefore
def s2PrivateStep363Bank : WindowBank := s2Step363FrontBank
def s2PrivateStep363Spec : HmrSourceWalkStepLog := ⟨90,198,⟨89,89,197,198⟩,60,.early s2Step363CompleteLog⟩
def s2PrivateStep363Plan : HmrSourceStepPlan := .early s2Step363CompletePlan
theorem s2PrivateStep363_source : s2PrivateStep363Spec=s2ObservedLogs352[11] := rfl
theorem s2PrivateStep363_checked : compileHmrSourceStepLog s2PrivateStep363Arena s2PrivateStep363Bank
    s2PrivateStep363Spec.fgWidth s2PrivateStep363Spec.vWidth s2PrivateStep363Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 363 s2PrivateStep363Spec.need none s2PrivateStep363Spec.log=some s2PrivateStep363Plan := by
  change compileHmrSourceStepLog s2Step363EntryFBefore s2Step363FrontBank 90 198 ⟨89,89,197,198⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 363 60 none (.early s2Step363CompleteLog)=some (.early s2Step363CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 363<498)]
  rw [s2Step363Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
