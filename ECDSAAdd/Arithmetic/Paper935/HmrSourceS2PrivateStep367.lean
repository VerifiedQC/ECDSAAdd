import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep365
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

private def s2Step367CompleteMoves : List (Wire × Wire) := [(826,599)]

private def s2Step367EarlyControlLog : HmrEarlyControlLog := ⟨[826, 831, 819, 797, 785],[796],[783],[800, 789, 827, 844, 907, 913],[]⟩

private def s2Step367FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [797], [], [820]],[[785], [819], [831], [812]],[[], [], [], []]⟩,[805],[903],[796],[783],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[796, 783, 800, 789]⟩

private def s2Step367CompleteLog : HmrEarlyStepLog := ⟨s2Step367FrontLog,s2Step367CompleteMoves,s2Step367EarlyControlLog⟩

private def s2Step367ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩

private def s2Step367ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812],770⟩

private def s2Step367ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86],769⟩

private def s2Step367ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820],771⟩

private def s2Step367FrontOut : WindowBank := ⟨s2Step367ExitFOut,s2Step367ExitGOut,s2Step367ExitFvOut,s2Step367ExitGvOut⟩

private def s2Step367CompleteOut : WindowBank := s2Step367FrontOut.repacked s2Step367CompleteMoves

private def s2Step367EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step367EarlyControlPositiveArena,[796],s2Step367EarlyControlEqualityArena,[783],⟨⟨805,false⟩,[⟨⟨796,false⟩,783⟩]⟩⟩

private def s2Step367EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step367EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step367EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,826⟩,⟨⟨774,false⟩,831⟩,⟨⟨775,false⟩,819⟩,⟨⟨776,false⟩,797⟩,⟨⟨777,false⟩,785⟩]⟩

private def s2Step367EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step367EarlyControlZeroArena,s2Step367EarlyControlZeroPlan,s2Step367EarlyControlClassPlan,s2Step367EarlyControlFlagArena,s2Step367EarlyControlFittedArena,s2Step367EarlyControlHistoryArena,s2Step367EarlyControlSigmaArena,s2Step367EarlyControlOutputArena,s2Step367EarlyControlLog⟩

private def s2Step367CounterWork : List Wire := [796, 783, 800, 789]

private theorem s2Step367Counter_bounded : s2Step367CounterWork.toFinset⊆arenaWires := by norm_num [s2Step367CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step367HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367CounterDuring : Arena := ⟨s2Step367HeadFvAfter.live∪s2Step367CounterWork.toFinset,Finset.union_subset s2Step367HeadFvAfter.bounded s2Step367Counter_bounded⟩

private def s2Step367EntryFFresh : List Wire := []

private def s2Step367EntryFvFresh : List Wire := []

private def s2Step367EntryGFresh : List Wire := [797]

private def s2Step367EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367EntryGvFresh : List Wire := [820]

private def s2Step367ExitFExtra : List Wire := [599, 819]

private def s2Step367ExitGExtra : List Wire := [797, 785]

private def s2Step367ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<599) ∨ (600≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367ExitGvExtra : List Wire := [831]

private def s2Step367Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367Add0Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step367Add0_bounded : s2Step367Add0Work.toFinset⊆arenaWires := by
  have h : s2Step367Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step367Add0During : Arena := ⟨s2Step367Add0Arena.live∪s2Step367Add0Work.toFinset,Finset.union_subset s2Step367Add0Arena.bounded s2Step367Add0_bounded⟩

private def s2Step367Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367Add1Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step367Add1_bounded : s2Step367Add1Work.toFinset⊆arenaWires := by
  have h : s2Step367Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step367Add1During : Arena := ⟨s2Step367Add1Arena.live∪s2Step367Add1Work.toFinset,Finset.union_subset s2Step367Add1Arena.bounded s2Step367Add1_bounded⟩

private def s2Step367F4FlagArena : Arena := ⟨s2Step367HeadFvAfter.live∪{796},Finset.union_subset s2Step367HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step367F4Plan : HmrHybridF4Plan := ⟨s2Step367F4FlagArena,[796],s2Step367Add0Arena,[783],s2Step367Add0During,s2Step367Add0Work,s2Step367Add1During,s2Step367Add1Work⟩

private def s2Step367HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 819],768⟩

private def s2Step367HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812],770⟩

private def s2Step367HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 797, 785],769⟩

private def s2Step367HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 831],771⟩

private def s2Step367FrontHead : WindowBank := ⟨s2Step367HeadFOut,s2Step367HeadGOut,s2Step367HeadFvOut,s2Step367HeadGvOut⟩

private def s2Step367EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599],768⟩

private def s2Step367EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847],770⟩

private def s2Step367EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 797],769⟩

private def s2Step367EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820],771⟩

private def s2Step367FrontPair : WindowBank := ⟨s2Step367EntryFOut,s2Step367EntryGOut,s2Step367EntryFvOut,s2Step367EntryGvOut⟩

private def s2Step367FrontSigmaArena : Arena := ⟨s2Step367EntryGvAfter.live∪{805},Finset.union_subset s2Step367EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step367HeadFFresh : List Wire := [819]

private def s2Step367HeadFvFresh : List Wire := [812]

private def s2Step367HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367HeadGFresh : List Wire := [785]

private def s2Step367HeadGvFresh : List Wire := [831]

private def s2Step367FrontPlan : HmrSourceFront := ⟨s2Step367EntryGvAfter,s2Step367FrontPair,(growRow 768 s2Step367EntryFFresh ++ (growRow 769 s2Step367EntryGFresh ++ (growRow 770 s2Step367EntryFvFresh ++ (growRow 771 s2Step367EntryGvFresh ++ [])))),s2Step367FrontSigmaArena,[805],s2Step367HeadGBefore,[903],
  s2Step367HeadFvAfter,s2Step367FrontHead,(growRow 769 s2Step367HeadGFresh ++ (growRow 768 s2Step367HeadFFresh ++ (growRow 771 s2Step367HeadGvFresh ++ (growRow 770 s2Step367HeadFvFresh ++ [])))),s2Step367F4Plan,s2Step367CounterDuring,s2Step367CounterWork,s2Step367ExitGvAfter,s2Step367FrontOut,(shrinkRow 769 s2Step367ExitGExtra ++ (shrinkRow 768 s2Step367ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step367ExitGvExtra ++ []))))⟩

private def s2Step367CompletePlan : HmrEarlyStepPlan := ⟨s2Step367FrontPlan,s2Step367EarlyControlArena,s2Step367EarlyControlPlan,s2Step367CompleteMoves⟩

private theorem s2Step367Complete_apart : List.Disjoint (s2Step367CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [805, 903, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step367CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[805, 903, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step367Complete_owned : (s2Step367CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step367EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step367EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step367CompleteMoveArena : Arena := ⟨s2Step367ExitGvAfter.live∪{599},Finset.union_subset s2Step367ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step367Complete_repack : s2Step367ExitGvAfter.checkRepack s2Step367CompleteMoves=some s2Step367EarlyControlArena := by
  have owned : 826∈s2Step367ExitGvAfter.live := by norm_num [s2Step367ExitGvAfter,arenaWires]
  have reserve : s2Step367ExitGvAfter.reserve {599}=some s2Step367CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step367ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step367CompleteMoveArena.retireSet {826}=s2Step367EarlyControlArena := by
    unfold Arena.retireSet s2Step367EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step367CompleteMoveArena,s2Step367ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step367CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step367CompleteMoveArena.retireSet {826}).checkRepack []=some s2Step367EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step367EarlyControl_branchOwned : ([903] : List Wire).toFinset⊆s2Step367EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step367EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367EarlyControl_branch : compileHmrBranchRetirement s2Step367EarlyControlSigmaArena 903=some s2Step367EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step367EarlyControl_branchOwned
  · ext q
    simp [s2Step367EarlyControlOutputArena,s2Step367EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step367EarlyControl_classEqualityBorrow : s2Step367EarlyControlPositiveArena.checkBorrow (([805, 796] : List Wire).length-1) s2Step367EarlyControlLog.classWork=some s2Step367EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step367EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step367EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step367EarlyControlEqualityArena,s2Step367EarlyControlPositiveArena,s2Step367EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step367EarlyControl_classEqualityOwned : ([805, 796] : List Wire).toFinset⊆s2Step367EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step367EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367EarlyControl_classEquality : compileHmrEqualityLog s2Step367EarlyControlPositiveArena [805, 796] 0 s2Step367EarlyControlLog.classWork=some (s2Step367EarlyControlEqualityArena,s2Step367EarlyControlLog.classWork,s2Step367EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step367EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step367EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step367EarlyControl_classOwned : ([777, 785, 805] : List Wire).toFinset⊆s2Step367EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step367EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367EarlyControl_positiveBorrow : s2Step367EarlyControlZeroArena.checkBorrow (1) s2Step367EarlyControlLog.positiveWork=some s2Step367EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step367EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step367EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step367EarlyControlPositiveArena,s2Step367EarlyControlZeroArena,s2Step367EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step367EarlyControl_class : compileHmrSourceClassLog s2Step367EarlyControlZeroArena false 777 s2Step367EarlyControlZeroPlan.top 0 805 s2Step367EarlyControlLog.positiveWork s2Step367EarlyControlLog.classWork=some s2Step367EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step367EarlyControlClassPlan s2Step367EarlyControlZeroArena false 777 s2Step367EarlyControlZeroPlan.top 0 805
  constructor
  · decide +kernel
  · exact s2Step367EarlyControl_classOwned
  · exact s2Step367EarlyControl_positiveBorrow
  · exact s2Step367EarlyControl_classEquality

private theorem s2Step367EarlyControl_entryRecordOwned : ([903, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step367EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step367EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367EarlyControl_entrySigmaOwned : ([805, 254] : List Wire).toFinset⊆s2Step367EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step367EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367EarlyControl_fitBorrow : s2Step367EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step367EarlyControlLog.recordFresh=some s2Step367EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step367EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step367EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
      decide +kernel
    · ext q
      simp [s2Step367EarlyControlFittedArena,s2Step367EarlyControlFlagArena,s2Step367EarlyControlLog,arenaWires]

private theorem s2Step367EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step367EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step367EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step367EarlyControl_fit : compileHmrRecordGrowLog s2Step367EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step367EarlyControlLog.recordFresh=some s2Step367EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step367EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step367EarlyControl_fitBorrow

private theorem s2Step367EarlyControl_flagsBorrow : s2Step367EarlyControlEqualityArena.checkBorrow (6) s2Step367EarlyControlLog.flagWork=some s2Step367EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step367EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step367EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step367EarlyControlFlagArena,s2Step367EarlyControlEqualityArena,s2Step367EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step367EarlyControl_flagsOwned : ([783, 253, 252, 251] : List Wire).toFinset⊆s2Step367EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step367EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367EarlyControl_flags : compileHmrFlagsLog s2Step367EarlyControlClassPlan.equalityArena s2Step367EarlyControlClassPlan.equality.top 253 252 251 s2Step367EarlyControlLog.flagWork=some s2Step367EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step367EarlyControl_flagsOwned⟩
  · exact s2Step367EarlyControl_flagsBorrow

private theorem s2Step367EarlyControl_historyBorrow : s2Step367EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step367EarlyControlLog.recordFresh=some s2Step367EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step367EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step367EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step367EarlyControlHistoryArena,s2Step367EarlyControlArena,s2Step367EarlyControlLog,arenaWires]

private theorem s2Step367EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step367EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step367EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367EarlyControl_history : compileHmrRecordGrowLog s2Step367EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step367EarlyControlLog.recordFresh=some s2Step367EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step367EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step367EarlyControl_historyBorrow

private theorem s2Step367EarlyControl_sigmaOwned : ([254, 805] : List Wire).toFinset⊆s2Step367EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step367EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367EarlyControl_sigmaReleaseOwned : ([805] : List Wire).toFinset⊆s2Step367EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step367EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367EarlyControl_sigmaRelease : s2Step367EarlyControlHistoryArena.release {805} (fun _ => false)=some s2Step367EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step367EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step367EarlyControlSigmaArena,s2Step367EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step367EarlyControl_sigma : compileHmrSigmaDropLog s2Step367EarlyControlHistoryArena false 0 0 254 805 []=some s2Step367EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step367EarlyControl_sigmaOwned⟩
  · exact s2Step367EarlyControl_sigmaRelease

private theorem s2Step367EarlyControl_zeroBorrow : s2Step367EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step367EarlyControlLog.zeroWork=some s2Step367EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step367EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step367EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step367EarlyControlZeroArena,s2Step367EarlyControlArena,s2Step367EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step367EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step367EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step367EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367EarlyControl_zero : compileHmrEqualityLog s2Step367EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step367EarlyControlLog.zeroWork=some (s2Step367EarlyControlZeroArena,s2Step367EarlyControlLog.zeroWork,s2Step367EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step367EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step367EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step367EarlyControl_logged : s2Step367EarlyControlPlan.Logged s2Step367EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 805 254 253 252 251 903 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step367EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step367EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step367EarlyControl_zero
  · exact s2Step367EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step367EarlyControl_flags
  · exact s2Step367EarlyControl_fit
  · exact s2Step367EarlyControl_history
  · exact s2Step367EarlyControl_sigma
  · exact s2Step367EarlyControl_branch

private theorem s2Step367EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step367EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 805 254 253 252 251 903 60 s2Step367EarlyControlLog=some s2Step367EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step367EarlyControlPlan s2Step367EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 805 254 253 252 251 903 60 s2Step367EarlyControl_logged

private def s2Step367EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599],768⟩

private def s2Step367EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847],770⟩

private def s2Step367EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86],769⟩

private def s2Step367EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩

private def s2Step367FrontBank : WindowBank := ⟨s2Step367EntryFRow,s2Step367EntryGRow,s2Step367EntryFvRow,s2Step367EntryGvRow⟩

private def s2Step367Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 819, 768]

private def s2Step367Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 797, 785, 769]

private def s2Step367Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 770]

private def s2Step367Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 831, 771]

private theorem s2Step367Counter_apart : Disjoint s2Step367HeadFvAfter.live s2Step367CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step367HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367Counter_borrowed : s2Step367HeadFvAfter.checkBorrow 4 s2Step367CounterWork=some s2Step367CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step367HeadFvAfter s2Step367CounterDuring s2Step367CounterWork.toFinset s2Step367Counter_bounded s2Step367Counter_apart rfl

private theorem s2Step367Counter_owned : (805::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step367HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step367HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367Counter_checked : compileHmrCounterStepLog s2Step367HeadFvAfter true 805 [772, 773, 774, 775, 776, 777] s2Step367CounterWork=some s2Step367CounterDuring := by
  have owned : ∀q∈805::[772, 773, 774, 775, 776, 777],q∈s2Step367HeadFvAfter.live := fun q hq => s2Step367Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step367Counter_borrowed

private def s2Step367EntryFAfter : Arena := s2Step367EntryFBefore

private theorem s2Step367EntryBank_incomingDistinct : ([s2Step367EntryFRow,s2Step367EntryGRow,s2Step367EntryFvRow,s2Step367EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367EntryF_Incoming : rowsOwned s2Step367EntryFBefore [s2Step367EntryFRow,s2Step367EntryGRow,s2Step367EntryFvRow,s2Step367EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step367EntryFRow,s2Step367EntryGRow,s2Step367EntryFvRow,s2Step367EntryGvRow] 0 s2Step367EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step367EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step367EntryBank_outgoingOwned : rowsOwned s2Step367EntryGvAfter [s2Step367EntryFOut,s2Step367EntryGOut,s2Step367EntryFvOut,s2Step367EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step367EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step367EntryF_Outgoing : rowsOwned s2Step367EntryGvAfter [s2Step367EntryFOut,s2Step367EntryGOut,s2Step367EntryFvOut,s2Step367EntryGvOut] :=
  hmrRows_owned_drop s2Step367EntryGvAfter [s2Step367EntryFOut,s2Step367EntryGOut,s2Step367EntryFvOut,s2Step367EntryGvOut] 0 s2Step367EntryBank_outgoingOwned

private theorem s2Step367EntryF_distinct : (s2Step367EntryFRow.sign::s2Step367EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367EntryF_owned : (s2Step367EntryFRow.sign::s2Step367EntryFRow.payload).toFinset⊆s2Step367EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step367EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367EntryF_reserved : s2Step367EntryFBefore.reserve s2Step367EntryFFresh.toFinset=some s2Step367EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step367EntryFFresh,arenaWires]
  · norm_num [s2Step367EntryFBefore,s2Step367EntryFFresh,arenaWires]
  · simp only [s2Step367EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step367EntryF_checked : planRowResizeLog s2Step367EntryFBefore s2Step367EntryFRow 88 s2Step367EntryFFresh=
    some (s2Step367EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599],768⟩,growRow 768 s2Step367EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step367EntryFBefore s2Step367EntryFAfter s2Step367EntryFRow 88 s2Step367EntryFFresh
    s2Step367EntryF_distinct s2Step367EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step367EntryF_reserved
  have rowEq : WindowRow.mk (s2Step367EntryFRow.payload++s2Step367EntryFFresh) s2Step367EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step367EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367EntryFvAfter : Arena := s2Step367EntryGAfter

private def s2Step367EntryFvBefore : Arena := s2Step367EntryGAfter

private theorem s2Step367EntryFv_Incoming : rowsOwned s2Step367EntryFvBefore [s2Step367EntryFvRow,s2Step367EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step367EntryFRow,s2Step367EntryGRow,s2Step367EntryFvRow,s2Step367EntryGvRow] 2 s2Step367EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step367EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step367EntryFv_Outgoing : rowsOwned s2Step367EntryGvAfter [s2Step367EntryFvOut,s2Step367EntryGvOut] :=
  hmrRows_owned_drop s2Step367EntryGvAfter [s2Step367EntryFOut,s2Step367EntryGOut,s2Step367EntryFvOut,s2Step367EntryGvOut] 2 s2Step367EntryBank_outgoingOwned

private theorem s2Step367EntryFv_distinct : (s2Step367EntryFvRow.sign::s2Step367EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367EntryFv_owned : (s2Step367EntryFvRow.sign::s2Step367EntryFvRow.payload).toFinset⊆s2Step367EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step367EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367EntryFv_reserved : s2Step367EntryFvBefore.reserve s2Step367EntryFvFresh.toFinset=some s2Step367EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step367EntryFvFresh,arenaWires]
  · norm_num [s2Step367EntryFvBefore,s2Step367EntryGAfter,s2Step367EntryFvFresh,arenaWires]
  · simp only [s2Step367EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step367EntryFv_checked : planRowResizeLog s2Step367EntryFvBefore s2Step367EntryFvRow 199 s2Step367EntryFvFresh=
    some (s2Step367EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847],770⟩,growRow 770 s2Step367EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step367EntryFvBefore s2Step367EntryFvAfter s2Step367EntryFvRow 199 s2Step367EntryFvFresh
    s2Step367EntryFv_distinct s2Step367EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step367EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step367EntryFvRow.payload++s2Step367EntryFvFresh) s2Step367EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step367EntryGBefore : Arena := s2Step367EntryFBefore

private theorem s2Step367EntryG_Incoming : rowsOwned s2Step367EntryGBefore [s2Step367EntryGRow,s2Step367EntryFvRow,s2Step367EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step367EntryFRow,s2Step367EntryGRow,s2Step367EntryFvRow,s2Step367EntryGvRow] 1 s2Step367EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step367EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step367EntryG_Outgoing : rowsOwned s2Step367EntryGvAfter [s2Step367EntryGOut,s2Step367EntryFvOut,s2Step367EntryGvOut] :=
  hmrRows_owned_drop s2Step367EntryGvAfter [s2Step367EntryFOut,s2Step367EntryGOut,s2Step367EntryFvOut,s2Step367EntryGvOut] 1 s2Step367EntryBank_outgoingOwned

private theorem s2Step367EntryG_distinct : (s2Step367EntryGRow.sign::s2Step367EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367EntryG_owned : (s2Step367EntryGRow.sign::s2Step367EntryGRow.payload).toFinset⊆s2Step367EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step367EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367EntryG_reserved : s2Step367EntryGBefore.reserve s2Step367EntryGFresh.toFinset=some s2Step367EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step367EntryGFresh,arenaWires]
  · norm_num [s2Step367EntryGBefore,s2Step367EntryFBefore,s2Step367EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step367EntryGAfter,s2Step367EntryGBefore,s2Step367EntryFBefore,s2Step367EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step367EntryG_checked : planRowResizeLog s2Step367EntryGBefore s2Step367EntryGRow 88 s2Step367EntryGFresh=
    some (s2Step367EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 797],769⟩,growRow 769 s2Step367EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step367EntryGBefore s2Step367EntryGAfter s2Step367EntryGRow 88 s2Step367EntryGFresh
    s2Step367EntryG_distinct s2Step367EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step367EntryG_reserved
  have rowEq : WindowRow.mk (s2Step367EntryGRow.payload++s2Step367EntryGFresh) s2Step367EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 797],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step367EntryGvBefore : Arena := s2Step367EntryGAfter

private theorem s2Step367EntryGv_Incoming : rowsOwned s2Step367EntryGvBefore [s2Step367EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step367EntryFRow,s2Step367EntryGRow,s2Step367EntryFvRow,s2Step367EntryGvRow] 3 s2Step367EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step367EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step367EntryGv_Outgoing : rowsOwned s2Step367EntryGvAfter [s2Step367EntryGvOut] :=
  hmrRows_owned_drop s2Step367EntryGvAfter [s2Step367EntryFOut,s2Step367EntryGOut,s2Step367EntryFvOut,s2Step367EntryGvOut] 3 s2Step367EntryBank_outgoingOwned

private theorem s2Step367EntryGv_distinct : (s2Step367EntryGvRow.sign::s2Step367EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367EntryGv_owned : (s2Step367EntryGvRow.sign::s2Step367EntryGvRow.payload).toFinset⊆s2Step367EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step367EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367EntryGv_reserved : s2Step367EntryGvBefore.reserve s2Step367EntryGvFresh.toFinset=some s2Step367EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step367EntryGvFresh,arenaWires]
  · norm_num [s2Step367EntryGvBefore,s2Step367EntryGAfter,s2Step367EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step367EntryGvAfter,s2Step367EntryGvBefore,s2Step367EntryGAfter,s2Step367EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step367EntryGv_checked : planRowResizeLog s2Step367EntryGvBefore s2Step367EntryGvRow 199 s2Step367EntryGvFresh=
    some (s2Step367EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820],771⟩,growRow 771 s2Step367EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step367EntryGvBefore s2Step367EntryGvAfter s2Step367EntryGvRow 199 s2Step367EntryGvFresh
    s2Step367EntryGv_distinct s2Step367EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step367EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step367EntryGvRow.payload++s2Step367EntryGvFresh) s2Step367EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step367EntryBank_rows : planWindowRowsLog s2Step367EntryFBefore [(s2Step367EntryFRow,88),(s2Step367EntryGRow,88),(s2Step367EntryFvRow,199),(s2Step367EntryGvRow,199)] [s2Step367EntryFFresh,s2Step367EntryGFresh,s2Step367EntryFvFresh,s2Step367EntryGvFresh]=
    some (s2Step367EntryGvAfter,[s2Step367EntryFOut,s2Step367EntryGOut,s2Step367EntryFvOut,s2Step367EntryGvOut],(growRow 768 s2Step367EntryFFresh ++ (growRow 769 s2Step367EntryGFresh ++ (growRow 770 s2Step367EntryFvFresh ++ (growRow 771 s2Step367EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step367EntryGvAfter [] []=some (s2Step367EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step367EntryGvBefore s2Step367EntryGvAfter s2Step367EntryGvAfter
    s2Step367EntryGvRow s2Step367EntryGvOut 199 s2Step367EntryGvFresh [] [] []
    (growRow 771 s2Step367EntryGvFresh) ([]) s2Step367EntryGv_Incoming s2Step367EntryGv_checked h4 s2Step367EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step367EntryFvBefore s2Step367EntryFvAfter s2Step367EntryGvAfter
    s2Step367EntryFvRow s2Step367EntryFvOut 199 s2Step367EntryFvFresh [(s2Step367EntryGvRow,199)] [s2Step367EntryGvFresh] [s2Step367EntryGvOut]
    (growRow 770 s2Step367EntryFvFresh) ((growRow 771 s2Step367EntryGvFresh ++ [])) s2Step367EntryFv_Incoming s2Step367EntryFv_checked h3 s2Step367EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step367EntryGBefore s2Step367EntryGAfter s2Step367EntryGvAfter
    s2Step367EntryGRow s2Step367EntryGOut 88 s2Step367EntryGFresh [(s2Step367EntryFvRow,199),(s2Step367EntryGvRow,199)] [s2Step367EntryFvFresh,s2Step367EntryGvFresh] [s2Step367EntryFvOut,s2Step367EntryGvOut]
    (growRow 769 s2Step367EntryGFresh) ((growRow 770 s2Step367EntryFvFresh ++ (growRow 771 s2Step367EntryGvFresh ++ []))) s2Step367EntryG_Incoming s2Step367EntryG_checked h2 s2Step367EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step367EntryFBefore s2Step367EntryFAfter s2Step367EntryGvAfter
    s2Step367EntryFRow s2Step367EntryFOut 88 s2Step367EntryFFresh [(s2Step367EntryGRow,88),(s2Step367EntryFvRow,199),(s2Step367EntryGvRow,199)] [s2Step367EntryGFresh,s2Step367EntryFvFresh,s2Step367EntryGvFresh] [s2Step367EntryGOut,s2Step367EntryFvOut,s2Step367EntryGvOut]
    (growRow 768 s2Step367EntryFFresh) ((growRow 769 s2Step367EntryGFresh ++ (growRow 770 s2Step367EntryFvFresh ++ (growRow 771 s2Step367EntryGvFresh ++ [])))) s2Step367EntryF_Incoming s2Step367EntryF_checked h1 s2Step367EntryF_Outgoing
  exact h0

private theorem s2Step367EntryBank_checked : compileHmrBankResizeLog .entry s2Step367EntryFBefore ⟨s2Step367EntryFRow,s2Step367EntryGRow,s2Step367EntryFvRow,s2Step367EntryGvRow⟩ ⟨88,88,199,199⟩ [s2Step367EntryFFresh,s2Step367EntryGFresh,s2Step367EntryFvFresh,s2Step367EntryGvFresh]=
    some (s2Step367EntryGvAfter,⟨s2Step367EntryFOut,s2Step367EntryGOut,s2Step367EntryFvOut,s2Step367EntryGvOut⟩,(growRow 768 s2Step367EntryFFresh ++ (growRow 769 s2Step367EntryGFresh ++ (growRow 770 s2Step367EntryFvFresh ++ (growRow 771 s2Step367EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step367EntryBank_rows]
  rfl

private def s2Step367ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<599) ∨ (600≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367ExitFBefore : Arena := s2Step367ExitGAfter

private def s2Step367ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 819],768⟩

private def s2Step367ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812],770⟩

private def s2Step367ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 797, 785],769⟩

private def s2Step367ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 831],771⟩

private theorem s2Step367ExitBank_incomingDistinct : ([s2Step367ExitGRow,s2Step367ExitFRow,s2Step367ExitFvRow,s2Step367ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367ExitF_Incoming : rowsOwned s2Step367ExitFBefore [s2Step367ExitFRow,s2Step367ExitFvRow,s2Step367ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step367ExitGRow,s2Step367ExitFRow,s2Step367ExitFvRow,s2Step367ExitGvRow] 1 s2Step367ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step367ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step367ExitBank_outgoingOwned : rowsOwned s2Step367ExitGvAfter [s2Step367ExitGOut,s2Step367ExitFOut,s2Step367ExitFvOut,s2Step367ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step367ExitGvAfter (fun q => (0≤q ∧ q<599) ∨ (600≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step367ExitF_Outgoing : rowsOwned s2Step367ExitGvAfter [s2Step367ExitFOut,s2Step367ExitFvOut,s2Step367ExitGvOut] :=
  hmrRows_owned_drop s2Step367ExitGvAfter [s2Step367ExitGOut,s2Step367ExitFOut,s2Step367ExitFvOut,s2Step367ExitGvOut] 1 s2Step367ExitBank_outgoingOwned

private theorem s2Step367ExitF_distinct : (s2Step367ExitFRow.sign::s2Step367ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367ExitF_owned : (s2Step367ExitFRow.sign::s2Step367ExitFRow.payload).toFinset⊆s2Step367ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step367ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367ExitF_retired : s2Step367ExitFBefore.retireSet s2Step367ExitFExtra.toFinset=s2Step367ExitFAfter := by
  unfold Arena.retireSet s2Step367ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step367ExitFBefore,s2Step367ExitGAfter,s2Step367ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step367ExitF_checked : planRowResizeLog s2Step367ExitFBefore s2Step367ExitFRow 87 []=
    some (s2Step367ExitFAfter,s2Step367ExitFOut,shrinkRow 768 s2Step367ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step367ExitFBefore s2Step367ExitFRow 87 s2Step367ExitF_distinct s2Step367ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step367ExitFRow.payload.take 87) s2Step367ExitFRow.sign=s2Step367ExitFOut := by decide +kernel
  have hi : s2Step367ExitFRow.payload.drop 87=s2Step367ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step367ExitF_retired] at result
  exact result

private def s2Step367ExitFvAfter : Arena := s2Step367ExitFAfter

private def s2Step367ExitFvBefore : Arena := s2Step367ExitFAfter

private theorem s2Step367ExitFv_Incoming : rowsOwned s2Step367ExitFvBefore [s2Step367ExitFvRow,s2Step367ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step367ExitGRow,s2Step367ExitFRow,s2Step367ExitFvRow,s2Step367ExitGvRow] 2 s2Step367ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step367ExitFvBefore (fun q => (0≤q ∧ q<599) ∨ (600≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step367ExitFv_Outgoing : rowsOwned s2Step367ExitGvAfter [s2Step367ExitFvOut,s2Step367ExitGvOut] :=
  hmrRows_owned_drop s2Step367ExitGvAfter [s2Step367ExitGOut,s2Step367ExitFOut,s2Step367ExitFvOut,s2Step367ExitGvOut] 2 s2Step367ExitBank_outgoingOwned

private theorem s2Step367ExitFv_distinct : (s2Step367ExitFvRow.sign::s2Step367ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367ExitFv_owned : (s2Step367ExitFvRow.sign::s2Step367ExitFvRow.payload).toFinset⊆s2Step367ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step367ExitFvBefore (fun q => (0≤q ∧ q<599) ∨ (600≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367ExitFv_reserved : s2Step367ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step367ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step367ExitFv_checked : planRowResizeLog s2Step367ExitFvBefore s2Step367ExitFvRow 200 []=
    some (s2Step367ExitFvAfter,s2Step367ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step367ExitFvBefore s2Step367ExitFvAfter s2Step367ExitFvRow 200 []
    s2Step367ExitFv_distinct s2Step367ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step367ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step367ExitFvRow.payload++[]) s2Step367ExitFvRow.sign=s2Step367ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step367ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step367ExitG_Incoming : rowsOwned s2Step367ExitGBefore [s2Step367ExitGRow,s2Step367ExitFRow,s2Step367ExitFvRow,s2Step367ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step367ExitGRow,s2Step367ExitFRow,s2Step367ExitFvRow,s2Step367ExitGvRow] 0 s2Step367ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step367ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step367ExitG_Outgoing : rowsOwned s2Step367ExitGvAfter [s2Step367ExitGOut,s2Step367ExitFOut,s2Step367ExitFvOut,s2Step367ExitGvOut] :=
  hmrRows_owned_drop s2Step367ExitGvAfter [s2Step367ExitGOut,s2Step367ExitFOut,s2Step367ExitFvOut,s2Step367ExitGvOut] 0 s2Step367ExitBank_outgoingOwned

private theorem s2Step367ExitG_distinct : (s2Step367ExitGRow.sign::s2Step367ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367ExitG_owned : (s2Step367ExitGRow.sign::s2Step367ExitGRow.payload).toFinset⊆s2Step367ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step367ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367ExitG_retired : s2Step367ExitGBefore.retireSet s2Step367ExitGExtra.toFinset=s2Step367ExitGAfter := by
  unfold Arena.retireSet s2Step367ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step367ExitGBefore,s2Step367ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step367ExitG_checked : planRowResizeLog s2Step367ExitGBefore s2Step367ExitGRow 87 []=
    some (s2Step367ExitGAfter,s2Step367ExitGOut,shrinkRow 769 s2Step367ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step367ExitGBefore s2Step367ExitGRow 87 s2Step367ExitG_distinct s2Step367ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step367ExitGRow.payload.take 87) s2Step367ExitGRow.sign=s2Step367ExitGOut := by decide +kernel
  have hi : s2Step367ExitGRow.payload.drop 87=s2Step367ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step367ExitG_retired] at result
  exact result

private def s2Step367ExitGvBefore : Arena := s2Step367ExitFAfter

private theorem s2Step367ExitGv_Incoming : rowsOwned s2Step367ExitGvBefore [s2Step367ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step367ExitGRow,s2Step367ExitFRow,s2Step367ExitFvRow,s2Step367ExitGvRow] 3 s2Step367ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step367ExitGvBefore (fun q => (0≤q ∧ q<599) ∨ (600≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step367ExitGv_Outgoing : rowsOwned s2Step367ExitGvAfter [s2Step367ExitGvOut] :=
  hmrRows_owned_drop s2Step367ExitGvAfter [s2Step367ExitGOut,s2Step367ExitFOut,s2Step367ExitFvOut,s2Step367ExitGvOut] 3 s2Step367ExitBank_outgoingOwned

private theorem s2Step367ExitGv_distinct : (s2Step367ExitGvRow.sign::s2Step367ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367ExitGv_owned : (s2Step367ExitGvRow.sign::s2Step367ExitGvRow.payload).toFinset⊆s2Step367ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step367ExitGvBefore (fun q => (0≤q ∧ q<599) ∨ (600≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367ExitGv_retired : s2Step367ExitGvBefore.retireSet s2Step367ExitGvExtra.toFinset=s2Step367ExitGvAfter := by
  unfold Arena.retireSet s2Step367ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step367ExitGvBefore,s2Step367ExitFAfter,s2Step367ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step367ExitGv_checked : planRowResizeLog s2Step367ExitGvBefore s2Step367ExitGvRow 199 []=
    some (s2Step367ExitGvAfter,s2Step367ExitGvOut,shrinkRow 771 s2Step367ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step367ExitGvBefore s2Step367ExitGvRow 199 s2Step367ExitGv_distinct s2Step367ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step367ExitGvRow.payload.take 199) s2Step367ExitGvRow.sign=s2Step367ExitGvOut := by decide +kernel
  have hi : s2Step367ExitGvRow.payload.drop 199=s2Step367ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step367ExitGv_retired] at result
  exact result

private theorem s2Step367ExitBank_rows : planWindowRowsLog s2Step367ExitGBefore [(s2Step367ExitGRow,87),(s2Step367ExitFRow,87),(s2Step367ExitFvRow,200),(s2Step367ExitGvRow,199)] [[],[],[],[]]=
    some (s2Step367ExitGvAfter,[s2Step367ExitGOut,s2Step367ExitFOut,s2Step367ExitFvOut,s2Step367ExitGvOut],(shrinkRow 769 s2Step367ExitGExtra ++ (shrinkRow 768 s2Step367ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step367ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step367ExitGvAfter [] []=some (s2Step367ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step367ExitGvBefore s2Step367ExitGvAfter s2Step367ExitGvAfter
    s2Step367ExitGvRow s2Step367ExitGvOut 199 [] [] [] []
    (shrinkRow 771 s2Step367ExitGvExtra) ([]) s2Step367ExitGv_Incoming s2Step367ExitGv_checked h4 s2Step367ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step367ExitFvBefore s2Step367ExitFvAfter s2Step367ExitGvAfter
    s2Step367ExitFvRow s2Step367ExitFvOut 200 [] [(s2Step367ExitGvRow,199)] [[]] [s2Step367ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step367ExitGvExtra ++ [])) s2Step367ExitFv_Incoming s2Step367ExitFv_checked h3 s2Step367ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step367ExitFBefore s2Step367ExitFAfter s2Step367ExitGvAfter
    s2Step367ExitFRow s2Step367ExitFOut 87 [] [(s2Step367ExitFvRow,200),(s2Step367ExitGvRow,199)] [[],[]] [s2Step367ExitFvOut,s2Step367ExitGvOut]
    (shrinkRow 768 s2Step367ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step367ExitGvExtra ++ []))) s2Step367ExitF_Incoming s2Step367ExitF_checked h2 s2Step367ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step367ExitGBefore s2Step367ExitGAfter s2Step367ExitGvAfter
    s2Step367ExitGRow s2Step367ExitGOut 87 [] [(s2Step367ExitFRow,87),(s2Step367ExitFvRow,200),(s2Step367ExitGvRow,199)] [[],[],[]] [s2Step367ExitFOut,s2Step367ExitFvOut,s2Step367ExitGvOut]
    (shrinkRow 769 s2Step367ExitGExtra) ((shrinkRow 768 s2Step367ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step367ExitGvExtra ++ [])))) s2Step367ExitG_Incoming s2Step367ExitG_checked h1 s2Step367ExitG_Outgoing
  exact h0

private theorem s2Step367ExitBank_checked : compileHmrBankResizeLog .exit s2Step367ExitGBefore ⟨s2Step367ExitFRow,s2Step367ExitGRow,s2Step367ExitFvRow,s2Step367ExitGvRow⟩ ⟨87,87,200,199⟩ [[],[],[],[]]=
    some (s2Step367ExitGvAfter,⟨s2Step367ExitFOut,s2Step367ExitGOut,s2Step367ExitFvOut,s2Step367ExitGvOut⟩,(shrinkRow 769 s2Step367ExitGExtra ++ (shrinkRow 768 s2Step367ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step367ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step367ExitBank_rows]
  rfl

private theorem s2Step367Add0_apart : Disjoint s2Step367Add0Arena.live s2Step367Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step367Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367Add0_card : s2Step367Add0Arena.live.card=908 := by
  decide +kernel

private theorem s2Step367Add0_borrowed : s2Step367Add0Arena.checkBorrow (hmrHybridCount s2Step367Add0Arena s2Step367Add0B.length) s2Step367Add0Work=some s2Step367Add0During := by
  have len : s2Step367Add0Work.length=hmrHybridCount s2Step367Add0Arena s2Step367Add0B.length := by
    rw [hmrHybridCount,s2Step367Add0_card]
    decide +kernel
  have nd : s2Step367Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step367Add0Arena s2Step367Add0During s2Step367Add0Work.toFinset s2Step367Add0_bounded s2Step367Add0_apart rfl

private theorem s2Step367Add0_distinct : (796::903::783::(s2Step367Add0A++s2Step367Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367Add0_owned : (796::903::783::(s2Step367Add0A++s2Step367Add0B)).toFinset⊆s2Step367Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step367Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367Add0_checked : compileHmrHybridCinLog s2Step367Add0Arena 903 796 783 s2Step367Add0A s2Step367Add0B s2Step367Add0Work=some s2Step367Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step367Add0Arena s2Step367Add0During 903 796 783 s2Step367Add0A s2Step367Add0B s2Step367Add0Work
    (by decide +kernel) (by decide +kernel) s2Step367Add0_distinct
    (fun q hq => s2Step367Add0_owned (List.mem_toFinset.mpr hq)) s2Step367Add0_borrowed

private theorem s2Step367Add1_apart : Disjoint s2Step367Add1Arena.live s2Step367Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step367Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367Add1_card : s2Step367Add1Arena.live.card=908 := by
  decide +kernel

private theorem s2Step367Add1_borrowed : s2Step367Add1Arena.checkBorrow (hmrHybridCount s2Step367Add1Arena s2Step367Add1B.length) s2Step367Add1Work=some s2Step367Add1During := by
  have len : s2Step367Add1Work.length=hmrHybridCount s2Step367Add1Arena s2Step367Add1B.length := by
    rw [hmrHybridCount,s2Step367Add1_card]
    decide +kernel
  have nd : s2Step367Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step367Add1Arena s2Step367Add1During s2Step367Add1Work.toFinset s2Step367Add1_bounded s2Step367Add1_apart rfl

private theorem s2Step367Add1_distinct : (796::903::783::(s2Step367Add1A++s2Step367Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367Add1_owned : (796::903::783::(s2Step367Add1A++s2Step367Add1B)).toFinset⊆s2Step367Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step367Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367Add1_checked : compileHmrHybridCinLog s2Step367Add1Arena 903 796 783 s2Step367Add1A s2Step367Add1B s2Step367Add1Work=some s2Step367Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step367Add1Arena s2Step367Add1During 903 796 783 s2Step367Add1A s2Step367Add1B s2Step367Add1Work
    (by decide +kernel) (by decide +kernel) s2Step367Add1_distinct
    (fun q hq => s2Step367Add1_owned (List.mem_toFinset.mpr hq)) s2Step367Add1_borrowed

private theorem s2Step367F4_apart : Disjoint (s2Step367Add0A++s2Step367Add0B).toFinset (s2Step367Add1A++s2Step367Add1B).toFinset := by
  have nd : ((s2Step367Add0A++s2Step367Add0B)++(s2Step367Add1A++s2Step367Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step367F4_carry : s2Step367F4FlagArena.checkBorrow 1 [783]=some s2Step367Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step367F4FlagArena,s2Step367HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step367F4FlagArena,s2Step367HeadFvAfter,s2Step367Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step367F4_distinct : (805::903::796::783::((s2Step367Add0A++s2Step367Add1A)++(s2Step367Add0B++s2Step367Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367F4_flag : s2Step367HeadFvAfter.checkBorrow 1 [796]=some s2Step367F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step367HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step367F4_owned : (805::903::((s2Step367Add0A++s2Step367Add1A)++(s2Step367Add0B++s2Step367Add1B))).toFinset⊆s2Step367HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step367HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367F4_checked : compileHmrHybridF4Log s2Step367HeadFvAfter 805 903 s2Step367Add0A s2Step367Add0B s2Step367Add1A s2Step367Add1B [796] [783] s2Step367Add0Work s2Step367Add1Work=some s2Step367F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step367HeadFvAfter s2Step367F4FlagArena s2Step367Add0Arena s2Step367Add0During s2Step367Add1During 805 903
    s2Step367Add0A s2Step367Add0B s2Step367Add1A s2Step367Add1B [796] [783] s2Step367Add0Work s2Step367Add1Work
    (fun q hq => s2Step367F4_owned (List.mem_toFinset.mpr hq)) s2Step367F4_flag s2Step367F4_carry
    s2Step367F4_distinct s2Step367F4_apart s2Step367Add0_checked s2Step367Add1_checked

private theorem s2Step367Front_branch : s2Step367FrontSigmaArena.checkBorrow 1 [903]=some s2Step367HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step367FrontSigmaArena,s2Step367EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step367FrontSigmaArena,s2Step367EntryGvAfter,s2Step367HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step367Front_entry : HmrFrontEntryValid s2Step367EntryFBefore s2Step367FrontBank 88 199 ⟨87,87,200,199⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step367FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step367EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step367EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step367FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step367Front_sigma : s2Step367EntryGvAfter.checkBorrow 1 [805]=some s2Step367FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step367EntryGvAfter,arenaWires]
  · rfl

private def s2Step367HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367HeadFBefore : Arena := s2Step367HeadGAfter

private def s2Step367HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599],768⟩

private def s2Step367HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847],770⟩

private def s2Step367HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 797],769⟩

private def s2Step367HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820],771⟩

private theorem s2Step367HeadBank_incomingDistinct : ([s2Step367HeadGRow,s2Step367HeadFRow,s2Step367HeadGvRow,s2Step367HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367HeadF_Incoming : rowsOwned s2Step367HeadFBefore [s2Step367HeadFRow,s2Step367HeadGvRow,s2Step367HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step367HeadGRow,s2Step367HeadFRow,s2Step367HeadGvRow,s2Step367HeadFvRow] 1 s2Step367HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step367HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step367HeadBank_outgoingOwned : rowsOwned s2Step367HeadFvAfter [s2Step367HeadGOut,s2Step367HeadFOut,s2Step367HeadGvOut,s2Step367HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step367HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step367HeadF_Outgoing : rowsOwned s2Step367HeadFvAfter [s2Step367HeadFOut,s2Step367HeadGvOut,s2Step367HeadFvOut] :=
  hmrRows_owned_drop s2Step367HeadFvAfter [s2Step367HeadGOut,s2Step367HeadFOut,s2Step367HeadGvOut,s2Step367HeadFvOut] 1 s2Step367HeadBank_outgoingOwned

private theorem s2Step367HeadF_distinct : (s2Step367HeadFRow.sign::s2Step367HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367HeadF_owned : (s2Step367HeadFRow.sign::s2Step367HeadFRow.payload).toFinset⊆s2Step367HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step367HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367HeadF_reserved : s2Step367HeadFBefore.reserve s2Step367HeadFFresh.toFinset=some s2Step367HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step367HeadFFresh,arenaWires]
  · norm_num [s2Step367HeadFBefore,s2Step367HeadGAfter,s2Step367HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step367HeadFAfter,s2Step367HeadFBefore,s2Step367HeadGAfter,s2Step367HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step367HeadF_checked : planRowResizeLog s2Step367HeadFBefore s2Step367HeadFRow 89 s2Step367HeadFFresh=
    some (s2Step367HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 819],768⟩,growRow 768 s2Step367HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step367HeadFBefore s2Step367HeadFAfter s2Step367HeadFRow 89 s2Step367HeadFFresh
    s2Step367HeadF_distinct s2Step367HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step367HeadF_reserved
  have rowEq : WindowRow.mk (s2Step367HeadFRow.payload++s2Step367HeadFFresh) s2Step367HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 819],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step367HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step367HeadFvBefore : Arena := s2Step367HeadGvAfter

private theorem s2Step367HeadFv_Incoming : rowsOwned s2Step367HeadFvBefore [s2Step367HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step367HeadGRow,s2Step367HeadFRow,s2Step367HeadGvRow,s2Step367HeadFvRow] 3 s2Step367HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step367HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step367HeadFv_Outgoing : rowsOwned s2Step367HeadFvAfter [s2Step367HeadFvOut] :=
  hmrRows_owned_drop s2Step367HeadFvAfter [s2Step367HeadGOut,s2Step367HeadFOut,s2Step367HeadGvOut,s2Step367HeadFvOut] 3 s2Step367HeadBank_outgoingOwned

private theorem s2Step367HeadFv_distinct : (s2Step367HeadFvRow.sign::s2Step367HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367HeadFv_owned : (s2Step367HeadFvRow.sign::s2Step367HeadFvRow.payload).toFinset⊆s2Step367HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step367HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367HeadFv_reserved : s2Step367HeadFvBefore.reserve s2Step367HeadFvFresh.toFinset=some s2Step367HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step367HeadFvFresh,arenaWires]
  · norm_num [s2Step367HeadFvBefore,s2Step367HeadGvAfter,s2Step367HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step367HeadFvAfter,s2Step367HeadFvBefore,s2Step367HeadGvAfter,s2Step367HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step367HeadFv_checked : planRowResizeLog s2Step367HeadFvBefore s2Step367HeadFvRow 200 s2Step367HeadFvFresh=
    some (s2Step367HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812],770⟩,growRow 770 s2Step367HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step367HeadFvBefore s2Step367HeadFvAfter s2Step367HeadFvRow 200 s2Step367HeadFvFresh
    s2Step367HeadFv_distinct s2Step367HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step367HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step367HeadFvRow.payload++s2Step367HeadFvFresh) s2Step367HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step367HeadG_Incoming : rowsOwned s2Step367HeadGBefore [s2Step367HeadGRow,s2Step367HeadFRow,s2Step367HeadGvRow,s2Step367HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step367HeadGRow,s2Step367HeadFRow,s2Step367HeadGvRow,s2Step367HeadFvRow] 0 s2Step367HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step367HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step367HeadG_Outgoing : rowsOwned s2Step367HeadFvAfter [s2Step367HeadGOut,s2Step367HeadFOut,s2Step367HeadGvOut,s2Step367HeadFvOut] :=
  hmrRows_owned_drop s2Step367HeadFvAfter [s2Step367HeadGOut,s2Step367HeadFOut,s2Step367HeadGvOut,s2Step367HeadFvOut] 0 s2Step367HeadBank_outgoingOwned

private theorem s2Step367HeadG_distinct : (s2Step367HeadGRow.sign::s2Step367HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367HeadG_owned : (s2Step367HeadGRow.sign::s2Step367HeadGRow.payload).toFinset⊆s2Step367HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step367HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367HeadG_reserved : s2Step367HeadGBefore.reserve s2Step367HeadGFresh.toFinset=some s2Step367HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step367HeadGFresh,arenaWires]
  · norm_num [s2Step367HeadGBefore,s2Step367HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step367HeadGAfter,s2Step367HeadGBefore,s2Step367HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step367HeadG_checked : planRowResizeLog s2Step367HeadGBefore s2Step367HeadGRow 89 s2Step367HeadGFresh=
    some (s2Step367HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 797, 785],769⟩,growRow 769 s2Step367HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step367HeadGBefore s2Step367HeadGAfter s2Step367HeadGRow 89 s2Step367HeadGFresh
    s2Step367HeadG_distinct s2Step367HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step367HeadG_reserved
  have rowEq : WindowRow.mk (s2Step367HeadGRow.payload++s2Step367HeadGFresh) s2Step367HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 797, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step367HeadGvBefore : Arena := s2Step367HeadFAfter

private theorem s2Step367HeadGv_Incoming : rowsOwned s2Step367HeadGvBefore [s2Step367HeadGvRow,s2Step367HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step367HeadGRow,s2Step367HeadFRow,s2Step367HeadGvRow,s2Step367HeadFvRow] 2 s2Step367HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step367HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step367HeadGv_Outgoing : rowsOwned s2Step367HeadFvAfter [s2Step367HeadGvOut,s2Step367HeadFvOut] :=
  hmrRows_owned_drop s2Step367HeadFvAfter [s2Step367HeadGOut,s2Step367HeadFOut,s2Step367HeadGvOut,s2Step367HeadFvOut] 2 s2Step367HeadBank_outgoingOwned

private theorem s2Step367HeadGv_distinct : (s2Step367HeadGvRow.sign::s2Step367HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step367HeadGv_owned : (s2Step367HeadGvRow.sign::s2Step367HeadGvRow.payload).toFinset⊆s2Step367HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step367HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step367HeadGv_reserved : s2Step367HeadGvBefore.reserve s2Step367HeadGvFresh.toFinset=some s2Step367HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step367HeadGvFresh,arenaWires]
  · norm_num [s2Step367HeadGvBefore,s2Step367HeadFAfter,s2Step367HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step367HeadGvAfter,s2Step367HeadGvBefore,s2Step367HeadFAfter,s2Step367HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step367HeadGv_checked : planRowResizeLog s2Step367HeadGvBefore s2Step367HeadGvRow 200 s2Step367HeadGvFresh=
    some (s2Step367HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 831],771⟩,growRow 771 s2Step367HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step367HeadGvBefore s2Step367HeadGvAfter s2Step367HeadGvRow 200 s2Step367HeadGvFresh
    s2Step367HeadGv_distinct s2Step367HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step367HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step367HeadGvRow.payload++s2Step367HeadGvFresh) s2Step367HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 831],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step367HeadBank_rows : planWindowRowsLog s2Step367HeadGBefore [(s2Step367HeadGRow,89),(s2Step367HeadFRow,89),(s2Step367HeadGvRow,200),(s2Step367HeadFvRow,200)] [s2Step367HeadGFresh,s2Step367HeadFFresh,s2Step367HeadGvFresh,s2Step367HeadFvFresh]=
    some (s2Step367HeadFvAfter,[s2Step367HeadGOut,s2Step367HeadFOut,s2Step367HeadGvOut,s2Step367HeadFvOut],(growRow 769 s2Step367HeadGFresh ++ (growRow 768 s2Step367HeadFFresh ++ (growRow 771 s2Step367HeadGvFresh ++ (growRow 770 s2Step367HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step367HeadFvAfter [] []=some (s2Step367HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step367HeadFvBefore s2Step367HeadFvAfter s2Step367HeadFvAfter
    s2Step367HeadFvRow s2Step367HeadFvOut 200 s2Step367HeadFvFresh [] [] []
    (growRow 770 s2Step367HeadFvFresh) ([]) s2Step367HeadFv_Incoming s2Step367HeadFv_checked h4 s2Step367HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step367HeadGvBefore s2Step367HeadGvAfter s2Step367HeadFvAfter
    s2Step367HeadGvRow s2Step367HeadGvOut 200 s2Step367HeadGvFresh [(s2Step367HeadFvRow,200)] [s2Step367HeadFvFresh] [s2Step367HeadFvOut]
    (growRow 771 s2Step367HeadGvFresh) ((growRow 770 s2Step367HeadFvFresh ++ [])) s2Step367HeadGv_Incoming s2Step367HeadGv_checked h3 s2Step367HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step367HeadFBefore s2Step367HeadFAfter s2Step367HeadFvAfter
    s2Step367HeadFRow s2Step367HeadFOut 89 s2Step367HeadFFresh [(s2Step367HeadGvRow,200),(s2Step367HeadFvRow,200)] [s2Step367HeadGvFresh,s2Step367HeadFvFresh] [s2Step367HeadGvOut,s2Step367HeadFvOut]
    (growRow 768 s2Step367HeadFFresh) ((growRow 771 s2Step367HeadGvFresh ++ (growRow 770 s2Step367HeadFvFresh ++ []))) s2Step367HeadF_Incoming s2Step367HeadF_checked h2 s2Step367HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step367HeadGBefore s2Step367HeadGAfter s2Step367HeadFvAfter
    s2Step367HeadGRow s2Step367HeadGOut 89 s2Step367HeadGFresh [(s2Step367HeadFRow,89),(s2Step367HeadGvRow,200),(s2Step367HeadFvRow,200)] [s2Step367HeadFFresh,s2Step367HeadGvFresh,s2Step367HeadFvFresh] [s2Step367HeadFOut,s2Step367HeadGvOut,s2Step367HeadFvOut]
    (growRow 769 s2Step367HeadGFresh) ((growRow 768 s2Step367HeadFFresh ++ (growRow 771 s2Step367HeadGvFresh ++ (growRow 770 s2Step367HeadFvFresh ++ [])))) s2Step367HeadG_Incoming s2Step367HeadG_checked h1 s2Step367HeadG_Outgoing
  exact h0

private theorem s2Step367HeadBank_checked : compileHmrBankResizeLog .headroom s2Step367HeadGBefore ⟨s2Step367HeadFRow,s2Step367HeadGRow,s2Step367HeadFvRow,s2Step367HeadGvRow⟩ ⟨89,89,200,200⟩ [s2Step367HeadGFresh,s2Step367HeadFFresh,s2Step367HeadGvFresh,s2Step367HeadFvFresh]=
    some (s2Step367HeadFvAfter,⟨s2Step367HeadFOut,s2Step367HeadGOut,s2Step367HeadFvOut,s2Step367HeadGvOut⟩,(growRow 769 s2Step367HeadGFresh ++ (growRow 768 s2Step367HeadFFresh ++ (growRow 771 s2Step367HeadGvFresh ++ (growRow 770 s2Step367HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step367HeadBank_rows]
  rfl

private theorem s2Step367Front_checked : compileHmrSourceFrontLog s2Step367EntryFBefore s2Step367FrontBank 88 199 ⟨87,87,200,199⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step367FrontLog=some s2Step367FrontPlan := by
  have pairEq : s2Step367FrontPair=⟨s2Step367HeadFRow,s2Step367HeadGRow,s2Step367HeadFvRow,s2Step367HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step367FrontHead=⟨s2Step367ExitFRow,s2Step367ExitGRow,s2Step367ExitFvRow,s2Step367ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step367Add0A=s2Step367FrontHead.f.wires := by decide +kernel
  have gEq : s2Step367Add0B=s2Step367FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step367Add1A=s2Step367FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step367Add1B=s2Step367FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step367EntryFBefore s2Step367FrontBank 88 199 ⟨87,87,200,199⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step367FrontLog s2Step367FrontPlan
  · exact s2Step367Front_entry
  · exact s2Step367EntryBank_checked
  · exact s2Step367Front_sigma
  · rfl
  · exact s2Step367Front_branch
  · rfl
  · simpa only [s2Step367FrontPlan,pairEq] using s2Step367HeadBank_checked
  · simpa only [s2Step367FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step367F4_checked
  · exact s2Step367Counter_checked
  · rfl
  · simpa only [s2Step367FrontPlan,headEq] using s2Step367ExitBank_checked

private theorem s2Step367Complete_explicit_checked : compileHmrEarlyStepLog s2Step367EntryFBefore s2Step367FrontBank 88 199 ⟨87,87,200,199⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step367CompleteLog=some s2Step367CompletePlan := by
  let Q := s2Step367EarlyControlPlan
  have hq := s2Step367EarlyControl_plan_checked
  have fv1 : s2Step367CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step367CompleteOut.fv.payload[2]?.getD s2Step367CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step367CompleteOut.fv.payload[3]?.getD s2Step367CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step367CompleteOut.fv.payload[4]?.getD s2Step367CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step367EntryFBefore s2Step367EarlyControlArena s2Step367FrontBank 88 199 ⟨87,87,200,199⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step367CompleteLog s2Step367FrontPlan Q
    s2Step367Front_checked s2Step367Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step367Complete_owned s2Step367Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step367EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 805 s2Step367CompleteOut.fv.second (s2Step367CompleteOut.fv.payload[2]?.getD s2Step367CompleteOut.fv.sign) (s2Step367CompleteOut.fv.payload[3]?.getD s2Step367CompleteOut.fv.sign) (s2Step367CompleteOut.fv.payload[4]?.getD s2Step367CompleteOut.fv.sign) 903 60 s2Step367EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep367Arena : Arena := s2Step367EntryFBefore
def s2PrivateStep367Bank : WindowBank := s2Step367FrontBank
def s2PrivateStep367Spec : HmrSourceWalkStepLog := ⟨88,199,⟨87,87,200,199⟩,60,.early s2Step367CompleteLog⟩
def s2PrivateStep367Plan : HmrSourceStepPlan := .early s2Step367CompletePlan
theorem s2PrivateStep367_source : s2PrivateStep367Spec=s2ObservedLogs352[15] := rfl
theorem s2PrivateStep367_checked : compileHmrSourceStepLog s2PrivateStep367Arena s2PrivateStep367Bank
    s2PrivateStep367Spec.fgWidth s2PrivateStep367Spec.vWidth s2PrivateStep367Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 367 s2PrivateStep367Spec.need none s2PrivateStep367Spec.log=some s2PrivateStep367Plan := by
  change compileHmrSourceStepLog s2Step367EntryFBefore s2Step367FrontBank 88 199 ⟨87,87,200,199⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 367 60 none (.early s2Step367CompleteLog)=some (.early s2Step367CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 367<498)]
  rw [s2Step367Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
