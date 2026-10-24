import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep364
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

private def s2Step366CompleteMoves : List (Wire × Wire) := [(805,87)]

private def s2Step366EarlyControlLog : HmrEarlyControlLog := ⟨[805, 903, 785, 819, 831],[812],[796],[783, 800, 789, 827, 844, 907],[]⟩

private def s2Step366FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[819], [785], [903], [847]],[[], [], [], []]⟩,[820],[797],[831],[812],[796, 783, 800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[796, 783, 800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[831, 812, 796, 783]⟩

private def s2Step366CompleteLog : HmrEarlyStepLog := ⟨s2Step366FrontLog,s2Step366CompleteMoves,s2Step366EarlyControlLog⟩

private def s2Step366ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599],768⟩

private def s2Step366ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847],770⟩

private def s2Step366ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86],769⟩

private def s2Step366ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩

private def s2Step366FrontOut : WindowBank := ⟨s2Step366ExitFOut,s2Step366ExitGOut,s2Step366ExitFvOut,s2Step366ExitGvOut⟩

private def s2Step366CompleteOut : WindowBank := s2Step366FrontOut.repacked s2Step366CompleteMoves

private def s2Step366EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step366EarlyControlPositiveArena,[812],s2Step366EarlyControlEqualityArena,[796],⟨⟨820,false⟩,[⟨⟨812,false⟩,796⟩]⟩⟩

private def s2Step366EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,805⟩,⟨⟨774,false⟩,903⟩,⟨⟨775,false⟩,785⟩,⟨⟨776,false⟩,819⟩,⟨⟨777,false⟩,831⟩]⟩

private def s2Step366EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step366EarlyControlZeroArena,s2Step366EarlyControlZeroPlan,s2Step366EarlyControlClassPlan,s2Step366EarlyControlFlagArena,s2Step366EarlyControlFittedArena,s2Step366EarlyControlHistoryArena,s2Step366EarlyControlSigmaArena,s2Step366EarlyControlOutputArena,s2Step366EarlyControlLog⟩

private def s2Step366CounterWork : List Wire := [831, 812, 796, 783]

private theorem s2Step366Counter_bounded : s2Step366CounterWork.toFinset⊆arenaWires := by norm_num [s2Step366CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step366HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366CounterDuring : Arena := ⟨s2Step366HeadFvAfter.live∪s2Step366CounterWork.toFinset,Finset.union_subset s2Step366HeadFvAfter.bounded s2Step366Counter_bounded⟩

private def s2Step366EntryFFresh : List Wire := []

private def s2Step366EntryFvFresh : List Wire := []

private def s2Step366EntryGFresh : List Wire := []

private def s2Step366EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366EntryGvAfter : Arena := s2Step366EntryFBefore

private def s2Step366EntryGvFresh : List Wire := []

private def s2Step366ExitFExtra : List Wire := [785]

private def s2Step366ExitGExtra : List Wire := [87, 819]

private def s2Step366ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366ExitGvExtra : List Wire := [903]

private def s2Step366Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366Add0Work : List Wire := [796, 783, 800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step366Add0_bounded : s2Step366Add0Work.toFinset⊆arenaWires := by
  have h : s2Step366Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step366Add0During : Arena := ⟨s2Step366Add0Arena.live∪s2Step366Add0Work.toFinset,Finset.union_subset s2Step366Add0Arena.bounded s2Step366Add0_bounded⟩

private def s2Step366Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366Add1Work : List Wire := [796, 783, 800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step366Add1_bounded : s2Step366Add1Work.toFinset⊆arenaWires := by
  have h : s2Step366Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step366Add1During : Arena := ⟨s2Step366Add1Arena.live∪s2Step366Add1Work.toFinset,Finset.union_subset s2Step366Add1Arena.bounded s2Step366Add1_bounded⟩

private def s2Step366F4FlagArena : Arena := ⟨s2Step366HeadFvAfter.live∪{831},Finset.union_subset s2Step366HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step366F4Plan : HmrHybridF4Plan := ⟨s2Step366F4FlagArena,[831],s2Step366Add0Arena,[812],s2Step366Add0During,s2Step366Add0Work,s2Step366Add1During,s2Step366Add1Work⟩

private def s2Step366HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 785],768⟩

private def s2Step366HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847],770⟩

private def s2Step366HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 819],769⟩

private def s2Step366HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 903],771⟩

private def s2Step366FrontHead : WindowBank := ⟨s2Step366HeadFOut,s2Step366HeadGOut,s2Step366HeadFvOut,s2Step366HeadGvOut⟩

private def s2Step366EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599],768⟩

private def s2Step366EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882],770⟩

private def s2Step366EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87],769⟩

private def s2Step366EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩

private def s2Step366FrontPair : WindowBank := ⟨s2Step366EntryFOut,s2Step366EntryGOut,s2Step366EntryFvOut,s2Step366EntryGvOut⟩

private def s2Step366FrontSigmaArena : Arena := ⟨s2Step366EntryGvAfter.live∪{820},Finset.union_subset s2Step366EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step366HeadFFresh : List Wire := [785]

private def s2Step366HeadFvFresh : List Wire := [847]

private def s2Step366HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366HeadGFresh : List Wire := [819]

private def s2Step366HeadGvFresh : List Wire := [903]

private def s2Step366FrontPlan : HmrSourceFront := ⟨s2Step366EntryGvAfter,s2Step366FrontPair,(growRow 768 s2Step366EntryFFresh ++ (growRow 769 s2Step366EntryGFresh ++ (growRow 770 s2Step366EntryFvFresh ++ (growRow 771 s2Step366EntryGvFresh ++ [])))),s2Step366FrontSigmaArena,[820],s2Step366HeadGBefore,[797],
  s2Step366HeadFvAfter,s2Step366FrontHead,(growRow 769 s2Step366HeadGFresh ++ (growRow 768 s2Step366HeadFFresh ++ (growRow 771 s2Step366HeadGvFresh ++ (growRow 770 s2Step366HeadFvFresh ++ [])))),s2Step366F4Plan,s2Step366CounterDuring,s2Step366CounterWork,s2Step366ExitGvAfter,s2Step366FrontOut,(shrinkRow 769 s2Step366ExitGExtra ++ (shrinkRow 768 s2Step366ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step366ExitGvExtra ++ []))))⟩

private def s2Step366CompletePlan : HmrEarlyStepPlan := ⟨s2Step366FrontPlan,s2Step366EarlyControlArena,s2Step366EarlyControlPlan,s2Step366CompleteMoves⟩

private theorem s2Step366Complete_apart : List.Disjoint (s2Step366CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [820, 797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step366CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[820, 797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step366Complete_owned : (s2Step366CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step366EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step366EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step366CompleteMoveArena : Arena := ⟨s2Step366ExitGvAfter.live∪{87},Finset.union_subset s2Step366ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step366Complete_repack : s2Step366ExitGvAfter.checkRepack s2Step366CompleteMoves=some s2Step366EarlyControlArena := by
  have owned : 805∈s2Step366ExitGvAfter.live := by norm_num [s2Step366ExitGvAfter,arenaWires]
  have reserve : s2Step366ExitGvAfter.reserve {87}=some s2Step366CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step366ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step366CompleteMoveArena.retireSet {805}=s2Step366EarlyControlArena := by
    unfold Arena.retireSet s2Step366EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step366CompleteMoveArena,s2Step366ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step366CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step366CompleteMoveArena.retireSet {805}).checkRepack []=some s2Step366EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step366EarlyControl_branchOwned : ([797] : List Wire).toFinset⊆s2Step366EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step366EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366EarlyControl_branch : compileHmrBranchRetirement s2Step366EarlyControlSigmaArena 797=some s2Step366EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step366EarlyControl_branchOwned
  · ext q
    simp [s2Step366EarlyControlOutputArena,s2Step366EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step366EarlyControl_classEqualityBorrow : s2Step366EarlyControlPositiveArena.checkBorrow (([820, 812] : List Wire).length-1) s2Step366EarlyControlLog.classWork=some s2Step366EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step366EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step366EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step366EarlyControlEqualityArena,s2Step366EarlyControlPositiveArena,s2Step366EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step366EarlyControl_classEqualityOwned : ([820, 812] : List Wire).toFinset⊆s2Step366EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step366EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366EarlyControl_classEquality : compileHmrEqualityLog s2Step366EarlyControlPositiveArena [820, 812] 0 s2Step366EarlyControlLog.classWork=some (s2Step366EarlyControlEqualityArena,s2Step366EarlyControlLog.classWork,s2Step366EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step366EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step366EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step366EarlyControl_classOwned : ([777, 831, 820] : List Wire).toFinset⊆s2Step366EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step366EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366EarlyControl_positiveBorrow : s2Step366EarlyControlZeroArena.checkBorrow (1) s2Step366EarlyControlLog.positiveWork=some s2Step366EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step366EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step366EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step366EarlyControlPositiveArena,s2Step366EarlyControlZeroArena,s2Step366EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step366EarlyControl_class : compileHmrSourceClassLog s2Step366EarlyControlZeroArena false 777 s2Step366EarlyControlZeroPlan.top 0 820 s2Step366EarlyControlLog.positiveWork s2Step366EarlyControlLog.classWork=some s2Step366EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step366EarlyControlClassPlan s2Step366EarlyControlZeroArena false 777 s2Step366EarlyControlZeroPlan.top 0 820
  constructor
  · decide +kernel
  · exact s2Step366EarlyControl_classOwned
  · exact s2Step366EarlyControl_positiveBorrow
  · exact s2Step366EarlyControl_classEquality

private theorem s2Step366EarlyControl_entryRecordOwned : ([797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step366EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step366EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366EarlyControl_entrySigmaOwned : ([820, 254] : List Wire).toFinset⊆s2Step366EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step366EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366EarlyControl_fitBorrow : s2Step366EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step366EarlyControlLog.recordFresh=some s2Step366EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step366EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step366EarlyControlFlagArena (fun q => (0≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step366EarlyControlFittedArena,s2Step366EarlyControlFlagArena,s2Step366EarlyControlLog,arenaWires]

private theorem s2Step366EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step366EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step366EarlyControlFlagArena (fun q => (0≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366EarlyControl_fit : compileHmrRecordGrowLog s2Step366EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step366EarlyControlLog.recordFresh=some s2Step366EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step366EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step366EarlyControl_fitBorrow

private theorem s2Step366EarlyControl_flagsBorrow : s2Step366EarlyControlEqualityArena.checkBorrow (6) s2Step366EarlyControlLog.flagWork=some s2Step366EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step366EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step366EarlyControlEqualityArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step366EarlyControlFlagArena,s2Step366EarlyControlEqualityArena,s2Step366EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step366EarlyControl_flagsOwned : ([796, 253, 252, 251] : List Wire).toFinset⊆s2Step366EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step366EarlyControlEqualityArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366EarlyControl_flags : compileHmrFlagsLog s2Step366EarlyControlClassPlan.equalityArena s2Step366EarlyControlClassPlan.equality.top 253 252 251 s2Step366EarlyControlLog.flagWork=some s2Step366EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step366EarlyControl_flagsOwned⟩
  · exact s2Step366EarlyControl_flagsBorrow

private theorem s2Step366EarlyControl_historyBorrow : s2Step366EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step366EarlyControlLog.recordFresh=some s2Step366EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step366EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step366EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step366EarlyControlHistoryArena,s2Step366EarlyControlArena,s2Step366EarlyControlLog,arenaWires]

private theorem s2Step366EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step366EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step366EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366EarlyControl_history : compileHmrRecordGrowLog s2Step366EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step366EarlyControlLog.recordFresh=some s2Step366EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step366EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step366EarlyControl_historyBorrow

private theorem s2Step366EarlyControl_sigmaOwned : ([254, 820] : List Wire).toFinset⊆s2Step366EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step366EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366EarlyControl_sigmaReleaseOwned : ([820] : List Wire).toFinset⊆s2Step366EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step366EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366EarlyControl_sigmaRelease : s2Step366EarlyControlHistoryArena.release {820} (fun _ => false)=some s2Step366EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step366EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step366EarlyControlSigmaArena,s2Step366EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step366EarlyControl_sigma : compileHmrSigmaDropLog s2Step366EarlyControlHistoryArena false 0 0 254 820 []=some s2Step366EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step366EarlyControl_sigmaOwned⟩
  · exact s2Step366EarlyControl_sigmaRelease

private theorem s2Step366EarlyControl_zeroBorrow : s2Step366EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step366EarlyControlLog.zeroWork=some s2Step366EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step366EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step366EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step366EarlyControlZeroArena,s2Step366EarlyControlArena,s2Step366EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step366EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step366EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step366EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366EarlyControl_zero : compileHmrEqualityLog s2Step366EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step366EarlyControlLog.zeroWork=some (s2Step366EarlyControlZeroArena,s2Step366EarlyControlLog.zeroWork,s2Step366EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step366EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step366EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step366EarlyControl_logged : s2Step366EarlyControlPlan.Logged s2Step366EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 820 254 253 252 251 797 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step366EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step366EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step366EarlyControl_zero
  · exact s2Step366EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step366EarlyControl_flags
  · exact s2Step366EarlyControl_fit
  · exact s2Step366EarlyControl_history
  · exact s2Step366EarlyControl_sigma
  · exact s2Step366EarlyControl_branch

private theorem s2Step366EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step366EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 820 254 253 252 251 797 60 s2Step366EarlyControlLog=some s2Step366EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step366EarlyControlPlan s2Step366EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 820 254 253 252 251 797 60 s2Step366EarlyControl_logged

private def s2Step366EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599],768⟩

private def s2Step366EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882],770⟩

private def s2Step366EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87],769⟩

private def s2Step366EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩

private def s2Step366FrontBank : WindowBank := ⟨s2Step366EntryFRow,s2Step366EntryGRow,s2Step366EntryFvRow,s2Step366EntryGvRow⟩

private def s2Step366Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 785, 768]

private def s2Step366Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 819, 769]

private def s2Step366Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 770]

private def s2Step366Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 903, 771]

private theorem s2Step366Counter_apart : Disjoint s2Step366HeadFvAfter.live s2Step366CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step366HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366Counter_borrowed : s2Step366HeadFvAfter.checkBorrow 4 s2Step366CounterWork=some s2Step366CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step366HeadFvAfter s2Step366CounterDuring s2Step366CounterWork.toFinset s2Step366Counter_bounded s2Step366Counter_apart rfl

private theorem s2Step366Counter_owned : (820::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step366HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step366HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366Counter_checked : compileHmrCounterStepLog s2Step366HeadFvAfter true 820 [772, 773, 774, 775, 776, 777] s2Step366CounterWork=some s2Step366CounterDuring := by
  have owned : ∀q∈820::[772, 773, 774, 775, 776, 777],q∈s2Step366HeadFvAfter.live := fun q hq => s2Step366Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step366Counter_borrowed

private def s2Step366EntryFAfter : Arena := s2Step366EntryFBefore

private theorem s2Step366EntryBank_incomingDistinct : ([s2Step366EntryFRow,s2Step366EntryGRow,s2Step366EntryFvRow,s2Step366EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366EntryF_Incoming : rowsOwned s2Step366EntryFBefore [s2Step366EntryFRow,s2Step366EntryGRow,s2Step366EntryFvRow,s2Step366EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step366EntryFRow,s2Step366EntryGRow,s2Step366EntryFvRow,s2Step366EntryGvRow] 0 s2Step366EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step366EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step366EntryBank_outgoingOwned : rowsOwned s2Step366EntryGvAfter [s2Step366EntryFOut,s2Step366EntryGOut,s2Step366EntryFvOut,s2Step366EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step366EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step366EntryF_Outgoing : rowsOwned s2Step366EntryGvAfter [s2Step366EntryFOut,s2Step366EntryGOut,s2Step366EntryFvOut,s2Step366EntryGvOut] :=
  hmrRows_owned_drop s2Step366EntryGvAfter [s2Step366EntryFOut,s2Step366EntryGOut,s2Step366EntryFvOut,s2Step366EntryGvOut] 0 s2Step366EntryBank_outgoingOwned

private theorem s2Step366EntryF_distinct : (s2Step366EntryFRow.sign::s2Step366EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366EntryF_owned : (s2Step366EntryFRow.sign::s2Step366EntryFRow.payload).toFinset⊆s2Step366EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step366EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366EntryF_reserved : s2Step366EntryFBefore.reserve s2Step366EntryFFresh.toFinset=some s2Step366EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step366EntryFFresh,arenaWires]
  · norm_num [s2Step366EntryFBefore,s2Step366EntryFFresh,arenaWires]
  · simp only [s2Step366EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step366EntryF_checked : planRowResizeLog s2Step366EntryFBefore s2Step366EntryFRow 88 s2Step366EntryFFresh=
    some (s2Step366EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599],768⟩,growRow 768 s2Step366EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step366EntryFBefore s2Step366EntryFAfter s2Step366EntryFRow 88 s2Step366EntryFFresh
    s2Step366EntryF_distinct s2Step366EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step366EntryF_reserved
  have rowEq : WindowRow.mk (s2Step366EntryFRow.payload++s2Step366EntryFFresh) s2Step366EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step366EntryFvAfter : Arena := s2Step366EntryFBefore

private def s2Step366EntryFvBefore : Arena := s2Step366EntryFBefore

private theorem s2Step366EntryFv_Incoming : rowsOwned s2Step366EntryFvBefore [s2Step366EntryFvRow,s2Step366EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step366EntryFRow,s2Step366EntryGRow,s2Step366EntryFvRow,s2Step366EntryGvRow] 2 s2Step366EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step366EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step366EntryFv_Outgoing : rowsOwned s2Step366EntryGvAfter [s2Step366EntryFvOut,s2Step366EntryGvOut] :=
  hmrRows_owned_drop s2Step366EntryGvAfter [s2Step366EntryFOut,s2Step366EntryGOut,s2Step366EntryFvOut,s2Step366EntryGvOut] 2 s2Step366EntryBank_outgoingOwned

private theorem s2Step366EntryFv_distinct : (s2Step366EntryFvRow.sign::s2Step366EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366EntryFv_owned : (s2Step366EntryFvRow.sign::s2Step366EntryFvRow.payload).toFinset⊆s2Step366EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step366EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366EntryFv_reserved : s2Step366EntryFvBefore.reserve s2Step366EntryFvFresh.toFinset=some s2Step366EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step366EntryFvFresh,arenaWires]
  · norm_num [s2Step366EntryFvBefore,s2Step366EntryFBefore,s2Step366EntryFvFresh,arenaWires]
  · simp only [s2Step366EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step366EntryFv_checked : planRowResizeLog s2Step366EntryFvBefore s2Step366EntryFvRow 198 s2Step366EntryFvFresh=
    some (s2Step366EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882],770⟩,growRow 770 s2Step366EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step366EntryFvBefore s2Step366EntryFvAfter s2Step366EntryFvRow 198 s2Step366EntryFvFresh
    s2Step366EntryFv_distinct s2Step366EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step366EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step366EntryFvRow.payload++s2Step366EntryFvFresh) s2Step366EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step366EntryGAfter : Arena := s2Step366EntryFBefore

private def s2Step366EntryGBefore : Arena := s2Step366EntryFBefore

private theorem s2Step366EntryG_Incoming : rowsOwned s2Step366EntryGBefore [s2Step366EntryGRow,s2Step366EntryFvRow,s2Step366EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step366EntryFRow,s2Step366EntryGRow,s2Step366EntryFvRow,s2Step366EntryGvRow] 1 s2Step366EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step366EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step366EntryG_Outgoing : rowsOwned s2Step366EntryGvAfter [s2Step366EntryGOut,s2Step366EntryFvOut,s2Step366EntryGvOut] :=
  hmrRows_owned_drop s2Step366EntryGvAfter [s2Step366EntryFOut,s2Step366EntryGOut,s2Step366EntryFvOut,s2Step366EntryGvOut] 1 s2Step366EntryBank_outgoingOwned

private theorem s2Step366EntryG_distinct : (s2Step366EntryGRow.sign::s2Step366EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366EntryG_owned : (s2Step366EntryGRow.sign::s2Step366EntryGRow.payload).toFinset⊆s2Step366EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step366EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366EntryG_reserved : s2Step366EntryGBefore.reserve s2Step366EntryGFresh.toFinset=some s2Step366EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step366EntryGFresh,arenaWires]
  · norm_num [s2Step366EntryGBefore,s2Step366EntryFBefore,s2Step366EntryGFresh,arenaWires]
  · simp only [s2Step366EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step366EntryG_checked : planRowResizeLog s2Step366EntryGBefore s2Step366EntryGRow 88 s2Step366EntryGFresh=
    some (s2Step366EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87],769⟩,growRow 769 s2Step366EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step366EntryGBefore s2Step366EntryGAfter s2Step366EntryGRow 88 s2Step366EntryGFresh
    s2Step366EntryG_distinct s2Step366EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step366EntryG_reserved
  have rowEq : WindowRow.mk (s2Step366EntryGRow.payload++s2Step366EntryGFresh) s2Step366EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step366EntryGvBefore : Arena := s2Step366EntryFBefore

private theorem s2Step366EntryGv_Incoming : rowsOwned s2Step366EntryGvBefore [s2Step366EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step366EntryFRow,s2Step366EntryGRow,s2Step366EntryFvRow,s2Step366EntryGvRow] 3 s2Step366EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step366EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step366EntryGv_Outgoing : rowsOwned s2Step366EntryGvAfter [s2Step366EntryGvOut] :=
  hmrRows_owned_drop s2Step366EntryGvAfter [s2Step366EntryFOut,s2Step366EntryGOut,s2Step366EntryFvOut,s2Step366EntryGvOut] 3 s2Step366EntryBank_outgoingOwned

private theorem s2Step366EntryGv_distinct : (s2Step366EntryGvRow.sign::s2Step366EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366EntryGv_owned : (s2Step366EntryGvRow.sign::s2Step366EntryGvRow.payload).toFinset⊆s2Step366EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step366EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366EntryGv_reserved : s2Step366EntryGvBefore.reserve s2Step366EntryGvFresh.toFinset=some s2Step366EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step366EntryGvFresh,arenaWires]
  · norm_num [s2Step366EntryGvBefore,s2Step366EntryFBefore,s2Step366EntryGvFresh,arenaWires]
  · simp only [s2Step366EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step366EntryGv_checked : planRowResizeLog s2Step366EntryGvBefore s2Step366EntryGvRow 198 s2Step366EntryGvFresh=
    some (s2Step366EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩,growRow 771 s2Step366EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step366EntryGvBefore s2Step366EntryGvAfter s2Step366EntryGvRow 198 s2Step366EntryGvFresh
    s2Step366EntryGv_distinct s2Step366EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step366EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step366EntryGvRow.payload++s2Step366EntryGvFresh) s2Step366EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step366EntryBank_rows : planWindowRowsLog s2Step366EntryFBefore [(s2Step366EntryFRow,88),(s2Step366EntryGRow,88),(s2Step366EntryFvRow,198),(s2Step366EntryGvRow,198)] [s2Step366EntryFFresh,s2Step366EntryGFresh,s2Step366EntryFvFresh,s2Step366EntryGvFresh]=
    some (s2Step366EntryGvAfter,[s2Step366EntryFOut,s2Step366EntryGOut,s2Step366EntryFvOut,s2Step366EntryGvOut],(growRow 768 s2Step366EntryFFresh ++ (growRow 769 s2Step366EntryGFresh ++ (growRow 770 s2Step366EntryFvFresh ++ (growRow 771 s2Step366EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step366EntryGvAfter [] []=some (s2Step366EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step366EntryGvBefore s2Step366EntryGvAfter s2Step366EntryGvAfter
    s2Step366EntryGvRow s2Step366EntryGvOut 198 s2Step366EntryGvFresh [] [] []
    (growRow 771 s2Step366EntryGvFresh) ([]) s2Step366EntryGv_Incoming s2Step366EntryGv_checked h4 s2Step366EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step366EntryFvBefore s2Step366EntryFvAfter s2Step366EntryGvAfter
    s2Step366EntryFvRow s2Step366EntryFvOut 198 s2Step366EntryFvFresh [(s2Step366EntryGvRow,198)] [s2Step366EntryGvFresh] [s2Step366EntryGvOut]
    (growRow 770 s2Step366EntryFvFresh) ((growRow 771 s2Step366EntryGvFresh ++ [])) s2Step366EntryFv_Incoming s2Step366EntryFv_checked h3 s2Step366EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step366EntryGBefore s2Step366EntryGAfter s2Step366EntryGvAfter
    s2Step366EntryGRow s2Step366EntryGOut 88 s2Step366EntryGFresh [(s2Step366EntryFvRow,198),(s2Step366EntryGvRow,198)] [s2Step366EntryFvFresh,s2Step366EntryGvFresh] [s2Step366EntryFvOut,s2Step366EntryGvOut]
    (growRow 769 s2Step366EntryGFresh) ((growRow 770 s2Step366EntryFvFresh ++ (growRow 771 s2Step366EntryGvFresh ++ []))) s2Step366EntryG_Incoming s2Step366EntryG_checked h2 s2Step366EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step366EntryFBefore s2Step366EntryFAfter s2Step366EntryGvAfter
    s2Step366EntryFRow s2Step366EntryFOut 88 s2Step366EntryFFresh [(s2Step366EntryGRow,88),(s2Step366EntryFvRow,198),(s2Step366EntryGvRow,198)] [s2Step366EntryGFresh,s2Step366EntryFvFresh,s2Step366EntryGvFresh] [s2Step366EntryGOut,s2Step366EntryFvOut,s2Step366EntryGvOut]
    (growRow 768 s2Step366EntryFFresh) ((growRow 769 s2Step366EntryGFresh ++ (growRow 770 s2Step366EntryFvFresh ++ (growRow 771 s2Step366EntryGvFresh ++ [])))) s2Step366EntryF_Incoming s2Step366EntryF_checked h1 s2Step366EntryF_Outgoing
  exact h0

private theorem s2Step366EntryBank_checked : compileHmrBankResizeLog .entry s2Step366EntryFBefore ⟨s2Step366EntryFRow,s2Step366EntryGRow,s2Step366EntryFvRow,s2Step366EntryGvRow⟩ ⟨88,88,198,198⟩ [s2Step366EntryFFresh,s2Step366EntryGFresh,s2Step366EntryFvFresh,s2Step366EntryGvFresh]=
    some (s2Step366EntryGvAfter,⟨s2Step366EntryFOut,s2Step366EntryGOut,s2Step366EntryFvOut,s2Step366EntryGvOut⟩,(growRow 768 s2Step366EntryFFresh ++ (growRow 769 s2Step366EntryGFresh ++ (growRow 770 s2Step366EntryFvFresh ++ (growRow 771 s2Step366EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step366EntryBank_rows]
  rfl

private def s2Step366ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366ExitFBefore : Arena := s2Step366ExitGAfter

private def s2Step366ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 785],768⟩

private def s2Step366ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847],770⟩

private def s2Step366ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 819],769⟩

private def s2Step366ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 903],771⟩

private theorem s2Step366ExitBank_incomingDistinct : ([s2Step366ExitGRow,s2Step366ExitFRow,s2Step366ExitFvRow,s2Step366ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366ExitF_Incoming : rowsOwned s2Step366ExitFBefore [s2Step366ExitFRow,s2Step366ExitFvRow,s2Step366ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step366ExitGRow,s2Step366ExitFRow,s2Step366ExitFvRow,s2Step366ExitGvRow] 1 s2Step366ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step366ExitFBefore (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step366ExitBank_outgoingOwned : rowsOwned s2Step366ExitGvAfter [s2Step366ExitGOut,s2Step366ExitFOut,s2Step366ExitFvOut,s2Step366ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step366ExitGvAfter (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step366ExitF_Outgoing : rowsOwned s2Step366ExitGvAfter [s2Step366ExitFOut,s2Step366ExitFvOut,s2Step366ExitGvOut] :=
  hmrRows_owned_drop s2Step366ExitGvAfter [s2Step366ExitGOut,s2Step366ExitFOut,s2Step366ExitFvOut,s2Step366ExitGvOut] 1 s2Step366ExitBank_outgoingOwned

private theorem s2Step366ExitF_distinct : (s2Step366ExitFRow.sign::s2Step366ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366ExitF_owned : (s2Step366ExitFRow.sign::s2Step366ExitFRow.payload).toFinset⊆s2Step366ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step366ExitFBefore (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366ExitF_retired : s2Step366ExitFBefore.retireSet s2Step366ExitFExtra.toFinset=s2Step366ExitFAfter := by
  unfold Arena.retireSet s2Step366ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step366ExitFBefore,s2Step366ExitGAfter,s2Step366ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step366ExitF_checked : planRowResizeLog s2Step366ExitFBefore s2Step366ExitFRow 88 []=
    some (s2Step366ExitFAfter,s2Step366ExitFOut,shrinkRow 768 s2Step366ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step366ExitFBefore s2Step366ExitFRow 88 s2Step366ExitF_distinct s2Step366ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step366ExitFRow.payload.take 88) s2Step366ExitFRow.sign=s2Step366ExitFOut := by decide +kernel
  have hi : s2Step366ExitFRow.payload.drop 88=s2Step366ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step366ExitF_retired] at result
  exact result

private def s2Step366ExitFvAfter : Arena := s2Step366ExitFAfter

private def s2Step366ExitFvBefore : Arena := s2Step366ExitFAfter

private theorem s2Step366ExitFv_Incoming : rowsOwned s2Step366ExitFvBefore [s2Step366ExitFvRow,s2Step366ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step366ExitGRow,s2Step366ExitFRow,s2Step366ExitFvRow,s2Step366ExitGvRow] 2 s2Step366ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step366ExitFvBefore (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step366ExitFv_Outgoing : rowsOwned s2Step366ExitGvAfter [s2Step366ExitFvOut,s2Step366ExitGvOut] :=
  hmrRows_owned_drop s2Step366ExitGvAfter [s2Step366ExitGOut,s2Step366ExitFOut,s2Step366ExitFvOut,s2Step366ExitGvOut] 2 s2Step366ExitBank_outgoingOwned

private theorem s2Step366ExitFv_distinct : (s2Step366ExitFvRow.sign::s2Step366ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366ExitFv_owned : (s2Step366ExitFvRow.sign::s2Step366ExitFvRow.payload).toFinset⊆s2Step366ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step366ExitFvBefore (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366ExitFv_reserved : s2Step366ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step366ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step366ExitFv_checked : planRowResizeLog s2Step366ExitFvBefore s2Step366ExitFvRow 199 []=
    some (s2Step366ExitFvAfter,s2Step366ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step366ExitFvBefore s2Step366ExitFvAfter s2Step366ExitFvRow 199 []
    s2Step366ExitFv_distinct s2Step366ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step366ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step366ExitFvRow.payload++[]) s2Step366ExitFvRow.sign=s2Step366ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step366ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step366ExitG_Incoming : rowsOwned s2Step366ExitGBefore [s2Step366ExitGRow,s2Step366ExitFRow,s2Step366ExitFvRow,s2Step366ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step366ExitGRow,s2Step366ExitFRow,s2Step366ExitFvRow,s2Step366ExitGvRow] 0 s2Step366ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step366ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step366ExitG_Outgoing : rowsOwned s2Step366ExitGvAfter [s2Step366ExitGOut,s2Step366ExitFOut,s2Step366ExitFvOut,s2Step366ExitGvOut] :=
  hmrRows_owned_drop s2Step366ExitGvAfter [s2Step366ExitGOut,s2Step366ExitFOut,s2Step366ExitFvOut,s2Step366ExitGvOut] 0 s2Step366ExitBank_outgoingOwned

private theorem s2Step366ExitG_distinct : (s2Step366ExitGRow.sign::s2Step366ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366ExitG_owned : (s2Step366ExitGRow.sign::s2Step366ExitGRow.payload).toFinset⊆s2Step366ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step366ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366ExitG_retired : s2Step366ExitGBefore.retireSet s2Step366ExitGExtra.toFinset=s2Step366ExitGAfter := by
  unfold Arena.retireSet s2Step366ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step366ExitGBefore,s2Step366ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step366ExitG_checked : planRowResizeLog s2Step366ExitGBefore s2Step366ExitGRow 87 []=
    some (s2Step366ExitGAfter,s2Step366ExitGOut,shrinkRow 769 s2Step366ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step366ExitGBefore s2Step366ExitGRow 87 s2Step366ExitG_distinct s2Step366ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step366ExitGRow.payload.take 87) s2Step366ExitGRow.sign=s2Step366ExitGOut := by decide +kernel
  have hi : s2Step366ExitGRow.payload.drop 87=s2Step366ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step366ExitG_retired] at result
  exact result

private def s2Step366ExitGvBefore : Arena := s2Step366ExitFAfter

private theorem s2Step366ExitGv_Incoming : rowsOwned s2Step366ExitGvBefore [s2Step366ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step366ExitGRow,s2Step366ExitFRow,s2Step366ExitFvRow,s2Step366ExitGvRow] 3 s2Step366ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step366ExitGvBefore (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step366ExitGv_Outgoing : rowsOwned s2Step366ExitGvAfter [s2Step366ExitGvOut] :=
  hmrRows_owned_drop s2Step366ExitGvAfter [s2Step366ExitGOut,s2Step366ExitFOut,s2Step366ExitFvOut,s2Step366ExitGvOut] 3 s2Step366ExitBank_outgoingOwned

private theorem s2Step366ExitGv_distinct : (s2Step366ExitGvRow.sign::s2Step366ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366ExitGv_owned : (s2Step366ExitGvRow.sign::s2Step366ExitGvRow.payload).toFinset⊆s2Step366ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step366ExitGvBefore (fun q => (0≤q ∧ q<87) ∨ (88≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366ExitGv_retired : s2Step366ExitGvBefore.retireSet s2Step366ExitGvExtra.toFinset=s2Step366ExitGvAfter := by
  unfold Arena.retireSet s2Step366ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step366ExitGvBefore,s2Step366ExitFAfter,s2Step366ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step366ExitGv_checked : planRowResizeLog s2Step366ExitGvBefore s2Step366ExitGvRow 198 []=
    some (s2Step366ExitGvAfter,s2Step366ExitGvOut,shrinkRow 771 s2Step366ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step366ExitGvBefore s2Step366ExitGvRow 198 s2Step366ExitGv_distinct s2Step366ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step366ExitGvRow.payload.take 198) s2Step366ExitGvRow.sign=s2Step366ExitGvOut := by decide +kernel
  have hi : s2Step366ExitGvRow.payload.drop 198=s2Step366ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step366ExitGv_retired] at result
  exact result

private theorem s2Step366ExitBank_rows : planWindowRowsLog s2Step366ExitGBefore [(s2Step366ExitGRow,87),(s2Step366ExitFRow,88),(s2Step366ExitFvRow,199),(s2Step366ExitGvRow,198)] [[],[],[],[]]=
    some (s2Step366ExitGvAfter,[s2Step366ExitGOut,s2Step366ExitFOut,s2Step366ExitFvOut,s2Step366ExitGvOut],(shrinkRow 769 s2Step366ExitGExtra ++ (shrinkRow 768 s2Step366ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step366ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step366ExitGvAfter [] []=some (s2Step366ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step366ExitGvBefore s2Step366ExitGvAfter s2Step366ExitGvAfter
    s2Step366ExitGvRow s2Step366ExitGvOut 198 [] [] [] []
    (shrinkRow 771 s2Step366ExitGvExtra) ([]) s2Step366ExitGv_Incoming s2Step366ExitGv_checked h4 s2Step366ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step366ExitFvBefore s2Step366ExitFvAfter s2Step366ExitGvAfter
    s2Step366ExitFvRow s2Step366ExitFvOut 199 [] [(s2Step366ExitGvRow,198)] [[]] [s2Step366ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step366ExitGvExtra ++ [])) s2Step366ExitFv_Incoming s2Step366ExitFv_checked h3 s2Step366ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step366ExitFBefore s2Step366ExitFAfter s2Step366ExitGvAfter
    s2Step366ExitFRow s2Step366ExitFOut 88 [] [(s2Step366ExitFvRow,199),(s2Step366ExitGvRow,198)] [[],[]] [s2Step366ExitFvOut,s2Step366ExitGvOut]
    (shrinkRow 768 s2Step366ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step366ExitGvExtra ++ []))) s2Step366ExitF_Incoming s2Step366ExitF_checked h2 s2Step366ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step366ExitGBefore s2Step366ExitGAfter s2Step366ExitGvAfter
    s2Step366ExitGRow s2Step366ExitGOut 87 [] [(s2Step366ExitFRow,88),(s2Step366ExitFvRow,199),(s2Step366ExitGvRow,198)] [[],[],[]] [s2Step366ExitFOut,s2Step366ExitFvOut,s2Step366ExitGvOut]
    (shrinkRow 769 s2Step366ExitGExtra) ((shrinkRow 768 s2Step366ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step366ExitGvExtra ++ [])))) s2Step366ExitG_Incoming s2Step366ExitG_checked h1 s2Step366ExitG_Outgoing
  exact h0

private theorem s2Step366ExitBank_checked : compileHmrBankResizeLog .exit s2Step366ExitGBefore ⟨s2Step366ExitFRow,s2Step366ExitGRow,s2Step366ExitFvRow,s2Step366ExitGvRow⟩ ⟨88,87,199,198⟩ [[],[],[],[]]=
    some (s2Step366ExitGvAfter,⟨s2Step366ExitFOut,s2Step366ExitGOut,s2Step366ExitFvOut,s2Step366ExitGvOut⟩,(shrinkRow 769 s2Step366ExitGExtra ++ (shrinkRow 768 s2Step366ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step366ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step366ExitBank_rows]
  rfl

private theorem s2Step366Add0_apart : Disjoint s2Step366Add0Arena.live s2Step366Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step366Add0Arena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366Add0_card : s2Step366Add0Arena.live.card=906 := by
  decide +kernel

private theorem s2Step366Add0_borrowed : s2Step366Add0Arena.checkBorrow (hmrHybridCount s2Step366Add0Arena s2Step366Add0B.length) s2Step366Add0Work=some s2Step366Add0During := by
  have len : s2Step366Add0Work.length=hmrHybridCount s2Step366Add0Arena s2Step366Add0B.length := by
    rw [hmrHybridCount,s2Step366Add0_card]
    decide +kernel
  have nd : s2Step366Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step366Add0Arena s2Step366Add0During s2Step366Add0Work.toFinset s2Step366Add0_bounded s2Step366Add0_apart rfl

private theorem s2Step366Add0_distinct : (831::797::812::(s2Step366Add0A++s2Step366Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366Add0_owned : (831::797::812::(s2Step366Add0A++s2Step366Add0B)).toFinset⊆s2Step366Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step366Add0Arena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366Add0_checked : compileHmrHybridCinLog s2Step366Add0Arena 797 831 812 s2Step366Add0A s2Step366Add0B s2Step366Add0Work=some s2Step366Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step366Add0Arena s2Step366Add0During 797 831 812 s2Step366Add0A s2Step366Add0B s2Step366Add0Work
    (by decide +kernel) (by decide +kernel) s2Step366Add0_distinct
    (fun q hq => s2Step366Add0_owned (List.mem_toFinset.mpr hq)) s2Step366Add0_borrowed

private theorem s2Step366Add1_apart : Disjoint s2Step366Add1Arena.live s2Step366Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step366Add1Arena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366Add1_card : s2Step366Add1Arena.live.card=906 := by
  decide +kernel

private theorem s2Step366Add1_borrowed : s2Step366Add1Arena.checkBorrow (hmrHybridCount s2Step366Add1Arena s2Step366Add1B.length) s2Step366Add1Work=some s2Step366Add1During := by
  have len : s2Step366Add1Work.length=hmrHybridCount s2Step366Add1Arena s2Step366Add1B.length := by
    rw [hmrHybridCount,s2Step366Add1_card]
    decide +kernel
  have nd : s2Step366Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step366Add1Arena s2Step366Add1During s2Step366Add1Work.toFinset s2Step366Add1_bounded s2Step366Add1_apart rfl

private theorem s2Step366Add1_distinct : (831::797::812::(s2Step366Add1A++s2Step366Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366Add1_owned : (831::797::812::(s2Step366Add1A++s2Step366Add1B)).toFinset⊆s2Step366Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step366Add1Arena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366Add1_checked : compileHmrHybridCinLog s2Step366Add1Arena 797 831 812 s2Step366Add1A s2Step366Add1B s2Step366Add1Work=some s2Step366Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step366Add1Arena s2Step366Add1During 797 831 812 s2Step366Add1A s2Step366Add1B s2Step366Add1Work
    (by decide +kernel) (by decide +kernel) s2Step366Add1_distinct
    (fun q hq => s2Step366Add1_owned (List.mem_toFinset.mpr hq)) s2Step366Add1_borrowed

private theorem s2Step366F4_apart : Disjoint (s2Step366Add0A++s2Step366Add0B).toFinset (s2Step366Add1A++s2Step366Add1B).toFinset := by
  have nd : ((s2Step366Add0A++s2Step366Add0B)++(s2Step366Add1A++s2Step366Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step366F4_carry : s2Step366F4FlagArena.checkBorrow 1 [812]=some s2Step366Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step366F4FlagArena,s2Step366HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step366F4FlagArena,s2Step366HeadFvAfter,s2Step366Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step366F4_distinct : (820::797::831::812::((s2Step366Add0A++s2Step366Add1A)++(s2Step366Add0B++s2Step366Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366F4_flag : s2Step366HeadFvAfter.checkBorrow 1 [831]=some s2Step366F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step366HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step366F4_owned : (820::797::((s2Step366Add0A++s2Step366Add1A)++(s2Step366Add0B++s2Step366Add1B))).toFinset⊆s2Step366HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step366HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366F4_checked : compileHmrHybridF4Log s2Step366HeadFvAfter 820 797 s2Step366Add0A s2Step366Add0B s2Step366Add1A s2Step366Add1B [831] [812] s2Step366Add0Work s2Step366Add1Work=some s2Step366F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step366HeadFvAfter s2Step366F4FlagArena s2Step366Add0Arena s2Step366Add0During s2Step366Add1During 820 797
    s2Step366Add0A s2Step366Add0B s2Step366Add1A s2Step366Add1B [831] [812] s2Step366Add0Work s2Step366Add1Work
    (fun q hq => s2Step366F4_owned (List.mem_toFinset.mpr hq)) s2Step366F4_flag s2Step366F4_carry
    s2Step366F4_distinct s2Step366F4_apart s2Step366Add0_checked s2Step366Add1_checked

private theorem s2Step366Front_branch : s2Step366FrontSigmaArena.checkBorrow 1 [797]=some s2Step366HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step366FrontSigmaArena,s2Step366EntryGvAfter,s2Step366EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step366FrontSigmaArena,s2Step366EntryGvAfter,s2Step366EntryFBefore,s2Step366HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step366Front_entry : HmrFrontEntryValid s2Step366EntryFBefore s2Step366FrontBank 88 198 ⟨88,87,199,198⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step366FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step366EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step366EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step366FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step366Front_sigma : s2Step366EntryGvAfter.checkBorrow 1 [820]=some s2Step366FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step366EntryGvAfter,s2Step366EntryFBefore,arenaWires]
  · rfl

private def s2Step366HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366HeadFBefore : Arena := s2Step366HeadGAfter

private def s2Step366HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599],768⟩

private def s2Step366HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882],770⟩

private def s2Step366HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87],769⟩

private def s2Step366HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩

private theorem s2Step366HeadBank_incomingDistinct : ([s2Step366HeadGRow,s2Step366HeadFRow,s2Step366HeadGvRow,s2Step366HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366HeadF_Incoming : rowsOwned s2Step366HeadFBefore [s2Step366HeadFRow,s2Step366HeadGvRow,s2Step366HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step366HeadGRow,s2Step366HeadFRow,s2Step366HeadGvRow,s2Step366HeadFvRow] 1 s2Step366HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step366HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step366HeadBank_outgoingOwned : rowsOwned s2Step366HeadFvAfter [s2Step366HeadGOut,s2Step366HeadFOut,s2Step366HeadGvOut,s2Step366HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step366HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step366HeadF_Outgoing : rowsOwned s2Step366HeadFvAfter [s2Step366HeadFOut,s2Step366HeadGvOut,s2Step366HeadFvOut] :=
  hmrRows_owned_drop s2Step366HeadFvAfter [s2Step366HeadGOut,s2Step366HeadFOut,s2Step366HeadGvOut,s2Step366HeadFvOut] 1 s2Step366HeadBank_outgoingOwned

private theorem s2Step366HeadF_distinct : (s2Step366HeadFRow.sign::s2Step366HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366HeadF_owned : (s2Step366HeadFRow.sign::s2Step366HeadFRow.payload).toFinset⊆s2Step366HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step366HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366HeadF_reserved : s2Step366HeadFBefore.reserve s2Step366HeadFFresh.toFinset=some s2Step366HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step366HeadFFresh,arenaWires]
  · norm_num [s2Step366HeadFBefore,s2Step366HeadGAfter,s2Step366HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step366HeadFAfter,s2Step366HeadFBefore,s2Step366HeadGAfter,s2Step366HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step366HeadF_checked : planRowResizeLog s2Step366HeadFBefore s2Step366HeadFRow 89 s2Step366HeadFFresh=
    some (s2Step366HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 785],768⟩,growRow 768 s2Step366HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step366HeadFBefore s2Step366HeadFAfter s2Step366HeadFRow 89 s2Step366HeadFFresh
    s2Step366HeadF_distinct s2Step366HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step366HeadF_reserved
  have rowEq : WindowRow.mk (s2Step366HeadFRow.payload++s2Step366HeadFFresh) s2Step366HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 785],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step366HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step366HeadFvBefore : Arena := s2Step366HeadGvAfter

private theorem s2Step366HeadFv_Incoming : rowsOwned s2Step366HeadFvBefore [s2Step366HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step366HeadGRow,s2Step366HeadFRow,s2Step366HeadGvRow,s2Step366HeadFvRow] 3 s2Step366HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step366HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step366HeadFv_Outgoing : rowsOwned s2Step366HeadFvAfter [s2Step366HeadFvOut] :=
  hmrRows_owned_drop s2Step366HeadFvAfter [s2Step366HeadGOut,s2Step366HeadFOut,s2Step366HeadGvOut,s2Step366HeadFvOut] 3 s2Step366HeadBank_outgoingOwned

private theorem s2Step366HeadFv_distinct : (s2Step366HeadFvRow.sign::s2Step366HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366HeadFv_owned : (s2Step366HeadFvRow.sign::s2Step366HeadFvRow.payload).toFinset⊆s2Step366HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step366HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366HeadFv_reserved : s2Step366HeadFvBefore.reserve s2Step366HeadFvFresh.toFinset=some s2Step366HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step366HeadFvFresh,arenaWires]
  · norm_num [s2Step366HeadFvBefore,s2Step366HeadGvAfter,s2Step366HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step366HeadFvAfter,s2Step366HeadFvBefore,s2Step366HeadGvAfter,s2Step366HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step366HeadFv_checked : planRowResizeLog s2Step366HeadFvBefore s2Step366HeadFvRow 199 s2Step366HeadFvFresh=
    some (s2Step366HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847],770⟩,growRow 770 s2Step366HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step366HeadFvBefore s2Step366HeadFvAfter s2Step366HeadFvRow 199 s2Step366HeadFvFresh
    s2Step366HeadFv_distinct s2Step366HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step366HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step366HeadFvRow.payload++s2Step366HeadFvFresh) s2Step366HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step366HeadG_Incoming : rowsOwned s2Step366HeadGBefore [s2Step366HeadGRow,s2Step366HeadFRow,s2Step366HeadGvRow,s2Step366HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step366HeadGRow,s2Step366HeadFRow,s2Step366HeadGvRow,s2Step366HeadFvRow] 0 s2Step366HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step366HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step366HeadG_Outgoing : rowsOwned s2Step366HeadFvAfter [s2Step366HeadGOut,s2Step366HeadFOut,s2Step366HeadGvOut,s2Step366HeadFvOut] :=
  hmrRows_owned_drop s2Step366HeadFvAfter [s2Step366HeadGOut,s2Step366HeadFOut,s2Step366HeadGvOut,s2Step366HeadFvOut] 0 s2Step366HeadBank_outgoingOwned

private theorem s2Step366HeadG_distinct : (s2Step366HeadGRow.sign::s2Step366HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366HeadG_owned : (s2Step366HeadGRow.sign::s2Step366HeadGRow.payload).toFinset⊆s2Step366HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step366HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366HeadG_reserved : s2Step366HeadGBefore.reserve s2Step366HeadGFresh.toFinset=some s2Step366HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step366HeadGFresh,arenaWires]
  · norm_num [s2Step366HeadGBefore,s2Step366HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step366HeadGAfter,s2Step366HeadGBefore,s2Step366HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step366HeadG_checked : planRowResizeLog s2Step366HeadGBefore s2Step366HeadGRow 89 s2Step366HeadGFresh=
    some (s2Step366HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 819],769⟩,growRow 769 s2Step366HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step366HeadGBefore s2Step366HeadGAfter s2Step366HeadGRow 89 s2Step366HeadGFresh
    s2Step366HeadG_distinct s2Step366HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step366HeadG_reserved
  have rowEq : WindowRow.mk (s2Step366HeadGRow.payload++s2Step366HeadGFresh) s2Step366HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 819],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step366HeadGvBefore : Arena := s2Step366HeadFAfter

private theorem s2Step366HeadGv_Incoming : rowsOwned s2Step366HeadGvBefore [s2Step366HeadGvRow,s2Step366HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step366HeadGRow,s2Step366HeadFRow,s2Step366HeadGvRow,s2Step366HeadFvRow] 2 s2Step366HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step366HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step366HeadGv_Outgoing : rowsOwned s2Step366HeadFvAfter [s2Step366HeadGvOut,s2Step366HeadFvOut] :=
  hmrRows_owned_drop s2Step366HeadFvAfter [s2Step366HeadGOut,s2Step366HeadFOut,s2Step366HeadGvOut,s2Step366HeadFvOut] 2 s2Step366HeadBank_outgoingOwned

private theorem s2Step366HeadGv_distinct : (s2Step366HeadGvRow.sign::s2Step366HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step366HeadGv_owned : (s2Step366HeadGvRow.sign::s2Step366HeadGvRow.payload).toFinset⊆s2Step366HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step366HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step366HeadGv_reserved : s2Step366HeadGvBefore.reserve s2Step366HeadGvFresh.toFinset=some s2Step366HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step366HeadGvFresh,arenaWires]
  · norm_num [s2Step366HeadGvBefore,s2Step366HeadFAfter,s2Step366HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step366HeadGvAfter,s2Step366HeadGvBefore,s2Step366HeadFAfter,s2Step366HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step366HeadGv_checked : planRowResizeLog s2Step366HeadGvBefore s2Step366HeadGvRow 199 s2Step366HeadGvFresh=
    some (s2Step366HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 903],771⟩,growRow 771 s2Step366HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step366HeadGvBefore s2Step366HeadGvAfter s2Step366HeadGvRow 199 s2Step366HeadGvFresh
    s2Step366HeadGv_distinct s2Step366HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step366HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step366HeadGvRow.payload++s2Step366HeadGvFresh) s2Step366HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 903],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step366HeadBank_rows : planWindowRowsLog s2Step366HeadGBefore [(s2Step366HeadGRow,89),(s2Step366HeadFRow,89),(s2Step366HeadGvRow,199),(s2Step366HeadFvRow,199)] [s2Step366HeadGFresh,s2Step366HeadFFresh,s2Step366HeadGvFresh,s2Step366HeadFvFresh]=
    some (s2Step366HeadFvAfter,[s2Step366HeadGOut,s2Step366HeadFOut,s2Step366HeadGvOut,s2Step366HeadFvOut],(growRow 769 s2Step366HeadGFresh ++ (growRow 768 s2Step366HeadFFresh ++ (growRow 771 s2Step366HeadGvFresh ++ (growRow 770 s2Step366HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step366HeadFvAfter [] []=some (s2Step366HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step366HeadFvBefore s2Step366HeadFvAfter s2Step366HeadFvAfter
    s2Step366HeadFvRow s2Step366HeadFvOut 199 s2Step366HeadFvFresh [] [] []
    (growRow 770 s2Step366HeadFvFresh) ([]) s2Step366HeadFv_Incoming s2Step366HeadFv_checked h4 s2Step366HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step366HeadGvBefore s2Step366HeadGvAfter s2Step366HeadFvAfter
    s2Step366HeadGvRow s2Step366HeadGvOut 199 s2Step366HeadGvFresh [(s2Step366HeadFvRow,199)] [s2Step366HeadFvFresh] [s2Step366HeadFvOut]
    (growRow 771 s2Step366HeadGvFresh) ((growRow 770 s2Step366HeadFvFresh ++ [])) s2Step366HeadGv_Incoming s2Step366HeadGv_checked h3 s2Step366HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step366HeadFBefore s2Step366HeadFAfter s2Step366HeadFvAfter
    s2Step366HeadFRow s2Step366HeadFOut 89 s2Step366HeadFFresh [(s2Step366HeadGvRow,199),(s2Step366HeadFvRow,199)] [s2Step366HeadGvFresh,s2Step366HeadFvFresh] [s2Step366HeadGvOut,s2Step366HeadFvOut]
    (growRow 768 s2Step366HeadFFresh) ((growRow 771 s2Step366HeadGvFresh ++ (growRow 770 s2Step366HeadFvFresh ++ []))) s2Step366HeadF_Incoming s2Step366HeadF_checked h2 s2Step366HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step366HeadGBefore s2Step366HeadGAfter s2Step366HeadFvAfter
    s2Step366HeadGRow s2Step366HeadGOut 89 s2Step366HeadGFresh [(s2Step366HeadFRow,89),(s2Step366HeadGvRow,199),(s2Step366HeadFvRow,199)] [s2Step366HeadFFresh,s2Step366HeadGvFresh,s2Step366HeadFvFresh] [s2Step366HeadFOut,s2Step366HeadGvOut,s2Step366HeadFvOut]
    (growRow 769 s2Step366HeadGFresh) ((growRow 768 s2Step366HeadFFresh ++ (growRow 771 s2Step366HeadGvFresh ++ (growRow 770 s2Step366HeadFvFresh ++ [])))) s2Step366HeadG_Incoming s2Step366HeadG_checked h1 s2Step366HeadG_Outgoing
  exact h0

private theorem s2Step366HeadBank_checked : compileHmrBankResizeLog .headroom s2Step366HeadGBefore ⟨s2Step366HeadFRow,s2Step366HeadGRow,s2Step366HeadFvRow,s2Step366HeadGvRow⟩ ⟨89,89,199,199⟩ [s2Step366HeadGFresh,s2Step366HeadFFresh,s2Step366HeadGvFresh,s2Step366HeadFvFresh]=
    some (s2Step366HeadFvAfter,⟨s2Step366HeadFOut,s2Step366HeadGOut,s2Step366HeadFvOut,s2Step366HeadGvOut⟩,(growRow 769 s2Step366HeadGFresh ++ (growRow 768 s2Step366HeadFFresh ++ (growRow 771 s2Step366HeadGvFresh ++ (growRow 770 s2Step366HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step366HeadBank_rows]
  rfl

private theorem s2Step366Front_checked : compileHmrSourceFrontLog s2Step366EntryFBefore s2Step366FrontBank 88 198 ⟨88,87,199,198⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step366FrontLog=some s2Step366FrontPlan := by
  have pairEq : s2Step366FrontPair=⟨s2Step366HeadFRow,s2Step366HeadGRow,s2Step366HeadFvRow,s2Step366HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step366FrontHead=⟨s2Step366ExitFRow,s2Step366ExitGRow,s2Step366ExitFvRow,s2Step366ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step366Add0A=s2Step366FrontHead.f.wires := by decide +kernel
  have gEq : s2Step366Add0B=s2Step366FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step366Add1A=s2Step366FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step366Add1B=s2Step366FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step366EntryFBefore s2Step366FrontBank 88 198 ⟨88,87,199,198⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step366FrontLog s2Step366FrontPlan
  · exact s2Step366Front_entry
  · exact s2Step366EntryBank_checked
  · exact s2Step366Front_sigma
  · rfl
  · exact s2Step366Front_branch
  · rfl
  · simpa only [s2Step366FrontPlan,pairEq] using s2Step366HeadBank_checked
  · simpa only [s2Step366FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step366F4_checked
  · exact s2Step366Counter_checked
  · rfl
  · simpa only [s2Step366FrontPlan,headEq] using s2Step366ExitBank_checked

private theorem s2Step366Complete_explicit_checked : compileHmrEarlyStepLog s2Step366EntryFBefore s2Step366FrontBank 88 198 ⟨88,87,199,198⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step366CompleteLog=some s2Step366CompletePlan := by
  let Q := s2Step366EarlyControlPlan
  have hq := s2Step366EarlyControl_plan_checked
  have fv1 : s2Step366CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step366CompleteOut.fv.payload[2]?.getD s2Step366CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step366CompleteOut.fv.payload[3]?.getD s2Step366CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step366CompleteOut.fv.payload[4]?.getD s2Step366CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step366EntryFBefore s2Step366EarlyControlArena s2Step366FrontBank 88 198 ⟨88,87,199,198⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step366CompleteLog s2Step366FrontPlan Q
    s2Step366Front_checked s2Step366Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step366Complete_owned s2Step366Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step366EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 820 s2Step366CompleteOut.fv.second (s2Step366CompleteOut.fv.payload[2]?.getD s2Step366CompleteOut.fv.sign) (s2Step366CompleteOut.fv.payload[3]?.getD s2Step366CompleteOut.fv.sign) (s2Step366CompleteOut.fv.payload[4]?.getD s2Step366CompleteOut.fv.sign) 797 60 s2Step366EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep366Arena : Arena := s2Step366EntryFBefore
def s2PrivateStep366Bank : WindowBank := s2Step366FrontBank
def s2PrivateStep366Spec : HmrSourceWalkStepLog := ⟨88,198,⟨88,87,199,198⟩,60,.early s2Step366CompleteLog⟩
def s2PrivateStep366Plan : HmrSourceStepPlan := .early s2Step366CompletePlan
theorem s2PrivateStep366_source : s2PrivateStep366Spec=s2ObservedLogs352[14] := rfl
theorem s2PrivateStep366_checked : compileHmrSourceStepLog s2PrivateStep366Arena s2PrivateStep366Bank
    s2PrivateStep366Spec.fgWidth s2PrivateStep366Spec.vWidth s2PrivateStep366Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 366 s2PrivateStep366Spec.need none s2PrivateStep366Spec.log=some s2PrivateStep366Plan := by
  change compileHmrSourceStepLog s2Step366EntryFBefore s2Step366FrontBank 88 198 ⟨88,87,199,198⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 366 60 none (.early s2Step366CompleteLog)=some (.early s2Step366CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 366<498)]
  rw [s2Step366Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
