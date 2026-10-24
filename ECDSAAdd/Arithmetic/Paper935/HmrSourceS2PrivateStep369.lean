import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep367
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

private def s2Step369CompleteMoves : List (Wire × Wire) := []

private def s2Step369EarlyControlLog : HmrEarlyControlLog := ⟨[819, 785, 826, 797, 796],[783],[800],[789, 827, 844, 907, 913, 914],[]⟩

private def s2Step369FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [826], [], []],[[797], [785], [819], [831]],[[], [], [], []]⟩,[805],[802],[796],[783],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[796, 783, 800, 789]⟩

private def s2Step369CompleteLog : HmrEarlyStepLog := ⟨s2Step369FrontLog,s2Step369CompleteMoves,s2Step369EarlyControlLog⟩

private def s2Step369ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩

private def s2Step369ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831],770⟩

private def s2Step369ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],769⟩

private def s2Step369ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903],771⟩

private def s2Step369FrontOut : WindowBank := ⟨s2Step369ExitFOut,s2Step369ExitGOut,s2Step369ExitFvOut,s2Step369ExitGvOut⟩

private def s2Step369CompleteOut : WindowBank := s2Step369FrontOut.repacked s2Step369CompleteMoves

private def s2Step369EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step369EarlyControlPositiveArena,[783],s2Step369EarlyControlEqualityArena,[800],⟨⟨805,false⟩,[⟨⟨783,false⟩,800⟩]⟩⟩

private def s2Step369EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step369EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<915)),Finset.filter_subset _ _⟩

private def s2Step369EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,819⟩,⟨⟨774,false⟩,785⟩,⟨⟨775,false⟩,826⟩,⟨⟨776,false⟩,797⟩,⟨⟨777,false⟩,796⟩]⟩

private def s2Step369EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step369EarlyControlZeroArena,s2Step369EarlyControlZeroPlan,s2Step369EarlyControlClassPlan,s2Step369EarlyControlFlagArena,s2Step369EarlyControlFittedArena,s2Step369EarlyControlHistoryArena,s2Step369EarlyControlSigmaArena,s2Step369EarlyControlOutputArena,s2Step369EarlyControlLog⟩

private def s2Step369CounterWork : List Wire := [796, 783, 800, 789]

private theorem s2Step369Counter_bounded : s2Step369CounterWork.toFinset⊆arenaWires := by norm_num [s2Step369CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step369HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369CounterDuring : Arena := ⟨s2Step369HeadFvAfter.live∪s2Step369CounterWork.toFinset,Finset.union_subset s2Step369HeadFvAfter.bounded s2Step369Counter_bounded⟩

private def s2Step369EntryFFresh : List Wire := []

private def s2Step369EntryFvFresh : List Wire := []

private def s2Step369EntryGFresh : List Wire := [826]

private def s2Step369EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369EntryGvAfter : Arena := s2Step369EntryGAfter

private def s2Step369EntryGvFresh : List Wire := []

private def s2Step369ExitFExtra : List Wire := [785]

private def s2Step369ExitGExtra : List Wire := [826, 797]

private def s2Step369ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369ExitGvExtra : List Wire := [819]

private def s2Step369Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369Add0Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step369Add0_bounded : s2Step369Add0Work.toFinset⊆arenaWires := by
  have h : s2Step369Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step369Add0During : Arena := ⟨s2Step369Add0Arena.live∪s2Step369Add0Work.toFinset,Finset.union_subset s2Step369Add0Arena.bounded s2Step369Add0_bounded⟩

private def s2Step369Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369Add1Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step369Add1_bounded : s2Step369Add1Work.toFinset⊆arenaWires := by
  have h : s2Step369Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step369Add1During : Arena := ⟨s2Step369Add1Arena.live∪s2Step369Add1Work.toFinset,Finset.union_subset s2Step369Add1Arena.bounded s2Step369Add1_bounded⟩

private def s2Step369F4FlagArena : Arena := ⟨s2Step369HeadFvAfter.live∪{796},Finset.union_subset s2Step369HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step369F4Plan : HmrHybridF4Plan := ⟨s2Step369F4FlagArena,[796],s2Step369Add0Arena,[783],s2Step369Add0During,s2Step369Add0Work,s2Step369Add1During,s2Step369Add1Work⟩

private def s2Step369HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 785],768⟩

private def s2Step369HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831],770⟩

private def s2Step369HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 826, 797],769⟩

private def s2Step369HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 819],771⟩

private def s2Step369FrontHead : WindowBank := ⟨s2Step369HeadFOut,s2Step369HeadGOut,s2Step369HeadFvOut,s2Step369HeadGvOut⟩

private def s2Step369EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩

private def s2Step369EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812],770⟩

private def s2Step369EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 826],769⟩

private def s2Step369EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903],771⟩

private def s2Step369FrontPair : WindowBank := ⟨s2Step369EntryFOut,s2Step369EntryGOut,s2Step369EntryFvOut,s2Step369EntryGvOut⟩

private def s2Step369FrontSigmaArena : Arena := ⟨s2Step369EntryGvAfter.live∪{805},Finset.union_subset s2Step369EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step369HeadFFresh : List Wire := [785]

private def s2Step369HeadFvFresh : List Wire := [831]

private def s2Step369HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369HeadGFresh : List Wire := [797]

private def s2Step369HeadGvFresh : List Wire := [819]

private def s2Step369FrontPlan : HmrSourceFront := ⟨s2Step369EntryGvAfter,s2Step369FrontPair,(growRow 768 s2Step369EntryFFresh ++ (growRow 769 s2Step369EntryGFresh ++ (growRow 770 s2Step369EntryFvFresh ++ (growRow 771 s2Step369EntryGvFresh ++ [])))),s2Step369FrontSigmaArena,[805],s2Step369HeadGBefore,[802],
  s2Step369HeadFvAfter,s2Step369FrontHead,(growRow 769 s2Step369HeadGFresh ++ (growRow 768 s2Step369HeadFFresh ++ (growRow 771 s2Step369HeadGvFresh ++ (growRow 770 s2Step369HeadFvFresh ++ [])))),s2Step369F4Plan,s2Step369CounterDuring,s2Step369CounterWork,s2Step369ExitGvAfter,s2Step369FrontOut,(shrinkRow 769 s2Step369ExitGExtra ++ (shrinkRow 768 s2Step369ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step369ExitGvExtra ++ []))))⟩

private def s2Step369CompletePlan : HmrEarlyStepPlan := ⟨s2Step369FrontPlan,s2Step369EarlyControlArena,s2Step369EarlyControlPlan,s2Step369CompleteMoves⟩

private theorem s2Step369Complete_apart : List.Disjoint (s2Step369CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [805, 802, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step369CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[805, 802, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step369Complete_owned : (s2Step369CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step369EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step369EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369Complete_repack : s2Step369ExitGvAfter.checkRepack s2Step369CompleteMoves=some s2Step369EarlyControlArena := by rfl

private theorem s2Step369EarlyControl_branchOwned : ([802] : List Wire).toFinset⊆s2Step369EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step369EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369EarlyControl_branch : compileHmrBranchRetirement s2Step369EarlyControlSigmaArena 802=some s2Step369EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step369EarlyControl_branchOwned
  · ext q
    simp [s2Step369EarlyControlOutputArena,s2Step369EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step369EarlyControl_classEqualityBorrow : s2Step369EarlyControlPositiveArena.checkBorrow (([805, 783] : List Wire).length-1) s2Step369EarlyControlLog.classWork=some s2Step369EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step369EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step369EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step369EarlyControlEqualityArena,s2Step369EarlyControlPositiveArena,s2Step369EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step369EarlyControl_classEqualityOwned : ([805, 783] : List Wire).toFinset⊆s2Step369EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step369EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369EarlyControl_classEquality : compileHmrEqualityLog s2Step369EarlyControlPositiveArena [805, 783] 0 s2Step369EarlyControlLog.classWork=some (s2Step369EarlyControlEqualityArena,s2Step369EarlyControlLog.classWork,s2Step369EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step369EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step369EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step369EarlyControl_classOwned : ([777, 796, 805] : List Wire).toFinset⊆s2Step369EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step369EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369EarlyControl_positiveBorrow : s2Step369EarlyControlZeroArena.checkBorrow (1) s2Step369EarlyControlLog.positiveWork=some s2Step369EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step369EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step369EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step369EarlyControlPositiveArena,s2Step369EarlyControlZeroArena,s2Step369EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step369EarlyControl_class : compileHmrSourceClassLog s2Step369EarlyControlZeroArena false 777 s2Step369EarlyControlZeroPlan.top 0 805 s2Step369EarlyControlLog.positiveWork s2Step369EarlyControlLog.classWork=some s2Step369EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step369EarlyControlClassPlan s2Step369EarlyControlZeroArena false 777 s2Step369EarlyControlZeroPlan.top 0 805
  constructor
  · decide +kernel
  · exact s2Step369EarlyControl_classOwned
  · exact s2Step369EarlyControl_positiveBorrow
  · exact s2Step369EarlyControl_classEquality

private theorem s2Step369EarlyControl_entryRecordOwned : ([802, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step369EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step369EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369EarlyControl_entrySigmaOwned : ([805, 254] : List Wire).toFinset⊆s2Step369EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step369EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369EarlyControl_fitBorrow : s2Step369EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step369EarlyControlLog.recordFresh=some s2Step369EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step369EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step369EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
      decide +kernel
    · ext q
      simp [s2Step369EarlyControlFittedArena,s2Step369EarlyControlFlagArena,s2Step369EarlyControlLog,arenaWires]

private theorem s2Step369EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step369EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step369EarlyControlFlagArena (fun q => (0≤q ∧ q<915)) rfl
  decide +kernel

private theorem s2Step369EarlyControl_fit : compileHmrRecordGrowLog s2Step369EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step369EarlyControlLog.recordFresh=some s2Step369EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step369EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step369EarlyControl_fitBorrow

private theorem s2Step369EarlyControl_flagsBorrow : s2Step369EarlyControlEqualityArena.checkBorrow (6) s2Step369EarlyControlLog.flagWork=some s2Step369EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step369EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step369EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step369EarlyControlFlagArena,s2Step369EarlyControlEqualityArena,s2Step369EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step369EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step369EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step369EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369EarlyControl_flags : compileHmrFlagsLog s2Step369EarlyControlClassPlan.equalityArena s2Step369EarlyControlClassPlan.equality.top 253 252 251 s2Step369EarlyControlLog.flagWork=some s2Step369EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step369EarlyControl_flagsOwned⟩
  · exact s2Step369EarlyControl_flagsBorrow

private theorem s2Step369EarlyControl_historyBorrow : s2Step369EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step369EarlyControlLog.recordFresh=some s2Step369EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step369EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step369EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step369EarlyControlHistoryArena,s2Step369EarlyControlArena,s2Step369EarlyControlLog,arenaWires]

private theorem s2Step369EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step369EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step369EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369EarlyControl_history : compileHmrRecordGrowLog s2Step369EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step369EarlyControlLog.recordFresh=some s2Step369EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step369EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step369EarlyControl_historyBorrow

private theorem s2Step369EarlyControl_sigmaOwned : ([254, 805] : List Wire).toFinset⊆s2Step369EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step369EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369EarlyControl_sigmaReleaseOwned : ([805] : List Wire).toFinset⊆s2Step369EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step369EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369EarlyControl_sigmaRelease : s2Step369EarlyControlHistoryArena.release {805} (fun _ => false)=some s2Step369EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step369EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step369EarlyControlSigmaArena,s2Step369EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step369EarlyControl_sigma : compileHmrSigmaDropLog s2Step369EarlyControlHistoryArena false 0 0 254 805 []=some s2Step369EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step369EarlyControl_sigmaOwned⟩
  · exact s2Step369EarlyControl_sigmaRelease

private theorem s2Step369EarlyControl_zeroBorrow : s2Step369EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step369EarlyControlLog.zeroWork=some s2Step369EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step369EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step369EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step369EarlyControlZeroArena,s2Step369EarlyControlArena,s2Step369EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step369EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step369EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step369EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369EarlyControl_zero : compileHmrEqualityLog s2Step369EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step369EarlyControlLog.zeroWork=some (s2Step369EarlyControlZeroArena,s2Step369EarlyControlLog.zeroWork,s2Step369EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step369EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step369EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step369EarlyControl_logged : s2Step369EarlyControlPlan.Logged s2Step369EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 805 254 253 252 251 802 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step369EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step369EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step369EarlyControl_zero
  · exact s2Step369EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step369EarlyControl_flags
  · exact s2Step369EarlyControl_fit
  · exact s2Step369EarlyControl_history
  · exact s2Step369EarlyControl_sigma
  · exact s2Step369EarlyControl_branch

private theorem s2Step369EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step369EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 805 254 253 252 251 802 60 s2Step369EarlyControlLog=some s2Step369EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step369EarlyControlPlan s2Step369EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 805 254 253 252 251 802 60 s2Step369EarlyControl_logged

private def s2Step369EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩

private def s2Step369EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812],770⟩

private def s2Step369EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],769⟩

private def s2Step369EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903],771⟩

private def s2Step369FrontBank : WindowBank := ⟨s2Step369EntryFRow,s2Step369EntryGRow,s2Step369EntryFvRow,s2Step369EntryGvRow⟩

private def s2Step369Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 785, 768]

private def s2Step369Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 826, 797, 769]

private def s2Step369Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 770]

private def s2Step369Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 819, 771]

private theorem s2Step369Counter_apart : Disjoint s2Step369HeadFvAfter.live s2Step369CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step369HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369Counter_borrowed : s2Step369HeadFvAfter.checkBorrow 4 s2Step369CounterWork=some s2Step369CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step369HeadFvAfter s2Step369CounterDuring s2Step369CounterWork.toFinset s2Step369Counter_bounded s2Step369Counter_apart rfl

private theorem s2Step369Counter_owned : (805::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step369HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step369HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369Counter_checked : compileHmrCounterStepLog s2Step369HeadFvAfter true 805 [772, 773, 774, 775, 776, 777] s2Step369CounterWork=some s2Step369CounterDuring := by
  have owned : ∀q∈805::[772, 773, 774, 775, 776, 777],q∈s2Step369HeadFvAfter.live := fun q hq => s2Step369Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step369Counter_borrowed

private def s2Step369EntryFAfter : Arena := s2Step369EntryFBefore

private theorem s2Step369EntryBank_incomingDistinct : ([s2Step369EntryFRow,s2Step369EntryGRow,s2Step369EntryFvRow,s2Step369EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369EntryF_Incoming : rowsOwned s2Step369EntryFBefore [s2Step369EntryFRow,s2Step369EntryGRow,s2Step369EntryFvRow,s2Step369EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step369EntryFRow,s2Step369EntryGRow,s2Step369EntryFvRow,s2Step369EntryGvRow] 0 s2Step369EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step369EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step369EntryBank_outgoingOwned : rowsOwned s2Step369EntryGvAfter [s2Step369EntryFOut,s2Step369EntryGOut,s2Step369EntryFvOut,s2Step369EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step369EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step369EntryF_Outgoing : rowsOwned s2Step369EntryGvAfter [s2Step369EntryFOut,s2Step369EntryGOut,s2Step369EntryFvOut,s2Step369EntryGvOut] :=
  hmrRows_owned_drop s2Step369EntryGvAfter [s2Step369EntryFOut,s2Step369EntryGOut,s2Step369EntryFvOut,s2Step369EntryGvOut] 0 s2Step369EntryBank_outgoingOwned

private theorem s2Step369EntryF_distinct : (s2Step369EntryFRow.sign::s2Step369EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369EntryF_owned : (s2Step369EntryFRow.sign::s2Step369EntryFRow.payload).toFinset⊆s2Step369EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step369EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369EntryF_reserved : s2Step369EntryFBefore.reserve s2Step369EntryFFresh.toFinset=some s2Step369EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step369EntryFFresh,arenaWires]
  · norm_num [s2Step369EntryFBefore,s2Step369EntryFFresh,arenaWires]
  · simp only [s2Step369EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step369EntryF_checked : planRowResizeLog s2Step369EntryFBefore s2Step369EntryFRow 87 s2Step369EntryFFresh=
    some (s2Step369EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩,growRow 768 s2Step369EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step369EntryFBefore s2Step369EntryFAfter s2Step369EntryFRow 87 s2Step369EntryFFresh
    s2Step369EntryF_distinct s2Step369EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step369EntryF_reserved
  have rowEq : WindowRow.mk (s2Step369EntryFRow.payload++s2Step369EntryFFresh) s2Step369EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step369EntryFvAfter : Arena := s2Step369EntryGAfter

private def s2Step369EntryFvBefore : Arena := s2Step369EntryGAfter

private theorem s2Step369EntryFv_Incoming : rowsOwned s2Step369EntryFvBefore [s2Step369EntryFvRow,s2Step369EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step369EntryFRow,s2Step369EntryGRow,s2Step369EntryFvRow,s2Step369EntryGvRow] 2 s2Step369EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step369EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step369EntryFv_Outgoing : rowsOwned s2Step369EntryGvAfter [s2Step369EntryFvOut,s2Step369EntryGvOut] :=
  hmrRows_owned_drop s2Step369EntryGvAfter [s2Step369EntryFOut,s2Step369EntryGOut,s2Step369EntryFvOut,s2Step369EntryGvOut] 2 s2Step369EntryBank_outgoingOwned

private theorem s2Step369EntryFv_distinct : (s2Step369EntryFvRow.sign::s2Step369EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369EntryFv_owned : (s2Step369EntryFvRow.sign::s2Step369EntryFvRow.payload).toFinset⊆s2Step369EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step369EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369EntryFv_reserved : s2Step369EntryFvBefore.reserve s2Step369EntryFvFresh.toFinset=some s2Step369EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step369EntryFvFresh,arenaWires]
  · norm_num [s2Step369EntryFvBefore,s2Step369EntryGAfter,s2Step369EntryFvFresh,arenaWires]
  · simp only [s2Step369EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step369EntryFv_checked : planRowResizeLog s2Step369EntryFvBefore s2Step369EntryFvRow 200 s2Step369EntryFvFresh=
    some (s2Step369EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812],770⟩,growRow 770 s2Step369EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step369EntryFvBefore s2Step369EntryFvAfter s2Step369EntryFvRow 200 s2Step369EntryFvFresh
    s2Step369EntryFv_distinct s2Step369EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step369EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step369EntryFvRow.payload++s2Step369EntryFvFresh) s2Step369EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step369EntryGBefore : Arena := s2Step369EntryFBefore

private theorem s2Step369EntryG_Incoming : rowsOwned s2Step369EntryGBefore [s2Step369EntryGRow,s2Step369EntryFvRow,s2Step369EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step369EntryFRow,s2Step369EntryGRow,s2Step369EntryFvRow,s2Step369EntryGvRow] 1 s2Step369EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step369EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step369EntryG_Outgoing : rowsOwned s2Step369EntryGvAfter [s2Step369EntryGOut,s2Step369EntryFvOut,s2Step369EntryGvOut] :=
  hmrRows_owned_drop s2Step369EntryGvAfter [s2Step369EntryFOut,s2Step369EntryGOut,s2Step369EntryFvOut,s2Step369EntryGvOut] 1 s2Step369EntryBank_outgoingOwned

private theorem s2Step369EntryG_distinct : (s2Step369EntryGRow.sign::s2Step369EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369EntryG_owned : (s2Step369EntryGRow.sign::s2Step369EntryGRow.payload).toFinset⊆s2Step369EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step369EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369EntryG_reserved : s2Step369EntryGBefore.reserve s2Step369EntryGFresh.toFinset=some s2Step369EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step369EntryGFresh,arenaWires]
  · norm_num [s2Step369EntryGBefore,s2Step369EntryFBefore,s2Step369EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step369EntryGAfter,s2Step369EntryGBefore,s2Step369EntryFBefore,s2Step369EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step369EntryG_checked : planRowResizeLog s2Step369EntryGBefore s2Step369EntryGRow 87 s2Step369EntryGFresh=
    some (s2Step369EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 826],769⟩,growRow 769 s2Step369EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step369EntryGBefore s2Step369EntryGAfter s2Step369EntryGRow 87 s2Step369EntryGFresh
    s2Step369EntryG_distinct s2Step369EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step369EntryG_reserved
  have rowEq : WindowRow.mk (s2Step369EntryGRow.payload++s2Step369EntryGFresh) s2Step369EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 826],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step369EntryGvBefore : Arena := s2Step369EntryGAfter

private theorem s2Step369EntryGv_Incoming : rowsOwned s2Step369EntryGvBefore [s2Step369EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step369EntryFRow,s2Step369EntryGRow,s2Step369EntryFvRow,s2Step369EntryGvRow] 3 s2Step369EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step369EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step369EntryGv_Outgoing : rowsOwned s2Step369EntryGvAfter [s2Step369EntryGvOut] :=
  hmrRows_owned_drop s2Step369EntryGvAfter [s2Step369EntryFOut,s2Step369EntryGOut,s2Step369EntryFvOut,s2Step369EntryGvOut] 3 s2Step369EntryBank_outgoingOwned

private theorem s2Step369EntryGv_distinct : (s2Step369EntryGvRow.sign::s2Step369EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369EntryGv_owned : (s2Step369EntryGvRow.sign::s2Step369EntryGvRow.payload).toFinset⊆s2Step369EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step369EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369EntryGv_reserved : s2Step369EntryGvBefore.reserve s2Step369EntryGvFresh.toFinset=some s2Step369EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step369EntryGvFresh,arenaWires]
  · norm_num [s2Step369EntryGvBefore,s2Step369EntryGAfter,s2Step369EntryGvFresh,arenaWires]
  · simp only [s2Step369EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step369EntryGv_checked : planRowResizeLog s2Step369EntryGvBefore s2Step369EntryGvRow 200 s2Step369EntryGvFresh=
    some (s2Step369EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903],771⟩,growRow 771 s2Step369EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step369EntryGvBefore s2Step369EntryGvAfter s2Step369EntryGvRow 200 s2Step369EntryGvFresh
    s2Step369EntryGv_distinct s2Step369EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step369EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step369EntryGvRow.payload++s2Step369EntryGvFresh) s2Step369EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step369EntryBank_rows : planWindowRowsLog s2Step369EntryFBefore [(s2Step369EntryFRow,87),(s2Step369EntryGRow,87),(s2Step369EntryFvRow,200),(s2Step369EntryGvRow,200)] [s2Step369EntryFFresh,s2Step369EntryGFresh,s2Step369EntryFvFresh,s2Step369EntryGvFresh]=
    some (s2Step369EntryGvAfter,[s2Step369EntryFOut,s2Step369EntryGOut,s2Step369EntryFvOut,s2Step369EntryGvOut],(growRow 768 s2Step369EntryFFresh ++ (growRow 769 s2Step369EntryGFresh ++ (growRow 770 s2Step369EntryFvFresh ++ (growRow 771 s2Step369EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step369EntryGvAfter [] []=some (s2Step369EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step369EntryGvBefore s2Step369EntryGvAfter s2Step369EntryGvAfter
    s2Step369EntryGvRow s2Step369EntryGvOut 200 s2Step369EntryGvFresh [] [] []
    (growRow 771 s2Step369EntryGvFresh) ([]) s2Step369EntryGv_Incoming s2Step369EntryGv_checked h4 s2Step369EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step369EntryFvBefore s2Step369EntryFvAfter s2Step369EntryGvAfter
    s2Step369EntryFvRow s2Step369EntryFvOut 200 s2Step369EntryFvFresh [(s2Step369EntryGvRow,200)] [s2Step369EntryGvFresh] [s2Step369EntryGvOut]
    (growRow 770 s2Step369EntryFvFresh) ((growRow 771 s2Step369EntryGvFresh ++ [])) s2Step369EntryFv_Incoming s2Step369EntryFv_checked h3 s2Step369EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step369EntryGBefore s2Step369EntryGAfter s2Step369EntryGvAfter
    s2Step369EntryGRow s2Step369EntryGOut 87 s2Step369EntryGFresh [(s2Step369EntryFvRow,200),(s2Step369EntryGvRow,200)] [s2Step369EntryFvFresh,s2Step369EntryGvFresh] [s2Step369EntryFvOut,s2Step369EntryGvOut]
    (growRow 769 s2Step369EntryGFresh) ((growRow 770 s2Step369EntryFvFresh ++ (growRow 771 s2Step369EntryGvFresh ++ []))) s2Step369EntryG_Incoming s2Step369EntryG_checked h2 s2Step369EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step369EntryFBefore s2Step369EntryFAfter s2Step369EntryGvAfter
    s2Step369EntryFRow s2Step369EntryFOut 87 s2Step369EntryFFresh [(s2Step369EntryGRow,87),(s2Step369EntryFvRow,200),(s2Step369EntryGvRow,200)] [s2Step369EntryGFresh,s2Step369EntryFvFresh,s2Step369EntryGvFresh] [s2Step369EntryGOut,s2Step369EntryFvOut,s2Step369EntryGvOut]
    (growRow 768 s2Step369EntryFFresh) ((growRow 769 s2Step369EntryGFresh ++ (growRow 770 s2Step369EntryFvFresh ++ (growRow 771 s2Step369EntryGvFresh ++ [])))) s2Step369EntryF_Incoming s2Step369EntryF_checked h1 s2Step369EntryF_Outgoing
  exact h0

private theorem s2Step369EntryBank_checked : compileHmrBankResizeLog .entry s2Step369EntryFBefore ⟨s2Step369EntryFRow,s2Step369EntryGRow,s2Step369EntryFvRow,s2Step369EntryGvRow⟩ ⟨87,87,200,200⟩ [s2Step369EntryFFresh,s2Step369EntryGFresh,s2Step369EntryFvFresh,s2Step369EntryGvFresh]=
    some (s2Step369EntryGvAfter,⟨s2Step369EntryFOut,s2Step369EntryGOut,s2Step369EntryFvOut,s2Step369EntryGvOut⟩,(growRow 768 s2Step369EntryFFresh ++ (growRow 769 s2Step369EntryGFresh ++ (growRow 770 s2Step369EntryFvFresh ++ (growRow 771 s2Step369EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step369EntryBank_rows]
  rfl

private def s2Step369ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369ExitFBefore : Arena := s2Step369ExitGAfter

private def s2Step369ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 785],768⟩

private def s2Step369ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831],770⟩

private def s2Step369ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 826, 797],769⟩

private def s2Step369ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 819],771⟩

private theorem s2Step369ExitBank_incomingDistinct : ([s2Step369ExitGRow,s2Step369ExitFRow,s2Step369ExitFvRow,s2Step369ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369ExitF_Incoming : rowsOwned s2Step369ExitFBefore [s2Step369ExitFRow,s2Step369ExitFvRow,s2Step369ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step369ExitGRow,s2Step369ExitFRow,s2Step369ExitFvRow,s2Step369ExitGvRow] 1 s2Step369ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step369ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step369ExitBank_outgoingOwned : rowsOwned s2Step369ExitGvAfter [s2Step369ExitGOut,s2Step369ExitFOut,s2Step369ExitFvOut,s2Step369ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step369ExitGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step369ExitF_Outgoing : rowsOwned s2Step369ExitGvAfter [s2Step369ExitFOut,s2Step369ExitFvOut,s2Step369ExitGvOut] :=
  hmrRows_owned_drop s2Step369ExitGvAfter [s2Step369ExitGOut,s2Step369ExitFOut,s2Step369ExitFvOut,s2Step369ExitGvOut] 1 s2Step369ExitBank_outgoingOwned

private theorem s2Step369ExitF_distinct : (s2Step369ExitFRow.sign::s2Step369ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369ExitF_owned : (s2Step369ExitFRow.sign::s2Step369ExitFRow.payload).toFinset⊆s2Step369ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step369ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369ExitF_retired : s2Step369ExitFBefore.retireSet s2Step369ExitFExtra.toFinset=s2Step369ExitFAfter := by
  unfold Arena.retireSet s2Step369ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step369ExitFBefore,s2Step369ExitGAfter,s2Step369ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step369ExitF_checked : planRowResizeLog s2Step369ExitFBefore s2Step369ExitFRow 87 []=
    some (s2Step369ExitFAfter,s2Step369ExitFOut,shrinkRow 768 s2Step369ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step369ExitFBefore s2Step369ExitFRow 87 s2Step369ExitF_distinct s2Step369ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step369ExitFRow.payload.take 87) s2Step369ExitFRow.sign=s2Step369ExitFOut := by decide +kernel
  have hi : s2Step369ExitFRow.payload.drop 87=s2Step369ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step369ExitF_retired] at result
  exact result

private def s2Step369ExitFvAfter : Arena := s2Step369ExitFAfter

private def s2Step369ExitFvBefore : Arena := s2Step369ExitFAfter

private theorem s2Step369ExitFv_Incoming : rowsOwned s2Step369ExitFvBefore [s2Step369ExitFvRow,s2Step369ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step369ExitGRow,s2Step369ExitFRow,s2Step369ExitFvRow,s2Step369ExitGvRow] 2 s2Step369ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step369ExitFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step369ExitFv_Outgoing : rowsOwned s2Step369ExitGvAfter [s2Step369ExitFvOut,s2Step369ExitGvOut] :=
  hmrRows_owned_drop s2Step369ExitGvAfter [s2Step369ExitGOut,s2Step369ExitFOut,s2Step369ExitFvOut,s2Step369ExitGvOut] 2 s2Step369ExitBank_outgoingOwned

private theorem s2Step369ExitFv_distinct : (s2Step369ExitFvRow.sign::s2Step369ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369ExitFv_owned : (s2Step369ExitFvRow.sign::s2Step369ExitFvRow.payload).toFinset⊆s2Step369ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step369ExitFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369ExitFv_reserved : s2Step369ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step369ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step369ExitFv_checked : planRowResizeLog s2Step369ExitFvBefore s2Step369ExitFvRow 201 []=
    some (s2Step369ExitFvAfter,s2Step369ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step369ExitFvBefore s2Step369ExitFvAfter s2Step369ExitFvRow 201 []
    s2Step369ExitFv_distinct s2Step369ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step369ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step369ExitFvRow.payload++[]) s2Step369ExitFvRow.sign=s2Step369ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step369ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step369ExitG_Incoming : rowsOwned s2Step369ExitGBefore [s2Step369ExitGRow,s2Step369ExitFRow,s2Step369ExitFvRow,s2Step369ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step369ExitGRow,s2Step369ExitFRow,s2Step369ExitFvRow,s2Step369ExitGvRow] 0 s2Step369ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step369ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step369ExitG_Outgoing : rowsOwned s2Step369ExitGvAfter [s2Step369ExitGOut,s2Step369ExitFOut,s2Step369ExitFvOut,s2Step369ExitGvOut] :=
  hmrRows_owned_drop s2Step369ExitGvAfter [s2Step369ExitGOut,s2Step369ExitFOut,s2Step369ExitFvOut,s2Step369ExitGvOut] 0 s2Step369ExitBank_outgoingOwned

private theorem s2Step369ExitG_distinct : (s2Step369ExitGRow.sign::s2Step369ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369ExitG_owned : (s2Step369ExitGRow.sign::s2Step369ExitGRow.payload).toFinset⊆s2Step369ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step369ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369ExitG_retired : s2Step369ExitGBefore.retireSet s2Step369ExitGExtra.toFinset=s2Step369ExitGAfter := by
  unfold Arena.retireSet s2Step369ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step369ExitGBefore,s2Step369ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step369ExitG_checked : planRowResizeLog s2Step369ExitGBefore s2Step369ExitGRow 86 []=
    some (s2Step369ExitGAfter,s2Step369ExitGOut,shrinkRow 769 s2Step369ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step369ExitGBefore s2Step369ExitGRow 86 s2Step369ExitG_distinct s2Step369ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step369ExitGRow.payload.take 86) s2Step369ExitGRow.sign=s2Step369ExitGOut := by decide +kernel
  have hi : s2Step369ExitGRow.payload.drop 86=s2Step369ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step369ExitG_retired] at result
  exact result

private def s2Step369ExitGvBefore : Arena := s2Step369ExitFAfter

private theorem s2Step369ExitGv_Incoming : rowsOwned s2Step369ExitGvBefore [s2Step369ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step369ExitGRow,s2Step369ExitFRow,s2Step369ExitFvRow,s2Step369ExitGvRow] 3 s2Step369ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step369ExitGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step369ExitGv_Outgoing : rowsOwned s2Step369ExitGvAfter [s2Step369ExitGvOut] :=
  hmrRows_owned_drop s2Step369ExitGvAfter [s2Step369ExitGOut,s2Step369ExitFOut,s2Step369ExitFvOut,s2Step369ExitGvOut] 3 s2Step369ExitBank_outgoingOwned

private theorem s2Step369ExitGv_distinct : (s2Step369ExitGvRow.sign::s2Step369ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369ExitGv_owned : (s2Step369ExitGvRow.sign::s2Step369ExitGvRow.payload).toFinset⊆s2Step369ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step369ExitGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369ExitGv_retired : s2Step369ExitGvBefore.retireSet s2Step369ExitGvExtra.toFinset=s2Step369ExitGvAfter := by
  unfold Arena.retireSet s2Step369ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step369ExitGvBefore,s2Step369ExitFAfter,s2Step369ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step369ExitGv_checked : planRowResizeLog s2Step369ExitGvBefore s2Step369ExitGvRow 200 []=
    some (s2Step369ExitGvAfter,s2Step369ExitGvOut,shrinkRow 771 s2Step369ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step369ExitGvBefore s2Step369ExitGvRow 200 s2Step369ExitGv_distinct s2Step369ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step369ExitGvRow.payload.take 200) s2Step369ExitGvRow.sign=s2Step369ExitGvOut := by decide +kernel
  have hi : s2Step369ExitGvRow.payload.drop 200=s2Step369ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step369ExitGv_retired] at result
  exact result

private theorem s2Step369ExitBank_rows : planWindowRowsLog s2Step369ExitGBefore [(s2Step369ExitGRow,86),(s2Step369ExitFRow,87),(s2Step369ExitFvRow,201),(s2Step369ExitGvRow,200)] [[],[],[],[]]=
    some (s2Step369ExitGvAfter,[s2Step369ExitGOut,s2Step369ExitFOut,s2Step369ExitFvOut,s2Step369ExitGvOut],(shrinkRow 769 s2Step369ExitGExtra ++ (shrinkRow 768 s2Step369ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step369ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step369ExitGvAfter [] []=some (s2Step369ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step369ExitGvBefore s2Step369ExitGvAfter s2Step369ExitGvAfter
    s2Step369ExitGvRow s2Step369ExitGvOut 200 [] [] [] []
    (shrinkRow 771 s2Step369ExitGvExtra) ([]) s2Step369ExitGv_Incoming s2Step369ExitGv_checked h4 s2Step369ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step369ExitFvBefore s2Step369ExitFvAfter s2Step369ExitGvAfter
    s2Step369ExitFvRow s2Step369ExitFvOut 201 [] [(s2Step369ExitGvRow,200)] [[]] [s2Step369ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step369ExitGvExtra ++ [])) s2Step369ExitFv_Incoming s2Step369ExitFv_checked h3 s2Step369ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step369ExitFBefore s2Step369ExitFAfter s2Step369ExitGvAfter
    s2Step369ExitFRow s2Step369ExitFOut 87 [] [(s2Step369ExitFvRow,201),(s2Step369ExitGvRow,200)] [[],[]] [s2Step369ExitFvOut,s2Step369ExitGvOut]
    (shrinkRow 768 s2Step369ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step369ExitGvExtra ++ []))) s2Step369ExitF_Incoming s2Step369ExitF_checked h2 s2Step369ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step369ExitGBefore s2Step369ExitGAfter s2Step369ExitGvAfter
    s2Step369ExitGRow s2Step369ExitGOut 86 [] [(s2Step369ExitFRow,87),(s2Step369ExitFvRow,201),(s2Step369ExitGvRow,200)] [[],[],[]] [s2Step369ExitFOut,s2Step369ExitFvOut,s2Step369ExitGvOut]
    (shrinkRow 769 s2Step369ExitGExtra) ((shrinkRow 768 s2Step369ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step369ExitGvExtra ++ [])))) s2Step369ExitG_Incoming s2Step369ExitG_checked h1 s2Step369ExitG_Outgoing
  exact h0

private theorem s2Step369ExitBank_checked : compileHmrBankResizeLog .exit s2Step369ExitGBefore ⟨s2Step369ExitFRow,s2Step369ExitGRow,s2Step369ExitFvRow,s2Step369ExitGvRow⟩ ⟨87,86,201,200⟩ [[],[],[],[]]=
    some (s2Step369ExitGvAfter,⟨s2Step369ExitFOut,s2Step369ExitGOut,s2Step369ExitFvOut,s2Step369ExitGvOut⟩,(shrinkRow 769 s2Step369ExitGExtra ++ (shrinkRow 768 s2Step369ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step369ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step369ExitBank_rows]
  rfl

private theorem s2Step369Add0_apart : Disjoint s2Step369Add0Arena.live s2Step369Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step369Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369Add0_card : s2Step369Add0Arena.live.card=908 := by
  decide +kernel

private theorem s2Step369Add0_borrowed : s2Step369Add0Arena.checkBorrow (hmrHybridCount s2Step369Add0Arena s2Step369Add0B.length) s2Step369Add0Work=some s2Step369Add0During := by
  have len : s2Step369Add0Work.length=hmrHybridCount s2Step369Add0Arena s2Step369Add0B.length := by
    rw [hmrHybridCount,s2Step369Add0_card]
    decide +kernel
  have nd : s2Step369Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step369Add0Arena s2Step369Add0During s2Step369Add0Work.toFinset s2Step369Add0_bounded s2Step369Add0_apart rfl

private theorem s2Step369Add0_distinct : (796::802::783::(s2Step369Add0A++s2Step369Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369Add0_owned : (796::802::783::(s2Step369Add0A++s2Step369Add0B)).toFinset⊆s2Step369Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step369Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369Add0_checked : compileHmrHybridCinLog s2Step369Add0Arena 802 796 783 s2Step369Add0A s2Step369Add0B s2Step369Add0Work=some s2Step369Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step369Add0Arena s2Step369Add0During 802 796 783 s2Step369Add0A s2Step369Add0B s2Step369Add0Work
    (by decide +kernel) (by decide +kernel) s2Step369Add0_distinct
    (fun q hq => s2Step369Add0_owned (List.mem_toFinset.mpr hq)) s2Step369Add0_borrowed

private theorem s2Step369Add1_apart : Disjoint s2Step369Add1Arena.live s2Step369Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step369Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369Add1_card : s2Step369Add1Arena.live.card=908 := by
  decide +kernel

private theorem s2Step369Add1_borrowed : s2Step369Add1Arena.checkBorrow (hmrHybridCount s2Step369Add1Arena s2Step369Add1B.length) s2Step369Add1Work=some s2Step369Add1During := by
  have len : s2Step369Add1Work.length=hmrHybridCount s2Step369Add1Arena s2Step369Add1B.length := by
    rw [hmrHybridCount,s2Step369Add1_card]
    decide +kernel
  have nd : s2Step369Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step369Add1Arena s2Step369Add1During s2Step369Add1Work.toFinset s2Step369Add1_bounded s2Step369Add1_apart rfl

private theorem s2Step369Add1_distinct : (796::802::783::(s2Step369Add1A++s2Step369Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369Add1_owned : (796::802::783::(s2Step369Add1A++s2Step369Add1B)).toFinset⊆s2Step369Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step369Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369Add1_checked : compileHmrHybridCinLog s2Step369Add1Arena 802 796 783 s2Step369Add1A s2Step369Add1B s2Step369Add1Work=some s2Step369Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step369Add1Arena s2Step369Add1During 802 796 783 s2Step369Add1A s2Step369Add1B s2Step369Add1Work
    (by decide +kernel) (by decide +kernel) s2Step369Add1_distinct
    (fun q hq => s2Step369Add1_owned (List.mem_toFinset.mpr hq)) s2Step369Add1_borrowed

private theorem s2Step369F4_apart : Disjoint (s2Step369Add0A++s2Step369Add0B).toFinset (s2Step369Add1A++s2Step369Add1B).toFinset := by
  have nd : ((s2Step369Add0A++s2Step369Add0B)++(s2Step369Add1A++s2Step369Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step369F4_carry : s2Step369F4FlagArena.checkBorrow 1 [783]=some s2Step369Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step369F4FlagArena,s2Step369HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step369F4FlagArena,s2Step369HeadFvAfter,s2Step369Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step369F4_distinct : (805::802::796::783::((s2Step369Add0A++s2Step369Add1A)++(s2Step369Add0B++s2Step369Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369F4_flag : s2Step369HeadFvAfter.checkBorrow 1 [796]=some s2Step369F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step369HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step369F4_owned : (805::802::((s2Step369Add0A++s2Step369Add1A)++(s2Step369Add0B++s2Step369Add1B))).toFinset⊆s2Step369HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step369HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369F4_checked : compileHmrHybridF4Log s2Step369HeadFvAfter 805 802 s2Step369Add0A s2Step369Add0B s2Step369Add1A s2Step369Add1B [796] [783] s2Step369Add0Work s2Step369Add1Work=some s2Step369F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step369HeadFvAfter s2Step369F4FlagArena s2Step369Add0Arena s2Step369Add0During s2Step369Add1During 805 802
    s2Step369Add0A s2Step369Add0B s2Step369Add1A s2Step369Add1B [796] [783] s2Step369Add0Work s2Step369Add1Work
    (fun q hq => s2Step369F4_owned (List.mem_toFinset.mpr hq)) s2Step369F4_flag s2Step369F4_carry
    s2Step369F4_distinct s2Step369F4_apart s2Step369Add0_checked s2Step369Add1_checked

private theorem s2Step369Front_branch : s2Step369FrontSigmaArena.checkBorrow 1 [802]=some s2Step369HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step369FrontSigmaArena,s2Step369EntryGvAfter,s2Step369EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step369FrontSigmaArena,s2Step369EntryGvAfter,s2Step369EntryGAfter,s2Step369HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step369Front_entry : HmrFrontEntryValid s2Step369EntryFBefore s2Step369FrontBank 87 200 ⟨87,86,201,200⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step369FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step369EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step369EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step369FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step369Front_sigma : s2Step369EntryGvAfter.checkBorrow 1 [805]=some s2Step369FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step369EntryGvAfter,s2Step369EntryGAfter,arenaWires]
  · rfl

private def s2Step369HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369HeadFBefore : Arena := s2Step369HeadGAfter

private def s2Step369HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩

private def s2Step369HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812],770⟩

private def s2Step369HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 826],769⟩

private def s2Step369HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903],771⟩

private theorem s2Step369HeadBank_incomingDistinct : ([s2Step369HeadGRow,s2Step369HeadFRow,s2Step369HeadGvRow,s2Step369HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369HeadF_Incoming : rowsOwned s2Step369HeadFBefore [s2Step369HeadFRow,s2Step369HeadGvRow,s2Step369HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step369HeadGRow,s2Step369HeadFRow,s2Step369HeadGvRow,s2Step369HeadFvRow] 1 s2Step369HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step369HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step369HeadBank_outgoingOwned : rowsOwned s2Step369HeadFvAfter [s2Step369HeadGOut,s2Step369HeadFOut,s2Step369HeadGvOut,s2Step369HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step369HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step369HeadF_Outgoing : rowsOwned s2Step369HeadFvAfter [s2Step369HeadFOut,s2Step369HeadGvOut,s2Step369HeadFvOut] :=
  hmrRows_owned_drop s2Step369HeadFvAfter [s2Step369HeadGOut,s2Step369HeadFOut,s2Step369HeadGvOut,s2Step369HeadFvOut] 1 s2Step369HeadBank_outgoingOwned

private theorem s2Step369HeadF_distinct : (s2Step369HeadFRow.sign::s2Step369HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369HeadF_owned : (s2Step369HeadFRow.sign::s2Step369HeadFRow.payload).toFinset⊆s2Step369HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step369HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369HeadF_reserved : s2Step369HeadFBefore.reserve s2Step369HeadFFresh.toFinset=some s2Step369HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step369HeadFFresh,arenaWires]
  · norm_num [s2Step369HeadFBefore,s2Step369HeadGAfter,s2Step369HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step369HeadFAfter,s2Step369HeadFBefore,s2Step369HeadGAfter,s2Step369HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step369HeadF_checked : planRowResizeLog s2Step369HeadFBefore s2Step369HeadFRow 88 s2Step369HeadFFresh=
    some (s2Step369HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 785],768⟩,growRow 768 s2Step369HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step369HeadFBefore s2Step369HeadFAfter s2Step369HeadFRow 88 s2Step369HeadFFresh
    s2Step369HeadF_distinct s2Step369HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step369HeadF_reserved
  have rowEq : WindowRow.mk (s2Step369HeadFRow.payload++s2Step369HeadFFresh) s2Step369HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 785],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step369HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step369HeadFvBefore : Arena := s2Step369HeadGvAfter

private theorem s2Step369HeadFv_Incoming : rowsOwned s2Step369HeadFvBefore [s2Step369HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step369HeadGRow,s2Step369HeadFRow,s2Step369HeadGvRow,s2Step369HeadFvRow] 3 s2Step369HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step369HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step369HeadFv_Outgoing : rowsOwned s2Step369HeadFvAfter [s2Step369HeadFvOut] :=
  hmrRows_owned_drop s2Step369HeadFvAfter [s2Step369HeadGOut,s2Step369HeadFOut,s2Step369HeadGvOut,s2Step369HeadFvOut] 3 s2Step369HeadBank_outgoingOwned

private theorem s2Step369HeadFv_distinct : (s2Step369HeadFvRow.sign::s2Step369HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369HeadFv_owned : (s2Step369HeadFvRow.sign::s2Step369HeadFvRow.payload).toFinset⊆s2Step369HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step369HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369HeadFv_reserved : s2Step369HeadFvBefore.reserve s2Step369HeadFvFresh.toFinset=some s2Step369HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step369HeadFvFresh,arenaWires]
  · norm_num [s2Step369HeadFvBefore,s2Step369HeadGvAfter,s2Step369HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step369HeadFvAfter,s2Step369HeadFvBefore,s2Step369HeadGvAfter,s2Step369HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step369HeadFv_checked : planRowResizeLog s2Step369HeadFvBefore s2Step369HeadFvRow 201 s2Step369HeadFvFresh=
    some (s2Step369HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831],770⟩,growRow 770 s2Step369HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step369HeadFvBefore s2Step369HeadFvAfter s2Step369HeadFvRow 201 s2Step369HeadFvFresh
    s2Step369HeadFv_distinct s2Step369HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step369HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step369HeadFvRow.payload++s2Step369HeadFvFresh) s2Step369HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step369HeadG_Incoming : rowsOwned s2Step369HeadGBefore [s2Step369HeadGRow,s2Step369HeadFRow,s2Step369HeadGvRow,s2Step369HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step369HeadGRow,s2Step369HeadFRow,s2Step369HeadGvRow,s2Step369HeadFvRow] 0 s2Step369HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step369HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step369HeadG_Outgoing : rowsOwned s2Step369HeadFvAfter [s2Step369HeadGOut,s2Step369HeadFOut,s2Step369HeadGvOut,s2Step369HeadFvOut] :=
  hmrRows_owned_drop s2Step369HeadFvAfter [s2Step369HeadGOut,s2Step369HeadFOut,s2Step369HeadGvOut,s2Step369HeadFvOut] 0 s2Step369HeadBank_outgoingOwned

private theorem s2Step369HeadG_distinct : (s2Step369HeadGRow.sign::s2Step369HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369HeadG_owned : (s2Step369HeadGRow.sign::s2Step369HeadGRow.payload).toFinset⊆s2Step369HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step369HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369HeadG_reserved : s2Step369HeadGBefore.reserve s2Step369HeadGFresh.toFinset=some s2Step369HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step369HeadGFresh,arenaWires]
  · norm_num [s2Step369HeadGBefore,s2Step369HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step369HeadGAfter,s2Step369HeadGBefore,s2Step369HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step369HeadG_checked : planRowResizeLog s2Step369HeadGBefore s2Step369HeadGRow 88 s2Step369HeadGFresh=
    some (s2Step369HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 826, 797],769⟩,growRow 769 s2Step369HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step369HeadGBefore s2Step369HeadGAfter s2Step369HeadGRow 88 s2Step369HeadGFresh
    s2Step369HeadG_distinct s2Step369HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step369HeadG_reserved
  have rowEq : WindowRow.mk (s2Step369HeadGRow.payload++s2Step369HeadGFresh) s2Step369HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 826, 797],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step369HeadGvBefore : Arena := s2Step369HeadFAfter

private theorem s2Step369HeadGv_Incoming : rowsOwned s2Step369HeadGvBefore [s2Step369HeadGvRow,s2Step369HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step369HeadGRow,s2Step369HeadFRow,s2Step369HeadGvRow,s2Step369HeadFvRow] 2 s2Step369HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step369HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step369HeadGv_Outgoing : rowsOwned s2Step369HeadFvAfter [s2Step369HeadGvOut,s2Step369HeadFvOut] :=
  hmrRows_owned_drop s2Step369HeadFvAfter [s2Step369HeadGOut,s2Step369HeadFOut,s2Step369HeadGvOut,s2Step369HeadFvOut] 2 s2Step369HeadBank_outgoingOwned

private theorem s2Step369HeadGv_distinct : (s2Step369HeadGvRow.sign::s2Step369HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step369HeadGv_owned : (s2Step369HeadGvRow.sign::s2Step369HeadGvRow.payload).toFinset⊆s2Step369HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step369HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<819) ∨ (820≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step369HeadGv_reserved : s2Step369HeadGvBefore.reserve s2Step369HeadGvFresh.toFinset=some s2Step369HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step369HeadGvFresh,arenaWires]
  · norm_num [s2Step369HeadGvBefore,s2Step369HeadFAfter,s2Step369HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step369HeadGvAfter,s2Step369HeadGvBefore,s2Step369HeadFAfter,s2Step369HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step369HeadGv_checked : planRowResizeLog s2Step369HeadGvBefore s2Step369HeadGvRow 201 s2Step369HeadGvFresh=
    some (s2Step369HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 819],771⟩,growRow 771 s2Step369HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step369HeadGvBefore s2Step369HeadGvAfter s2Step369HeadGvRow 201 s2Step369HeadGvFresh
    s2Step369HeadGv_distinct s2Step369HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step369HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step369HeadGvRow.payload++s2Step369HeadGvFresh) s2Step369HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 819],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step369HeadBank_rows : planWindowRowsLog s2Step369HeadGBefore [(s2Step369HeadGRow,88),(s2Step369HeadFRow,88),(s2Step369HeadGvRow,201),(s2Step369HeadFvRow,201)] [s2Step369HeadGFresh,s2Step369HeadFFresh,s2Step369HeadGvFresh,s2Step369HeadFvFresh]=
    some (s2Step369HeadFvAfter,[s2Step369HeadGOut,s2Step369HeadFOut,s2Step369HeadGvOut,s2Step369HeadFvOut],(growRow 769 s2Step369HeadGFresh ++ (growRow 768 s2Step369HeadFFresh ++ (growRow 771 s2Step369HeadGvFresh ++ (growRow 770 s2Step369HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step369HeadFvAfter [] []=some (s2Step369HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step369HeadFvBefore s2Step369HeadFvAfter s2Step369HeadFvAfter
    s2Step369HeadFvRow s2Step369HeadFvOut 201 s2Step369HeadFvFresh [] [] []
    (growRow 770 s2Step369HeadFvFresh) ([]) s2Step369HeadFv_Incoming s2Step369HeadFv_checked h4 s2Step369HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step369HeadGvBefore s2Step369HeadGvAfter s2Step369HeadFvAfter
    s2Step369HeadGvRow s2Step369HeadGvOut 201 s2Step369HeadGvFresh [(s2Step369HeadFvRow,201)] [s2Step369HeadFvFresh] [s2Step369HeadFvOut]
    (growRow 771 s2Step369HeadGvFresh) ((growRow 770 s2Step369HeadFvFresh ++ [])) s2Step369HeadGv_Incoming s2Step369HeadGv_checked h3 s2Step369HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step369HeadFBefore s2Step369HeadFAfter s2Step369HeadFvAfter
    s2Step369HeadFRow s2Step369HeadFOut 88 s2Step369HeadFFresh [(s2Step369HeadGvRow,201),(s2Step369HeadFvRow,201)] [s2Step369HeadGvFresh,s2Step369HeadFvFresh] [s2Step369HeadGvOut,s2Step369HeadFvOut]
    (growRow 768 s2Step369HeadFFresh) ((growRow 771 s2Step369HeadGvFresh ++ (growRow 770 s2Step369HeadFvFresh ++ []))) s2Step369HeadF_Incoming s2Step369HeadF_checked h2 s2Step369HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step369HeadGBefore s2Step369HeadGAfter s2Step369HeadFvAfter
    s2Step369HeadGRow s2Step369HeadGOut 88 s2Step369HeadGFresh [(s2Step369HeadFRow,88),(s2Step369HeadGvRow,201),(s2Step369HeadFvRow,201)] [s2Step369HeadFFresh,s2Step369HeadGvFresh,s2Step369HeadFvFresh] [s2Step369HeadFOut,s2Step369HeadGvOut,s2Step369HeadFvOut]
    (growRow 769 s2Step369HeadGFresh) ((growRow 768 s2Step369HeadFFresh ++ (growRow 771 s2Step369HeadGvFresh ++ (growRow 770 s2Step369HeadFvFresh ++ [])))) s2Step369HeadG_Incoming s2Step369HeadG_checked h1 s2Step369HeadG_Outgoing
  exact h0

private theorem s2Step369HeadBank_checked : compileHmrBankResizeLog .headroom s2Step369HeadGBefore ⟨s2Step369HeadFRow,s2Step369HeadGRow,s2Step369HeadFvRow,s2Step369HeadGvRow⟩ ⟨88,88,201,201⟩ [s2Step369HeadGFresh,s2Step369HeadFFresh,s2Step369HeadGvFresh,s2Step369HeadFvFresh]=
    some (s2Step369HeadFvAfter,⟨s2Step369HeadFOut,s2Step369HeadGOut,s2Step369HeadFvOut,s2Step369HeadGvOut⟩,(growRow 769 s2Step369HeadGFresh ++ (growRow 768 s2Step369HeadFFresh ++ (growRow 771 s2Step369HeadGvFresh ++ (growRow 770 s2Step369HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step369HeadBank_rows]
  rfl

private theorem s2Step369Front_checked : compileHmrSourceFrontLog s2Step369EntryFBefore s2Step369FrontBank 87 200 ⟨87,86,201,200⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step369FrontLog=some s2Step369FrontPlan := by
  have pairEq : s2Step369FrontPair=⟨s2Step369HeadFRow,s2Step369HeadGRow,s2Step369HeadFvRow,s2Step369HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step369FrontHead=⟨s2Step369ExitFRow,s2Step369ExitGRow,s2Step369ExitFvRow,s2Step369ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step369Add0A=s2Step369FrontHead.f.wires := by decide +kernel
  have gEq : s2Step369Add0B=s2Step369FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step369Add1A=s2Step369FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step369Add1B=s2Step369FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step369EntryFBefore s2Step369FrontBank 87 200 ⟨87,86,201,200⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step369FrontLog s2Step369FrontPlan
  · exact s2Step369Front_entry
  · exact s2Step369EntryBank_checked
  · exact s2Step369Front_sigma
  · rfl
  · exact s2Step369Front_branch
  · rfl
  · simpa only [s2Step369FrontPlan,pairEq] using s2Step369HeadBank_checked
  · simpa only [s2Step369FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step369F4_checked
  · exact s2Step369Counter_checked
  · rfl
  · simpa only [s2Step369FrontPlan,headEq] using s2Step369ExitBank_checked

private theorem s2Step369Complete_explicit_checked : compileHmrEarlyStepLog s2Step369EntryFBefore s2Step369FrontBank 87 200 ⟨87,86,201,200⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step369CompleteLog=some s2Step369CompletePlan := by
  let Q := s2Step369EarlyControlPlan
  have hq := s2Step369EarlyControl_plan_checked
  have fv1 : s2Step369CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step369CompleteOut.fv.payload[2]?.getD s2Step369CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step369CompleteOut.fv.payload[3]?.getD s2Step369CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step369CompleteOut.fv.payload[4]?.getD s2Step369CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step369EntryFBefore s2Step369EarlyControlArena s2Step369FrontBank 87 200 ⟨87,86,201,200⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step369CompleteLog s2Step369FrontPlan Q
    s2Step369Front_checked s2Step369Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step369Complete_owned s2Step369Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step369EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 805 s2Step369CompleteOut.fv.second (s2Step369CompleteOut.fv.payload[2]?.getD s2Step369CompleteOut.fv.sign) (s2Step369CompleteOut.fv.payload[3]?.getD s2Step369CompleteOut.fv.sign) (s2Step369CompleteOut.fv.payload[4]?.getD s2Step369CompleteOut.fv.sign) 802 60 s2Step369EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep369Arena : Arena := s2Step369EntryFBefore
def s2PrivateStep369Bank : WindowBank := s2Step369FrontBank
def s2PrivateStep369Spec : HmrSourceWalkStepLog := ⟨87,200,⟨87,86,201,200⟩,60,.early s2Step369CompleteLog⟩
def s2PrivateStep369Plan : HmrSourceStepPlan := .early s2Step369CompletePlan
theorem s2PrivateStep369_source : s2PrivateStep369Spec=s2ObservedLogs368[1] := rfl
theorem s2PrivateStep369_checked : compileHmrSourceStepLog s2PrivateStep369Arena s2PrivateStep369Bank
    s2PrivateStep369Spec.fgWidth s2PrivateStep369Spec.vWidth s2PrivateStep369Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 369 s2PrivateStep369Spec.need none s2PrivateStep369Spec.log=some s2PrivateStep369Plan := by
  change compileHmrSourceStepLog s2Step369EntryFBefore s2Step369FrontBank 87 200 ⟨87,86,201,200⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 369 60 none (.early s2Step369CompleteLog)=some (.early s2Step369CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 369<498)]
  rw [s2Step369Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
