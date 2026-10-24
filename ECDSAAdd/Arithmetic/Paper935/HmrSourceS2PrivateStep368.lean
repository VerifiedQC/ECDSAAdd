import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep366
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

private def s2Step368CompleteMoves : List (Wire × Wire) := [(802,86)]

private def s2Step368EarlyControlLog : HmrEarlyControlLog := ⟨[802, 797, 785, 819, 831],[796],[783],[800, 789, 827, 844, 907, 913],[]⟩

private def s2Step368FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [903]],[[831], [819], [797], [785]],[[], [], [], []]⟩,[805],[826],[796],[783],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[796, 783, 800, 789]⟩

private def s2Step368CompleteLog : HmrEarlyStepLog := ⟨s2Step368FrontLog,s2Step368CompleteMoves,s2Step368EarlyControlLog⟩

private def s2Step368ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩

private def s2Step368ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812],770⟩

private def s2Step368ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],769⟩

private def s2Step368ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903],771⟩

private def s2Step368FrontOut : WindowBank := ⟨s2Step368ExitFOut,s2Step368ExitGOut,s2Step368ExitFvOut,s2Step368ExitGvOut⟩

private def s2Step368CompleteOut : WindowBank := s2Step368FrontOut.repacked s2Step368CompleteMoves

private def s2Step368EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step368EarlyControlPositiveArena,[796],s2Step368EarlyControlEqualityArena,[783],⟨⟨805,false⟩,[⟨⟨796,false⟩,783⟩]⟩⟩

private def s2Step368EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step368EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step368EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,802⟩,⟨⟨774,false⟩,797⟩,⟨⟨775,false⟩,785⟩,⟨⟨776,false⟩,819⟩,⟨⟨777,false⟩,831⟩]⟩

private def s2Step368EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step368EarlyControlZeroArena,s2Step368EarlyControlZeroPlan,s2Step368EarlyControlClassPlan,s2Step368EarlyControlFlagArena,s2Step368EarlyControlFittedArena,s2Step368EarlyControlHistoryArena,s2Step368EarlyControlSigmaArena,s2Step368EarlyControlOutputArena,s2Step368EarlyControlLog⟩

private def s2Step368CounterWork : List Wire := [796, 783, 800, 789]

private theorem s2Step368Counter_bounded : s2Step368CounterWork.toFinset⊆arenaWires := by norm_num [s2Step368CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step368HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368CounterDuring : Arena := ⟨s2Step368HeadFvAfter.live∪s2Step368CounterWork.toFinset,Finset.union_subset s2Step368HeadFvAfter.bounded s2Step368Counter_bounded⟩

private def s2Step368EntryFFresh : List Wire := []

private def s2Step368EntryFvFresh : List Wire := []

private def s2Step368EntryGFresh : List Wire := []

private def s2Step368EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368EntryGvFresh : List Wire := [903]

private def s2Step368ExitFExtra : List Wire := [819]

private def s2Step368ExitFvExtra : List Wire := [785]

private def s2Step368ExitGExtra : List Wire := [86, 831]

private def s2Step368ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368ExitGvExtra : List Wire := [797]

private def s2Step368Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368Add0Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step368Add0_bounded : s2Step368Add0Work.toFinset⊆arenaWires := by
  have h : s2Step368Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step368Add0During : Arena := ⟨s2Step368Add0Arena.live∪s2Step368Add0Work.toFinset,Finset.union_subset s2Step368Add0Arena.bounded s2Step368Add0_bounded⟩

private def s2Step368Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368Add1Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step368Add1_bounded : s2Step368Add1Work.toFinset⊆arenaWires := by
  have h : s2Step368Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step368Add1During : Arena := ⟨s2Step368Add1Arena.live∪s2Step368Add1Work.toFinset,Finset.union_subset s2Step368Add1Arena.bounded s2Step368Add1_bounded⟩

private def s2Step368F4FlagArena : Arena := ⟨s2Step368HeadFvAfter.live∪{796},Finset.union_subset s2Step368HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step368F4Plan : HmrHybridF4Plan := ⟨s2Step368F4FlagArena,[796],s2Step368Add0Arena,[783],s2Step368Add0During,s2Step368Add0Work,s2Step368Add1During,s2Step368Add1Work⟩

private def s2Step368HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 819],768⟩

private def s2Step368HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 785],770⟩

private def s2Step368HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 831],769⟩

private def s2Step368HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 797],771⟩

private def s2Step368FrontHead : WindowBank := ⟨s2Step368HeadFOut,s2Step368HeadGOut,s2Step368HeadFvOut,s2Step368HeadGvOut⟩

private def s2Step368EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩

private def s2Step368EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812],770⟩

private def s2Step368EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86],769⟩

private def s2Step368EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903],771⟩

private def s2Step368FrontPair : WindowBank := ⟨s2Step368EntryFOut,s2Step368EntryGOut,s2Step368EntryFvOut,s2Step368EntryGvOut⟩

private def s2Step368FrontSigmaArena : Arena := ⟨s2Step368EntryGvAfter.live∪{805},Finset.union_subset s2Step368EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step368HeadFFresh : List Wire := [819]

private def s2Step368HeadFvFresh : List Wire := [785]

private def s2Step368HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368HeadGFresh : List Wire := [831]

private def s2Step368HeadGvFresh : List Wire := [797]

private def s2Step368FrontPlan : HmrSourceFront := ⟨s2Step368EntryGvAfter,s2Step368FrontPair,(growRow 768 s2Step368EntryFFresh ++ (growRow 769 s2Step368EntryGFresh ++ (growRow 770 s2Step368EntryFvFresh ++ (growRow 771 s2Step368EntryGvFresh ++ [])))),s2Step368FrontSigmaArena,[805],s2Step368HeadGBefore,[826],
  s2Step368HeadFvAfter,s2Step368FrontHead,(growRow 769 s2Step368HeadGFresh ++ (growRow 768 s2Step368HeadFFresh ++ (growRow 771 s2Step368HeadGvFresh ++ (growRow 770 s2Step368HeadFvFresh ++ [])))),s2Step368F4Plan,s2Step368CounterDuring,s2Step368CounterWork,s2Step368ExitGvAfter,s2Step368FrontOut,(shrinkRow 769 s2Step368ExitGExtra ++ (shrinkRow 768 s2Step368ExitFExtra ++ (shrinkRow 770 s2Step368ExitFvExtra ++ (shrinkRow 771 s2Step368ExitGvExtra ++ []))))⟩

private def s2Step368CompletePlan : HmrEarlyStepPlan := ⟨s2Step368FrontPlan,s2Step368EarlyControlArena,s2Step368EarlyControlPlan,s2Step368CompleteMoves⟩

private theorem s2Step368Complete_apart : List.Disjoint (s2Step368CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [805, 826, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step368CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[805, 826, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step368Complete_owned : (s2Step368CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step368EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step368EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step368CompleteMoveArena : Arena := ⟨s2Step368ExitGvAfter.live∪{86},Finset.union_subset s2Step368ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step368Complete_repack : s2Step368ExitGvAfter.checkRepack s2Step368CompleteMoves=some s2Step368EarlyControlArena := by
  have owned : 802∈s2Step368ExitGvAfter.live := by norm_num [s2Step368ExitGvAfter,arenaWires]
  have reserve : s2Step368ExitGvAfter.reserve {86}=some s2Step368CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step368ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step368CompleteMoveArena.retireSet {802}=s2Step368EarlyControlArena := by
    unfold Arena.retireSet s2Step368EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step368CompleteMoveArena,s2Step368ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step368CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step368CompleteMoveArena.retireSet {802}).checkRepack []=some s2Step368EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step368EarlyControl_branchOwned : ([826] : List Wire).toFinset⊆s2Step368EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step368EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368EarlyControl_branch : compileHmrBranchRetirement s2Step368EarlyControlSigmaArena 826=some s2Step368EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step368EarlyControl_branchOwned
  · ext q
    simp [s2Step368EarlyControlOutputArena,s2Step368EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step368EarlyControl_classEqualityBorrow : s2Step368EarlyControlPositiveArena.checkBorrow (([805, 796] : List Wire).length-1) s2Step368EarlyControlLog.classWork=some s2Step368EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step368EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step368EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step368EarlyControlEqualityArena,s2Step368EarlyControlPositiveArena,s2Step368EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step368EarlyControl_classEqualityOwned : ([805, 796] : List Wire).toFinset⊆s2Step368EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step368EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368EarlyControl_classEquality : compileHmrEqualityLog s2Step368EarlyControlPositiveArena [805, 796] 0 s2Step368EarlyControlLog.classWork=some (s2Step368EarlyControlEqualityArena,s2Step368EarlyControlLog.classWork,s2Step368EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step368EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step368EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step368EarlyControl_classOwned : ([777, 831, 805] : List Wire).toFinset⊆s2Step368EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step368EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368EarlyControl_positiveBorrow : s2Step368EarlyControlZeroArena.checkBorrow (1) s2Step368EarlyControlLog.positiveWork=some s2Step368EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step368EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step368EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step368EarlyControlPositiveArena,s2Step368EarlyControlZeroArena,s2Step368EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step368EarlyControl_class : compileHmrSourceClassLog s2Step368EarlyControlZeroArena false 777 s2Step368EarlyControlZeroPlan.top 0 805 s2Step368EarlyControlLog.positiveWork s2Step368EarlyControlLog.classWork=some s2Step368EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step368EarlyControlClassPlan s2Step368EarlyControlZeroArena false 777 s2Step368EarlyControlZeroPlan.top 0 805
  constructor
  · decide +kernel
  · exact s2Step368EarlyControl_classOwned
  · exact s2Step368EarlyControl_positiveBorrow
  · exact s2Step368EarlyControl_classEquality

private theorem s2Step368EarlyControl_entryRecordOwned : ([826, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step368EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step368EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368EarlyControl_entrySigmaOwned : ([805, 254] : List Wire).toFinset⊆s2Step368EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step368EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368EarlyControl_fitBorrow : s2Step368EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step368EarlyControlLog.recordFresh=some s2Step368EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step368EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step368EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
      decide +kernel
    · ext q
      simp [s2Step368EarlyControlFittedArena,s2Step368EarlyControlFlagArena,s2Step368EarlyControlLog,arenaWires]

private theorem s2Step368EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step368EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step368EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step368EarlyControl_fit : compileHmrRecordGrowLog s2Step368EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step368EarlyControlLog.recordFresh=some s2Step368EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step368EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step368EarlyControl_fitBorrow

private theorem s2Step368EarlyControl_flagsBorrow : s2Step368EarlyControlEqualityArena.checkBorrow (6) s2Step368EarlyControlLog.flagWork=some s2Step368EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step368EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step368EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step368EarlyControlFlagArena,s2Step368EarlyControlEqualityArena,s2Step368EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step368EarlyControl_flagsOwned : ([783, 253, 252, 251] : List Wire).toFinset⊆s2Step368EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step368EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368EarlyControl_flags : compileHmrFlagsLog s2Step368EarlyControlClassPlan.equalityArena s2Step368EarlyControlClassPlan.equality.top 253 252 251 s2Step368EarlyControlLog.flagWork=some s2Step368EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step368EarlyControl_flagsOwned⟩
  · exact s2Step368EarlyControl_flagsBorrow

private theorem s2Step368EarlyControl_historyBorrow : s2Step368EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step368EarlyControlLog.recordFresh=some s2Step368EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step368EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step368EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step368EarlyControlHistoryArena,s2Step368EarlyControlArena,s2Step368EarlyControlLog,arenaWires]

private theorem s2Step368EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step368EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step368EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368EarlyControl_history : compileHmrRecordGrowLog s2Step368EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step368EarlyControlLog.recordFresh=some s2Step368EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step368EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step368EarlyControl_historyBorrow

private theorem s2Step368EarlyControl_sigmaOwned : ([254, 805] : List Wire).toFinset⊆s2Step368EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step368EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368EarlyControl_sigmaReleaseOwned : ([805] : List Wire).toFinset⊆s2Step368EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step368EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368EarlyControl_sigmaRelease : s2Step368EarlyControlHistoryArena.release {805} (fun _ => false)=some s2Step368EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step368EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step368EarlyControlSigmaArena,s2Step368EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step368EarlyControl_sigma : compileHmrSigmaDropLog s2Step368EarlyControlHistoryArena false 0 0 254 805 []=some s2Step368EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step368EarlyControl_sigmaOwned⟩
  · exact s2Step368EarlyControl_sigmaRelease

private theorem s2Step368EarlyControl_zeroBorrow : s2Step368EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step368EarlyControlLog.zeroWork=some s2Step368EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step368EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step368EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step368EarlyControlZeroArena,s2Step368EarlyControlArena,s2Step368EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step368EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step368EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step368EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368EarlyControl_zero : compileHmrEqualityLog s2Step368EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step368EarlyControlLog.zeroWork=some (s2Step368EarlyControlZeroArena,s2Step368EarlyControlLog.zeroWork,s2Step368EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step368EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step368EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step368EarlyControl_logged : s2Step368EarlyControlPlan.Logged s2Step368EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 805 254 253 252 251 826 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step368EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step368EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step368EarlyControl_zero
  · exact s2Step368EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step368EarlyControl_flags
  · exact s2Step368EarlyControl_fit
  · exact s2Step368EarlyControl_history
  · exact s2Step368EarlyControl_sigma
  · exact s2Step368EarlyControl_branch

private theorem s2Step368EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step368EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 805 254 253 252 251 826 60 s2Step368EarlyControlLog=some s2Step368EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step368EarlyControlPlan s2Step368EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 805 254 253 252 251 826 60 s2Step368EarlyControl_logged

private def s2Step368EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩

private def s2Step368EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812],770⟩

private def s2Step368EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86],769⟩

private def s2Step368EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820],771⟩

private def s2Step368FrontBank : WindowBank := ⟨s2Step368EntryFRow,s2Step368EntryGRow,s2Step368EntryFvRow,s2Step368EntryGvRow⟩

private def s2Step368Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 819, 768]

private def s2Step368Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 831, 769]

private def s2Step368Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 785, 770]

private def s2Step368Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 797, 771]

private theorem s2Step368Counter_apart : Disjoint s2Step368HeadFvAfter.live s2Step368CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step368HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368Counter_borrowed : s2Step368HeadFvAfter.checkBorrow 4 s2Step368CounterWork=some s2Step368CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step368HeadFvAfter s2Step368CounterDuring s2Step368CounterWork.toFinset s2Step368Counter_bounded s2Step368Counter_apart rfl

private theorem s2Step368Counter_owned : (805::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step368HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step368HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368Counter_checked : compileHmrCounterStepLog s2Step368HeadFvAfter true 805 [772, 773, 774, 775, 776, 777] s2Step368CounterWork=some s2Step368CounterDuring := by
  have owned : ∀q∈805::[772, 773, 774, 775, 776, 777],q∈s2Step368HeadFvAfter.live := fun q hq => s2Step368Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step368Counter_borrowed

private def s2Step368EntryFAfter : Arena := s2Step368EntryFBefore

private theorem s2Step368EntryBank_incomingDistinct : ([s2Step368EntryFRow,s2Step368EntryGRow,s2Step368EntryFvRow,s2Step368EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368EntryF_Incoming : rowsOwned s2Step368EntryFBefore [s2Step368EntryFRow,s2Step368EntryGRow,s2Step368EntryFvRow,s2Step368EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step368EntryFRow,s2Step368EntryGRow,s2Step368EntryFvRow,s2Step368EntryGvRow] 0 s2Step368EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step368EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step368EntryBank_outgoingOwned : rowsOwned s2Step368EntryGvAfter [s2Step368EntryFOut,s2Step368EntryGOut,s2Step368EntryFvOut,s2Step368EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step368EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step368EntryF_Outgoing : rowsOwned s2Step368EntryGvAfter [s2Step368EntryFOut,s2Step368EntryGOut,s2Step368EntryFvOut,s2Step368EntryGvOut] :=
  hmrRows_owned_drop s2Step368EntryGvAfter [s2Step368EntryFOut,s2Step368EntryGOut,s2Step368EntryFvOut,s2Step368EntryGvOut] 0 s2Step368EntryBank_outgoingOwned

private theorem s2Step368EntryF_distinct : (s2Step368EntryFRow.sign::s2Step368EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368EntryF_owned : (s2Step368EntryFRow.sign::s2Step368EntryFRow.payload).toFinset⊆s2Step368EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step368EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368EntryF_reserved : s2Step368EntryFBefore.reserve s2Step368EntryFFresh.toFinset=some s2Step368EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step368EntryFFresh,arenaWires]
  · norm_num [s2Step368EntryFBefore,s2Step368EntryFFresh,arenaWires]
  · simp only [s2Step368EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step368EntryF_checked : planRowResizeLog s2Step368EntryFBefore s2Step368EntryFRow 87 s2Step368EntryFFresh=
    some (s2Step368EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩,growRow 768 s2Step368EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step368EntryFBefore s2Step368EntryFAfter s2Step368EntryFRow 87 s2Step368EntryFFresh
    s2Step368EntryF_distinct s2Step368EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step368EntryF_reserved
  have rowEq : WindowRow.mk (s2Step368EntryFRow.payload++s2Step368EntryFFresh) s2Step368EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step368EntryFvAfter : Arena := s2Step368EntryFBefore

private def s2Step368EntryFvBefore : Arena := s2Step368EntryFBefore

private theorem s2Step368EntryFv_Incoming : rowsOwned s2Step368EntryFvBefore [s2Step368EntryFvRow,s2Step368EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step368EntryFRow,s2Step368EntryGRow,s2Step368EntryFvRow,s2Step368EntryGvRow] 2 s2Step368EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step368EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step368EntryFv_Outgoing : rowsOwned s2Step368EntryGvAfter [s2Step368EntryFvOut,s2Step368EntryGvOut] :=
  hmrRows_owned_drop s2Step368EntryGvAfter [s2Step368EntryFOut,s2Step368EntryGOut,s2Step368EntryFvOut,s2Step368EntryGvOut] 2 s2Step368EntryBank_outgoingOwned

private theorem s2Step368EntryFv_distinct : (s2Step368EntryFvRow.sign::s2Step368EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368EntryFv_owned : (s2Step368EntryFvRow.sign::s2Step368EntryFvRow.payload).toFinset⊆s2Step368EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step368EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368EntryFv_reserved : s2Step368EntryFvBefore.reserve s2Step368EntryFvFresh.toFinset=some s2Step368EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step368EntryFvFresh,arenaWires]
  · norm_num [s2Step368EntryFvBefore,s2Step368EntryFBefore,s2Step368EntryFvFresh,arenaWires]
  · simp only [s2Step368EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step368EntryFv_checked : planRowResizeLog s2Step368EntryFvBefore s2Step368EntryFvRow 200 s2Step368EntryFvFresh=
    some (s2Step368EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812],770⟩,growRow 770 s2Step368EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step368EntryFvBefore s2Step368EntryFvAfter s2Step368EntryFvRow 200 s2Step368EntryFvFresh
    s2Step368EntryFv_distinct s2Step368EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step368EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step368EntryFvRow.payload++s2Step368EntryFvFresh) s2Step368EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step368EntryGAfter : Arena := s2Step368EntryFBefore

private def s2Step368EntryGBefore : Arena := s2Step368EntryFBefore

private theorem s2Step368EntryG_Incoming : rowsOwned s2Step368EntryGBefore [s2Step368EntryGRow,s2Step368EntryFvRow,s2Step368EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step368EntryFRow,s2Step368EntryGRow,s2Step368EntryFvRow,s2Step368EntryGvRow] 1 s2Step368EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step368EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step368EntryG_Outgoing : rowsOwned s2Step368EntryGvAfter [s2Step368EntryGOut,s2Step368EntryFvOut,s2Step368EntryGvOut] :=
  hmrRows_owned_drop s2Step368EntryGvAfter [s2Step368EntryFOut,s2Step368EntryGOut,s2Step368EntryFvOut,s2Step368EntryGvOut] 1 s2Step368EntryBank_outgoingOwned

private theorem s2Step368EntryG_distinct : (s2Step368EntryGRow.sign::s2Step368EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368EntryG_owned : (s2Step368EntryGRow.sign::s2Step368EntryGRow.payload).toFinset⊆s2Step368EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step368EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368EntryG_reserved : s2Step368EntryGBefore.reserve s2Step368EntryGFresh.toFinset=some s2Step368EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step368EntryGFresh,arenaWires]
  · norm_num [s2Step368EntryGBefore,s2Step368EntryFBefore,s2Step368EntryGFresh,arenaWires]
  · simp only [s2Step368EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step368EntryG_checked : planRowResizeLog s2Step368EntryGBefore s2Step368EntryGRow 87 s2Step368EntryGFresh=
    some (s2Step368EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86],769⟩,growRow 769 s2Step368EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step368EntryGBefore s2Step368EntryGAfter s2Step368EntryGRow 87 s2Step368EntryGFresh
    s2Step368EntryG_distinct s2Step368EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step368EntryG_reserved
  have rowEq : WindowRow.mk (s2Step368EntryGRow.payload++s2Step368EntryGFresh) s2Step368EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step368EntryGvBefore : Arena := s2Step368EntryFBefore

private theorem s2Step368EntryGv_Incoming : rowsOwned s2Step368EntryGvBefore [s2Step368EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step368EntryFRow,s2Step368EntryGRow,s2Step368EntryFvRow,s2Step368EntryGvRow] 3 s2Step368EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step368EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step368EntryGv_Outgoing : rowsOwned s2Step368EntryGvAfter [s2Step368EntryGvOut] :=
  hmrRows_owned_drop s2Step368EntryGvAfter [s2Step368EntryFOut,s2Step368EntryGOut,s2Step368EntryFvOut,s2Step368EntryGvOut] 3 s2Step368EntryBank_outgoingOwned

private theorem s2Step368EntryGv_distinct : (s2Step368EntryGvRow.sign::s2Step368EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368EntryGv_owned : (s2Step368EntryGvRow.sign::s2Step368EntryGvRow.payload).toFinset⊆s2Step368EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step368EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368EntryGv_reserved : s2Step368EntryGvBefore.reserve s2Step368EntryGvFresh.toFinset=some s2Step368EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step368EntryGvFresh,arenaWires]
  · norm_num [s2Step368EntryGvBefore,s2Step368EntryFBefore,s2Step368EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step368EntryGvAfter,s2Step368EntryGvBefore,s2Step368EntryFBefore,s2Step368EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step368EntryGv_checked : planRowResizeLog s2Step368EntryGvBefore s2Step368EntryGvRow 200 s2Step368EntryGvFresh=
    some (s2Step368EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903],771⟩,growRow 771 s2Step368EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step368EntryGvBefore s2Step368EntryGvAfter s2Step368EntryGvRow 200 s2Step368EntryGvFresh
    s2Step368EntryGv_distinct s2Step368EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step368EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step368EntryGvRow.payload++s2Step368EntryGvFresh) s2Step368EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step368EntryBank_rows : planWindowRowsLog s2Step368EntryFBefore [(s2Step368EntryFRow,87),(s2Step368EntryGRow,87),(s2Step368EntryFvRow,200),(s2Step368EntryGvRow,200)] [s2Step368EntryFFresh,s2Step368EntryGFresh,s2Step368EntryFvFresh,s2Step368EntryGvFresh]=
    some (s2Step368EntryGvAfter,[s2Step368EntryFOut,s2Step368EntryGOut,s2Step368EntryFvOut,s2Step368EntryGvOut],(growRow 768 s2Step368EntryFFresh ++ (growRow 769 s2Step368EntryGFresh ++ (growRow 770 s2Step368EntryFvFresh ++ (growRow 771 s2Step368EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step368EntryGvAfter [] []=some (s2Step368EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step368EntryGvBefore s2Step368EntryGvAfter s2Step368EntryGvAfter
    s2Step368EntryGvRow s2Step368EntryGvOut 200 s2Step368EntryGvFresh [] [] []
    (growRow 771 s2Step368EntryGvFresh) ([]) s2Step368EntryGv_Incoming s2Step368EntryGv_checked h4 s2Step368EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step368EntryFvBefore s2Step368EntryFvAfter s2Step368EntryGvAfter
    s2Step368EntryFvRow s2Step368EntryFvOut 200 s2Step368EntryFvFresh [(s2Step368EntryGvRow,200)] [s2Step368EntryGvFresh] [s2Step368EntryGvOut]
    (growRow 770 s2Step368EntryFvFresh) ((growRow 771 s2Step368EntryGvFresh ++ [])) s2Step368EntryFv_Incoming s2Step368EntryFv_checked h3 s2Step368EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step368EntryGBefore s2Step368EntryGAfter s2Step368EntryGvAfter
    s2Step368EntryGRow s2Step368EntryGOut 87 s2Step368EntryGFresh [(s2Step368EntryFvRow,200),(s2Step368EntryGvRow,200)] [s2Step368EntryFvFresh,s2Step368EntryGvFresh] [s2Step368EntryFvOut,s2Step368EntryGvOut]
    (growRow 769 s2Step368EntryGFresh) ((growRow 770 s2Step368EntryFvFresh ++ (growRow 771 s2Step368EntryGvFresh ++ []))) s2Step368EntryG_Incoming s2Step368EntryG_checked h2 s2Step368EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step368EntryFBefore s2Step368EntryFAfter s2Step368EntryGvAfter
    s2Step368EntryFRow s2Step368EntryFOut 87 s2Step368EntryFFresh [(s2Step368EntryGRow,87),(s2Step368EntryFvRow,200),(s2Step368EntryGvRow,200)] [s2Step368EntryGFresh,s2Step368EntryFvFresh,s2Step368EntryGvFresh] [s2Step368EntryGOut,s2Step368EntryFvOut,s2Step368EntryGvOut]
    (growRow 768 s2Step368EntryFFresh) ((growRow 769 s2Step368EntryGFresh ++ (growRow 770 s2Step368EntryFvFresh ++ (growRow 771 s2Step368EntryGvFresh ++ [])))) s2Step368EntryF_Incoming s2Step368EntryF_checked h1 s2Step368EntryF_Outgoing
  exact h0

private theorem s2Step368EntryBank_checked : compileHmrBankResizeLog .entry s2Step368EntryFBefore ⟨s2Step368EntryFRow,s2Step368EntryGRow,s2Step368EntryFvRow,s2Step368EntryGvRow⟩ ⟨87,87,200,200⟩ [s2Step368EntryFFresh,s2Step368EntryGFresh,s2Step368EntryFvFresh,s2Step368EntryGvFresh]=
    some (s2Step368EntryGvAfter,⟨s2Step368EntryFOut,s2Step368EntryGOut,s2Step368EntryFvOut,s2Step368EntryGvOut⟩,(growRow 768 s2Step368EntryFFresh ++ (growRow 769 s2Step368EntryGFresh ++ (growRow 770 s2Step368EntryFvFresh ++ (growRow 771 s2Step368EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step368EntryBank_rows]
  rfl

private def s2Step368ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368ExitFBefore : Arena := s2Step368ExitGAfter

private def s2Step368ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 819],768⟩

private def s2Step368ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 785],770⟩

private def s2Step368ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 831],769⟩

private def s2Step368ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 797],771⟩

private theorem s2Step368ExitBank_incomingDistinct : ([s2Step368ExitGRow,s2Step368ExitFRow,s2Step368ExitFvRow,s2Step368ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368ExitF_Incoming : rowsOwned s2Step368ExitFBefore [s2Step368ExitFRow,s2Step368ExitFvRow,s2Step368ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step368ExitGRow,s2Step368ExitFRow,s2Step368ExitFvRow,s2Step368ExitGvRow] 1 s2Step368ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step368ExitFBefore (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step368ExitBank_outgoingOwned : rowsOwned s2Step368ExitGvAfter [s2Step368ExitGOut,s2Step368ExitFOut,s2Step368ExitFvOut,s2Step368ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step368ExitGvAfter (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step368ExitF_Outgoing : rowsOwned s2Step368ExitGvAfter [s2Step368ExitFOut,s2Step368ExitFvOut,s2Step368ExitGvOut] :=
  hmrRows_owned_drop s2Step368ExitGvAfter [s2Step368ExitGOut,s2Step368ExitFOut,s2Step368ExitFvOut,s2Step368ExitGvOut] 1 s2Step368ExitBank_outgoingOwned

private theorem s2Step368ExitF_distinct : (s2Step368ExitFRow.sign::s2Step368ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368ExitF_owned : (s2Step368ExitFRow.sign::s2Step368ExitFRow.payload).toFinset⊆s2Step368ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step368ExitFBefore (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368ExitF_retired : s2Step368ExitFBefore.retireSet s2Step368ExitFExtra.toFinset=s2Step368ExitFAfter := by
  unfold Arena.retireSet s2Step368ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step368ExitFBefore,s2Step368ExitGAfter,s2Step368ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step368ExitF_checked : planRowResizeLog s2Step368ExitFBefore s2Step368ExitFRow 87 []=
    some (s2Step368ExitFAfter,s2Step368ExitFOut,shrinkRow 768 s2Step368ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step368ExitFBefore s2Step368ExitFRow 87 s2Step368ExitF_distinct s2Step368ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step368ExitFRow.payload.take 87) s2Step368ExitFRow.sign=s2Step368ExitFOut := by decide +kernel
  have hi : s2Step368ExitFRow.payload.drop 87=s2Step368ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step368ExitF_retired] at result
  exact result

private def s2Step368ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368ExitFvBefore : Arena := s2Step368ExitFAfter

private theorem s2Step368ExitFv_Incoming : rowsOwned s2Step368ExitFvBefore [s2Step368ExitFvRow,s2Step368ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step368ExitGRow,s2Step368ExitFRow,s2Step368ExitFvRow,s2Step368ExitGvRow] 2 s2Step368ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step368ExitFvBefore (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step368ExitFv_Outgoing : rowsOwned s2Step368ExitGvAfter [s2Step368ExitFvOut,s2Step368ExitGvOut] :=
  hmrRows_owned_drop s2Step368ExitGvAfter [s2Step368ExitGOut,s2Step368ExitFOut,s2Step368ExitFvOut,s2Step368ExitGvOut] 2 s2Step368ExitBank_outgoingOwned

private theorem s2Step368ExitFv_distinct : (s2Step368ExitFvRow.sign::s2Step368ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368ExitFv_owned : (s2Step368ExitFvRow.sign::s2Step368ExitFvRow.payload).toFinset⊆s2Step368ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step368ExitFvBefore (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368ExitFv_retired : s2Step368ExitFvBefore.retireSet s2Step368ExitFvExtra.toFinset=s2Step368ExitFvAfter := by
  unfold Arena.retireSet s2Step368ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step368ExitFvBefore,s2Step368ExitFAfter,s2Step368ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step368ExitFv_checked : planRowResizeLog s2Step368ExitFvBefore s2Step368ExitFvRow 200 []=
    some (s2Step368ExitFvAfter,s2Step368ExitFvOut,shrinkRow 770 s2Step368ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step368ExitFvBefore s2Step368ExitFvRow 200 s2Step368ExitFv_distinct s2Step368ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step368ExitFvRow.payload.take 200) s2Step368ExitFvRow.sign=s2Step368ExitFvOut := by decide +kernel
  have hi : s2Step368ExitFvRow.payload.drop 200=s2Step368ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step368ExitFv_retired] at result
  exact result

private def s2Step368ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step368ExitG_Incoming : rowsOwned s2Step368ExitGBefore [s2Step368ExitGRow,s2Step368ExitFRow,s2Step368ExitFvRow,s2Step368ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step368ExitGRow,s2Step368ExitFRow,s2Step368ExitFvRow,s2Step368ExitGvRow] 0 s2Step368ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step368ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step368ExitG_Outgoing : rowsOwned s2Step368ExitGvAfter [s2Step368ExitGOut,s2Step368ExitFOut,s2Step368ExitFvOut,s2Step368ExitGvOut] :=
  hmrRows_owned_drop s2Step368ExitGvAfter [s2Step368ExitGOut,s2Step368ExitFOut,s2Step368ExitFvOut,s2Step368ExitGvOut] 0 s2Step368ExitBank_outgoingOwned

private theorem s2Step368ExitG_distinct : (s2Step368ExitGRow.sign::s2Step368ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368ExitG_owned : (s2Step368ExitGRow.sign::s2Step368ExitGRow.payload).toFinset⊆s2Step368ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step368ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368ExitG_retired : s2Step368ExitGBefore.retireSet s2Step368ExitGExtra.toFinset=s2Step368ExitGAfter := by
  unfold Arena.retireSet s2Step368ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step368ExitGBefore,s2Step368ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step368ExitG_checked : planRowResizeLog s2Step368ExitGBefore s2Step368ExitGRow 86 []=
    some (s2Step368ExitGAfter,s2Step368ExitGOut,shrinkRow 769 s2Step368ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step368ExitGBefore s2Step368ExitGRow 86 s2Step368ExitG_distinct s2Step368ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step368ExitGRow.payload.take 86) s2Step368ExitGRow.sign=s2Step368ExitGOut := by decide +kernel
  have hi : s2Step368ExitGRow.payload.drop 86=s2Step368ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step368ExitG_retired] at result
  exact result

private def s2Step368ExitGvBefore : Arena := s2Step368ExitFvAfter

private theorem s2Step368ExitGv_Incoming : rowsOwned s2Step368ExitGvBefore [s2Step368ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step368ExitGRow,s2Step368ExitFRow,s2Step368ExitFvRow,s2Step368ExitGvRow] 3 s2Step368ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step368ExitGvBefore (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step368ExitGv_Outgoing : rowsOwned s2Step368ExitGvAfter [s2Step368ExitGvOut] :=
  hmrRows_owned_drop s2Step368ExitGvAfter [s2Step368ExitGOut,s2Step368ExitFOut,s2Step368ExitFvOut,s2Step368ExitGvOut] 3 s2Step368ExitBank_outgoingOwned

private theorem s2Step368ExitGv_distinct : (s2Step368ExitGvRow.sign::s2Step368ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368ExitGv_owned : (s2Step368ExitGvRow.sign::s2Step368ExitGvRow.payload).toFinset⊆s2Step368ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step368ExitGvBefore (fun q => (0≤q ∧ q<86) ∨ (87≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368ExitGv_retired : s2Step368ExitGvBefore.retireSet s2Step368ExitGvExtra.toFinset=s2Step368ExitGvAfter := by
  unfold Arena.retireSet s2Step368ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step368ExitGvBefore,s2Step368ExitFvAfter,s2Step368ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step368ExitGv_checked : planRowResizeLog s2Step368ExitGvBefore s2Step368ExitGvRow 200 []=
    some (s2Step368ExitGvAfter,s2Step368ExitGvOut,shrinkRow 771 s2Step368ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step368ExitGvBefore s2Step368ExitGvRow 200 s2Step368ExitGv_distinct s2Step368ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step368ExitGvRow.payload.take 200) s2Step368ExitGvRow.sign=s2Step368ExitGvOut := by decide +kernel
  have hi : s2Step368ExitGvRow.payload.drop 200=s2Step368ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step368ExitGv_retired] at result
  exact result

private theorem s2Step368ExitBank_rows : planWindowRowsLog s2Step368ExitGBefore [(s2Step368ExitGRow,86),(s2Step368ExitFRow,87),(s2Step368ExitFvRow,200),(s2Step368ExitGvRow,200)] [[],[],[],[]]=
    some (s2Step368ExitGvAfter,[s2Step368ExitGOut,s2Step368ExitFOut,s2Step368ExitFvOut,s2Step368ExitGvOut],(shrinkRow 769 s2Step368ExitGExtra ++ (shrinkRow 768 s2Step368ExitFExtra ++ (shrinkRow 770 s2Step368ExitFvExtra ++ (shrinkRow 771 s2Step368ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step368ExitGvAfter [] []=some (s2Step368ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step368ExitGvBefore s2Step368ExitGvAfter s2Step368ExitGvAfter
    s2Step368ExitGvRow s2Step368ExitGvOut 200 [] [] [] []
    (shrinkRow 771 s2Step368ExitGvExtra) ([]) s2Step368ExitGv_Incoming s2Step368ExitGv_checked h4 s2Step368ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step368ExitFvBefore s2Step368ExitFvAfter s2Step368ExitGvAfter
    s2Step368ExitFvRow s2Step368ExitFvOut 200 [] [(s2Step368ExitGvRow,200)] [[]] [s2Step368ExitGvOut]
    (shrinkRow 770 s2Step368ExitFvExtra) ((shrinkRow 771 s2Step368ExitGvExtra ++ [])) s2Step368ExitFv_Incoming s2Step368ExitFv_checked h3 s2Step368ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step368ExitFBefore s2Step368ExitFAfter s2Step368ExitGvAfter
    s2Step368ExitFRow s2Step368ExitFOut 87 [] [(s2Step368ExitFvRow,200),(s2Step368ExitGvRow,200)] [[],[]] [s2Step368ExitFvOut,s2Step368ExitGvOut]
    (shrinkRow 768 s2Step368ExitFExtra) ((shrinkRow 770 s2Step368ExitFvExtra ++ (shrinkRow 771 s2Step368ExitGvExtra ++ []))) s2Step368ExitF_Incoming s2Step368ExitF_checked h2 s2Step368ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step368ExitGBefore s2Step368ExitGAfter s2Step368ExitGvAfter
    s2Step368ExitGRow s2Step368ExitGOut 86 [] [(s2Step368ExitFRow,87),(s2Step368ExitFvRow,200),(s2Step368ExitGvRow,200)] [[],[],[]] [s2Step368ExitFOut,s2Step368ExitFvOut,s2Step368ExitGvOut]
    (shrinkRow 769 s2Step368ExitGExtra) ((shrinkRow 768 s2Step368ExitFExtra ++ (shrinkRow 770 s2Step368ExitFvExtra ++ (shrinkRow 771 s2Step368ExitGvExtra ++ [])))) s2Step368ExitG_Incoming s2Step368ExitG_checked h1 s2Step368ExitG_Outgoing
  exact h0

private theorem s2Step368ExitBank_checked : compileHmrBankResizeLog .exit s2Step368ExitGBefore ⟨s2Step368ExitFRow,s2Step368ExitGRow,s2Step368ExitFvRow,s2Step368ExitGvRow⟩ ⟨87,86,200,200⟩ [[],[],[],[]]=
    some (s2Step368ExitGvAfter,⟨s2Step368ExitFOut,s2Step368ExitGOut,s2Step368ExitFvOut,s2Step368ExitGvOut⟩,(shrinkRow 769 s2Step368ExitGExtra ++ (shrinkRow 768 s2Step368ExitFExtra ++ (shrinkRow 770 s2Step368ExitFvExtra ++ (shrinkRow 771 s2Step368ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step368ExitBank_rows]
  rfl

private theorem s2Step368Add0_apart : Disjoint s2Step368Add0Arena.live s2Step368Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step368Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368Add0_card : s2Step368Add0Arena.live.card=908 := by
  decide +kernel

private theorem s2Step368Add0_borrowed : s2Step368Add0Arena.checkBorrow (hmrHybridCount s2Step368Add0Arena s2Step368Add0B.length) s2Step368Add0Work=some s2Step368Add0During := by
  have len : s2Step368Add0Work.length=hmrHybridCount s2Step368Add0Arena s2Step368Add0B.length := by
    rw [hmrHybridCount,s2Step368Add0_card]
    decide +kernel
  have nd : s2Step368Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step368Add0Arena s2Step368Add0During s2Step368Add0Work.toFinset s2Step368Add0_bounded s2Step368Add0_apart rfl

private theorem s2Step368Add0_distinct : (796::826::783::(s2Step368Add0A++s2Step368Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368Add0_owned : (796::826::783::(s2Step368Add0A++s2Step368Add0B)).toFinset⊆s2Step368Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step368Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368Add0_checked : compileHmrHybridCinLog s2Step368Add0Arena 826 796 783 s2Step368Add0A s2Step368Add0B s2Step368Add0Work=some s2Step368Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step368Add0Arena s2Step368Add0During 826 796 783 s2Step368Add0A s2Step368Add0B s2Step368Add0Work
    (by decide +kernel) (by decide +kernel) s2Step368Add0_distinct
    (fun q hq => s2Step368Add0_owned (List.mem_toFinset.mpr hq)) s2Step368Add0_borrowed

private theorem s2Step368Add1_apart : Disjoint s2Step368Add1Arena.live s2Step368Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step368Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368Add1_card : s2Step368Add1Arena.live.card=908 := by
  decide +kernel

private theorem s2Step368Add1_borrowed : s2Step368Add1Arena.checkBorrow (hmrHybridCount s2Step368Add1Arena s2Step368Add1B.length) s2Step368Add1Work=some s2Step368Add1During := by
  have len : s2Step368Add1Work.length=hmrHybridCount s2Step368Add1Arena s2Step368Add1B.length := by
    rw [hmrHybridCount,s2Step368Add1_card]
    decide +kernel
  have nd : s2Step368Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step368Add1Arena s2Step368Add1During s2Step368Add1Work.toFinset s2Step368Add1_bounded s2Step368Add1_apart rfl

private theorem s2Step368Add1_distinct : (796::826::783::(s2Step368Add1A++s2Step368Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368Add1_owned : (796::826::783::(s2Step368Add1A++s2Step368Add1B)).toFinset⊆s2Step368Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step368Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368Add1_checked : compileHmrHybridCinLog s2Step368Add1Arena 826 796 783 s2Step368Add1A s2Step368Add1B s2Step368Add1Work=some s2Step368Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step368Add1Arena s2Step368Add1During 826 796 783 s2Step368Add1A s2Step368Add1B s2Step368Add1Work
    (by decide +kernel) (by decide +kernel) s2Step368Add1_distinct
    (fun q hq => s2Step368Add1_owned (List.mem_toFinset.mpr hq)) s2Step368Add1_borrowed

private theorem s2Step368F4_apart : Disjoint (s2Step368Add0A++s2Step368Add0B).toFinset (s2Step368Add1A++s2Step368Add1B).toFinset := by
  have nd : ((s2Step368Add0A++s2Step368Add0B)++(s2Step368Add1A++s2Step368Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step368F4_carry : s2Step368F4FlagArena.checkBorrow 1 [783]=some s2Step368Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step368F4FlagArena,s2Step368HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step368F4FlagArena,s2Step368HeadFvAfter,s2Step368Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step368F4_distinct : (805::826::796::783::((s2Step368Add0A++s2Step368Add1A)++(s2Step368Add0B++s2Step368Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368F4_flag : s2Step368HeadFvAfter.checkBorrow 1 [796]=some s2Step368F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step368HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step368F4_owned : (805::826::((s2Step368Add0A++s2Step368Add1A)++(s2Step368Add0B++s2Step368Add1B))).toFinset⊆s2Step368HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step368HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368F4_checked : compileHmrHybridF4Log s2Step368HeadFvAfter 805 826 s2Step368Add0A s2Step368Add0B s2Step368Add1A s2Step368Add1B [796] [783] s2Step368Add0Work s2Step368Add1Work=some s2Step368F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step368HeadFvAfter s2Step368F4FlagArena s2Step368Add0Arena s2Step368Add0During s2Step368Add1During 805 826
    s2Step368Add0A s2Step368Add0B s2Step368Add1A s2Step368Add1B [796] [783] s2Step368Add0Work s2Step368Add1Work
    (fun q hq => s2Step368F4_owned (List.mem_toFinset.mpr hq)) s2Step368F4_flag s2Step368F4_carry
    s2Step368F4_distinct s2Step368F4_apart s2Step368Add0_checked s2Step368Add1_checked

private theorem s2Step368Front_branch : s2Step368FrontSigmaArena.checkBorrow 1 [826]=some s2Step368HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step368FrontSigmaArena,s2Step368EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step368FrontSigmaArena,s2Step368EntryGvAfter,s2Step368HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step368Front_entry : HmrFrontEntryValid s2Step368EntryFBefore s2Step368FrontBank 87 200 ⟨87,86,200,200⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step368FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step368EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step368EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step368FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step368Front_sigma : s2Step368EntryGvAfter.checkBorrow 1 [805]=some s2Step368FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step368EntryGvAfter,arenaWires]
  · rfl

private def s2Step368HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368HeadFBefore : Arena := s2Step368HeadGAfter

private def s2Step368HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩

private def s2Step368HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812],770⟩

private def s2Step368HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86],769⟩

private def s2Step368HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903],771⟩

private theorem s2Step368HeadBank_incomingDistinct : ([s2Step368HeadGRow,s2Step368HeadFRow,s2Step368HeadGvRow,s2Step368HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368HeadF_Incoming : rowsOwned s2Step368HeadFBefore [s2Step368HeadFRow,s2Step368HeadGvRow,s2Step368HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step368HeadGRow,s2Step368HeadFRow,s2Step368HeadGvRow,s2Step368HeadFvRow] 1 s2Step368HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step368HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step368HeadBank_outgoingOwned : rowsOwned s2Step368HeadFvAfter [s2Step368HeadGOut,s2Step368HeadFOut,s2Step368HeadGvOut,s2Step368HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step368HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step368HeadF_Outgoing : rowsOwned s2Step368HeadFvAfter [s2Step368HeadFOut,s2Step368HeadGvOut,s2Step368HeadFvOut] :=
  hmrRows_owned_drop s2Step368HeadFvAfter [s2Step368HeadGOut,s2Step368HeadFOut,s2Step368HeadGvOut,s2Step368HeadFvOut] 1 s2Step368HeadBank_outgoingOwned

private theorem s2Step368HeadF_distinct : (s2Step368HeadFRow.sign::s2Step368HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368HeadF_owned : (s2Step368HeadFRow.sign::s2Step368HeadFRow.payload).toFinset⊆s2Step368HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step368HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368HeadF_reserved : s2Step368HeadFBefore.reserve s2Step368HeadFFresh.toFinset=some s2Step368HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step368HeadFFresh,arenaWires]
  · norm_num [s2Step368HeadFBefore,s2Step368HeadGAfter,s2Step368HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step368HeadFAfter,s2Step368HeadFBefore,s2Step368HeadGAfter,s2Step368HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step368HeadF_checked : planRowResizeLog s2Step368HeadFBefore s2Step368HeadFRow 88 s2Step368HeadFFresh=
    some (s2Step368HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 819],768⟩,growRow 768 s2Step368HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step368HeadFBefore s2Step368HeadFAfter s2Step368HeadFRow 88 s2Step368HeadFFresh
    s2Step368HeadF_distinct s2Step368HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step368HeadF_reserved
  have rowEq : WindowRow.mk (s2Step368HeadFRow.payload++s2Step368HeadFFresh) s2Step368HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 819],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step368HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step368HeadFvBefore : Arena := s2Step368HeadGvAfter

private theorem s2Step368HeadFv_Incoming : rowsOwned s2Step368HeadFvBefore [s2Step368HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step368HeadGRow,s2Step368HeadFRow,s2Step368HeadGvRow,s2Step368HeadFvRow] 3 s2Step368HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step368HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step368HeadFv_Outgoing : rowsOwned s2Step368HeadFvAfter [s2Step368HeadFvOut] :=
  hmrRows_owned_drop s2Step368HeadFvAfter [s2Step368HeadGOut,s2Step368HeadFOut,s2Step368HeadGvOut,s2Step368HeadFvOut] 3 s2Step368HeadBank_outgoingOwned

private theorem s2Step368HeadFv_distinct : (s2Step368HeadFvRow.sign::s2Step368HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368HeadFv_owned : (s2Step368HeadFvRow.sign::s2Step368HeadFvRow.payload).toFinset⊆s2Step368HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step368HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368HeadFv_reserved : s2Step368HeadFvBefore.reserve s2Step368HeadFvFresh.toFinset=some s2Step368HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step368HeadFvFresh,arenaWires]
  · norm_num [s2Step368HeadFvBefore,s2Step368HeadGvAfter,s2Step368HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step368HeadFvAfter,s2Step368HeadFvBefore,s2Step368HeadGvAfter,s2Step368HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step368HeadFv_checked : planRowResizeLog s2Step368HeadFvBefore s2Step368HeadFvRow 201 s2Step368HeadFvFresh=
    some (s2Step368HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 785],770⟩,growRow 770 s2Step368HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step368HeadFvBefore s2Step368HeadFvAfter s2Step368HeadFvRow 201 s2Step368HeadFvFresh
    s2Step368HeadFv_distinct s2Step368HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step368HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step368HeadFvRow.payload++s2Step368HeadFvFresh) s2Step368HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step368HeadG_Incoming : rowsOwned s2Step368HeadGBefore [s2Step368HeadGRow,s2Step368HeadFRow,s2Step368HeadGvRow,s2Step368HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step368HeadGRow,s2Step368HeadFRow,s2Step368HeadGvRow,s2Step368HeadFvRow] 0 s2Step368HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step368HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step368HeadG_Outgoing : rowsOwned s2Step368HeadFvAfter [s2Step368HeadGOut,s2Step368HeadFOut,s2Step368HeadGvOut,s2Step368HeadFvOut] :=
  hmrRows_owned_drop s2Step368HeadFvAfter [s2Step368HeadGOut,s2Step368HeadFOut,s2Step368HeadGvOut,s2Step368HeadFvOut] 0 s2Step368HeadBank_outgoingOwned

private theorem s2Step368HeadG_distinct : (s2Step368HeadGRow.sign::s2Step368HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368HeadG_owned : (s2Step368HeadGRow.sign::s2Step368HeadGRow.payload).toFinset⊆s2Step368HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step368HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368HeadG_reserved : s2Step368HeadGBefore.reserve s2Step368HeadGFresh.toFinset=some s2Step368HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step368HeadGFresh,arenaWires]
  · norm_num [s2Step368HeadGBefore,s2Step368HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step368HeadGAfter,s2Step368HeadGBefore,s2Step368HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step368HeadG_checked : planRowResizeLog s2Step368HeadGBefore s2Step368HeadGRow 88 s2Step368HeadGFresh=
    some (s2Step368HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 831],769⟩,growRow 769 s2Step368HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step368HeadGBefore s2Step368HeadGAfter s2Step368HeadGRow 88 s2Step368HeadGFresh
    s2Step368HeadG_distinct s2Step368HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step368HeadG_reserved
  have rowEq : WindowRow.mk (s2Step368HeadGRow.payload++s2Step368HeadGFresh) s2Step368HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 831],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step368HeadGvBefore : Arena := s2Step368HeadFAfter

private theorem s2Step368HeadGv_Incoming : rowsOwned s2Step368HeadGvBefore [s2Step368HeadGvRow,s2Step368HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step368HeadGRow,s2Step368HeadFRow,s2Step368HeadGvRow,s2Step368HeadFvRow] 2 s2Step368HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step368HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step368HeadGv_Outgoing : rowsOwned s2Step368HeadFvAfter [s2Step368HeadGvOut,s2Step368HeadFvOut] :=
  hmrRows_owned_drop s2Step368HeadFvAfter [s2Step368HeadGOut,s2Step368HeadFOut,s2Step368HeadGvOut,s2Step368HeadFvOut] 2 s2Step368HeadBank_outgoingOwned

private theorem s2Step368HeadGv_distinct : (s2Step368HeadGvRow.sign::s2Step368HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step368HeadGv_owned : (s2Step368HeadGvRow.sign::s2Step368HeadGvRow.payload).toFinset⊆s2Step368HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step368HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step368HeadGv_reserved : s2Step368HeadGvBefore.reserve s2Step368HeadGvFresh.toFinset=some s2Step368HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step368HeadGvFresh,arenaWires]
  · norm_num [s2Step368HeadGvBefore,s2Step368HeadFAfter,s2Step368HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step368HeadGvAfter,s2Step368HeadGvBefore,s2Step368HeadFAfter,s2Step368HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step368HeadGv_checked : planRowResizeLog s2Step368HeadGvBefore s2Step368HeadGvRow 201 s2Step368HeadGvFresh=
    some (s2Step368HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 797],771⟩,growRow 771 s2Step368HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step368HeadGvBefore s2Step368HeadGvAfter s2Step368HeadGvRow 201 s2Step368HeadGvFresh
    s2Step368HeadGv_distinct s2Step368HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step368HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step368HeadGvRow.payload++s2Step368HeadGvFresh) s2Step368HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 797],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step368HeadBank_rows : planWindowRowsLog s2Step368HeadGBefore [(s2Step368HeadGRow,88),(s2Step368HeadFRow,88),(s2Step368HeadGvRow,201),(s2Step368HeadFvRow,201)] [s2Step368HeadGFresh,s2Step368HeadFFresh,s2Step368HeadGvFresh,s2Step368HeadFvFresh]=
    some (s2Step368HeadFvAfter,[s2Step368HeadGOut,s2Step368HeadFOut,s2Step368HeadGvOut,s2Step368HeadFvOut],(growRow 769 s2Step368HeadGFresh ++ (growRow 768 s2Step368HeadFFresh ++ (growRow 771 s2Step368HeadGvFresh ++ (growRow 770 s2Step368HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step368HeadFvAfter [] []=some (s2Step368HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step368HeadFvBefore s2Step368HeadFvAfter s2Step368HeadFvAfter
    s2Step368HeadFvRow s2Step368HeadFvOut 201 s2Step368HeadFvFresh [] [] []
    (growRow 770 s2Step368HeadFvFresh) ([]) s2Step368HeadFv_Incoming s2Step368HeadFv_checked h4 s2Step368HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step368HeadGvBefore s2Step368HeadGvAfter s2Step368HeadFvAfter
    s2Step368HeadGvRow s2Step368HeadGvOut 201 s2Step368HeadGvFresh [(s2Step368HeadFvRow,201)] [s2Step368HeadFvFresh] [s2Step368HeadFvOut]
    (growRow 771 s2Step368HeadGvFresh) ((growRow 770 s2Step368HeadFvFresh ++ [])) s2Step368HeadGv_Incoming s2Step368HeadGv_checked h3 s2Step368HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step368HeadFBefore s2Step368HeadFAfter s2Step368HeadFvAfter
    s2Step368HeadFRow s2Step368HeadFOut 88 s2Step368HeadFFresh [(s2Step368HeadGvRow,201),(s2Step368HeadFvRow,201)] [s2Step368HeadGvFresh,s2Step368HeadFvFresh] [s2Step368HeadGvOut,s2Step368HeadFvOut]
    (growRow 768 s2Step368HeadFFresh) ((growRow 771 s2Step368HeadGvFresh ++ (growRow 770 s2Step368HeadFvFresh ++ []))) s2Step368HeadF_Incoming s2Step368HeadF_checked h2 s2Step368HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step368HeadGBefore s2Step368HeadGAfter s2Step368HeadFvAfter
    s2Step368HeadGRow s2Step368HeadGOut 88 s2Step368HeadGFresh [(s2Step368HeadFRow,88),(s2Step368HeadGvRow,201),(s2Step368HeadFvRow,201)] [s2Step368HeadFFresh,s2Step368HeadGvFresh,s2Step368HeadFvFresh] [s2Step368HeadFOut,s2Step368HeadGvOut,s2Step368HeadFvOut]
    (growRow 769 s2Step368HeadGFresh) ((growRow 768 s2Step368HeadFFresh ++ (growRow 771 s2Step368HeadGvFresh ++ (growRow 770 s2Step368HeadFvFresh ++ [])))) s2Step368HeadG_Incoming s2Step368HeadG_checked h1 s2Step368HeadG_Outgoing
  exact h0

private theorem s2Step368HeadBank_checked : compileHmrBankResizeLog .headroom s2Step368HeadGBefore ⟨s2Step368HeadFRow,s2Step368HeadGRow,s2Step368HeadFvRow,s2Step368HeadGvRow⟩ ⟨88,88,201,201⟩ [s2Step368HeadGFresh,s2Step368HeadFFresh,s2Step368HeadGvFresh,s2Step368HeadFvFresh]=
    some (s2Step368HeadFvAfter,⟨s2Step368HeadFOut,s2Step368HeadGOut,s2Step368HeadFvOut,s2Step368HeadGvOut⟩,(growRow 769 s2Step368HeadGFresh ++ (growRow 768 s2Step368HeadFFresh ++ (growRow 771 s2Step368HeadGvFresh ++ (growRow 770 s2Step368HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step368HeadBank_rows]
  rfl

private theorem s2Step368Front_checked : compileHmrSourceFrontLog s2Step368EntryFBefore s2Step368FrontBank 87 200 ⟨87,86,200,200⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step368FrontLog=some s2Step368FrontPlan := by
  have pairEq : s2Step368FrontPair=⟨s2Step368HeadFRow,s2Step368HeadGRow,s2Step368HeadFvRow,s2Step368HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step368FrontHead=⟨s2Step368ExitFRow,s2Step368ExitGRow,s2Step368ExitFvRow,s2Step368ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step368Add0A=s2Step368FrontHead.f.wires := by decide +kernel
  have gEq : s2Step368Add0B=s2Step368FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step368Add1A=s2Step368FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step368Add1B=s2Step368FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step368EntryFBefore s2Step368FrontBank 87 200 ⟨87,86,200,200⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step368FrontLog s2Step368FrontPlan
  · exact s2Step368Front_entry
  · exact s2Step368EntryBank_checked
  · exact s2Step368Front_sigma
  · rfl
  · exact s2Step368Front_branch
  · rfl
  · simpa only [s2Step368FrontPlan,pairEq] using s2Step368HeadBank_checked
  · simpa only [s2Step368FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step368F4_checked
  · exact s2Step368Counter_checked
  · rfl
  · simpa only [s2Step368FrontPlan,headEq] using s2Step368ExitBank_checked

private theorem s2Step368Complete_explicit_checked : compileHmrEarlyStepLog s2Step368EntryFBefore s2Step368FrontBank 87 200 ⟨87,86,200,200⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step368CompleteLog=some s2Step368CompletePlan := by
  let Q := s2Step368EarlyControlPlan
  have hq := s2Step368EarlyControl_plan_checked
  have fv1 : s2Step368CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step368CompleteOut.fv.payload[2]?.getD s2Step368CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step368CompleteOut.fv.payload[3]?.getD s2Step368CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step368CompleteOut.fv.payload[4]?.getD s2Step368CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step368EntryFBefore s2Step368EarlyControlArena s2Step368FrontBank 87 200 ⟨87,86,200,200⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step368CompleteLog s2Step368FrontPlan Q
    s2Step368Front_checked s2Step368Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step368Complete_owned s2Step368Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step368EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 805 s2Step368CompleteOut.fv.second (s2Step368CompleteOut.fv.payload[2]?.getD s2Step368CompleteOut.fv.sign) (s2Step368CompleteOut.fv.payload[3]?.getD s2Step368CompleteOut.fv.sign) (s2Step368CompleteOut.fv.payload[4]?.getD s2Step368CompleteOut.fv.sign) 826 60 s2Step368EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep368Arena : Arena := s2Step368EntryFBefore
def s2PrivateStep368Bank : WindowBank := s2Step368FrontBank
def s2PrivateStep368Spec : HmrSourceWalkStepLog := ⟨87,200,⟨87,86,200,200⟩,60,.early s2Step368CompleteLog⟩
def s2PrivateStep368Plan : HmrSourceStepPlan := .early s2Step368CompletePlan
theorem s2PrivateStep368_source : s2PrivateStep368Spec=s2ObservedLogs368[0] := rfl
theorem s2PrivateStep368_checked : compileHmrSourceStepLog s2PrivateStep368Arena s2PrivateStep368Bank
    s2PrivateStep368Spec.fgWidth s2PrivateStep368Spec.vWidth s2PrivateStep368Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 368 s2PrivateStep368Spec.need none s2PrivateStep368Spec.log=some s2PrivateStep368Plan := by
  change compileHmrSourceStepLog s2Step368EntryFBefore s2Step368FrontBank 87 200 ⟨87,86,200,200⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 368 60 none (.early s2Step368CompleteLog)=some (.early s2Step368CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 368<498)]
  rw [s2Step368Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
