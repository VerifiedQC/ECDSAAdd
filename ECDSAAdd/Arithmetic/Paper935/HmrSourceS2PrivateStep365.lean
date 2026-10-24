import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep363
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

private def s2Step365CompleteMoves : List (Wire × Wire) := [(819,600)]

private def s2Step365EarlyControlLog : HmrEarlyControlLog := ⟨[819, 785, 903, 847, 831],[812],[796],[783, 800, 789, 827, 844, 907],[]⟩

private def s2Step365FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [831], [], []],[[812], [847], [785], [903]],[[], [], [], []]⟩,[797],[820],[796],[783],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[796, 783, 800, 789]⟩

private def s2Step365CompleteLog : HmrEarlyStepLog := ⟨s2Step365FrontLog,s2Step365CompleteMoves,s2Step365EarlyControlLog⟩

private def s2Step365ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599],768⟩

private def s2Step365ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882],770⟩

private def s2Step365ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87],769⟩

private def s2Step365ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩

private def s2Step365FrontOut : WindowBank := ⟨s2Step365ExitFOut,s2Step365ExitGOut,s2Step365ExitFvOut,s2Step365ExitGvOut⟩

private def s2Step365CompleteOut : WindowBank := s2Step365FrontOut.repacked s2Step365CompleteMoves

private def s2Step365EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step365EarlyControlPositiveArena,[812],s2Step365EarlyControlEqualityArena,[796],⟨⟨797,false⟩,[⟨⟨812,false⟩,796⟩]⟩⟩

private def s2Step365EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,819⟩,⟨⟨774,false⟩,785⟩,⟨⟨775,false⟩,903⟩,⟨⟨776,false⟩,847⟩,⟨⟨777,false⟩,831⟩]⟩

private def s2Step365EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step365EarlyControlZeroArena,s2Step365EarlyControlZeroPlan,s2Step365EarlyControlClassPlan,s2Step365EarlyControlFlagArena,s2Step365EarlyControlFittedArena,s2Step365EarlyControlHistoryArena,s2Step365EarlyControlSigmaArena,s2Step365EarlyControlOutputArena,s2Step365EarlyControlLog⟩

private def s2Step365CounterWork : List Wire := [796, 783, 800, 789]

private theorem s2Step365Counter_bounded : s2Step365CounterWork.toFinset⊆arenaWires := by norm_num [s2Step365CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step365HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365CounterDuring : Arena := ⟨s2Step365HeadFvAfter.live∪s2Step365CounterWork.toFinset,Finset.union_subset s2Step365HeadFvAfter.bounded s2Step365Counter_bounded⟩

private def s2Step365EntryFFresh : List Wire := []

private def s2Step365EntryFvFresh : List Wire := []

private def s2Step365EntryGFresh : List Wire := [831]

private def s2Step365EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365EntryGvAfter : Arena := s2Step365EntryGAfter

private def s2Step365EntryGvFresh : List Wire := []

private def s2Step365ExitFExtra : List Wire := [600, 847]

private def s2Step365ExitFvExtra : List Wire := [903]

private def s2Step365ExitGExtra : List Wire := [831, 812]

private def s2Step365ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<600) ∨ (601≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365ExitGvExtra : List Wire := [785]

private def s2Step365Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365Add0Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step365Add0_bounded : s2Step365Add0Work.toFinset⊆arenaWires := by
  have h : s2Step365Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step365Add0During : Arena := ⟨s2Step365Add0Arena.live∪s2Step365Add0Work.toFinset,Finset.union_subset s2Step365Add0Arena.bounded s2Step365Add0_bounded⟩

private def s2Step365Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365Add1Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step365Add1_bounded : s2Step365Add1Work.toFinset⊆arenaWires := by
  have h : s2Step365Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step365Add1During : Arena := ⟨s2Step365Add1Arena.live∪s2Step365Add1Work.toFinset,Finset.union_subset s2Step365Add1Arena.bounded s2Step365Add1_bounded⟩

private def s2Step365F4FlagArena : Arena := ⟨s2Step365HeadFvAfter.live∪{796},Finset.union_subset s2Step365HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step365F4Plan : HmrHybridF4Plan := ⟨s2Step365F4FlagArena,[796],s2Step365Add0Arena,[783],s2Step365Add0During,s2Step365Add0Work,s2Step365Add1During,s2Step365Add1Work⟩

private def s2Step365HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 847],768⟩

private def s2Step365HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 903],770⟩

private def s2Step365HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 831, 812],769⟩

private def s2Step365HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 785],771⟩

private def s2Step365FrontHead : WindowBank := ⟨s2Step365HeadFOut,s2Step365HeadGOut,s2Step365HeadFvOut,s2Step365HeadGvOut⟩

private def s2Step365EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600],768⟩

private def s2Step365EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882],770⟩

private def s2Step365EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 831],769⟩

private def s2Step365EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩

private def s2Step365FrontPair : WindowBank := ⟨s2Step365EntryFOut,s2Step365EntryGOut,s2Step365EntryFvOut,s2Step365EntryGvOut⟩

private def s2Step365FrontSigmaArena : Arena := ⟨s2Step365EntryGvAfter.live∪{797},Finset.union_subset s2Step365EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step365HeadFFresh : List Wire := [847]

private def s2Step365HeadFvFresh : List Wire := [903]

private def s2Step365HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365HeadGFresh : List Wire := [812]

private def s2Step365HeadGvFresh : List Wire := [785]

private def s2Step365FrontPlan : HmrSourceFront := ⟨s2Step365EntryGvAfter,s2Step365FrontPair,(growRow 768 s2Step365EntryFFresh ++ (growRow 769 s2Step365EntryGFresh ++ (growRow 770 s2Step365EntryFvFresh ++ (growRow 771 s2Step365EntryGvFresh ++ [])))),s2Step365FrontSigmaArena,[797],s2Step365HeadGBefore,[820],
  s2Step365HeadFvAfter,s2Step365FrontHead,(growRow 769 s2Step365HeadGFresh ++ (growRow 768 s2Step365HeadFFresh ++ (growRow 771 s2Step365HeadGvFresh ++ (growRow 770 s2Step365HeadFvFresh ++ [])))),s2Step365F4Plan,s2Step365CounterDuring,s2Step365CounterWork,s2Step365ExitGvAfter,s2Step365FrontOut,(shrinkRow 769 s2Step365ExitGExtra ++ (shrinkRow 768 s2Step365ExitFExtra ++ (shrinkRow 770 s2Step365ExitFvExtra ++ (shrinkRow 771 s2Step365ExitGvExtra ++ []))))⟩

private def s2Step365CompletePlan : HmrEarlyStepPlan := ⟨s2Step365FrontPlan,s2Step365EarlyControlArena,s2Step365EarlyControlPlan,s2Step365CompleteMoves⟩

private theorem s2Step365Complete_apart : List.Disjoint (s2Step365CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [797, 820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step365CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[797, 820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step365Complete_owned : (s2Step365CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step365EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step365EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step365CompleteMoveArena : Arena := ⟨s2Step365ExitGvAfter.live∪{600},Finset.union_subset s2Step365ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step365Complete_repack : s2Step365ExitGvAfter.checkRepack s2Step365CompleteMoves=some s2Step365EarlyControlArena := by
  have owned : 819∈s2Step365ExitGvAfter.live := by norm_num [s2Step365ExitGvAfter,arenaWires]
  have reserve : s2Step365ExitGvAfter.reserve {600}=some s2Step365CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step365ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step365CompleteMoveArena.retireSet {819}=s2Step365EarlyControlArena := by
    unfold Arena.retireSet s2Step365EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step365CompleteMoveArena,s2Step365ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step365CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step365CompleteMoveArena.retireSet {819}).checkRepack []=some s2Step365EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step365EarlyControl_branchOwned : ([820] : List Wire).toFinset⊆s2Step365EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step365EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365EarlyControl_branch : compileHmrBranchRetirement s2Step365EarlyControlSigmaArena 820=some s2Step365EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step365EarlyControl_branchOwned
  · ext q
    simp [s2Step365EarlyControlOutputArena,s2Step365EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step365EarlyControl_classEqualityBorrow : s2Step365EarlyControlPositiveArena.checkBorrow (([797, 812] : List Wire).length-1) s2Step365EarlyControlLog.classWork=some s2Step365EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step365EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step365EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step365EarlyControlEqualityArena,s2Step365EarlyControlPositiveArena,s2Step365EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step365EarlyControl_classEqualityOwned : ([797, 812] : List Wire).toFinset⊆s2Step365EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step365EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365EarlyControl_classEquality : compileHmrEqualityLog s2Step365EarlyControlPositiveArena [797, 812] 0 s2Step365EarlyControlLog.classWork=some (s2Step365EarlyControlEqualityArena,s2Step365EarlyControlLog.classWork,s2Step365EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step365EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step365EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step365EarlyControl_classOwned : ([777, 831, 797] : List Wire).toFinset⊆s2Step365EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step365EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365EarlyControl_positiveBorrow : s2Step365EarlyControlZeroArena.checkBorrow (1) s2Step365EarlyControlLog.positiveWork=some s2Step365EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step365EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step365EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step365EarlyControlPositiveArena,s2Step365EarlyControlZeroArena,s2Step365EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step365EarlyControl_class : compileHmrSourceClassLog s2Step365EarlyControlZeroArena false 777 s2Step365EarlyControlZeroPlan.top 0 797 s2Step365EarlyControlLog.positiveWork s2Step365EarlyControlLog.classWork=some s2Step365EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step365EarlyControlClassPlan s2Step365EarlyControlZeroArena false 777 s2Step365EarlyControlZeroPlan.top 0 797
  constructor
  · decide +kernel
  · exact s2Step365EarlyControl_classOwned
  · exact s2Step365EarlyControl_positiveBorrow
  · exact s2Step365EarlyControl_classEquality

private theorem s2Step365EarlyControl_entryRecordOwned : ([820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step365EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step365EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365EarlyControl_entrySigmaOwned : ([797, 254] : List Wire).toFinset⊆s2Step365EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step365EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365EarlyControl_fitBorrow : s2Step365EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step365EarlyControlLog.recordFresh=some s2Step365EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step365EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step365EarlyControlFlagArena (fun q => (0≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step365EarlyControlFittedArena,s2Step365EarlyControlFlagArena,s2Step365EarlyControlLog,arenaWires]

private theorem s2Step365EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step365EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step365EarlyControlFlagArena (fun q => (0≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365EarlyControl_fit : compileHmrRecordGrowLog s2Step365EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step365EarlyControlLog.recordFresh=some s2Step365EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step365EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step365EarlyControl_fitBorrow

private theorem s2Step365EarlyControl_flagsBorrow : s2Step365EarlyControlEqualityArena.checkBorrow (6) s2Step365EarlyControlLog.flagWork=some s2Step365EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step365EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step365EarlyControlEqualityArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step365EarlyControlFlagArena,s2Step365EarlyControlEqualityArena,s2Step365EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step365EarlyControl_flagsOwned : ([796, 253, 252, 251] : List Wire).toFinset⊆s2Step365EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step365EarlyControlEqualityArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365EarlyControl_flags : compileHmrFlagsLog s2Step365EarlyControlClassPlan.equalityArena s2Step365EarlyControlClassPlan.equality.top 253 252 251 s2Step365EarlyControlLog.flagWork=some s2Step365EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step365EarlyControl_flagsOwned⟩
  · exact s2Step365EarlyControl_flagsBorrow

private theorem s2Step365EarlyControl_historyBorrow : s2Step365EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step365EarlyControlLog.recordFresh=some s2Step365EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step365EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step365EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step365EarlyControlHistoryArena,s2Step365EarlyControlArena,s2Step365EarlyControlLog,arenaWires]

private theorem s2Step365EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step365EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step365EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365EarlyControl_history : compileHmrRecordGrowLog s2Step365EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step365EarlyControlLog.recordFresh=some s2Step365EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step365EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step365EarlyControl_historyBorrow

private theorem s2Step365EarlyControl_sigmaOwned : ([254, 797] : List Wire).toFinset⊆s2Step365EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step365EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365EarlyControl_sigmaReleaseOwned : ([797] : List Wire).toFinset⊆s2Step365EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step365EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365EarlyControl_sigmaRelease : s2Step365EarlyControlHistoryArena.release {797} (fun _ => false)=some s2Step365EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step365EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step365EarlyControlSigmaArena,s2Step365EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step365EarlyControl_sigma : compileHmrSigmaDropLog s2Step365EarlyControlHistoryArena false 0 0 254 797 []=some s2Step365EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step365EarlyControl_sigmaOwned⟩
  · exact s2Step365EarlyControl_sigmaRelease

private theorem s2Step365EarlyControl_zeroBorrow : s2Step365EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step365EarlyControlLog.zeroWork=some s2Step365EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step365EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step365EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step365EarlyControlZeroArena,s2Step365EarlyControlArena,s2Step365EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step365EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step365EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step365EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365EarlyControl_zero : compileHmrEqualityLog s2Step365EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step365EarlyControlLog.zeroWork=some (s2Step365EarlyControlZeroArena,s2Step365EarlyControlLog.zeroWork,s2Step365EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step365EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step365EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step365EarlyControl_logged : s2Step365EarlyControlPlan.Logged s2Step365EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 254 253 252 251 820 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step365EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step365EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step365EarlyControl_zero
  · exact s2Step365EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step365EarlyControl_flags
  · exact s2Step365EarlyControl_fit
  · exact s2Step365EarlyControl_history
  · exact s2Step365EarlyControl_sigma
  · exact s2Step365EarlyControl_branch

private theorem s2Step365EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step365EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 254 253 252 251 820 60 s2Step365EarlyControlLog=some s2Step365EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step365EarlyControlPlan s2Step365EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 254 253 252 251 820 60 s2Step365EarlyControl_logged

private def s2Step365EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600],768⟩

private def s2Step365EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882],770⟩

private def s2Step365EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87],769⟩

private def s2Step365EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩

private def s2Step365FrontBank : WindowBank := ⟨s2Step365EntryFRow,s2Step365EntryGRow,s2Step365EntryFvRow,s2Step365EntryGvRow⟩

private def s2Step365Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 847, 768]

private def s2Step365Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 831, 812, 769]

private def s2Step365Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 903, 770]

private def s2Step365Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 785, 771]

private theorem s2Step365Counter_apart : Disjoint s2Step365HeadFvAfter.live s2Step365CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step365HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365Counter_borrowed : s2Step365HeadFvAfter.checkBorrow 4 s2Step365CounterWork=some s2Step365CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step365HeadFvAfter s2Step365CounterDuring s2Step365CounterWork.toFinset s2Step365Counter_bounded s2Step365Counter_apart rfl

private theorem s2Step365Counter_owned : (797::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step365HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step365HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365Counter_checked : compileHmrCounterStepLog s2Step365HeadFvAfter true 797 [772, 773, 774, 775, 776, 777] s2Step365CounterWork=some s2Step365CounterDuring := by
  have owned : ∀q∈797::[772, 773, 774, 775, 776, 777],q∈s2Step365HeadFvAfter.live := fun q hq => s2Step365Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step365Counter_borrowed

private def s2Step365EntryFAfter : Arena := s2Step365EntryFBefore

private theorem s2Step365EntryBank_incomingDistinct : ([s2Step365EntryFRow,s2Step365EntryGRow,s2Step365EntryFvRow,s2Step365EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365EntryF_Incoming : rowsOwned s2Step365EntryFBefore [s2Step365EntryFRow,s2Step365EntryGRow,s2Step365EntryFvRow,s2Step365EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step365EntryFRow,s2Step365EntryGRow,s2Step365EntryFvRow,s2Step365EntryGvRow] 0 s2Step365EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step365EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step365EntryBank_outgoingOwned : rowsOwned s2Step365EntryGvAfter [s2Step365EntryFOut,s2Step365EntryGOut,s2Step365EntryFvOut,s2Step365EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step365EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step365EntryF_Outgoing : rowsOwned s2Step365EntryGvAfter [s2Step365EntryFOut,s2Step365EntryGOut,s2Step365EntryFvOut,s2Step365EntryGvOut] :=
  hmrRows_owned_drop s2Step365EntryGvAfter [s2Step365EntryFOut,s2Step365EntryGOut,s2Step365EntryFvOut,s2Step365EntryGvOut] 0 s2Step365EntryBank_outgoingOwned

private theorem s2Step365EntryF_distinct : (s2Step365EntryFRow.sign::s2Step365EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365EntryF_owned : (s2Step365EntryFRow.sign::s2Step365EntryFRow.payload).toFinset⊆s2Step365EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step365EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365EntryF_reserved : s2Step365EntryFBefore.reserve s2Step365EntryFFresh.toFinset=some s2Step365EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step365EntryFFresh,arenaWires]
  · norm_num [s2Step365EntryFBefore,s2Step365EntryFFresh,arenaWires]
  · simp only [s2Step365EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step365EntryF_checked : planRowResizeLog s2Step365EntryFBefore s2Step365EntryFRow 89 s2Step365EntryFFresh=
    some (s2Step365EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600],768⟩,growRow 768 s2Step365EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step365EntryFBefore s2Step365EntryFAfter s2Step365EntryFRow 89 s2Step365EntryFFresh
    s2Step365EntryF_distinct s2Step365EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step365EntryF_reserved
  have rowEq : WindowRow.mk (s2Step365EntryFRow.payload++s2Step365EntryFFresh) s2Step365EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step365EntryFvAfter : Arena := s2Step365EntryGAfter

private def s2Step365EntryFvBefore : Arena := s2Step365EntryGAfter

private theorem s2Step365EntryFv_Incoming : rowsOwned s2Step365EntryFvBefore [s2Step365EntryFvRow,s2Step365EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step365EntryFRow,s2Step365EntryGRow,s2Step365EntryFvRow,s2Step365EntryGvRow] 2 s2Step365EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step365EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step365EntryFv_Outgoing : rowsOwned s2Step365EntryGvAfter [s2Step365EntryFvOut,s2Step365EntryGvOut] :=
  hmrRows_owned_drop s2Step365EntryGvAfter [s2Step365EntryFOut,s2Step365EntryGOut,s2Step365EntryFvOut,s2Step365EntryGvOut] 2 s2Step365EntryBank_outgoingOwned

private theorem s2Step365EntryFv_distinct : (s2Step365EntryFvRow.sign::s2Step365EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365EntryFv_owned : (s2Step365EntryFvRow.sign::s2Step365EntryFvRow.payload).toFinset⊆s2Step365EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step365EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365EntryFv_reserved : s2Step365EntryFvBefore.reserve s2Step365EntryFvFresh.toFinset=some s2Step365EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step365EntryFvFresh,arenaWires]
  · norm_num [s2Step365EntryFvBefore,s2Step365EntryGAfter,s2Step365EntryFvFresh,arenaWires]
  · simp only [s2Step365EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step365EntryFv_checked : planRowResizeLog s2Step365EntryFvBefore s2Step365EntryFvRow 198 s2Step365EntryFvFresh=
    some (s2Step365EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882],770⟩,growRow 770 s2Step365EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step365EntryFvBefore s2Step365EntryFvAfter s2Step365EntryFvRow 198 s2Step365EntryFvFresh
    s2Step365EntryFv_distinct s2Step365EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step365EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step365EntryFvRow.payload++s2Step365EntryFvFresh) s2Step365EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step365EntryGBefore : Arena := s2Step365EntryFBefore

private theorem s2Step365EntryG_Incoming : rowsOwned s2Step365EntryGBefore [s2Step365EntryGRow,s2Step365EntryFvRow,s2Step365EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step365EntryFRow,s2Step365EntryGRow,s2Step365EntryFvRow,s2Step365EntryGvRow] 1 s2Step365EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step365EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step365EntryG_Outgoing : rowsOwned s2Step365EntryGvAfter [s2Step365EntryGOut,s2Step365EntryFvOut,s2Step365EntryGvOut] :=
  hmrRows_owned_drop s2Step365EntryGvAfter [s2Step365EntryFOut,s2Step365EntryGOut,s2Step365EntryFvOut,s2Step365EntryGvOut] 1 s2Step365EntryBank_outgoingOwned

private theorem s2Step365EntryG_distinct : (s2Step365EntryGRow.sign::s2Step365EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365EntryG_owned : (s2Step365EntryGRow.sign::s2Step365EntryGRow.payload).toFinset⊆s2Step365EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step365EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365EntryG_reserved : s2Step365EntryGBefore.reserve s2Step365EntryGFresh.toFinset=some s2Step365EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step365EntryGFresh,arenaWires]
  · norm_num [s2Step365EntryGBefore,s2Step365EntryFBefore,s2Step365EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step365EntryGAfter,s2Step365EntryGBefore,s2Step365EntryFBefore,s2Step365EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step365EntryG_checked : planRowResizeLog s2Step365EntryGBefore s2Step365EntryGRow 89 s2Step365EntryGFresh=
    some (s2Step365EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 831],769⟩,growRow 769 s2Step365EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step365EntryGBefore s2Step365EntryGAfter s2Step365EntryGRow 89 s2Step365EntryGFresh
    s2Step365EntryG_distinct s2Step365EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step365EntryG_reserved
  have rowEq : WindowRow.mk (s2Step365EntryGRow.payload++s2Step365EntryGFresh) s2Step365EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 831],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step365EntryGvBefore : Arena := s2Step365EntryGAfter

private theorem s2Step365EntryGv_Incoming : rowsOwned s2Step365EntryGvBefore [s2Step365EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step365EntryFRow,s2Step365EntryGRow,s2Step365EntryFvRow,s2Step365EntryGvRow] 3 s2Step365EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step365EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step365EntryGv_Outgoing : rowsOwned s2Step365EntryGvAfter [s2Step365EntryGvOut] :=
  hmrRows_owned_drop s2Step365EntryGvAfter [s2Step365EntryFOut,s2Step365EntryGOut,s2Step365EntryFvOut,s2Step365EntryGvOut] 3 s2Step365EntryBank_outgoingOwned

private theorem s2Step365EntryGv_distinct : (s2Step365EntryGvRow.sign::s2Step365EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365EntryGv_owned : (s2Step365EntryGvRow.sign::s2Step365EntryGvRow.payload).toFinset⊆s2Step365EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step365EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365EntryGv_reserved : s2Step365EntryGvBefore.reserve s2Step365EntryGvFresh.toFinset=some s2Step365EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step365EntryGvFresh,arenaWires]
  · norm_num [s2Step365EntryGvBefore,s2Step365EntryGAfter,s2Step365EntryGvFresh,arenaWires]
  · simp only [s2Step365EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step365EntryGv_checked : planRowResizeLog s2Step365EntryGvBefore s2Step365EntryGvRow 198 s2Step365EntryGvFresh=
    some (s2Step365EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩,growRow 771 s2Step365EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step365EntryGvBefore s2Step365EntryGvAfter s2Step365EntryGvRow 198 s2Step365EntryGvFresh
    s2Step365EntryGv_distinct s2Step365EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step365EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step365EntryGvRow.payload++s2Step365EntryGvFresh) s2Step365EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step365EntryBank_rows : planWindowRowsLog s2Step365EntryFBefore [(s2Step365EntryFRow,89),(s2Step365EntryGRow,89),(s2Step365EntryFvRow,198),(s2Step365EntryGvRow,198)] [s2Step365EntryFFresh,s2Step365EntryGFresh,s2Step365EntryFvFresh,s2Step365EntryGvFresh]=
    some (s2Step365EntryGvAfter,[s2Step365EntryFOut,s2Step365EntryGOut,s2Step365EntryFvOut,s2Step365EntryGvOut],(growRow 768 s2Step365EntryFFresh ++ (growRow 769 s2Step365EntryGFresh ++ (growRow 770 s2Step365EntryFvFresh ++ (growRow 771 s2Step365EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step365EntryGvAfter [] []=some (s2Step365EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step365EntryGvBefore s2Step365EntryGvAfter s2Step365EntryGvAfter
    s2Step365EntryGvRow s2Step365EntryGvOut 198 s2Step365EntryGvFresh [] [] []
    (growRow 771 s2Step365EntryGvFresh) ([]) s2Step365EntryGv_Incoming s2Step365EntryGv_checked h4 s2Step365EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step365EntryFvBefore s2Step365EntryFvAfter s2Step365EntryGvAfter
    s2Step365EntryFvRow s2Step365EntryFvOut 198 s2Step365EntryFvFresh [(s2Step365EntryGvRow,198)] [s2Step365EntryGvFresh] [s2Step365EntryGvOut]
    (growRow 770 s2Step365EntryFvFresh) ((growRow 771 s2Step365EntryGvFresh ++ [])) s2Step365EntryFv_Incoming s2Step365EntryFv_checked h3 s2Step365EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step365EntryGBefore s2Step365EntryGAfter s2Step365EntryGvAfter
    s2Step365EntryGRow s2Step365EntryGOut 89 s2Step365EntryGFresh [(s2Step365EntryFvRow,198),(s2Step365EntryGvRow,198)] [s2Step365EntryFvFresh,s2Step365EntryGvFresh] [s2Step365EntryFvOut,s2Step365EntryGvOut]
    (growRow 769 s2Step365EntryGFresh) ((growRow 770 s2Step365EntryFvFresh ++ (growRow 771 s2Step365EntryGvFresh ++ []))) s2Step365EntryG_Incoming s2Step365EntryG_checked h2 s2Step365EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step365EntryFBefore s2Step365EntryFAfter s2Step365EntryGvAfter
    s2Step365EntryFRow s2Step365EntryFOut 89 s2Step365EntryFFresh [(s2Step365EntryGRow,89),(s2Step365EntryFvRow,198),(s2Step365EntryGvRow,198)] [s2Step365EntryGFresh,s2Step365EntryFvFresh,s2Step365EntryGvFresh] [s2Step365EntryGOut,s2Step365EntryFvOut,s2Step365EntryGvOut]
    (growRow 768 s2Step365EntryFFresh) ((growRow 769 s2Step365EntryGFresh ++ (growRow 770 s2Step365EntryFvFresh ++ (growRow 771 s2Step365EntryGvFresh ++ [])))) s2Step365EntryF_Incoming s2Step365EntryF_checked h1 s2Step365EntryF_Outgoing
  exact h0

private theorem s2Step365EntryBank_checked : compileHmrBankResizeLog .entry s2Step365EntryFBefore ⟨s2Step365EntryFRow,s2Step365EntryGRow,s2Step365EntryFvRow,s2Step365EntryGvRow⟩ ⟨89,89,198,198⟩ [s2Step365EntryFFresh,s2Step365EntryGFresh,s2Step365EntryFvFresh,s2Step365EntryGvFresh]=
    some (s2Step365EntryGvAfter,⟨s2Step365EntryFOut,s2Step365EntryGOut,s2Step365EntryFvOut,s2Step365EntryGvOut⟩,(growRow 768 s2Step365EntryFFresh ++ (growRow 769 s2Step365EntryGFresh ++ (growRow 770 s2Step365EntryFvFresh ++ (growRow 771 s2Step365EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step365EntryBank_rows]
  rfl

private def s2Step365ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<600) ∨ (601≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365ExitFBefore : Arena := s2Step365ExitGAfter

private def s2Step365ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 847],768⟩

private def s2Step365ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 903],770⟩

private def s2Step365ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 831, 812],769⟩

private def s2Step365ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 785],771⟩

private theorem s2Step365ExitBank_incomingDistinct : ([s2Step365ExitGRow,s2Step365ExitFRow,s2Step365ExitFvRow,s2Step365ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365ExitF_Incoming : rowsOwned s2Step365ExitFBefore [s2Step365ExitFRow,s2Step365ExitFvRow,s2Step365ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step365ExitGRow,s2Step365ExitFRow,s2Step365ExitFvRow,s2Step365ExitGvRow] 1 s2Step365ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step365ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step365ExitBank_outgoingOwned : rowsOwned s2Step365ExitGvAfter [s2Step365ExitGOut,s2Step365ExitFOut,s2Step365ExitFvOut,s2Step365ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step365ExitGvAfter (fun q => (0≤q ∧ q<600) ∨ (601≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step365ExitF_Outgoing : rowsOwned s2Step365ExitGvAfter [s2Step365ExitFOut,s2Step365ExitFvOut,s2Step365ExitGvOut] :=
  hmrRows_owned_drop s2Step365ExitGvAfter [s2Step365ExitGOut,s2Step365ExitFOut,s2Step365ExitFvOut,s2Step365ExitGvOut] 1 s2Step365ExitBank_outgoingOwned

private theorem s2Step365ExitF_distinct : (s2Step365ExitFRow.sign::s2Step365ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365ExitF_owned : (s2Step365ExitFRow.sign::s2Step365ExitFRow.payload).toFinset⊆s2Step365ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step365ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365ExitF_retired : s2Step365ExitFBefore.retireSet s2Step365ExitFExtra.toFinset=s2Step365ExitFAfter := by
  unfold Arena.retireSet s2Step365ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step365ExitFBefore,s2Step365ExitGAfter,s2Step365ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step365ExitF_checked : planRowResizeLog s2Step365ExitFBefore s2Step365ExitFRow 88 []=
    some (s2Step365ExitFAfter,s2Step365ExitFOut,shrinkRow 768 s2Step365ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step365ExitFBefore s2Step365ExitFRow 88 s2Step365ExitF_distinct s2Step365ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step365ExitFRow.payload.take 88) s2Step365ExitFRow.sign=s2Step365ExitFOut := by decide +kernel
  have hi : s2Step365ExitFRow.payload.drop 88=s2Step365ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step365ExitF_retired] at result
  exact result

private def s2Step365ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<600) ∨ (601≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365ExitFvBefore : Arena := s2Step365ExitFAfter

private theorem s2Step365ExitFv_Incoming : rowsOwned s2Step365ExitFvBefore [s2Step365ExitFvRow,s2Step365ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step365ExitGRow,s2Step365ExitFRow,s2Step365ExitFvRow,s2Step365ExitGvRow] 2 s2Step365ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step365ExitFvBefore (fun q => (0≤q ∧ q<600) ∨ (601≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step365ExitFv_Outgoing : rowsOwned s2Step365ExitGvAfter [s2Step365ExitFvOut,s2Step365ExitGvOut] :=
  hmrRows_owned_drop s2Step365ExitGvAfter [s2Step365ExitGOut,s2Step365ExitFOut,s2Step365ExitFvOut,s2Step365ExitGvOut] 2 s2Step365ExitBank_outgoingOwned

private theorem s2Step365ExitFv_distinct : (s2Step365ExitFvRow.sign::s2Step365ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365ExitFv_owned : (s2Step365ExitFvRow.sign::s2Step365ExitFvRow.payload).toFinset⊆s2Step365ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step365ExitFvBefore (fun q => (0≤q ∧ q<600) ∨ (601≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365ExitFv_retired : s2Step365ExitFvBefore.retireSet s2Step365ExitFvExtra.toFinset=s2Step365ExitFvAfter := by
  unfold Arena.retireSet s2Step365ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step365ExitFvBefore,s2Step365ExitFAfter,s2Step365ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step365ExitFv_checked : planRowResizeLog s2Step365ExitFvBefore s2Step365ExitFvRow 198 []=
    some (s2Step365ExitFvAfter,s2Step365ExitFvOut,shrinkRow 770 s2Step365ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step365ExitFvBefore s2Step365ExitFvRow 198 s2Step365ExitFv_distinct s2Step365ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step365ExitFvRow.payload.take 198) s2Step365ExitFvRow.sign=s2Step365ExitFvOut := by decide +kernel
  have hi : s2Step365ExitFvRow.payload.drop 198=s2Step365ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step365ExitFv_retired] at result
  exact result

private def s2Step365ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step365ExitG_Incoming : rowsOwned s2Step365ExitGBefore [s2Step365ExitGRow,s2Step365ExitFRow,s2Step365ExitFvRow,s2Step365ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step365ExitGRow,s2Step365ExitFRow,s2Step365ExitFvRow,s2Step365ExitGvRow] 0 s2Step365ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step365ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step365ExitG_Outgoing : rowsOwned s2Step365ExitGvAfter [s2Step365ExitGOut,s2Step365ExitFOut,s2Step365ExitFvOut,s2Step365ExitGvOut] :=
  hmrRows_owned_drop s2Step365ExitGvAfter [s2Step365ExitGOut,s2Step365ExitFOut,s2Step365ExitFvOut,s2Step365ExitGvOut] 0 s2Step365ExitBank_outgoingOwned

private theorem s2Step365ExitG_distinct : (s2Step365ExitGRow.sign::s2Step365ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365ExitG_owned : (s2Step365ExitGRow.sign::s2Step365ExitGRow.payload).toFinset⊆s2Step365ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step365ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365ExitG_retired : s2Step365ExitGBefore.retireSet s2Step365ExitGExtra.toFinset=s2Step365ExitGAfter := by
  unfold Arena.retireSet s2Step365ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step365ExitGBefore,s2Step365ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step365ExitG_checked : planRowResizeLog s2Step365ExitGBefore s2Step365ExitGRow 88 []=
    some (s2Step365ExitGAfter,s2Step365ExitGOut,shrinkRow 769 s2Step365ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step365ExitGBefore s2Step365ExitGRow 88 s2Step365ExitG_distinct s2Step365ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step365ExitGRow.payload.take 88) s2Step365ExitGRow.sign=s2Step365ExitGOut := by decide +kernel
  have hi : s2Step365ExitGRow.payload.drop 88=s2Step365ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step365ExitG_retired] at result
  exact result

private def s2Step365ExitGvBefore : Arena := s2Step365ExitFvAfter

private theorem s2Step365ExitGv_Incoming : rowsOwned s2Step365ExitGvBefore [s2Step365ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step365ExitGRow,s2Step365ExitFRow,s2Step365ExitFvRow,s2Step365ExitGvRow] 3 s2Step365ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step365ExitGvBefore (fun q => (0≤q ∧ q<600) ∨ (601≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step365ExitGv_Outgoing : rowsOwned s2Step365ExitGvAfter [s2Step365ExitGvOut] :=
  hmrRows_owned_drop s2Step365ExitGvAfter [s2Step365ExitGOut,s2Step365ExitFOut,s2Step365ExitFvOut,s2Step365ExitGvOut] 3 s2Step365ExitBank_outgoingOwned

private theorem s2Step365ExitGv_distinct : (s2Step365ExitGvRow.sign::s2Step365ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365ExitGv_owned : (s2Step365ExitGvRow.sign::s2Step365ExitGvRow.payload).toFinset⊆s2Step365ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step365ExitGvBefore (fun q => (0≤q ∧ q<600) ∨ (601≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365ExitGv_retired : s2Step365ExitGvBefore.retireSet s2Step365ExitGvExtra.toFinset=s2Step365ExitGvAfter := by
  unfold Arena.retireSet s2Step365ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step365ExitGvBefore,s2Step365ExitFvAfter,s2Step365ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step365ExitGv_checked : planRowResizeLog s2Step365ExitGvBefore s2Step365ExitGvRow 198 []=
    some (s2Step365ExitGvAfter,s2Step365ExitGvOut,shrinkRow 771 s2Step365ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step365ExitGvBefore s2Step365ExitGvRow 198 s2Step365ExitGv_distinct s2Step365ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step365ExitGvRow.payload.take 198) s2Step365ExitGvRow.sign=s2Step365ExitGvOut := by decide +kernel
  have hi : s2Step365ExitGvRow.payload.drop 198=s2Step365ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step365ExitGv_retired] at result
  exact result

private theorem s2Step365ExitBank_rows : planWindowRowsLog s2Step365ExitGBefore [(s2Step365ExitGRow,88),(s2Step365ExitFRow,88),(s2Step365ExitFvRow,198),(s2Step365ExitGvRow,198)] [[],[],[],[]]=
    some (s2Step365ExitGvAfter,[s2Step365ExitGOut,s2Step365ExitFOut,s2Step365ExitFvOut,s2Step365ExitGvOut],(shrinkRow 769 s2Step365ExitGExtra ++ (shrinkRow 768 s2Step365ExitFExtra ++ (shrinkRow 770 s2Step365ExitFvExtra ++ (shrinkRow 771 s2Step365ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step365ExitGvAfter [] []=some (s2Step365ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step365ExitGvBefore s2Step365ExitGvAfter s2Step365ExitGvAfter
    s2Step365ExitGvRow s2Step365ExitGvOut 198 [] [] [] []
    (shrinkRow 771 s2Step365ExitGvExtra) ([]) s2Step365ExitGv_Incoming s2Step365ExitGv_checked h4 s2Step365ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step365ExitFvBefore s2Step365ExitFvAfter s2Step365ExitGvAfter
    s2Step365ExitFvRow s2Step365ExitFvOut 198 [] [(s2Step365ExitGvRow,198)] [[]] [s2Step365ExitGvOut]
    (shrinkRow 770 s2Step365ExitFvExtra) ((shrinkRow 771 s2Step365ExitGvExtra ++ [])) s2Step365ExitFv_Incoming s2Step365ExitFv_checked h3 s2Step365ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step365ExitFBefore s2Step365ExitFAfter s2Step365ExitGvAfter
    s2Step365ExitFRow s2Step365ExitFOut 88 [] [(s2Step365ExitFvRow,198),(s2Step365ExitGvRow,198)] [[],[]] [s2Step365ExitFvOut,s2Step365ExitGvOut]
    (shrinkRow 768 s2Step365ExitFExtra) ((shrinkRow 770 s2Step365ExitFvExtra ++ (shrinkRow 771 s2Step365ExitGvExtra ++ []))) s2Step365ExitF_Incoming s2Step365ExitF_checked h2 s2Step365ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step365ExitGBefore s2Step365ExitGAfter s2Step365ExitGvAfter
    s2Step365ExitGRow s2Step365ExitGOut 88 [] [(s2Step365ExitFRow,88),(s2Step365ExitFvRow,198),(s2Step365ExitGvRow,198)] [[],[],[]] [s2Step365ExitFOut,s2Step365ExitFvOut,s2Step365ExitGvOut]
    (shrinkRow 769 s2Step365ExitGExtra) ((shrinkRow 768 s2Step365ExitFExtra ++ (shrinkRow 770 s2Step365ExitFvExtra ++ (shrinkRow 771 s2Step365ExitGvExtra ++ [])))) s2Step365ExitG_Incoming s2Step365ExitG_checked h1 s2Step365ExitG_Outgoing
  exact h0

private theorem s2Step365ExitBank_checked : compileHmrBankResizeLog .exit s2Step365ExitGBefore ⟨s2Step365ExitFRow,s2Step365ExitGRow,s2Step365ExitFvRow,s2Step365ExitGvRow⟩ ⟨88,88,198,198⟩ [[],[],[],[]]=
    some (s2Step365ExitGvAfter,⟨s2Step365ExitFOut,s2Step365ExitGOut,s2Step365ExitFvOut,s2Step365ExitGvOut⟩,(shrinkRow 769 s2Step365ExitGExtra ++ (shrinkRow 768 s2Step365ExitFExtra ++ (shrinkRow 770 s2Step365ExitFvExtra ++ (shrinkRow 771 s2Step365ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step365ExitBank_rows]
  rfl

private theorem s2Step365Add0_apart : Disjoint s2Step365Add0Arena.live s2Step365Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step365Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365Add0_card : s2Step365Add0Arena.live.card=908 := by
  decide +kernel

private theorem s2Step365Add0_borrowed : s2Step365Add0Arena.checkBorrow (hmrHybridCount s2Step365Add0Arena s2Step365Add0B.length) s2Step365Add0Work=some s2Step365Add0During := by
  have len : s2Step365Add0Work.length=hmrHybridCount s2Step365Add0Arena s2Step365Add0B.length := by
    rw [hmrHybridCount,s2Step365Add0_card]
    decide +kernel
  have nd : s2Step365Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step365Add0Arena s2Step365Add0During s2Step365Add0Work.toFinset s2Step365Add0_bounded s2Step365Add0_apart rfl

private theorem s2Step365Add0_distinct : (796::820::783::(s2Step365Add0A++s2Step365Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365Add0_owned : (796::820::783::(s2Step365Add0A++s2Step365Add0B)).toFinset⊆s2Step365Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step365Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365Add0_checked : compileHmrHybridCinLog s2Step365Add0Arena 820 796 783 s2Step365Add0A s2Step365Add0B s2Step365Add0Work=some s2Step365Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step365Add0Arena s2Step365Add0During 820 796 783 s2Step365Add0A s2Step365Add0B s2Step365Add0Work
    (by decide +kernel) (by decide +kernel) s2Step365Add0_distinct
    (fun q hq => s2Step365Add0_owned (List.mem_toFinset.mpr hq)) s2Step365Add0_borrowed

private theorem s2Step365Add1_apart : Disjoint s2Step365Add1Arena.live s2Step365Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step365Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365Add1_card : s2Step365Add1Arena.live.card=908 := by
  decide +kernel

private theorem s2Step365Add1_borrowed : s2Step365Add1Arena.checkBorrow (hmrHybridCount s2Step365Add1Arena s2Step365Add1B.length) s2Step365Add1Work=some s2Step365Add1During := by
  have len : s2Step365Add1Work.length=hmrHybridCount s2Step365Add1Arena s2Step365Add1B.length := by
    rw [hmrHybridCount,s2Step365Add1_card]
    decide +kernel
  have nd : s2Step365Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step365Add1Arena s2Step365Add1During s2Step365Add1Work.toFinset s2Step365Add1_bounded s2Step365Add1_apart rfl

private theorem s2Step365Add1_distinct : (796::820::783::(s2Step365Add1A++s2Step365Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365Add1_owned : (796::820::783::(s2Step365Add1A++s2Step365Add1B)).toFinset⊆s2Step365Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step365Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365Add1_checked : compileHmrHybridCinLog s2Step365Add1Arena 820 796 783 s2Step365Add1A s2Step365Add1B s2Step365Add1Work=some s2Step365Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step365Add1Arena s2Step365Add1During 820 796 783 s2Step365Add1A s2Step365Add1B s2Step365Add1Work
    (by decide +kernel) (by decide +kernel) s2Step365Add1_distinct
    (fun q hq => s2Step365Add1_owned (List.mem_toFinset.mpr hq)) s2Step365Add1_borrowed

private theorem s2Step365F4_apart : Disjoint (s2Step365Add0A++s2Step365Add0B).toFinset (s2Step365Add1A++s2Step365Add1B).toFinset := by
  have nd : ((s2Step365Add0A++s2Step365Add0B)++(s2Step365Add1A++s2Step365Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step365F4_carry : s2Step365F4FlagArena.checkBorrow 1 [783]=some s2Step365Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step365F4FlagArena,s2Step365HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step365F4FlagArena,s2Step365HeadFvAfter,s2Step365Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step365F4_distinct : (797::820::796::783::((s2Step365Add0A++s2Step365Add1A)++(s2Step365Add0B++s2Step365Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365F4_flag : s2Step365HeadFvAfter.checkBorrow 1 [796]=some s2Step365F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step365HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step365F4_owned : (797::820::((s2Step365Add0A++s2Step365Add1A)++(s2Step365Add0B++s2Step365Add1B))).toFinset⊆s2Step365HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step365HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365F4_checked : compileHmrHybridF4Log s2Step365HeadFvAfter 797 820 s2Step365Add0A s2Step365Add0B s2Step365Add1A s2Step365Add1B [796] [783] s2Step365Add0Work s2Step365Add1Work=some s2Step365F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step365HeadFvAfter s2Step365F4FlagArena s2Step365Add0Arena s2Step365Add0During s2Step365Add1During 797 820
    s2Step365Add0A s2Step365Add0B s2Step365Add1A s2Step365Add1B [796] [783] s2Step365Add0Work s2Step365Add1Work
    (fun q hq => s2Step365F4_owned (List.mem_toFinset.mpr hq)) s2Step365F4_flag s2Step365F4_carry
    s2Step365F4_distinct s2Step365F4_apart s2Step365Add0_checked s2Step365Add1_checked

private theorem s2Step365Front_branch : s2Step365FrontSigmaArena.checkBorrow 1 [820]=some s2Step365HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step365FrontSigmaArena,s2Step365EntryGvAfter,s2Step365EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step365FrontSigmaArena,s2Step365EntryGvAfter,s2Step365EntryGAfter,s2Step365HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step365Front_entry : HmrFrontEntryValid s2Step365EntryFBefore s2Step365FrontBank 89 198 ⟨88,88,198,198⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step365FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step365EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step365EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step365FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step365Front_sigma : s2Step365EntryGvAfter.checkBorrow 1 [797]=some s2Step365FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step365EntryGvAfter,s2Step365EntryGAfter,arenaWires]
  · rfl

private def s2Step365HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365HeadFBefore : Arena := s2Step365HeadGAfter

private def s2Step365HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600],768⟩

private def s2Step365HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882],770⟩

private def s2Step365HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 831],769⟩

private def s2Step365HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩

private theorem s2Step365HeadBank_incomingDistinct : ([s2Step365HeadGRow,s2Step365HeadFRow,s2Step365HeadGvRow,s2Step365HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365HeadF_Incoming : rowsOwned s2Step365HeadFBefore [s2Step365HeadFRow,s2Step365HeadGvRow,s2Step365HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step365HeadGRow,s2Step365HeadFRow,s2Step365HeadGvRow,s2Step365HeadFvRow] 1 s2Step365HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step365HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step365HeadBank_outgoingOwned : rowsOwned s2Step365HeadFvAfter [s2Step365HeadGOut,s2Step365HeadFOut,s2Step365HeadGvOut,s2Step365HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step365HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step365HeadF_Outgoing : rowsOwned s2Step365HeadFvAfter [s2Step365HeadFOut,s2Step365HeadGvOut,s2Step365HeadFvOut] :=
  hmrRows_owned_drop s2Step365HeadFvAfter [s2Step365HeadGOut,s2Step365HeadFOut,s2Step365HeadGvOut,s2Step365HeadFvOut] 1 s2Step365HeadBank_outgoingOwned

private theorem s2Step365HeadF_distinct : (s2Step365HeadFRow.sign::s2Step365HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365HeadF_owned : (s2Step365HeadFRow.sign::s2Step365HeadFRow.payload).toFinset⊆s2Step365HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step365HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365HeadF_reserved : s2Step365HeadFBefore.reserve s2Step365HeadFFresh.toFinset=some s2Step365HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step365HeadFFresh,arenaWires]
  · norm_num [s2Step365HeadFBefore,s2Step365HeadGAfter,s2Step365HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step365HeadFAfter,s2Step365HeadFBefore,s2Step365HeadGAfter,s2Step365HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step365HeadF_checked : planRowResizeLog s2Step365HeadFBefore s2Step365HeadFRow 90 s2Step365HeadFFresh=
    some (s2Step365HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 847],768⟩,growRow 768 s2Step365HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step365HeadFBefore s2Step365HeadFAfter s2Step365HeadFRow 90 s2Step365HeadFFresh
    s2Step365HeadF_distinct s2Step365HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step365HeadF_reserved
  have rowEq : WindowRow.mk (s2Step365HeadFRow.payload++s2Step365HeadFFresh) s2Step365HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 847],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step365HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step365HeadFvBefore : Arena := s2Step365HeadGvAfter

private theorem s2Step365HeadFv_Incoming : rowsOwned s2Step365HeadFvBefore [s2Step365HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step365HeadGRow,s2Step365HeadFRow,s2Step365HeadGvRow,s2Step365HeadFvRow] 3 s2Step365HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step365HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step365HeadFv_Outgoing : rowsOwned s2Step365HeadFvAfter [s2Step365HeadFvOut] :=
  hmrRows_owned_drop s2Step365HeadFvAfter [s2Step365HeadGOut,s2Step365HeadFOut,s2Step365HeadGvOut,s2Step365HeadFvOut] 3 s2Step365HeadBank_outgoingOwned

private theorem s2Step365HeadFv_distinct : (s2Step365HeadFvRow.sign::s2Step365HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365HeadFv_owned : (s2Step365HeadFvRow.sign::s2Step365HeadFvRow.payload).toFinset⊆s2Step365HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step365HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365HeadFv_reserved : s2Step365HeadFvBefore.reserve s2Step365HeadFvFresh.toFinset=some s2Step365HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step365HeadFvFresh,arenaWires]
  · norm_num [s2Step365HeadFvBefore,s2Step365HeadGvAfter,s2Step365HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step365HeadFvAfter,s2Step365HeadFvBefore,s2Step365HeadGvAfter,s2Step365HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step365HeadFv_checked : planRowResizeLog s2Step365HeadFvBefore s2Step365HeadFvRow 199 s2Step365HeadFvFresh=
    some (s2Step365HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 903],770⟩,growRow 770 s2Step365HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step365HeadFvBefore s2Step365HeadFvAfter s2Step365HeadFvRow 199 s2Step365HeadFvFresh
    s2Step365HeadFv_distinct s2Step365HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step365HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step365HeadFvRow.payload++s2Step365HeadFvFresh) s2Step365HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 903],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step365HeadG_Incoming : rowsOwned s2Step365HeadGBefore [s2Step365HeadGRow,s2Step365HeadFRow,s2Step365HeadGvRow,s2Step365HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step365HeadGRow,s2Step365HeadFRow,s2Step365HeadGvRow,s2Step365HeadFvRow] 0 s2Step365HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step365HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step365HeadG_Outgoing : rowsOwned s2Step365HeadFvAfter [s2Step365HeadGOut,s2Step365HeadFOut,s2Step365HeadGvOut,s2Step365HeadFvOut] :=
  hmrRows_owned_drop s2Step365HeadFvAfter [s2Step365HeadGOut,s2Step365HeadFOut,s2Step365HeadGvOut,s2Step365HeadFvOut] 0 s2Step365HeadBank_outgoingOwned

private theorem s2Step365HeadG_distinct : (s2Step365HeadGRow.sign::s2Step365HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365HeadG_owned : (s2Step365HeadGRow.sign::s2Step365HeadGRow.payload).toFinset⊆s2Step365HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step365HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365HeadG_reserved : s2Step365HeadGBefore.reserve s2Step365HeadGFresh.toFinset=some s2Step365HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step365HeadGFresh,arenaWires]
  · norm_num [s2Step365HeadGBefore,s2Step365HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step365HeadGAfter,s2Step365HeadGBefore,s2Step365HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step365HeadG_checked : planRowResizeLog s2Step365HeadGBefore s2Step365HeadGRow 90 s2Step365HeadGFresh=
    some (s2Step365HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 831, 812],769⟩,growRow 769 s2Step365HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step365HeadGBefore s2Step365HeadGAfter s2Step365HeadGRow 90 s2Step365HeadGFresh
    s2Step365HeadG_distinct s2Step365HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step365HeadG_reserved
  have rowEq : WindowRow.mk (s2Step365HeadGRow.payload++s2Step365HeadGFresh) s2Step365HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 831, 812],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step365HeadGvBefore : Arena := s2Step365HeadFAfter

private theorem s2Step365HeadGv_Incoming : rowsOwned s2Step365HeadGvBefore [s2Step365HeadGvRow,s2Step365HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step365HeadGRow,s2Step365HeadFRow,s2Step365HeadGvRow,s2Step365HeadFvRow] 2 s2Step365HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step365HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step365HeadGv_Outgoing : rowsOwned s2Step365HeadFvAfter [s2Step365HeadGvOut,s2Step365HeadFvOut] :=
  hmrRows_owned_drop s2Step365HeadFvAfter [s2Step365HeadGOut,s2Step365HeadFOut,s2Step365HeadGvOut,s2Step365HeadFvOut] 2 s2Step365HeadBank_outgoingOwned

private theorem s2Step365HeadGv_distinct : (s2Step365HeadGvRow.sign::s2Step365HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step365HeadGv_owned : (s2Step365HeadGvRow.sign::s2Step365HeadGvRow.payload).toFinset⊆s2Step365HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step365HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step365HeadGv_reserved : s2Step365HeadGvBefore.reserve s2Step365HeadGvFresh.toFinset=some s2Step365HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step365HeadGvFresh,arenaWires]
  · norm_num [s2Step365HeadGvBefore,s2Step365HeadFAfter,s2Step365HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step365HeadGvAfter,s2Step365HeadGvBefore,s2Step365HeadFAfter,s2Step365HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step365HeadGv_checked : planRowResizeLog s2Step365HeadGvBefore s2Step365HeadGvRow 199 s2Step365HeadGvFresh=
    some (s2Step365HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 785],771⟩,growRow 771 s2Step365HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step365HeadGvBefore s2Step365HeadGvAfter s2Step365HeadGvRow 199 s2Step365HeadGvFresh
    s2Step365HeadGv_distinct s2Step365HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step365HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step365HeadGvRow.payload++s2Step365HeadGvFresh) s2Step365HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 785],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step365HeadBank_rows : planWindowRowsLog s2Step365HeadGBefore [(s2Step365HeadGRow,90),(s2Step365HeadFRow,90),(s2Step365HeadGvRow,199),(s2Step365HeadFvRow,199)] [s2Step365HeadGFresh,s2Step365HeadFFresh,s2Step365HeadGvFresh,s2Step365HeadFvFresh]=
    some (s2Step365HeadFvAfter,[s2Step365HeadGOut,s2Step365HeadFOut,s2Step365HeadGvOut,s2Step365HeadFvOut],(growRow 769 s2Step365HeadGFresh ++ (growRow 768 s2Step365HeadFFresh ++ (growRow 771 s2Step365HeadGvFresh ++ (growRow 770 s2Step365HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step365HeadFvAfter [] []=some (s2Step365HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step365HeadFvBefore s2Step365HeadFvAfter s2Step365HeadFvAfter
    s2Step365HeadFvRow s2Step365HeadFvOut 199 s2Step365HeadFvFresh [] [] []
    (growRow 770 s2Step365HeadFvFresh) ([]) s2Step365HeadFv_Incoming s2Step365HeadFv_checked h4 s2Step365HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step365HeadGvBefore s2Step365HeadGvAfter s2Step365HeadFvAfter
    s2Step365HeadGvRow s2Step365HeadGvOut 199 s2Step365HeadGvFresh [(s2Step365HeadFvRow,199)] [s2Step365HeadFvFresh] [s2Step365HeadFvOut]
    (growRow 771 s2Step365HeadGvFresh) ((growRow 770 s2Step365HeadFvFresh ++ [])) s2Step365HeadGv_Incoming s2Step365HeadGv_checked h3 s2Step365HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step365HeadFBefore s2Step365HeadFAfter s2Step365HeadFvAfter
    s2Step365HeadFRow s2Step365HeadFOut 90 s2Step365HeadFFresh [(s2Step365HeadGvRow,199),(s2Step365HeadFvRow,199)] [s2Step365HeadGvFresh,s2Step365HeadFvFresh] [s2Step365HeadGvOut,s2Step365HeadFvOut]
    (growRow 768 s2Step365HeadFFresh) ((growRow 771 s2Step365HeadGvFresh ++ (growRow 770 s2Step365HeadFvFresh ++ []))) s2Step365HeadF_Incoming s2Step365HeadF_checked h2 s2Step365HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step365HeadGBefore s2Step365HeadGAfter s2Step365HeadFvAfter
    s2Step365HeadGRow s2Step365HeadGOut 90 s2Step365HeadGFresh [(s2Step365HeadFRow,90),(s2Step365HeadGvRow,199),(s2Step365HeadFvRow,199)] [s2Step365HeadFFresh,s2Step365HeadGvFresh,s2Step365HeadFvFresh] [s2Step365HeadFOut,s2Step365HeadGvOut,s2Step365HeadFvOut]
    (growRow 769 s2Step365HeadGFresh) ((growRow 768 s2Step365HeadFFresh ++ (growRow 771 s2Step365HeadGvFresh ++ (growRow 770 s2Step365HeadFvFresh ++ [])))) s2Step365HeadG_Incoming s2Step365HeadG_checked h1 s2Step365HeadG_Outgoing
  exact h0

private theorem s2Step365HeadBank_checked : compileHmrBankResizeLog .headroom s2Step365HeadGBefore ⟨s2Step365HeadFRow,s2Step365HeadGRow,s2Step365HeadFvRow,s2Step365HeadGvRow⟩ ⟨90,90,199,199⟩ [s2Step365HeadGFresh,s2Step365HeadFFresh,s2Step365HeadGvFresh,s2Step365HeadFvFresh]=
    some (s2Step365HeadFvAfter,⟨s2Step365HeadFOut,s2Step365HeadGOut,s2Step365HeadFvOut,s2Step365HeadGvOut⟩,(growRow 769 s2Step365HeadGFresh ++ (growRow 768 s2Step365HeadFFresh ++ (growRow 771 s2Step365HeadGvFresh ++ (growRow 770 s2Step365HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step365HeadBank_rows]
  rfl

private theorem s2Step365Front_checked : compileHmrSourceFrontLog s2Step365EntryFBefore s2Step365FrontBank 89 198 ⟨88,88,198,198⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step365FrontLog=some s2Step365FrontPlan := by
  have pairEq : s2Step365FrontPair=⟨s2Step365HeadFRow,s2Step365HeadGRow,s2Step365HeadFvRow,s2Step365HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step365FrontHead=⟨s2Step365ExitFRow,s2Step365ExitGRow,s2Step365ExitFvRow,s2Step365ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step365Add0A=s2Step365FrontHead.f.wires := by decide +kernel
  have gEq : s2Step365Add0B=s2Step365FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step365Add1A=s2Step365FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step365Add1B=s2Step365FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step365EntryFBefore s2Step365FrontBank 89 198 ⟨88,88,198,198⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step365FrontLog s2Step365FrontPlan
  · exact s2Step365Front_entry
  · exact s2Step365EntryBank_checked
  · exact s2Step365Front_sigma
  · rfl
  · exact s2Step365Front_branch
  · rfl
  · simpa only [s2Step365FrontPlan,pairEq] using s2Step365HeadBank_checked
  · simpa only [s2Step365FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step365F4_checked
  · exact s2Step365Counter_checked
  · rfl
  · simpa only [s2Step365FrontPlan,headEq] using s2Step365ExitBank_checked

private theorem s2Step365Complete_explicit_checked : compileHmrEarlyStepLog s2Step365EntryFBefore s2Step365FrontBank 89 198 ⟨88,88,198,198⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step365CompleteLog=some s2Step365CompletePlan := by
  let Q := s2Step365EarlyControlPlan
  have hq := s2Step365EarlyControl_plan_checked
  have fv1 : s2Step365CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step365CompleteOut.fv.payload[2]?.getD s2Step365CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step365CompleteOut.fv.payload[3]?.getD s2Step365CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step365CompleteOut.fv.payload[4]?.getD s2Step365CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step365EntryFBefore s2Step365EarlyControlArena s2Step365FrontBank 89 198 ⟨88,88,198,198⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step365CompleteLog s2Step365FrontPlan Q
    s2Step365Front_checked s2Step365Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step365Complete_owned s2Step365Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step365EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 s2Step365CompleteOut.fv.second (s2Step365CompleteOut.fv.payload[2]?.getD s2Step365CompleteOut.fv.sign) (s2Step365CompleteOut.fv.payload[3]?.getD s2Step365CompleteOut.fv.sign) (s2Step365CompleteOut.fv.payload[4]?.getD s2Step365CompleteOut.fv.sign) 820 60 s2Step365EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep365Arena : Arena := s2Step365EntryFBefore
def s2PrivateStep365Bank : WindowBank := s2Step365FrontBank
def s2PrivateStep365Spec : HmrSourceWalkStepLog := ⟨89,198,⟨88,88,198,198⟩,60,.early s2Step365CompleteLog⟩
def s2PrivateStep365Plan : HmrSourceStepPlan := .early s2Step365CompletePlan
theorem s2PrivateStep365_source : s2PrivateStep365Spec=s2ObservedLogs352[13] := rfl
theorem s2PrivateStep365_checked : compileHmrSourceStepLog s2PrivateStep365Arena s2PrivateStep365Bank
    s2PrivateStep365Spec.fgWidth s2PrivateStep365Spec.vWidth s2PrivateStep365Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 365 s2PrivateStep365Spec.need none s2PrivateStep365Spec.log=some s2PrivateStep365Plan := by
  change compileHmrSourceStepLog s2Step365EntryFBefore s2Step365FrontBank 89 198 ⟨88,88,198,198⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 365 60 none (.early s2Step365CompleteLog)=some (.early s2Step365CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 365<498)]
  rw [s2Step365Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
