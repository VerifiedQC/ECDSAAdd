import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep362
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

private def s2Step364CompleteMoves : List (Wire × Wire) := [(820,88)]

private def s2Step364EarlyControlLog : HmrEarlyControlLog := ⟨[820, 812, 847, 785, 903],[796],[783],[800, 789, 827, 844, 907, 913],[]⟩

private def s2Step364FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [882], []],[[903], [785], [812], [847]],[[], [], [], []]⟩,[797],[831],[796],[783],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[796, 783, 800, 789]⟩

private def s2Step364CompleteLog : HmrEarlyStepLog := ⟨s2Step364FrontLog,s2Step364CompleteMoves,s2Step364EarlyControlLog⟩

private def s2Step364ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600],768⟩

private def s2Step364ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882],770⟩

private def s2Step364ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87],769⟩

private def s2Step364ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩

private def s2Step364FrontOut : WindowBank := ⟨s2Step364ExitFOut,s2Step364ExitGOut,s2Step364ExitFvOut,s2Step364ExitGvOut⟩

private def s2Step364CompleteOut : WindowBank := s2Step364FrontOut.repacked s2Step364CompleteMoves

private def s2Step364EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step364EarlyControlPositiveArena,[796],s2Step364EarlyControlEqualityArena,[783],⟨⟨797,false⟩,[⟨⟨796,false⟩,783⟩]⟩⟩

private def s2Step364EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step364EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step364EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,820⟩,⟨⟨774,false⟩,812⟩,⟨⟨775,false⟩,847⟩,⟨⟨776,false⟩,785⟩,⟨⟨777,false⟩,903⟩]⟩

private def s2Step364EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step364EarlyControlZeroArena,s2Step364EarlyControlZeroPlan,s2Step364EarlyControlClassPlan,s2Step364EarlyControlFlagArena,s2Step364EarlyControlFittedArena,s2Step364EarlyControlHistoryArena,s2Step364EarlyControlSigmaArena,s2Step364EarlyControlOutputArena,s2Step364EarlyControlLog⟩

private def s2Step364CounterWork : List Wire := [796, 783, 800, 789]

private theorem s2Step364Counter_bounded : s2Step364CounterWork.toFinset⊆arenaWires := by norm_num [s2Step364CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step364HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364CounterDuring : Arena := ⟨s2Step364HeadFvAfter.live∪s2Step364CounterWork.toFinset,Finset.union_subset s2Step364HeadFvAfter.bounded s2Step364Counter_bounded⟩

private def s2Step364EntryFFresh : List Wire := []

private def s2Step364EntryFvFresh : List Wire := [882]

private def s2Step364EntryGFresh : List Wire := []

private def s2Step364EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364EntryGvAfter : Arena := s2Step364EntryFvAfter

private def s2Step364EntryGvFresh : List Wire := []

private def s2Step364ExitFExtra : List Wire := [785]

private def s2Step364ExitFvExtra : List Wire := [847]

private def s2Step364ExitGExtra : List Wire := [88, 903]

private def s2Step364ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364ExitGvExtra : List Wire := [812]

private def s2Step364Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364Add0Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step364Add0_bounded : s2Step364Add0Work.toFinset⊆arenaWires := by
  have h : s2Step364Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step364Add0During : Arena := ⟨s2Step364Add0Arena.live∪s2Step364Add0Work.toFinset,Finset.union_subset s2Step364Add0Arena.bounded s2Step364Add0_bounded⟩

private def s2Step364Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364Add1Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step364Add1_bounded : s2Step364Add1Work.toFinset⊆arenaWires := by
  have h : s2Step364Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step364Add1During : Arena := ⟨s2Step364Add1Arena.live∪s2Step364Add1Work.toFinset,Finset.union_subset s2Step364Add1Arena.bounded s2Step364Add1_bounded⟩

private def s2Step364F4FlagArena : Arena := ⟨s2Step364HeadFvAfter.live∪{796},Finset.union_subset s2Step364HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step364F4Plan : HmrHybridF4Plan := ⟨s2Step364F4FlagArena,[796],s2Step364Add0Arena,[783],s2Step364Add0During,s2Step364Add0Work,s2Step364Add1During,s2Step364Add1Work⟩

private def s2Step364HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 785],768⟩

private def s2Step364HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847],770⟩

private def s2Step364HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 903],769⟩

private def s2Step364HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 812],771⟩

private def s2Step364FrontHead : WindowBank := ⟨s2Step364HeadFOut,s2Step364HeadGOut,s2Step364HeadFvOut,s2Step364HeadGvOut⟩

private def s2Step364EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600],768⟩

private def s2Step364EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882],770⟩

private def s2Step364EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88],769⟩

private def s2Step364EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩

private def s2Step364FrontPair : WindowBank := ⟨s2Step364EntryFOut,s2Step364EntryGOut,s2Step364EntryFvOut,s2Step364EntryGvOut⟩

private def s2Step364FrontSigmaArena : Arena := ⟨s2Step364EntryGvAfter.live∪{797},Finset.union_subset s2Step364EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step364HeadFFresh : List Wire := [785]

private def s2Step364HeadFvFresh : List Wire := [847]

private def s2Step364HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364HeadGFresh : List Wire := [903]

private def s2Step364HeadGvFresh : List Wire := [812]

private def s2Step364FrontPlan : HmrSourceFront := ⟨s2Step364EntryGvAfter,s2Step364FrontPair,(growRow 768 s2Step364EntryFFresh ++ (growRow 769 s2Step364EntryGFresh ++ (growRow 770 s2Step364EntryFvFresh ++ (growRow 771 s2Step364EntryGvFresh ++ [])))),s2Step364FrontSigmaArena,[797],s2Step364HeadGBefore,[831],
  s2Step364HeadFvAfter,s2Step364FrontHead,(growRow 769 s2Step364HeadGFresh ++ (growRow 768 s2Step364HeadFFresh ++ (growRow 771 s2Step364HeadGvFresh ++ (growRow 770 s2Step364HeadFvFresh ++ [])))),s2Step364F4Plan,s2Step364CounterDuring,s2Step364CounterWork,s2Step364ExitGvAfter,s2Step364FrontOut,(shrinkRow 769 s2Step364ExitGExtra ++ (shrinkRow 768 s2Step364ExitFExtra ++ (shrinkRow 770 s2Step364ExitFvExtra ++ (shrinkRow 771 s2Step364ExitGvExtra ++ []))))⟩

private def s2Step364CompletePlan : HmrEarlyStepPlan := ⟨s2Step364FrontPlan,s2Step364EarlyControlArena,s2Step364EarlyControlPlan,s2Step364CompleteMoves⟩

private theorem s2Step364Complete_apart : List.Disjoint (s2Step364CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [797, 831, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step364CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[797, 831, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step364Complete_owned : (s2Step364CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step364EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step364EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step364CompleteMoveArena : Arena := ⟨s2Step364ExitGvAfter.live∪{88},Finset.union_subset s2Step364ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step364Complete_repack : s2Step364ExitGvAfter.checkRepack s2Step364CompleteMoves=some s2Step364EarlyControlArena := by
  have owned : 820∈s2Step364ExitGvAfter.live := by norm_num [s2Step364ExitGvAfter,arenaWires]
  have reserve : s2Step364ExitGvAfter.reserve {88}=some s2Step364CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step364ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step364CompleteMoveArena.retireSet {820}=s2Step364EarlyControlArena := by
    unfold Arena.retireSet s2Step364EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step364CompleteMoveArena,s2Step364ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step364CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step364CompleteMoveArena.retireSet {820}).checkRepack []=some s2Step364EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step364EarlyControl_branchOwned : ([831] : List Wire).toFinset⊆s2Step364EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step364EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364EarlyControl_branch : compileHmrBranchRetirement s2Step364EarlyControlSigmaArena 831=some s2Step364EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step364EarlyControl_branchOwned
  · ext q
    simp [s2Step364EarlyControlOutputArena,s2Step364EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step364EarlyControl_classEqualityBorrow : s2Step364EarlyControlPositiveArena.checkBorrow (([797, 796] : List Wire).length-1) s2Step364EarlyControlLog.classWork=some s2Step364EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step364EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step364EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step364EarlyControlEqualityArena,s2Step364EarlyControlPositiveArena,s2Step364EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step364EarlyControl_classEqualityOwned : ([797, 796] : List Wire).toFinset⊆s2Step364EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step364EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364EarlyControl_classEquality : compileHmrEqualityLog s2Step364EarlyControlPositiveArena [797, 796] 0 s2Step364EarlyControlLog.classWork=some (s2Step364EarlyControlEqualityArena,s2Step364EarlyControlLog.classWork,s2Step364EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step364EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step364EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step364EarlyControl_classOwned : ([777, 903, 797] : List Wire).toFinset⊆s2Step364EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step364EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364EarlyControl_positiveBorrow : s2Step364EarlyControlZeroArena.checkBorrow (1) s2Step364EarlyControlLog.positiveWork=some s2Step364EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step364EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step364EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step364EarlyControlPositiveArena,s2Step364EarlyControlZeroArena,s2Step364EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step364EarlyControl_class : compileHmrSourceClassLog s2Step364EarlyControlZeroArena false 777 s2Step364EarlyControlZeroPlan.top 0 797 s2Step364EarlyControlLog.positiveWork s2Step364EarlyControlLog.classWork=some s2Step364EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step364EarlyControlClassPlan s2Step364EarlyControlZeroArena false 777 s2Step364EarlyControlZeroPlan.top 0 797
  constructor
  · decide +kernel
  · exact s2Step364EarlyControl_classOwned
  · exact s2Step364EarlyControl_positiveBorrow
  · exact s2Step364EarlyControl_classEquality

private theorem s2Step364EarlyControl_entryRecordOwned : ([831, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step364EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step364EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364EarlyControl_entrySigmaOwned : ([797, 254] : List Wire).toFinset⊆s2Step364EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step364EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364EarlyControl_fitBorrow : s2Step364EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step364EarlyControlLog.recordFresh=some s2Step364EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step364EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step364EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
      decide +kernel
    · ext q
      simp [s2Step364EarlyControlFittedArena,s2Step364EarlyControlFlagArena,s2Step364EarlyControlLog,arenaWires]

private theorem s2Step364EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step364EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step364EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step364EarlyControl_fit : compileHmrRecordGrowLog s2Step364EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step364EarlyControlLog.recordFresh=some s2Step364EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step364EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step364EarlyControl_fitBorrow

private theorem s2Step364EarlyControl_flagsBorrow : s2Step364EarlyControlEqualityArena.checkBorrow (6) s2Step364EarlyControlLog.flagWork=some s2Step364EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step364EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step364EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step364EarlyControlFlagArena,s2Step364EarlyControlEqualityArena,s2Step364EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step364EarlyControl_flagsOwned : ([783, 253, 252, 251] : List Wire).toFinset⊆s2Step364EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step364EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364EarlyControl_flags : compileHmrFlagsLog s2Step364EarlyControlClassPlan.equalityArena s2Step364EarlyControlClassPlan.equality.top 253 252 251 s2Step364EarlyControlLog.flagWork=some s2Step364EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step364EarlyControl_flagsOwned⟩
  · exact s2Step364EarlyControl_flagsBorrow

private theorem s2Step364EarlyControl_historyBorrow : s2Step364EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step364EarlyControlLog.recordFresh=some s2Step364EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step364EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step364EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step364EarlyControlHistoryArena,s2Step364EarlyControlArena,s2Step364EarlyControlLog,arenaWires]

private theorem s2Step364EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step364EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step364EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364EarlyControl_history : compileHmrRecordGrowLog s2Step364EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step364EarlyControlLog.recordFresh=some s2Step364EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step364EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step364EarlyControl_historyBorrow

private theorem s2Step364EarlyControl_sigmaOwned : ([254, 797] : List Wire).toFinset⊆s2Step364EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step364EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364EarlyControl_sigmaReleaseOwned : ([797] : List Wire).toFinset⊆s2Step364EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step364EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364EarlyControl_sigmaRelease : s2Step364EarlyControlHistoryArena.release {797} (fun _ => false)=some s2Step364EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step364EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step364EarlyControlSigmaArena,s2Step364EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step364EarlyControl_sigma : compileHmrSigmaDropLog s2Step364EarlyControlHistoryArena false 0 0 254 797 []=some s2Step364EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step364EarlyControl_sigmaOwned⟩
  · exact s2Step364EarlyControl_sigmaRelease

private theorem s2Step364EarlyControl_zeroBorrow : s2Step364EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step364EarlyControlLog.zeroWork=some s2Step364EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step364EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step364EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step364EarlyControlZeroArena,s2Step364EarlyControlArena,s2Step364EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step364EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step364EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step364EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364EarlyControl_zero : compileHmrEqualityLog s2Step364EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step364EarlyControlLog.zeroWork=some (s2Step364EarlyControlZeroArena,s2Step364EarlyControlLog.zeroWork,s2Step364EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step364EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step364EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step364EarlyControl_logged : s2Step364EarlyControlPlan.Logged s2Step364EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 254 253 252 251 831 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step364EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step364EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step364EarlyControl_zero
  · exact s2Step364EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step364EarlyControl_flags
  · exact s2Step364EarlyControl_fit
  · exact s2Step364EarlyControl_history
  · exact s2Step364EarlyControl_sigma
  · exact s2Step364EarlyControl_branch

private theorem s2Step364EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step364EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 254 253 252 251 831 60 s2Step364EarlyControlLog=some s2Step364EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step364EarlyControlPlan s2Step364EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 254 253 252 251 831 60 s2Step364EarlyControl_logged

private def s2Step364EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600],768⟩

private def s2Step364EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839],770⟩

private def s2Step364EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88],769⟩

private def s2Step364EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩

private def s2Step364FrontBank : WindowBank := ⟨s2Step364EntryFRow,s2Step364EntryGRow,s2Step364EntryFvRow,s2Step364EntryGvRow⟩

private def s2Step364Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 785, 768]

private def s2Step364Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 903, 769]

private def s2Step364Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 770]

private def s2Step364Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 812, 771]

private theorem s2Step364Counter_apart : Disjoint s2Step364HeadFvAfter.live s2Step364CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step364HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364Counter_borrowed : s2Step364HeadFvAfter.checkBorrow 4 s2Step364CounterWork=some s2Step364CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step364HeadFvAfter s2Step364CounterDuring s2Step364CounterWork.toFinset s2Step364Counter_bounded s2Step364Counter_apart rfl

private theorem s2Step364Counter_owned : (797::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step364HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step364HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364Counter_checked : compileHmrCounterStepLog s2Step364HeadFvAfter true 797 [772, 773, 774, 775, 776, 777] s2Step364CounterWork=some s2Step364CounterDuring := by
  have owned : ∀q∈797::[772, 773, 774, 775, 776, 777],q∈s2Step364HeadFvAfter.live := fun q hq => s2Step364Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step364Counter_borrowed

private def s2Step364EntryFAfter : Arena := s2Step364EntryFBefore

private theorem s2Step364EntryBank_incomingDistinct : ([s2Step364EntryFRow,s2Step364EntryGRow,s2Step364EntryFvRow,s2Step364EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364EntryF_Incoming : rowsOwned s2Step364EntryFBefore [s2Step364EntryFRow,s2Step364EntryGRow,s2Step364EntryFvRow,s2Step364EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step364EntryFRow,s2Step364EntryGRow,s2Step364EntryFvRow,s2Step364EntryGvRow] 0 s2Step364EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step364EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step364EntryBank_outgoingOwned : rowsOwned s2Step364EntryGvAfter [s2Step364EntryFOut,s2Step364EntryGOut,s2Step364EntryFvOut,s2Step364EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step364EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step364EntryF_Outgoing : rowsOwned s2Step364EntryGvAfter [s2Step364EntryFOut,s2Step364EntryGOut,s2Step364EntryFvOut,s2Step364EntryGvOut] :=
  hmrRows_owned_drop s2Step364EntryGvAfter [s2Step364EntryFOut,s2Step364EntryGOut,s2Step364EntryFvOut,s2Step364EntryGvOut] 0 s2Step364EntryBank_outgoingOwned

private theorem s2Step364EntryF_distinct : (s2Step364EntryFRow.sign::s2Step364EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364EntryF_owned : (s2Step364EntryFRow.sign::s2Step364EntryFRow.payload).toFinset⊆s2Step364EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step364EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364EntryF_reserved : s2Step364EntryFBefore.reserve s2Step364EntryFFresh.toFinset=some s2Step364EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step364EntryFFresh,arenaWires]
  · norm_num [s2Step364EntryFBefore,s2Step364EntryFFresh,arenaWires]
  · simp only [s2Step364EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step364EntryF_checked : planRowResizeLog s2Step364EntryFBefore s2Step364EntryFRow 89 s2Step364EntryFFresh=
    some (s2Step364EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600],768⟩,growRow 768 s2Step364EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step364EntryFBefore s2Step364EntryFAfter s2Step364EntryFRow 89 s2Step364EntryFFresh
    s2Step364EntryF_distinct s2Step364EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step364EntryF_reserved
  have rowEq : WindowRow.mk (s2Step364EntryFRow.payload++s2Step364EntryFFresh) s2Step364EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step364EntryFvBefore : Arena := s2Step364EntryFBefore

private theorem s2Step364EntryFv_Incoming : rowsOwned s2Step364EntryFvBefore [s2Step364EntryFvRow,s2Step364EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step364EntryFRow,s2Step364EntryGRow,s2Step364EntryFvRow,s2Step364EntryGvRow] 2 s2Step364EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step364EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step364EntryFv_Outgoing : rowsOwned s2Step364EntryGvAfter [s2Step364EntryFvOut,s2Step364EntryGvOut] :=
  hmrRows_owned_drop s2Step364EntryGvAfter [s2Step364EntryFOut,s2Step364EntryGOut,s2Step364EntryFvOut,s2Step364EntryGvOut] 2 s2Step364EntryBank_outgoingOwned

private theorem s2Step364EntryFv_distinct : (s2Step364EntryFvRow.sign::s2Step364EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364EntryFv_owned : (s2Step364EntryFvRow.sign::s2Step364EntryFvRow.payload).toFinset⊆s2Step364EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step364EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364EntryFv_reserved : s2Step364EntryFvBefore.reserve s2Step364EntryFvFresh.toFinset=some s2Step364EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step364EntryFvFresh,arenaWires]
  · norm_num [s2Step364EntryFvBefore,s2Step364EntryFBefore,s2Step364EntryFvFresh,arenaWires]
  · ext q
    simp only [s2Step364EntryFvAfter,s2Step364EntryFvBefore,s2Step364EntryFBefore,s2Step364EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step364EntryFv_checked : planRowResizeLog s2Step364EntryFvBefore s2Step364EntryFvRow 198 s2Step364EntryFvFresh=
    some (s2Step364EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882],770⟩,growRow 770 s2Step364EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step364EntryFvBefore s2Step364EntryFvAfter s2Step364EntryFvRow 198 s2Step364EntryFvFresh
    s2Step364EntryFv_distinct s2Step364EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step364EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step364EntryFvRow.payload++s2Step364EntryFvFresh) s2Step364EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step364EntryGAfter : Arena := s2Step364EntryFBefore

private def s2Step364EntryGBefore : Arena := s2Step364EntryFBefore

private theorem s2Step364EntryG_Incoming : rowsOwned s2Step364EntryGBefore [s2Step364EntryGRow,s2Step364EntryFvRow,s2Step364EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step364EntryFRow,s2Step364EntryGRow,s2Step364EntryFvRow,s2Step364EntryGvRow] 1 s2Step364EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step364EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step364EntryG_Outgoing : rowsOwned s2Step364EntryGvAfter [s2Step364EntryGOut,s2Step364EntryFvOut,s2Step364EntryGvOut] :=
  hmrRows_owned_drop s2Step364EntryGvAfter [s2Step364EntryFOut,s2Step364EntryGOut,s2Step364EntryFvOut,s2Step364EntryGvOut] 1 s2Step364EntryBank_outgoingOwned

private theorem s2Step364EntryG_distinct : (s2Step364EntryGRow.sign::s2Step364EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364EntryG_owned : (s2Step364EntryGRow.sign::s2Step364EntryGRow.payload).toFinset⊆s2Step364EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step364EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364EntryG_reserved : s2Step364EntryGBefore.reserve s2Step364EntryGFresh.toFinset=some s2Step364EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step364EntryGFresh,arenaWires]
  · norm_num [s2Step364EntryGBefore,s2Step364EntryFBefore,s2Step364EntryGFresh,arenaWires]
  · simp only [s2Step364EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step364EntryG_checked : planRowResizeLog s2Step364EntryGBefore s2Step364EntryGRow 89 s2Step364EntryGFresh=
    some (s2Step364EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88],769⟩,growRow 769 s2Step364EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step364EntryGBefore s2Step364EntryGAfter s2Step364EntryGRow 89 s2Step364EntryGFresh
    s2Step364EntryG_distinct s2Step364EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step364EntryG_reserved
  have rowEq : WindowRow.mk (s2Step364EntryGRow.payload++s2Step364EntryGFresh) s2Step364EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step364EntryGvBefore : Arena := s2Step364EntryFvAfter

private theorem s2Step364EntryGv_Incoming : rowsOwned s2Step364EntryGvBefore [s2Step364EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step364EntryFRow,s2Step364EntryGRow,s2Step364EntryFvRow,s2Step364EntryGvRow] 3 s2Step364EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step364EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step364EntryGv_Outgoing : rowsOwned s2Step364EntryGvAfter [s2Step364EntryGvOut] :=
  hmrRows_owned_drop s2Step364EntryGvAfter [s2Step364EntryFOut,s2Step364EntryGOut,s2Step364EntryFvOut,s2Step364EntryGvOut] 3 s2Step364EntryBank_outgoingOwned

private theorem s2Step364EntryGv_distinct : (s2Step364EntryGvRow.sign::s2Step364EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364EntryGv_owned : (s2Step364EntryGvRow.sign::s2Step364EntryGvRow.payload).toFinset⊆s2Step364EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step364EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364EntryGv_reserved : s2Step364EntryGvBefore.reserve s2Step364EntryGvFresh.toFinset=some s2Step364EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step364EntryGvFresh,arenaWires]
  · norm_num [s2Step364EntryGvBefore,s2Step364EntryFvAfter,s2Step364EntryGvFresh,arenaWires]
  · simp only [s2Step364EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step364EntryGv_checked : planRowResizeLog s2Step364EntryGvBefore s2Step364EntryGvRow 198 s2Step364EntryGvFresh=
    some (s2Step364EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩,growRow 771 s2Step364EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step364EntryGvBefore s2Step364EntryGvAfter s2Step364EntryGvRow 198 s2Step364EntryGvFresh
    s2Step364EntryGv_distinct s2Step364EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step364EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step364EntryGvRow.payload++s2Step364EntryGvFresh) s2Step364EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step364EntryBank_rows : planWindowRowsLog s2Step364EntryFBefore [(s2Step364EntryFRow,89),(s2Step364EntryGRow,89),(s2Step364EntryFvRow,198),(s2Step364EntryGvRow,198)] [s2Step364EntryFFresh,s2Step364EntryGFresh,s2Step364EntryFvFresh,s2Step364EntryGvFresh]=
    some (s2Step364EntryGvAfter,[s2Step364EntryFOut,s2Step364EntryGOut,s2Step364EntryFvOut,s2Step364EntryGvOut],(growRow 768 s2Step364EntryFFresh ++ (growRow 769 s2Step364EntryGFresh ++ (growRow 770 s2Step364EntryFvFresh ++ (growRow 771 s2Step364EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step364EntryGvAfter [] []=some (s2Step364EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step364EntryGvBefore s2Step364EntryGvAfter s2Step364EntryGvAfter
    s2Step364EntryGvRow s2Step364EntryGvOut 198 s2Step364EntryGvFresh [] [] []
    (growRow 771 s2Step364EntryGvFresh) ([]) s2Step364EntryGv_Incoming s2Step364EntryGv_checked h4 s2Step364EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step364EntryFvBefore s2Step364EntryFvAfter s2Step364EntryGvAfter
    s2Step364EntryFvRow s2Step364EntryFvOut 198 s2Step364EntryFvFresh [(s2Step364EntryGvRow,198)] [s2Step364EntryGvFresh] [s2Step364EntryGvOut]
    (growRow 770 s2Step364EntryFvFresh) ((growRow 771 s2Step364EntryGvFresh ++ [])) s2Step364EntryFv_Incoming s2Step364EntryFv_checked h3 s2Step364EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step364EntryGBefore s2Step364EntryGAfter s2Step364EntryGvAfter
    s2Step364EntryGRow s2Step364EntryGOut 89 s2Step364EntryGFresh [(s2Step364EntryFvRow,198),(s2Step364EntryGvRow,198)] [s2Step364EntryFvFresh,s2Step364EntryGvFresh] [s2Step364EntryFvOut,s2Step364EntryGvOut]
    (growRow 769 s2Step364EntryGFresh) ((growRow 770 s2Step364EntryFvFresh ++ (growRow 771 s2Step364EntryGvFresh ++ []))) s2Step364EntryG_Incoming s2Step364EntryG_checked h2 s2Step364EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step364EntryFBefore s2Step364EntryFAfter s2Step364EntryGvAfter
    s2Step364EntryFRow s2Step364EntryFOut 89 s2Step364EntryFFresh [(s2Step364EntryGRow,89),(s2Step364EntryFvRow,198),(s2Step364EntryGvRow,198)] [s2Step364EntryGFresh,s2Step364EntryFvFresh,s2Step364EntryGvFresh] [s2Step364EntryGOut,s2Step364EntryFvOut,s2Step364EntryGvOut]
    (growRow 768 s2Step364EntryFFresh) ((growRow 769 s2Step364EntryGFresh ++ (growRow 770 s2Step364EntryFvFresh ++ (growRow 771 s2Step364EntryGvFresh ++ [])))) s2Step364EntryF_Incoming s2Step364EntryF_checked h1 s2Step364EntryF_Outgoing
  exact h0

private theorem s2Step364EntryBank_checked : compileHmrBankResizeLog .entry s2Step364EntryFBefore ⟨s2Step364EntryFRow,s2Step364EntryGRow,s2Step364EntryFvRow,s2Step364EntryGvRow⟩ ⟨89,89,198,198⟩ [s2Step364EntryFFresh,s2Step364EntryGFresh,s2Step364EntryFvFresh,s2Step364EntryGvFresh]=
    some (s2Step364EntryGvAfter,⟨s2Step364EntryFOut,s2Step364EntryGOut,s2Step364EntryFvOut,s2Step364EntryGvOut⟩,(growRow 768 s2Step364EntryFFresh ++ (growRow 769 s2Step364EntryGFresh ++ (growRow 770 s2Step364EntryFvFresh ++ (growRow 771 s2Step364EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step364EntryBank_rows]
  rfl

private def s2Step364ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364ExitFBefore : Arena := s2Step364ExitGAfter

private def s2Step364ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 785],768⟩

private def s2Step364ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847],770⟩

private def s2Step364ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 903],769⟩

private def s2Step364ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 812],771⟩

private theorem s2Step364ExitBank_incomingDistinct : ([s2Step364ExitGRow,s2Step364ExitFRow,s2Step364ExitFvRow,s2Step364ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364ExitF_Incoming : rowsOwned s2Step364ExitFBefore [s2Step364ExitFRow,s2Step364ExitFvRow,s2Step364ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step364ExitGRow,s2Step364ExitFRow,s2Step364ExitFvRow,s2Step364ExitGvRow] 1 s2Step364ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step364ExitFBefore (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step364ExitBank_outgoingOwned : rowsOwned s2Step364ExitGvAfter [s2Step364ExitGOut,s2Step364ExitFOut,s2Step364ExitFvOut,s2Step364ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step364ExitGvAfter (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step364ExitF_Outgoing : rowsOwned s2Step364ExitGvAfter [s2Step364ExitFOut,s2Step364ExitFvOut,s2Step364ExitGvOut] :=
  hmrRows_owned_drop s2Step364ExitGvAfter [s2Step364ExitGOut,s2Step364ExitFOut,s2Step364ExitFvOut,s2Step364ExitGvOut] 1 s2Step364ExitBank_outgoingOwned

private theorem s2Step364ExitF_distinct : (s2Step364ExitFRow.sign::s2Step364ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364ExitF_owned : (s2Step364ExitFRow.sign::s2Step364ExitFRow.payload).toFinset⊆s2Step364ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step364ExitFBefore (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364ExitF_retired : s2Step364ExitFBefore.retireSet s2Step364ExitFExtra.toFinset=s2Step364ExitFAfter := by
  unfold Arena.retireSet s2Step364ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step364ExitFBefore,s2Step364ExitGAfter,s2Step364ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step364ExitF_checked : planRowResizeLog s2Step364ExitFBefore s2Step364ExitFRow 89 []=
    some (s2Step364ExitFAfter,s2Step364ExitFOut,shrinkRow 768 s2Step364ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step364ExitFBefore s2Step364ExitFRow 89 s2Step364ExitF_distinct s2Step364ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step364ExitFRow.payload.take 89) s2Step364ExitFRow.sign=s2Step364ExitFOut := by decide +kernel
  have hi : s2Step364ExitFRow.payload.drop 89=s2Step364ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step364ExitF_retired] at result
  exact result

private def s2Step364ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364ExitFvBefore : Arena := s2Step364ExitFAfter

private theorem s2Step364ExitFv_Incoming : rowsOwned s2Step364ExitFvBefore [s2Step364ExitFvRow,s2Step364ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step364ExitGRow,s2Step364ExitFRow,s2Step364ExitFvRow,s2Step364ExitGvRow] 2 s2Step364ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step364ExitFvBefore (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step364ExitFv_Outgoing : rowsOwned s2Step364ExitGvAfter [s2Step364ExitFvOut,s2Step364ExitGvOut] :=
  hmrRows_owned_drop s2Step364ExitGvAfter [s2Step364ExitGOut,s2Step364ExitFOut,s2Step364ExitFvOut,s2Step364ExitGvOut] 2 s2Step364ExitBank_outgoingOwned

private theorem s2Step364ExitFv_distinct : (s2Step364ExitFvRow.sign::s2Step364ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364ExitFv_owned : (s2Step364ExitFvRow.sign::s2Step364ExitFvRow.payload).toFinset⊆s2Step364ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step364ExitFvBefore (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364ExitFv_retired : s2Step364ExitFvBefore.retireSet s2Step364ExitFvExtra.toFinset=s2Step364ExitFvAfter := by
  unfold Arena.retireSet s2Step364ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step364ExitFvBefore,s2Step364ExitFAfter,s2Step364ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step364ExitFv_checked : planRowResizeLog s2Step364ExitFvBefore s2Step364ExitFvRow 198 []=
    some (s2Step364ExitFvAfter,s2Step364ExitFvOut,shrinkRow 770 s2Step364ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step364ExitFvBefore s2Step364ExitFvRow 198 s2Step364ExitFv_distinct s2Step364ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step364ExitFvRow.payload.take 198) s2Step364ExitFvRow.sign=s2Step364ExitFvOut := by decide +kernel
  have hi : s2Step364ExitFvRow.payload.drop 198=s2Step364ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step364ExitFv_retired] at result
  exact result

private def s2Step364ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step364ExitG_Incoming : rowsOwned s2Step364ExitGBefore [s2Step364ExitGRow,s2Step364ExitFRow,s2Step364ExitFvRow,s2Step364ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step364ExitGRow,s2Step364ExitFRow,s2Step364ExitFvRow,s2Step364ExitGvRow] 0 s2Step364ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step364ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step364ExitG_Outgoing : rowsOwned s2Step364ExitGvAfter [s2Step364ExitGOut,s2Step364ExitFOut,s2Step364ExitFvOut,s2Step364ExitGvOut] :=
  hmrRows_owned_drop s2Step364ExitGvAfter [s2Step364ExitGOut,s2Step364ExitFOut,s2Step364ExitFvOut,s2Step364ExitGvOut] 0 s2Step364ExitBank_outgoingOwned

private theorem s2Step364ExitG_distinct : (s2Step364ExitGRow.sign::s2Step364ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364ExitG_owned : (s2Step364ExitGRow.sign::s2Step364ExitGRow.payload).toFinset⊆s2Step364ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step364ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364ExitG_retired : s2Step364ExitGBefore.retireSet s2Step364ExitGExtra.toFinset=s2Step364ExitGAfter := by
  unfold Arena.retireSet s2Step364ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step364ExitGBefore,s2Step364ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step364ExitG_checked : planRowResizeLog s2Step364ExitGBefore s2Step364ExitGRow 88 []=
    some (s2Step364ExitGAfter,s2Step364ExitGOut,shrinkRow 769 s2Step364ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step364ExitGBefore s2Step364ExitGRow 88 s2Step364ExitG_distinct s2Step364ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step364ExitGRow.payload.take 88) s2Step364ExitGRow.sign=s2Step364ExitGOut := by decide +kernel
  have hi : s2Step364ExitGRow.payload.drop 88=s2Step364ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step364ExitG_retired] at result
  exact result

private def s2Step364ExitGvBefore : Arena := s2Step364ExitFvAfter

private theorem s2Step364ExitGv_Incoming : rowsOwned s2Step364ExitGvBefore [s2Step364ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step364ExitGRow,s2Step364ExitFRow,s2Step364ExitFvRow,s2Step364ExitGvRow] 3 s2Step364ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step364ExitGvBefore (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step364ExitGv_Outgoing : rowsOwned s2Step364ExitGvAfter [s2Step364ExitGvOut] :=
  hmrRows_owned_drop s2Step364ExitGvAfter [s2Step364ExitGOut,s2Step364ExitFOut,s2Step364ExitFvOut,s2Step364ExitGvOut] 3 s2Step364ExitBank_outgoingOwned

private theorem s2Step364ExitGv_distinct : (s2Step364ExitGvRow.sign::s2Step364ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364ExitGv_owned : (s2Step364ExitGvRow.sign::s2Step364ExitGvRow.payload).toFinset⊆s2Step364ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step364ExitGvBefore (fun q => (0≤q ∧ q<88) ∨ (89≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364ExitGv_retired : s2Step364ExitGvBefore.retireSet s2Step364ExitGvExtra.toFinset=s2Step364ExitGvAfter := by
  unfold Arena.retireSet s2Step364ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step364ExitGvBefore,s2Step364ExitFvAfter,s2Step364ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step364ExitGv_checked : planRowResizeLog s2Step364ExitGvBefore s2Step364ExitGvRow 198 []=
    some (s2Step364ExitGvAfter,s2Step364ExitGvOut,shrinkRow 771 s2Step364ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step364ExitGvBefore s2Step364ExitGvRow 198 s2Step364ExitGv_distinct s2Step364ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step364ExitGvRow.payload.take 198) s2Step364ExitGvRow.sign=s2Step364ExitGvOut := by decide +kernel
  have hi : s2Step364ExitGvRow.payload.drop 198=s2Step364ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step364ExitGv_retired] at result
  exact result

private theorem s2Step364ExitBank_rows : planWindowRowsLog s2Step364ExitGBefore [(s2Step364ExitGRow,88),(s2Step364ExitFRow,89),(s2Step364ExitFvRow,198),(s2Step364ExitGvRow,198)] [[],[],[],[]]=
    some (s2Step364ExitGvAfter,[s2Step364ExitGOut,s2Step364ExitFOut,s2Step364ExitFvOut,s2Step364ExitGvOut],(shrinkRow 769 s2Step364ExitGExtra ++ (shrinkRow 768 s2Step364ExitFExtra ++ (shrinkRow 770 s2Step364ExitFvExtra ++ (shrinkRow 771 s2Step364ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step364ExitGvAfter [] []=some (s2Step364ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step364ExitGvBefore s2Step364ExitGvAfter s2Step364ExitGvAfter
    s2Step364ExitGvRow s2Step364ExitGvOut 198 [] [] [] []
    (shrinkRow 771 s2Step364ExitGvExtra) ([]) s2Step364ExitGv_Incoming s2Step364ExitGv_checked h4 s2Step364ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step364ExitFvBefore s2Step364ExitFvAfter s2Step364ExitGvAfter
    s2Step364ExitFvRow s2Step364ExitFvOut 198 [] [(s2Step364ExitGvRow,198)] [[]] [s2Step364ExitGvOut]
    (shrinkRow 770 s2Step364ExitFvExtra) ((shrinkRow 771 s2Step364ExitGvExtra ++ [])) s2Step364ExitFv_Incoming s2Step364ExitFv_checked h3 s2Step364ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step364ExitFBefore s2Step364ExitFAfter s2Step364ExitGvAfter
    s2Step364ExitFRow s2Step364ExitFOut 89 [] [(s2Step364ExitFvRow,198),(s2Step364ExitGvRow,198)] [[],[]] [s2Step364ExitFvOut,s2Step364ExitGvOut]
    (shrinkRow 768 s2Step364ExitFExtra) ((shrinkRow 770 s2Step364ExitFvExtra ++ (shrinkRow 771 s2Step364ExitGvExtra ++ []))) s2Step364ExitF_Incoming s2Step364ExitF_checked h2 s2Step364ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step364ExitGBefore s2Step364ExitGAfter s2Step364ExitGvAfter
    s2Step364ExitGRow s2Step364ExitGOut 88 [] [(s2Step364ExitFRow,89),(s2Step364ExitFvRow,198),(s2Step364ExitGvRow,198)] [[],[],[]] [s2Step364ExitFOut,s2Step364ExitFvOut,s2Step364ExitGvOut]
    (shrinkRow 769 s2Step364ExitGExtra) ((shrinkRow 768 s2Step364ExitFExtra ++ (shrinkRow 770 s2Step364ExitFvExtra ++ (shrinkRow 771 s2Step364ExitGvExtra ++ [])))) s2Step364ExitG_Incoming s2Step364ExitG_checked h1 s2Step364ExitG_Outgoing
  exact h0

private theorem s2Step364ExitBank_checked : compileHmrBankResizeLog .exit s2Step364ExitGBefore ⟨s2Step364ExitFRow,s2Step364ExitGRow,s2Step364ExitFvRow,s2Step364ExitGvRow⟩ ⟨89,88,198,198⟩ [[],[],[],[]]=
    some (s2Step364ExitGvAfter,⟨s2Step364ExitFOut,s2Step364ExitGOut,s2Step364ExitFvOut,s2Step364ExitGvOut⟩,(shrinkRow 769 s2Step364ExitGExtra ++ (shrinkRow 768 s2Step364ExitFExtra ++ (shrinkRow 770 s2Step364ExitFvExtra ++ (shrinkRow 771 s2Step364ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step364ExitBank_rows]
  rfl

private theorem s2Step364Add0_apart : Disjoint s2Step364Add0Arena.live s2Step364Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step364Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364Add0_card : s2Step364Add0Arena.live.card=908 := by
  decide +kernel

private theorem s2Step364Add0_borrowed : s2Step364Add0Arena.checkBorrow (hmrHybridCount s2Step364Add0Arena s2Step364Add0B.length) s2Step364Add0Work=some s2Step364Add0During := by
  have len : s2Step364Add0Work.length=hmrHybridCount s2Step364Add0Arena s2Step364Add0B.length := by
    rw [hmrHybridCount,s2Step364Add0_card]
    decide +kernel
  have nd : s2Step364Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step364Add0Arena s2Step364Add0During s2Step364Add0Work.toFinset s2Step364Add0_bounded s2Step364Add0_apart rfl

private theorem s2Step364Add0_distinct : (796::831::783::(s2Step364Add0A++s2Step364Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364Add0_owned : (796::831::783::(s2Step364Add0A++s2Step364Add0B)).toFinset⊆s2Step364Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step364Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364Add0_checked : compileHmrHybridCinLog s2Step364Add0Arena 831 796 783 s2Step364Add0A s2Step364Add0B s2Step364Add0Work=some s2Step364Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step364Add0Arena s2Step364Add0During 831 796 783 s2Step364Add0A s2Step364Add0B s2Step364Add0Work
    (by decide +kernel) (by decide +kernel) s2Step364Add0_distinct
    (fun q hq => s2Step364Add0_owned (List.mem_toFinset.mpr hq)) s2Step364Add0_borrowed

private theorem s2Step364Add1_apart : Disjoint s2Step364Add1Arena.live s2Step364Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step364Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364Add1_card : s2Step364Add1Arena.live.card=908 := by
  decide +kernel

private theorem s2Step364Add1_borrowed : s2Step364Add1Arena.checkBorrow (hmrHybridCount s2Step364Add1Arena s2Step364Add1B.length) s2Step364Add1Work=some s2Step364Add1During := by
  have len : s2Step364Add1Work.length=hmrHybridCount s2Step364Add1Arena s2Step364Add1B.length := by
    rw [hmrHybridCount,s2Step364Add1_card]
    decide +kernel
  have nd : s2Step364Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step364Add1Arena s2Step364Add1During s2Step364Add1Work.toFinset s2Step364Add1_bounded s2Step364Add1_apart rfl

private theorem s2Step364Add1_distinct : (796::831::783::(s2Step364Add1A++s2Step364Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364Add1_owned : (796::831::783::(s2Step364Add1A++s2Step364Add1B)).toFinset⊆s2Step364Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step364Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364Add1_checked : compileHmrHybridCinLog s2Step364Add1Arena 831 796 783 s2Step364Add1A s2Step364Add1B s2Step364Add1Work=some s2Step364Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step364Add1Arena s2Step364Add1During 831 796 783 s2Step364Add1A s2Step364Add1B s2Step364Add1Work
    (by decide +kernel) (by decide +kernel) s2Step364Add1_distinct
    (fun q hq => s2Step364Add1_owned (List.mem_toFinset.mpr hq)) s2Step364Add1_borrowed

private theorem s2Step364F4_apart : Disjoint (s2Step364Add0A++s2Step364Add0B).toFinset (s2Step364Add1A++s2Step364Add1B).toFinset := by
  have nd : ((s2Step364Add0A++s2Step364Add0B)++(s2Step364Add1A++s2Step364Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step364F4_carry : s2Step364F4FlagArena.checkBorrow 1 [783]=some s2Step364Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step364F4FlagArena,s2Step364HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step364F4FlagArena,s2Step364HeadFvAfter,s2Step364Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step364F4_distinct : (797::831::796::783::((s2Step364Add0A++s2Step364Add1A)++(s2Step364Add0B++s2Step364Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364F4_flag : s2Step364HeadFvAfter.checkBorrow 1 [796]=some s2Step364F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step364HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step364F4_owned : (797::831::((s2Step364Add0A++s2Step364Add1A)++(s2Step364Add0B++s2Step364Add1B))).toFinset⊆s2Step364HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step364HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364F4_checked : compileHmrHybridF4Log s2Step364HeadFvAfter 797 831 s2Step364Add0A s2Step364Add0B s2Step364Add1A s2Step364Add1B [796] [783] s2Step364Add0Work s2Step364Add1Work=some s2Step364F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step364HeadFvAfter s2Step364F4FlagArena s2Step364Add0Arena s2Step364Add0During s2Step364Add1During 797 831
    s2Step364Add0A s2Step364Add0B s2Step364Add1A s2Step364Add1B [796] [783] s2Step364Add0Work s2Step364Add1Work
    (fun q hq => s2Step364F4_owned (List.mem_toFinset.mpr hq)) s2Step364F4_flag s2Step364F4_carry
    s2Step364F4_distinct s2Step364F4_apart s2Step364Add0_checked s2Step364Add1_checked

private theorem s2Step364Front_branch : s2Step364FrontSigmaArena.checkBorrow 1 [831]=some s2Step364HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step364FrontSigmaArena,s2Step364EntryGvAfter,s2Step364EntryFvAfter,arenaWires]
  · ext q
    simp only [s2Step364FrontSigmaArena,s2Step364EntryGvAfter,s2Step364EntryFvAfter,s2Step364HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step364Front_entry : HmrFrontEntryValid s2Step364EntryFBefore s2Step364FrontBank 89 198 ⟨89,88,198,198⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step364FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step364EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step364EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step364FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step364Front_sigma : s2Step364EntryGvAfter.checkBorrow 1 [797]=some s2Step364FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step364EntryGvAfter,s2Step364EntryFvAfter,arenaWires]
  · rfl

private def s2Step364HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364HeadFBefore : Arena := s2Step364HeadGAfter

private def s2Step364HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600],768⟩

private def s2Step364HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882],770⟩

private def s2Step364HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88],769⟩

private def s2Step364HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780],771⟩

private theorem s2Step364HeadBank_incomingDistinct : ([s2Step364HeadGRow,s2Step364HeadFRow,s2Step364HeadGvRow,s2Step364HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364HeadF_Incoming : rowsOwned s2Step364HeadFBefore [s2Step364HeadFRow,s2Step364HeadGvRow,s2Step364HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step364HeadGRow,s2Step364HeadFRow,s2Step364HeadGvRow,s2Step364HeadFvRow] 1 s2Step364HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step364HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step364HeadBank_outgoingOwned : rowsOwned s2Step364HeadFvAfter [s2Step364HeadGOut,s2Step364HeadFOut,s2Step364HeadGvOut,s2Step364HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step364HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step364HeadF_Outgoing : rowsOwned s2Step364HeadFvAfter [s2Step364HeadFOut,s2Step364HeadGvOut,s2Step364HeadFvOut] :=
  hmrRows_owned_drop s2Step364HeadFvAfter [s2Step364HeadGOut,s2Step364HeadFOut,s2Step364HeadGvOut,s2Step364HeadFvOut] 1 s2Step364HeadBank_outgoingOwned

private theorem s2Step364HeadF_distinct : (s2Step364HeadFRow.sign::s2Step364HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364HeadF_owned : (s2Step364HeadFRow.sign::s2Step364HeadFRow.payload).toFinset⊆s2Step364HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step364HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364HeadF_reserved : s2Step364HeadFBefore.reserve s2Step364HeadFFresh.toFinset=some s2Step364HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step364HeadFFresh,arenaWires]
  · norm_num [s2Step364HeadFBefore,s2Step364HeadGAfter,s2Step364HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step364HeadFAfter,s2Step364HeadFBefore,s2Step364HeadGAfter,s2Step364HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step364HeadF_checked : planRowResizeLog s2Step364HeadFBefore s2Step364HeadFRow 90 s2Step364HeadFFresh=
    some (s2Step364HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 785],768⟩,growRow 768 s2Step364HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step364HeadFBefore s2Step364HeadFAfter s2Step364HeadFRow 90 s2Step364HeadFFresh
    s2Step364HeadF_distinct s2Step364HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step364HeadF_reserved
  have rowEq : WindowRow.mk (s2Step364HeadFRow.payload++s2Step364HeadFFresh) s2Step364HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 785],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step364HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step364HeadFvBefore : Arena := s2Step364HeadGvAfter

private theorem s2Step364HeadFv_Incoming : rowsOwned s2Step364HeadFvBefore [s2Step364HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step364HeadGRow,s2Step364HeadFRow,s2Step364HeadGvRow,s2Step364HeadFvRow] 3 s2Step364HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step364HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step364HeadFv_Outgoing : rowsOwned s2Step364HeadFvAfter [s2Step364HeadFvOut] :=
  hmrRows_owned_drop s2Step364HeadFvAfter [s2Step364HeadGOut,s2Step364HeadFOut,s2Step364HeadGvOut,s2Step364HeadFvOut] 3 s2Step364HeadBank_outgoingOwned

private theorem s2Step364HeadFv_distinct : (s2Step364HeadFvRow.sign::s2Step364HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364HeadFv_owned : (s2Step364HeadFvRow.sign::s2Step364HeadFvRow.payload).toFinset⊆s2Step364HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step364HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364HeadFv_reserved : s2Step364HeadFvBefore.reserve s2Step364HeadFvFresh.toFinset=some s2Step364HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step364HeadFvFresh,arenaWires]
  · norm_num [s2Step364HeadFvBefore,s2Step364HeadGvAfter,s2Step364HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step364HeadFvAfter,s2Step364HeadFvBefore,s2Step364HeadGvAfter,s2Step364HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step364HeadFv_checked : planRowResizeLog s2Step364HeadFvBefore s2Step364HeadFvRow 199 s2Step364HeadFvFresh=
    some (s2Step364HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847],770⟩,growRow 770 s2Step364HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step364HeadFvBefore s2Step364HeadFvAfter s2Step364HeadFvRow 199 s2Step364HeadFvFresh
    s2Step364HeadFv_distinct s2Step364HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step364HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step364HeadFvRow.payload++s2Step364HeadFvFresh) s2Step364HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step364HeadG_Incoming : rowsOwned s2Step364HeadGBefore [s2Step364HeadGRow,s2Step364HeadFRow,s2Step364HeadGvRow,s2Step364HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step364HeadGRow,s2Step364HeadFRow,s2Step364HeadGvRow,s2Step364HeadFvRow] 0 s2Step364HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step364HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step364HeadG_Outgoing : rowsOwned s2Step364HeadFvAfter [s2Step364HeadGOut,s2Step364HeadFOut,s2Step364HeadGvOut,s2Step364HeadFvOut] :=
  hmrRows_owned_drop s2Step364HeadFvAfter [s2Step364HeadGOut,s2Step364HeadFOut,s2Step364HeadGvOut,s2Step364HeadFvOut] 0 s2Step364HeadBank_outgoingOwned

private theorem s2Step364HeadG_distinct : (s2Step364HeadGRow.sign::s2Step364HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364HeadG_owned : (s2Step364HeadGRow.sign::s2Step364HeadGRow.payload).toFinset⊆s2Step364HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step364HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364HeadG_reserved : s2Step364HeadGBefore.reserve s2Step364HeadGFresh.toFinset=some s2Step364HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step364HeadGFresh,arenaWires]
  · norm_num [s2Step364HeadGBefore,s2Step364HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step364HeadGAfter,s2Step364HeadGBefore,s2Step364HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step364HeadG_checked : planRowResizeLog s2Step364HeadGBefore s2Step364HeadGRow 90 s2Step364HeadGFresh=
    some (s2Step364HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 903],769⟩,growRow 769 s2Step364HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step364HeadGBefore s2Step364HeadGAfter s2Step364HeadGRow 90 s2Step364HeadGFresh
    s2Step364HeadG_distinct s2Step364HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step364HeadG_reserved
  have rowEq : WindowRow.mk (s2Step364HeadGRow.payload++s2Step364HeadGFresh) s2Step364HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 903],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step364HeadGvBefore : Arena := s2Step364HeadFAfter

private theorem s2Step364HeadGv_Incoming : rowsOwned s2Step364HeadGvBefore [s2Step364HeadGvRow,s2Step364HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step364HeadGRow,s2Step364HeadFRow,s2Step364HeadGvRow,s2Step364HeadFvRow] 2 s2Step364HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step364HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step364HeadGv_Outgoing : rowsOwned s2Step364HeadFvAfter [s2Step364HeadGvOut,s2Step364HeadFvOut] :=
  hmrRows_owned_drop s2Step364HeadFvAfter [s2Step364HeadGOut,s2Step364HeadFOut,s2Step364HeadGvOut,s2Step364HeadFvOut] 2 s2Step364HeadBank_outgoingOwned

private theorem s2Step364HeadGv_distinct : (s2Step364HeadGvRow.sign::s2Step364HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step364HeadGv_owned : (s2Step364HeadGvRow.sign::s2Step364HeadGvRow.payload).toFinset⊆s2Step364HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step364HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step364HeadGv_reserved : s2Step364HeadGvBefore.reserve s2Step364HeadGvFresh.toFinset=some s2Step364HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step364HeadGvFresh,arenaWires]
  · norm_num [s2Step364HeadGvBefore,s2Step364HeadFAfter,s2Step364HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step364HeadGvAfter,s2Step364HeadGvBefore,s2Step364HeadFAfter,s2Step364HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step364HeadGv_checked : planRowResizeLog s2Step364HeadGvBefore s2Step364HeadGvRow 199 s2Step364HeadGvFresh=
    some (s2Step364HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 812],771⟩,growRow 771 s2Step364HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step364HeadGvBefore s2Step364HeadGvAfter s2Step364HeadGvRow 199 s2Step364HeadGvFresh
    s2Step364HeadGv_distinct s2Step364HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step364HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step364HeadGvRow.payload++s2Step364HeadGvFresh) s2Step364HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 812],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step364HeadBank_rows : planWindowRowsLog s2Step364HeadGBefore [(s2Step364HeadGRow,90),(s2Step364HeadFRow,90),(s2Step364HeadGvRow,199),(s2Step364HeadFvRow,199)] [s2Step364HeadGFresh,s2Step364HeadFFresh,s2Step364HeadGvFresh,s2Step364HeadFvFresh]=
    some (s2Step364HeadFvAfter,[s2Step364HeadGOut,s2Step364HeadFOut,s2Step364HeadGvOut,s2Step364HeadFvOut],(growRow 769 s2Step364HeadGFresh ++ (growRow 768 s2Step364HeadFFresh ++ (growRow 771 s2Step364HeadGvFresh ++ (growRow 770 s2Step364HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step364HeadFvAfter [] []=some (s2Step364HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step364HeadFvBefore s2Step364HeadFvAfter s2Step364HeadFvAfter
    s2Step364HeadFvRow s2Step364HeadFvOut 199 s2Step364HeadFvFresh [] [] []
    (growRow 770 s2Step364HeadFvFresh) ([]) s2Step364HeadFv_Incoming s2Step364HeadFv_checked h4 s2Step364HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step364HeadGvBefore s2Step364HeadGvAfter s2Step364HeadFvAfter
    s2Step364HeadGvRow s2Step364HeadGvOut 199 s2Step364HeadGvFresh [(s2Step364HeadFvRow,199)] [s2Step364HeadFvFresh] [s2Step364HeadFvOut]
    (growRow 771 s2Step364HeadGvFresh) ((growRow 770 s2Step364HeadFvFresh ++ [])) s2Step364HeadGv_Incoming s2Step364HeadGv_checked h3 s2Step364HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step364HeadFBefore s2Step364HeadFAfter s2Step364HeadFvAfter
    s2Step364HeadFRow s2Step364HeadFOut 90 s2Step364HeadFFresh [(s2Step364HeadGvRow,199),(s2Step364HeadFvRow,199)] [s2Step364HeadGvFresh,s2Step364HeadFvFresh] [s2Step364HeadGvOut,s2Step364HeadFvOut]
    (growRow 768 s2Step364HeadFFresh) ((growRow 771 s2Step364HeadGvFresh ++ (growRow 770 s2Step364HeadFvFresh ++ []))) s2Step364HeadF_Incoming s2Step364HeadF_checked h2 s2Step364HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step364HeadGBefore s2Step364HeadGAfter s2Step364HeadFvAfter
    s2Step364HeadGRow s2Step364HeadGOut 90 s2Step364HeadGFresh [(s2Step364HeadFRow,90),(s2Step364HeadGvRow,199),(s2Step364HeadFvRow,199)] [s2Step364HeadFFresh,s2Step364HeadGvFresh,s2Step364HeadFvFresh] [s2Step364HeadFOut,s2Step364HeadGvOut,s2Step364HeadFvOut]
    (growRow 769 s2Step364HeadGFresh) ((growRow 768 s2Step364HeadFFresh ++ (growRow 771 s2Step364HeadGvFresh ++ (growRow 770 s2Step364HeadFvFresh ++ [])))) s2Step364HeadG_Incoming s2Step364HeadG_checked h1 s2Step364HeadG_Outgoing
  exact h0

private theorem s2Step364HeadBank_checked : compileHmrBankResizeLog .headroom s2Step364HeadGBefore ⟨s2Step364HeadFRow,s2Step364HeadGRow,s2Step364HeadFvRow,s2Step364HeadGvRow⟩ ⟨90,90,199,199⟩ [s2Step364HeadGFresh,s2Step364HeadFFresh,s2Step364HeadGvFresh,s2Step364HeadFvFresh]=
    some (s2Step364HeadFvAfter,⟨s2Step364HeadFOut,s2Step364HeadGOut,s2Step364HeadFvOut,s2Step364HeadGvOut⟩,(growRow 769 s2Step364HeadGFresh ++ (growRow 768 s2Step364HeadFFresh ++ (growRow 771 s2Step364HeadGvFresh ++ (growRow 770 s2Step364HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step364HeadBank_rows]
  rfl

private theorem s2Step364Front_checked : compileHmrSourceFrontLog s2Step364EntryFBefore s2Step364FrontBank 89 198 ⟨89,88,198,198⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step364FrontLog=some s2Step364FrontPlan := by
  have pairEq : s2Step364FrontPair=⟨s2Step364HeadFRow,s2Step364HeadGRow,s2Step364HeadFvRow,s2Step364HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step364FrontHead=⟨s2Step364ExitFRow,s2Step364ExitGRow,s2Step364ExitFvRow,s2Step364ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step364Add0A=s2Step364FrontHead.f.wires := by decide +kernel
  have gEq : s2Step364Add0B=s2Step364FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step364Add1A=s2Step364FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step364Add1B=s2Step364FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step364EntryFBefore s2Step364FrontBank 89 198 ⟨89,88,198,198⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step364FrontLog s2Step364FrontPlan
  · exact s2Step364Front_entry
  · exact s2Step364EntryBank_checked
  · exact s2Step364Front_sigma
  · rfl
  · exact s2Step364Front_branch
  · rfl
  · simpa only [s2Step364FrontPlan,pairEq] using s2Step364HeadBank_checked
  · simpa only [s2Step364FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step364F4_checked
  · exact s2Step364Counter_checked
  · rfl
  · simpa only [s2Step364FrontPlan,headEq] using s2Step364ExitBank_checked

private theorem s2Step364Complete_explicit_checked : compileHmrEarlyStepLog s2Step364EntryFBefore s2Step364FrontBank 89 198 ⟨89,88,198,198⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step364CompleteLog=some s2Step364CompletePlan := by
  let Q := s2Step364EarlyControlPlan
  have hq := s2Step364EarlyControl_plan_checked
  have fv1 : s2Step364CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step364CompleteOut.fv.payload[2]?.getD s2Step364CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step364CompleteOut.fv.payload[3]?.getD s2Step364CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step364CompleteOut.fv.payload[4]?.getD s2Step364CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step364EntryFBefore s2Step364EarlyControlArena s2Step364FrontBank 89 198 ⟨89,88,198,198⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step364CompleteLog s2Step364FrontPlan Q
    s2Step364Front_checked s2Step364Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step364Complete_owned s2Step364Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step364EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 797 s2Step364CompleteOut.fv.second (s2Step364CompleteOut.fv.payload[2]?.getD s2Step364CompleteOut.fv.sign) (s2Step364CompleteOut.fv.payload[3]?.getD s2Step364CompleteOut.fv.sign) (s2Step364CompleteOut.fv.payload[4]?.getD s2Step364CompleteOut.fv.sign) 831 60 s2Step364EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep364Arena : Arena := s2Step364EntryFBefore
def s2PrivateStep364Bank : WindowBank := s2Step364FrontBank
def s2PrivateStep364Spec : HmrSourceWalkStepLog := ⟨89,198,⟨89,88,198,198⟩,60,.early s2Step364CompleteLog⟩
def s2PrivateStep364Plan : HmrSourceStepPlan := .early s2Step364CompletePlan
theorem s2PrivateStep364_source : s2PrivateStep364Spec=s2ObservedLogs352[12] := rfl
theorem s2PrivateStep364_checked : compileHmrSourceStepLog s2PrivateStep364Arena s2PrivateStep364Bank
    s2PrivateStep364Spec.fgWidth s2PrivateStep364Spec.vWidth s2PrivateStep364Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 364 s2PrivateStep364Spec.need none s2PrivateStep364Spec.log=some s2PrivateStep364Plan := by
  change compileHmrSourceStepLog s2Step364EntryFBefore s2Step364FrontBank 89 198 ⟨89,88,198,198⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 364 60 none (.early s2Step364CompleteLog)=some (.early s2Step364CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 364<498)]
  rw [s2Step364Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
