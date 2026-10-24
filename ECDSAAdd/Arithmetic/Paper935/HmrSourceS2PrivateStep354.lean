import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep352
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

private def s2Step354CompleteMoves : List (Wire × Wire) := [(849,606)]

private def s2Step354EarlyControlLog : HmrEarlyControlLog := ⟨[849, 791, 796, 839, 894],[790],[903],[800, 789, 827, 844, 907, 913],[]⟩

private def s2Step354FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [790], [], [791]],[[903], [894], [796], [839]],[[], [], [], []]⟩,[808],[801],[800],[789],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844]⟩

private def s2Step354CompleteLog : HmrEarlyStepLog := ⟨s2Step354FrontLog,s2Step354CompleteMoves,s2Step354EarlyControlLog⟩

private def s2Step354ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605],768⟩

private def s2Step354ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788],770⟩

private def s2Step354ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93],769⟩

private def s2Step354ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891],771⟩

private def s2Step354FrontOut : WindowBank := ⟨s2Step354ExitFOut,s2Step354ExitGOut,s2Step354ExitFvOut,s2Step354ExitGvOut⟩

private def s2Step354CompleteOut : WindowBank := s2Step354FrontOut.repacked s2Step354CompleteMoves

private def s2Step354EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step354EarlyControlPositiveArena,[790],s2Step354EarlyControlEqualityArena,[903],⟨⟨808,false⟩,[⟨⟨790,false⟩,903⟩]⟩⟩

private def s2Step354EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step354EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step354EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,849⟩,⟨⟨774,false⟩,791⟩,⟨⟨775,false⟩,796⟩,⟨⟨776,false⟩,839⟩,⟨⟨777,false⟩,894⟩]⟩

private def s2Step354EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step354EarlyControlZeroArena,s2Step354EarlyControlZeroPlan,s2Step354EarlyControlClassPlan,s2Step354EarlyControlFlagArena,s2Step354EarlyControlFittedArena,s2Step354EarlyControlHistoryArena,s2Step354EarlyControlSigmaArena,s2Step354EarlyControlOutputArena,s2Step354EarlyControlLog⟩

private def s2Step354CounterWork : List Wire := [800, 789, 827, 844]

private theorem s2Step354Counter_bounded : s2Step354CounterWork.toFinset⊆arenaWires := by norm_num [s2Step354CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step354HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354CounterDuring : Arena := ⟨s2Step354HeadFvAfter.live∪s2Step354CounterWork.toFinset,Finset.union_subset s2Step354HeadFvAfter.bounded s2Step354Counter_bounded⟩

private def s2Step354EntryFFresh : List Wire := []

private def s2Step354EntryFvFresh : List Wire := []

private def s2Step354EntryGFresh : List Wire := [790]

private def s2Step354EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354EntryGvFresh : List Wire := [791]

private def s2Step354ExitFExtra : List Wire := [606, 894]

private def s2Step354ExitFvExtra : List Wire := [839]

private def s2Step354ExitGExtra : List Wire := [790, 903]

private def s2Step354ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<606) ∨ (607≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354ExitGvExtra : List Wire := [791, 796]

private def s2Step354Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354Add0Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step354Add0_bounded : s2Step354Add0Work.toFinset⊆arenaWires := by
  have h : s2Step354Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step354Add0During : Arena := ⟨s2Step354Add0Arena.live∪s2Step354Add0Work.toFinset,Finset.union_subset s2Step354Add0Arena.bounded s2Step354Add0_bounded⟩

private def s2Step354Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354Add1Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step354Add1_bounded : s2Step354Add1Work.toFinset⊆arenaWires := by
  have h : s2Step354Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step354Add1During : Arena := ⟨s2Step354Add1Arena.live∪s2Step354Add1Work.toFinset,Finset.union_subset s2Step354Add1Arena.bounded s2Step354Add1_bounded⟩

private def s2Step354F4FlagArena : Arena := ⟨s2Step354HeadFvAfter.live∪{800},Finset.union_subset s2Step354HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step354F4Plan : HmrHybridF4Plan := ⟨s2Step354F4FlagArena,[800],s2Step354Add0Arena,[789],s2Step354Add0During,s2Step354Add0Work,s2Step354Add1During,s2Step354Add1Work⟩

private def s2Step354HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 894],768⟩

private def s2Step354HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 839],770⟩

private def s2Step354HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 790, 903],769⟩

private def s2Step354HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 791, 796],771⟩

private def s2Step354FrontHead : WindowBank := ⟨s2Step354HeadFOut,s2Step354HeadGOut,s2Step354HeadFvOut,s2Step354HeadGvOut⟩

private def s2Step354EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606],768⟩

private def s2Step354EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788],770⟩

private def s2Step354EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 790],769⟩

private def s2Step354EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 791],771⟩

private def s2Step354FrontPair : WindowBank := ⟨s2Step354EntryFOut,s2Step354EntryGOut,s2Step354EntryFvOut,s2Step354EntryGvOut⟩

private def s2Step354FrontSigmaArena : Arena := ⟨s2Step354EntryGvAfter.live∪{808},Finset.union_subset s2Step354EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step354HeadFFresh : List Wire := [894]

private def s2Step354HeadFvFresh : List Wire := [839]

private def s2Step354HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354HeadGFresh : List Wire := [903]

private def s2Step354HeadGvFresh : List Wire := [796]

private def s2Step354FrontPlan : HmrSourceFront := ⟨s2Step354EntryGvAfter,s2Step354FrontPair,(growRow 768 s2Step354EntryFFresh ++ (growRow 769 s2Step354EntryGFresh ++ (growRow 770 s2Step354EntryFvFresh ++ (growRow 771 s2Step354EntryGvFresh ++ [])))),s2Step354FrontSigmaArena,[808],s2Step354HeadGBefore,[801],
  s2Step354HeadFvAfter,s2Step354FrontHead,(growRow 769 s2Step354HeadGFresh ++ (growRow 768 s2Step354HeadFFresh ++ (growRow 771 s2Step354HeadGvFresh ++ (growRow 770 s2Step354HeadFvFresh ++ [])))),s2Step354F4Plan,s2Step354CounterDuring,s2Step354CounterWork,s2Step354ExitGvAfter,s2Step354FrontOut,(shrinkRow 769 s2Step354ExitGExtra ++ (shrinkRow 768 s2Step354ExitFExtra ++ (shrinkRow 770 s2Step354ExitFvExtra ++ (shrinkRow 771 s2Step354ExitGvExtra ++ []))))⟩

private def s2Step354CompletePlan : HmrEarlyStepPlan := ⟨s2Step354FrontPlan,s2Step354EarlyControlArena,s2Step354EarlyControlPlan,s2Step354CompleteMoves⟩

private theorem s2Step354Complete_apart : List.Disjoint (s2Step354CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [808, 801, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step354CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[808, 801, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step354Complete_owned : (s2Step354CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step354EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step354EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step354CompleteMoveArena : Arena := ⟨s2Step354ExitGvAfter.live∪{606},Finset.union_subset s2Step354ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step354Complete_repack : s2Step354ExitGvAfter.checkRepack s2Step354CompleteMoves=some s2Step354EarlyControlArena := by
  have owned : 849∈s2Step354ExitGvAfter.live := by norm_num [s2Step354ExitGvAfter,arenaWires]
  have reserve : s2Step354ExitGvAfter.reserve {606}=some s2Step354CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step354ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step354CompleteMoveArena.retireSet {849}=s2Step354EarlyControlArena := by
    unfold Arena.retireSet s2Step354EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step354CompleteMoveArena,s2Step354ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step354CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step354CompleteMoveArena.retireSet {849}).checkRepack []=some s2Step354EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step354EarlyControl_branchOwned : ([801] : List Wire).toFinset⊆s2Step354EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step354EarlyControlSigmaArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354EarlyControl_branch : compileHmrBranchRetirement s2Step354EarlyControlSigmaArena 801=some s2Step354EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step354EarlyControl_branchOwned
  · ext q
    simp [s2Step354EarlyControlOutputArena,s2Step354EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step354EarlyControl_classEqualityBorrow : s2Step354EarlyControlPositiveArena.checkBorrow (([808, 790] : List Wire).length-1) s2Step354EarlyControlLog.classWork=some s2Step354EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step354EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step354EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step354EarlyControlEqualityArena,s2Step354EarlyControlPositiveArena,s2Step354EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step354EarlyControl_classEqualityOwned : ([808, 790] : List Wire).toFinset⊆s2Step354EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step354EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354EarlyControl_classEquality : compileHmrEqualityLog s2Step354EarlyControlPositiveArena [808, 790] 0 s2Step354EarlyControlLog.classWork=some (s2Step354EarlyControlEqualityArena,s2Step354EarlyControlLog.classWork,s2Step354EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step354EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step354EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step354EarlyControl_classOwned : ([777, 894, 808] : List Wire).toFinset⊆s2Step354EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step354EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354EarlyControl_positiveBorrow : s2Step354EarlyControlZeroArena.checkBorrow (1) s2Step354EarlyControlLog.positiveWork=some s2Step354EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step354EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step354EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step354EarlyControlPositiveArena,s2Step354EarlyControlZeroArena,s2Step354EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step354EarlyControl_class : compileHmrSourceClassLog s2Step354EarlyControlZeroArena false 777 s2Step354EarlyControlZeroPlan.top 0 808 s2Step354EarlyControlLog.positiveWork s2Step354EarlyControlLog.classWork=some s2Step354EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step354EarlyControlClassPlan s2Step354EarlyControlZeroArena false 777 s2Step354EarlyControlZeroPlan.top 0 808
  constructor
  · decide +kernel
  · exact s2Step354EarlyControl_classOwned
  · exact s2Step354EarlyControl_positiveBorrow
  · exact s2Step354EarlyControl_classEquality

private theorem s2Step354EarlyControl_entryRecordOwned : ([801, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step354EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step354EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354EarlyControl_entrySigmaOwned : ([808, 254] : List Wire).toFinset⊆s2Step354EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step354EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354EarlyControl_fitBorrow : s2Step354EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step354EarlyControlLog.recordFresh=some s2Step354EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step354EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step354EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
      decide +kernel
    · ext q
      simp [s2Step354EarlyControlFittedArena,s2Step354EarlyControlFlagArena,s2Step354EarlyControlLog,arenaWires]

private theorem s2Step354EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step354EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step354EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step354EarlyControl_fit : compileHmrRecordGrowLog s2Step354EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step354EarlyControlLog.recordFresh=some s2Step354EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step354EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step354EarlyControl_fitBorrow

private theorem s2Step354EarlyControl_flagsBorrow : s2Step354EarlyControlEqualityArena.checkBorrow (6) s2Step354EarlyControlLog.flagWork=some s2Step354EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step354EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step354EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step354EarlyControlFlagArena,s2Step354EarlyControlEqualityArena,s2Step354EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step354EarlyControl_flagsOwned : ([903, 253, 252, 251] : List Wire).toFinset⊆s2Step354EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step354EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354EarlyControl_flags : compileHmrFlagsLog s2Step354EarlyControlClassPlan.equalityArena s2Step354EarlyControlClassPlan.equality.top 253 252 251 s2Step354EarlyControlLog.flagWork=some s2Step354EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step354EarlyControl_flagsOwned⟩
  · exact s2Step354EarlyControl_flagsBorrow

private theorem s2Step354EarlyControl_historyBorrow : s2Step354EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step354EarlyControlLog.recordFresh=some s2Step354EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step354EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step354EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step354EarlyControlHistoryArena,s2Step354EarlyControlArena,s2Step354EarlyControlLog,arenaWires]

private theorem s2Step354EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step354EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step354EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354EarlyControl_history : compileHmrRecordGrowLog s2Step354EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step354EarlyControlLog.recordFresh=some s2Step354EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step354EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step354EarlyControl_historyBorrow

private theorem s2Step354EarlyControl_sigmaOwned : ([254, 808] : List Wire).toFinset⊆s2Step354EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step354EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354EarlyControl_sigmaReleaseOwned : ([808] : List Wire).toFinset⊆s2Step354EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step354EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354EarlyControl_sigmaRelease : s2Step354EarlyControlHistoryArena.release {808} (fun _ => false)=some s2Step354EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step354EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step354EarlyControlSigmaArena,s2Step354EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step354EarlyControl_sigma : compileHmrSigmaDropLog s2Step354EarlyControlHistoryArena false 0 0 254 808 []=some s2Step354EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step354EarlyControl_sigmaOwned⟩
  · exact s2Step354EarlyControl_sigmaRelease

private theorem s2Step354EarlyControl_zeroBorrow : s2Step354EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step354EarlyControlLog.zeroWork=some s2Step354EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step354EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step354EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step354EarlyControlZeroArena,s2Step354EarlyControlArena,s2Step354EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step354EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step354EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step354EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354EarlyControl_zero : compileHmrEqualityLog s2Step354EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step354EarlyControlLog.zeroWork=some (s2Step354EarlyControlZeroArena,s2Step354EarlyControlLog.zeroWork,s2Step354EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step354EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step354EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step354EarlyControl_logged : s2Step354EarlyControlPlan.Logged s2Step354EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 808 254 253 252 251 801 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step354EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step354EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step354EarlyControl_zero
  · exact s2Step354EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step354EarlyControl_flags
  · exact s2Step354EarlyControl_fit
  · exact s2Step354EarlyControl_history
  · exact s2Step354EarlyControl_sigma
  · exact s2Step354EarlyControl_branch

private theorem s2Step354EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step354EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 808 254 253 252 251 801 60 s2Step354EarlyControlLog=some s2Step354EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step354EarlyControlPlan s2Step354EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 808 254 253 252 251 801 60 s2Step354EarlyControl_logged

private def s2Step354EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606],768⟩

private def s2Step354EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788],770⟩

private def s2Step354EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93],769⟩

private def s2Step354EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891],771⟩

private def s2Step354FrontBank : WindowBank := ⟨s2Step354EntryFRow,s2Step354EntryGRow,s2Step354EntryFvRow,s2Step354EntryGvRow⟩

private def s2Step354Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 894, 768]

private def s2Step354Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 790, 903, 769]

private def s2Step354Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 839, 770]

private def s2Step354Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 791, 796, 771]

private theorem s2Step354Counter_apart : Disjoint s2Step354HeadFvAfter.live s2Step354CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step354HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354Counter_borrowed : s2Step354HeadFvAfter.checkBorrow 4 s2Step354CounterWork=some s2Step354CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step354HeadFvAfter s2Step354CounterDuring s2Step354CounterWork.toFinset s2Step354Counter_bounded s2Step354Counter_apart rfl

private theorem s2Step354Counter_owned : (808::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step354HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step354HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354Counter_checked : compileHmrCounterStepLog s2Step354HeadFvAfter true 808 [772, 773, 774, 775, 776, 777] s2Step354CounterWork=some s2Step354CounterDuring := by
  have owned : ∀q∈808::[772, 773, 774, 775, 776, 777],q∈s2Step354HeadFvAfter.live := fun q hq => s2Step354Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step354Counter_borrowed

private def s2Step354EntryFAfter : Arena := s2Step354EntryFBefore

private theorem s2Step354EntryBank_incomingDistinct : ([s2Step354EntryFRow,s2Step354EntryGRow,s2Step354EntryFvRow,s2Step354EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354EntryF_Incoming : rowsOwned s2Step354EntryFBefore [s2Step354EntryFRow,s2Step354EntryGRow,s2Step354EntryFvRow,s2Step354EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step354EntryFRow,s2Step354EntryGRow,s2Step354EntryFvRow,s2Step354EntryGvRow] 0 s2Step354EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step354EntryFBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step354EntryBank_outgoingOwned : rowsOwned s2Step354EntryGvAfter [s2Step354EntryFOut,s2Step354EntryGOut,s2Step354EntryFvOut,s2Step354EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step354EntryGvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step354EntryF_Outgoing : rowsOwned s2Step354EntryGvAfter [s2Step354EntryFOut,s2Step354EntryGOut,s2Step354EntryFvOut,s2Step354EntryGvOut] :=
  hmrRows_owned_drop s2Step354EntryGvAfter [s2Step354EntryFOut,s2Step354EntryGOut,s2Step354EntryFvOut,s2Step354EntryGvOut] 0 s2Step354EntryBank_outgoingOwned

private theorem s2Step354EntryF_distinct : (s2Step354EntryFRow.sign::s2Step354EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354EntryF_owned : (s2Step354EntryFRow.sign::s2Step354EntryFRow.payload).toFinset⊆s2Step354EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step354EntryFBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354EntryF_reserved : s2Step354EntryFBefore.reserve s2Step354EntryFFresh.toFinset=some s2Step354EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step354EntryFFresh,arenaWires]
  · norm_num [s2Step354EntryFBefore,s2Step354EntryFFresh,arenaWires]
  · simp only [s2Step354EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step354EntryF_checked : planRowResizeLog s2Step354EntryFBefore s2Step354EntryFRow 95 s2Step354EntryFFresh=
    some (s2Step354EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606],768⟩,growRow 768 s2Step354EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step354EntryFBefore s2Step354EntryFAfter s2Step354EntryFRow 95 s2Step354EntryFFresh
    s2Step354EntryF_distinct s2Step354EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step354EntryF_reserved
  have rowEq : WindowRow.mk (s2Step354EntryFRow.payload++s2Step354EntryFFresh) s2Step354EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step354EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354EntryFvAfter : Arena := s2Step354EntryGAfter

private def s2Step354EntryFvBefore : Arena := s2Step354EntryGAfter

private theorem s2Step354EntryFv_Incoming : rowsOwned s2Step354EntryFvBefore [s2Step354EntryFvRow,s2Step354EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step354EntryFRow,s2Step354EntryGRow,s2Step354EntryFvRow,s2Step354EntryGvRow] 2 s2Step354EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step354EntryFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step354EntryFv_Outgoing : rowsOwned s2Step354EntryGvAfter [s2Step354EntryFvOut,s2Step354EntryGvOut] :=
  hmrRows_owned_drop s2Step354EntryGvAfter [s2Step354EntryFOut,s2Step354EntryGOut,s2Step354EntryFvOut,s2Step354EntryGvOut] 2 s2Step354EntryBank_outgoingOwned

private theorem s2Step354EntryFv_distinct : (s2Step354EntryFvRow.sign::s2Step354EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354EntryFv_owned : (s2Step354EntryFvRow.sign::s2Step354EntryFvRow.payload).toFinset⊆s2Step354EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step354EntryFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354EntryFv_reserved : s2Step354EntryFvBefore.reserve s2Step354EntryFvFresh.toFinset=some s2Step354EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step354EntryFvFresh,arenaWires]
  · norm_num [s2Step354EntryFvBefore,s2Step354EntryGAfter,s2Step354EntryFvFresh,arenaWires]
  · simp only [s2Step354EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step354EntryFv_checked : planRowResizeLog s2Step354EntryFvBefore s2Step354EntryFvRow 193 s2Step354EntryFvFresh=
    some (s2Step354EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788],770⟩,growRow 770 s2Step354EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step354EntryFvBefore s2Step354EntryFvAfter s2Step354EntryFvRow 193 s2Step354EntryFvFresh
    s2Step354EntryFv_distinct s2Step354EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step354EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step354EntryFvRow.payload++s2Step354EntryFvFresh) s2Step354EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step354EntryGBefore : Arena := s2Step354EntryFBefore

private theorem s2Step354EntryG_Incoming : rowsOwned s2Step354EntryGBefore [s2Step354EntryGRow,s2Step354EntryFvRow,s2Step354EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step354EntryFRow,s2Step354EntryGRow,s2Step354EntryFvRow,s2Step354EntryGvRow] 1 s2Step354EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step354EntryGBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step354EntryG_Outgoing : rowsOwned s2Step354EntryGvAfter [s2Step354EntryGOut,s2Step354EntryFvOut,s2Step354EntryGvOut] :=
  hmrRows_owned_drop s2Step354EntryGvAfter [s2Step354EntryFOut,s2Step354EntryGOut,s2Step354EntryFvOut,s2Step354EntryGvOut] 1 s2Step354EntryBank_outgoingOwned

private theorem s2Step354EntryG_distinct : (s2Step354EntryGRow.sign::s2Step354EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354EntryG_owned : (s2Step354EntryGRow.sign::s2Step354EntryGRow.payload).toFinset⊆s2Step354EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step354EntryGBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354EntryG_reserved : s2Step354EntryGBefore.reserve s2Step354EntryGFresh.toFinset=some s2Step354EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step354EntryGFresh,arenaWires]
  · norm_num [s2Step354EntryGBefore,s2Step354EntryFBefore,s2Step354EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step354EntryGAfter,s2Step354EntryGBefore,s2Step354EntryFBefore,s2Step354EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step354EntryG_checked : planRowResizeLog s2Step354EntryGBefore s2Step354EntryGRow 95 s2Step354EntryGFresh=
    some (s2Step354EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 790],769⟩,growRow 769 s2Step354EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step354EntryGBefore s2Step354EntryGAfter s2Step354EntryGRow 95 s2Step354EntryGFresh
    s2Step354EntryG_distinct s2Step354EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step354EntryG_reserved
  have rowEq : WindowRow.mk (s2Step354EntryGRow.payload++s2Step354EntryGFresh) s2Step354EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 790],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step354EntryGvBefore : Arena := s2Step354EntryGAfter

private theorem s2Step354EntryGv_Incoming : rowsOwned s2Step354EntryGvBefore [s2Step354EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step354EntryFRow,s2Step354EntryGRow,s2Step354EntryFvRow,s2Step354EntryGvRow] 3 s2Step354EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step354EntryGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step354EntryGv_Outgoing : rowsOwned s2Step354EntryGvAfter [s2Step354EntryGvOut] :=
  hmrRows_owned_drop s2Step354EntryGvAfter [s2Step354EntryFOut,s2Step354EntryGOut,s2Step354EntryFvOut,s2Step354EntryGvOut] 3 s2Step354EntryBank_outgoingOwned

private theorem s2Step354EntryGv_distinct : (s2Step354EntryGvRow.sign::s2Step354EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354EntryGv_owned : (s2Step354EntryGvRow.sign::s2Step354EntryGvRow.payload).toFinset⊆s2Step354EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step354EntryGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354EntryGv_reserved : s2Step354EntryGvBefore.reserve s2Step354EntryGvFresh.toFinset=some s2Step354EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step354EntryGvFresh,arenaWires]
  · norm_num [s2Step354EntryGvBefore,s2Step354EntryGAfter,s2Step354EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step354EntryGvAfter,s2Step354EntryGvBefore,s2Step354EntryGAfter,s2Step354EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step354EntryGv_checked : planRowResizeLog s2Step354EntryGvBefore s2Step354EntryGvRow 193 s2Step354EntryGvFresh=
    some (s2Step354EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 791],771⟩,growRow 771 s2Step354EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step354EntryGvBefore s2Step354EntryGvAfter s2Step354EntryGvRow 193 s2Step354EntryGvFresh
    s2Step354EntryGv_distinct s2Step354EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step354EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step354EntryGvRow.payload++s2Step354EntryGvFresh) s2Step354EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 791],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step354EntryBank_rows : planWindowRowsLog s2Step354EntryFBefore [(s2Step354EntryFRow,95),(s2Step354EntryGRow,95),(s2Step354EntryFvRow,193),(s2Step354EntryGvRow,193)] [s2Step354EntryFFresh,s2Step354EntryGFresh,s2Step354EntryFvFresh,s2Step354EntryGvFresh]=
    some (s2Step354EntryGvAfter,[s2Step354EntryFOut,s2Step354EntryGOut,s2Step354EntryFvOut,s2Step354EntryGvOut],(growRow 768 s2Step354EntryFFresh ++ (growRow 769 s2Step354EntryGFresh ++ (growRow 770 s2Step354EntryFvFresh ++ (growRow 771 s2Step354EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step354EntryGvAfter [] []=some (s2Step354EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step354EntryGvBefore s2Step354EntryGvAfter s2Step354EntryGvAfter
    s2Step354EntryGvRow s2Step354EntryGvOut 193 s2Step354EntryGvFresh [] [] []
    (growRow 771 s2Step354EntryGvFresh) ([]) s2Step354EntryGv_Incoming s2Step354EntryGv_checked h4 s2Step354EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step354EntryFvBefore s2Step354EntryFvAfter s2Step354EntryGvAfter
    s2Step354EntryFvRow s2Step354EntryFvOut 193 s2Step354EntryFvFresh [(s2Step354EntryGvRow,193)] [s2Step354EntryGvFresh] [s2Step354EntryGvOut]
    (growRow 770 s2Step354EntryFvFresh) ((growRow 771 s2Step354EntryGvFresh ++ [])) s2Step354EntryFv_Incoming s2Step354EntryFv_checked h3 s2Step354EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step354EntryGBefore s2Step354EntryGAfter s2Step354EntryGvAfter
    s2Step354EntryGRow s2Step354EntryGOut 95 s2Step354EntryGFresh [(s2Step354EntryFvRow,193),(s2Step354EntryGvRow,193)] [s2Step354EntryFvFresh,s2Step354EntryGvFresh] [s2Step354EntryFvOut,s2Step354EntryGvOut]
    (growRow 769 s2Step354EntryGFresh) ((growRow 770 s2Step354EntryFvFresh ++ (growRow 771 s2Step354EntryGvFresh ++ []))) s2Step354EntryG_Incoming s2Step354EntryG_checked h2 s2Step354EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step354EntryFBefore s2Step354EntryFAfter s2Step354EntryGvAfter
    s2Step354EntryFRow s2Step354EntryFOut 95 s2Step354EntryFFresh [(s2Step354EntryGRow,95),(s2Step354EntryFvRow,193),(s2Step354EntryGvRow,193)] [s2Step354EntryGFresh,s2Step354EntryFvFresh,s2Step354EntryGvFresh] [s2Step354EntryGOut,s2Step354EntryFvOut,s2Step354EntryGvOut]
    (growRow 768 s2Step354EntryFFresh) ((growRow 769 s2Step354EntryGFresh ++ (growRow 770 s2Step354EntryFvFresh ++ (growRow 771 s2Step354EntryGvFresh ++ [])))) s2Step354EntryF_Incoming s2Step354EntryF_checked h1 s2Step354EntryF_Outgoing
  exact h0

private theorem s2Step354EntryBank_checked : compileHmrBankResizeLog .entry s2Step354EntryFBefore ⟨s2Step354EntryFRow,s2Step354EntryGRow,s2Step354EntryFvRow,s2Step354EntryGvRow⟩ ⟨95,95,193,193⟩ [s2Step354EntryFFresh,s2Step354EntryGFresh,s2Step354EntryFvFresh,s2Step354EntryGvFresh]=
    some (s2Step354EntryGvAfter,⟨s2Step354EntryFOut,s2Step354EntryGOut,s2Step354EntryFvOut,s2Step354EntryGvOut⟩,(growRow 768 s2Step354EntryFFresh ++ (growRow 769 s2Step354EntryGFresh ++ (growRow 770 s2Step354EntryFvFresh ++ (growRow 771 s2Step354EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step354EntryBank_rows]
  rfl

private def s2Step354ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<606) ∨ (607≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354ExitFBefore : Arena := s2Step354ExitGAfter

private def s2Step354ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 894],768⟩

private def s2Step354ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 839],770⟩

private def s2Step354ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 790, 903],769⟩

private def s2Step354ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 791, 796],771⟩

private theorem s2Step354ExitBank_incomingDistinct : ([s2Step354ExitGRow,s2Step354ExitFRow,s2Step354ExitFvRow,s2Step354ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354ExitF_Incoming : rowsOwned s2Step354ExitFBefore [s2Step354ExitFRow,s2Step354ExitFvRow,s2Step354ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step354ExitGRow,s2Step354ExitFRow,s2Step354ExitFvRow,s2Step354ExitGvRow] 1 s2Step354ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step354ExitFBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step354ExitBank_outgoingOwned : rowsOwned s2Step354ExitGvAfter [s2Step354ExitGOut,s2Step354ExitFOut,s2Step354ExitFvOut,s2Step354ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step354ExitGvAfter (fun q => (0≤q ∧ q<606) ∨ (607≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step354ExitF_Outgoing : rowsOwned s2Step354ExitGvAfter [s2Step354ExitFOut,s2Step354ExitFvOut,s2Step354ExitGvOut] :=
  hmrRows_owned_drop s2Step354ExitGvAfter [s2Step354ExitGOut,s2Step354ExitFOut,s2Step354ExitFvOut,s2Step354ExitGvOut] 1 s2Step354ExitBank_outgoingOwned

private theorem s2Step354ExitF_distinct : (s2Step354ExitFRow.sign::s2Step354ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354ExitF_owned : (s2Step354ExitFRow.sign::s2Step354ExitFRow.payload).toFinset⊆s2Step354ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step354ExitFBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354ExitF_retired : s2Step354ExitFBefore.retireSet s2Step354ExitFExtra.toFinset=s2Step354ExitFAfter := by
  unfold Arena.retireSet s2Step354ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step354ExitFBefore,s2Step354ExitGAfter,s2Step354ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step354ExitF_checked : planRowResizeLog s2Step354ExitFBefore s2Step354ExitFRow 94 []=
    some (s2Step354ExitFAfter,s2Step354ExitFOut,shrinkRow 768 s2Step354ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step354ExitFBefore s2Step354ExitFRow 94 s2Step354ExitF_distinct s2Step354ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step354ExitFRow.payload.take 94) s2Step354ExitFRow.sign=s2Step354ExitFOut := by decide +kernel
  have hi : s2Step354ExitFRow.payload.drop 94=s2Step354ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step354ExitF_retired] at result
  exact result

private def s2Step354ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<606) ∨ (607≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354ExitFvBefore : Arena := s2Step354ExitFAfter

private theorem s2Step354ExitFv_Incoming : rowsOwned s2Step354ExitFvBefore [s2Step354ExitFvRow,s2Step354ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step354ExitGRow,s2Step354ExitFRow,s2Step354ExitFvRow,s2Step354ExitGvRow] 2 s2Step354ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step354ExitFvBefore (fun q => (0≤q ∧ q<606) ∨ (607≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step354ExitFv_Outgoing : rowsOwned s2Step354ExitGvAfter [s2Step354ExitFvOut,s2Step354ExitGvOut] :=
  hmrRows_owned_drop s2Step354ExitGvAfter [s2Step354ExitGOut,s2Step354ExitFOut,s2Step354ExitFvOut,s2Step354ExitGvOut] 2 s2Step354ExitBank_outgoingOwned

private theorem s2Step354ExitFv_distinct : (s2Step354ExitFvRow.sign::s2Step354ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354ExitFv_owned : (s2Step354ExitFvRow.sign::s2Step354ExitFvRow.payload).toFinset⊆s2Step354ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step354ExitFvBefore (fun q => (0≤q ∧ q<606) ∨ (607≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354ExitFv_retired : s2Step354ExitFvBefore.retireSet s2Step354ExitFvExtra.toFinset=s2Step354ExitFvAfter := by
  unfold Arena.retireSet s2Step354ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step354ExitFvBefore,s2Step354ExitFAfter,s2Step354ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step354ExitFv_checked : planRowResizeLog s2Step354ExitFvBefore s2Step354ExitFvRow 193 []=
    some (s2Step354ExitFvAfter,s2Step354ExitFvOut,shrinkRow 770 s2Step354ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step354ExitFvBefore s2Step354ExitFvRow 193 s2Step354ExitFv_distinct s2Step354ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step354ExitFvRow.payload.take 193) s2Step354ExitFvRow.sign=s2Step354ExitFvOut := by decide +kernel
  have hi : s2Step354ExitFvRow.payload.drop 193=s2Step354ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step354ExitFv_retired] at result
  exact result

private def s2Step354ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step354ExitG_Incoming : rowsOwned s2Step354ExitGBefore [s2Step354ExitGRow,s2Step354ExitFRow,s2Step354ExitFvRow,s2Step354ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step354ExitGRow,s2Step354ExitFRow,s2Step354ExitFvRow,s2Step354ExitGvRow] 0 s2Step354ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step354ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step354ExitG_Outgoing : rowsOwned s2Step354ExitGvAfter [s2Step354ExitGOut,s2Step354ExitFOut,s2Step354ExitFvOut,s2Step354ExitGvOut] :=
  hmrRows_owned_drop s2Step354ExitGvAfter [s2Step354ExitGOut,s2Step354ExitFOut,s2Step354ExitFvOut,s2Step354ExitGvOut] 0 s2Step354ExitBank_outgoingOwned

private theorem s2Step354ExitG_distinct : (s2Step354ExitGRow.sign::s2Step354ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354ExitG_owned : (s2Step354ExitGRow.sign::s2Step354ExitGRow.payload).toFinset⊆s2Step354ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step354ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354ExitG_retired : s2Step354ExitGBefore.retireSet s2Step354ExitGExtra.toFinset=s2Step354ExitGAfter := by
  unfold Arena.retireSet s2Step354ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step354ExitGBefore,s2Step354ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step354ExitG_checked : planRowResizeLog s2Step354ExitGBefore s2Step354ExitGRow 94 []=
    some (s2Step354ExitGAfter,s2Step354ExitGOut,shrinkRow 769 s2Step354ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step354ExitGBefore s2Step354ExitGRow 94 s2Step354ExitG_distinct s2Step354ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step354ExitGRow.payload.take 94) s2Step354ExitGRow.sign=s2Step354ExitGOut := by decide +kernel
  have hi : s2Step354ExitGRow.payload.drop 94=s2Step354ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step354ExitG_retired] at result
  exact result

private def s2Step354ExitGvBefore : Arena := s2Step354ExitFvAfter

private theorem s2Step354ExitGv_Incoming : rowsOwned s2Step354ExitGvBefore [s2Step354ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step354ExitGRow,s2Step354ExitFRow,s2Step354ExitFvRow,s2Step354ExitGvRow] 3 s2Step354ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step354ExitGvBefore (fun q => (0≤q ∧ q<606) ∨ (607≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step354ExitGv_Outgoing : rowsOwned s2Step354ExitGvAfter [s2Step354ExitGvOut] :=
  hmrRows_owned_drop s2Step354ExitGvAfter [s2Step354ExitGOut,s2Step354ExitFOut,s2Step354ExitFvOut,s2Step354ExitGvOut] 3 s2Step354ExitBank_outgoingOwned

private theorem s2Step354ExitGv_distinct : (s2Step354ExitGvRow.sign::s2Step354ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354ExitGv_owned : (s2Step354ExitGvRow.sign::s2Step354ExitGvRow.payload).toFinset⊆s2Step354ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step354ExitGvBefore (fun q => (0≤q ∧ q<606) ∨ (607≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354ExitGv_retired : s2Step354ExitGvBefore.retireSet s2Step354ExitGvExtra.toFinset=s2Step354ExitGvAfter := by
  unfold Arena.retireSet s2Step354ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step354ExitGvBefore,s2Step354ExitFvAfter,s2Step354ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step354ExitGv_checked : planRowResizeLog s2Step354ExitGvBefore s2Step354ExitGvRow 192 []=
    some (s2Step354ExitGvAfter,s2Step354ExitGvOut,shrinkRow 771 s2Step354ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step354ExitGvBefore s2Step354ExitGvRow 192 s2Step354ExitGv_distinct s2Step354ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step354ExitGvRow.payload.take 192) s2Step354ExitGvRow.sign=s2Step354ExitGvOut := by decide +kernel
  have hi : s2Step354ExitGvRow.payload.drop 192=s2Step354ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step354ExitGv_retired] at result
  exact result

private theorem s2Step354ExitBank_rows : planWindowRowsLog s2Step354ExitGBefore [(s2Step354ExitGRow,94),(s2Step354ExitFRow,94),(s2Step354ExitFvRow,193),(s2Step354ExitGvRow,192)] [[],[],[],[]]=
    some (s2Step354ExitGvAfter,[s2Step354ExitGOut,s2Step354ExitFOut,s2Step354ExitFvOut,s2Step354ExitGvOut],(shrinkRow 769 s2Step354ExitGExtra ++ (shrinkRow 768 s2Step354ExitFExtra ++ (shrinkRow 770 s2Step354ExitFvExtra ++ (shrinkRow 771 s2Step354ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step354ExitGvAfter [] []=some (s2Step354ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step354ExitGvBefore s2Step354ExitGvAfter s2Step354ExitGvAfter
    s2Step354ExitGvRow s2Step354ExitGvOut 192 [] [] [] []
    (shrinkRow 771 s2Step354ExitGvExtra) ([]) s2Step354ExitGv_Incoming s2Step354ExitGv_checked h4 s2Step354ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step354ExitFvBefore s2Step354ExitFvAfter s2Step354ExitGvAfter
    s2Step354ExitFvRow s2Step354ExitFvOut 193 [] [(s2Step354ExitGvRow,192)] [[]] [s2Step354ExitGvOut]
    (shrinkRow 770 s2Step354ExitFvExtra) ((shrinkRow 771 s2Step354ExitGvExtra ++ [])) s2Step354ExitFv_Incoming s2Step354ExitFv_checked h3 s2Step354ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step354ExitFBefore s2Step354ExitFAfter s2Step354ExitGvAfter
    s2Step354ExitFRow s2Step354ExitFOut 94 [] [(s2Step354ExitFvRow,193),(s2Step354ExitGvRow,192)] [[],[]] [s2Step354ExitFvOut,s2Step354ExitGvOut]
    (shrinkRow 768 s2Step354ExitFExtra) ((shrinkRow 770 s2Step354ExitFvExtra ++ (shrinkRow 771 s2Step354ExitGvExtra ++ []))) s2Step354ExitF_Incoming s2Step354ExitF_checked h2 s2Step354ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step354ExitGBefore s2Step354ExitGAfter s2Step354ExitGvAfter
    s2Step354ExitGRow s2Step354ExitGOut 94 [] [(s2Step354ExitFRow,94),(s2Step354ExitFvRow,193),(s2Step354ExitGvRow,192)] [[],[],[]] [s2Step354ExitFOut,s2Step354ExitFvOut,s2Step354ExitGvOut]
    (shrinkRow 769 s2Step354ExitGExtra) ((shrinkRow 768 s2Step354ExitFExtra ++ (shrinkRow 770 s2Step354ExitFvExtra ++ (shrinkRow 771 s2Step354ExitGvExtra ++ [])))) s2Step354ExitG_Incoming s2Step354ExitG_checked h1 s2Step354ExitG_Outgoing
  exact h0

private theorem s2Step354ExitBank_checked : compileHmrBankResizeLog .exit s2Step354ExitGBefore ⟨s2Step354ExitFRow,s2Step354ExitGRow,s2Step354ExitFvRow,s2Step354ExitGvRow⟩ ⟨94,94,193,192⟩ [[],[],[],[]]=
    some (s2Step354ExitGvAfter,⟨s2Step354ExitFOut,s2Step354ExitGOut,s2Step354ExitFvOut,s2Step354ExitGvOut⟩,(shrinkRow 769 s2Step354ExitGExtra ++ (shrinkRow 768 s2Step354ExitFExtra ++ (shrinkRow 770 s2Step354ExitFvExtra ++ (shrinkRow 771 s2Step354ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step354ExitBank_rows]
  rfl

private theorem s2Step354Add0_apart : Disjoint s2Step354Add0Arena.live s2Step354Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step354Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354Add0_card : s2Step354Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step354Add0_borrowed : s2Step354Add0Arena.checkBorrow (hmrHybridCount s2Step354Add0Arena s2Step354Add0B.length) s2Step354Add0Work=some s2Step354Add0During := by
  have len : s2Step354Add0Work.length=hmrHybridCount s2Step354Add0Arena s2Step354Add0B.length := by
    rw [hmrHybridCount,s2Step354Add0_card]
    decide +kernel
  have nd : s2Step354Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step354Add0Arena s2Step354Add0During s2Step354Add0Work.toFinset s2Step354Add0_bounded s2Step354Add0_apart rfl

private theorem s2Step354Add0_distinct : (800::801::789::(s2Step354Add0A++s2Step354Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354Add0_owned : (800::801::789::(s2Step354Add0A++s2Step354Add0B)).toFinset⊆s2Step354Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step354Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354Add0_checked : compileHmrHybridCinLog s2Step354Add0Arena 801 800 789 s2Step354Add0A s2Step354Add0B s2Step354Add0Work=some s2Step354Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step354Add0Arena s2Step354Add0During 801 800 789 s2Step354Add0A s2Step354Add0B s2Step354Add0Work
    (by decide +kernel) (by decide +kernel) s2Step354Add0_distinct
    (fun q hq => s2Step354Add0_owned (List.mem_toFinset.mpr hq)) s2Step354Add0_borrowed

private theorem s2Step354Add1_apart : Disjoint s2Step354Add1Arena.live s2Step354Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step354Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354Add1_card : s2Step354Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step354Add1_borrowed : s2Step354Add1Arena.checkBorrow (hmrHybridCount s2Step354Add1Arena s2Step354Add1B.length) s2Step354Add1Work=some s2Step354Add1During := by
  have len : s2Step354Add1Work.length=hmrHybridCount s2Step354Add1Arena s2Step354Add1B.length := by
    rw [hmrHybridCount,s2Step354Add1_card]
    decide +kernel
  have nd : s2Step354Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step354Add1Arena s2Step354Add1During s2Step354Add1Work.toFinset s2Step354Add1_bounded s2Step354Add1_apart rfl

private theorem s2Step354Add1_distinct : (800::801::789::(s2Step354Add1A++s2Step354Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354Add1_owned : (800::801::789::(s2Step354Add1A++s2Step354Add1B)).toFinset⊆s2Step354Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step354Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354Add1_checked : compileHmrHybridCinLog s2Step354Add1Arena 801 800 789 s2Step354Add1A s2Step354Add1B s2Step354Add1Work=some s2Step354Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step354Add1Arena s2Step354Add1During 801 800 789 s2Step354Add1A s2Step354Add1B s2Step354Add1Work
    (by decide +kernel) (by decide +kernel) s2Step354Add1_distinct
    (fun q hq => s2Step354Add1_owned (List.mem_toFinset.mpr hq)) s2Step354Add1_borrowed

private theorem s2Step354F4_apart : Disjoint (s2Step354Add0A++s2Step354Add0B).toFinset (s2Step354Add1A++s2Step354Add1B).toFinset := by
  have nd : ((s2Step354Add0A++s2Step354Add0B)++(s2Step354Add1A++s2Step354Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step354F4_carry : s2Step354F4FlagArena.checkBorrow 1 [789]=some s2Step354Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step354F4FlagArena,s2Step354HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step354F4FlagArena,s2Step354HeadFvAfter,s2Step354Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step354F4_distinct : (808::801::800::789::((s2Step354Add0A++s2Step354Add1A)++(s2Step354Add0B++s2Step354Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354F4_flag : s2Step354HeadFvAfter.checkBorrow 1 [800]=some s2Step354F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step354HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step354F4_owned : (808::801::((s2Step354Add0A++s2Step354Add1A)++(s2Step354Add0B++s2Step354Add1B))).toFinset⊆s2Step354HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step354HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354F4_checked : compileHmrHybridF4Log s2Step354HeadFvAfter 808 801 s2Step354Add0A s2Step354Add0B s2Step354Add1A s2Step354Add1B [800] [789] s2Step354Add0Work s2Step354Add1Work=some s2Step354F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step354HeadFvAfter s2Step354F4FlagArena s2Step354Add0Arena s2Step354Add0During s2Step354Add1During 808 801
    s2Step354Add0A s2Step354Add0B s2Step354Add1A s2Step354Add1B [800] [789] s2Step354Add0Work s2Step354Add1Work
    (fun q hq => s2Step354F4_owned (List.mem_toFinset.mpr hq)) s2Step354F4_flag s2Step354F4_carry
    s2Step354F4_distinct s2Step354F4_apart s2Step354Add0_checked s2Step354Add1_checked

private theorem s2Step354Front_branch : s2Step354FrontSigmaArena.checkBorrow 1 [801]=some s2Step354HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step354FrontSigmaArena,s2Step354EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step354FrontSigmaArena,s2Step354EntryGvAfter,s2Step354HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step354Front_entry : HmrFrontEntryValid s2Step354EntryFBefore s2Step354FrontBank 95 193 ⟨94,94,193,192⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step354FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step354EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step354EntryFBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step354FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step354Front_sigma : s2Step354EntryGvAfter.checkBorrow 1 [808]=some s2Step354FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step354EntryGvAfter,arenaWires]
  · rfl

private def s2Step354HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354HeadFBefore : Arena := s2Step354HeadGAfter

private def s2Step354HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606],768⟩

private def s2Step354HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788],770⟩

private def s2Step354HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 790],769⟩

private def s2Step354HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 791],771⟩

private theorem s2Step354HeadBank_incomingDistinct : ([s2Step354HeadGRow,s2Step354HeadFRow,s2Step354HeadGvRow,s2Step354HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354HeadF_Incoming : rowsOwned s2Step354HeadFBefore [s2Step354HeadFRow,s2Step354HeadGvRow,s2Step354HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step354HeadGRow,s2Step354HeadFRow,s2Step354HeadGvRow,s2Step354HeadFvRow] 1 s2Step354HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step354HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step354HeadBank_outgoingOwned : rowsOwned s2Step354HeadFvAfter [s2Step354HeadGOut,s2Step354HeadFOut,s2Step354HeadGvOut,s2Step354HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step354HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step354HeadF_Outgoing : rowsOwned s2Step354HeadFvAfter [s2Step354HeadFOut,s2Step354HeadGvOut,s2Step354HeadFvOut] :=
  hmrRows_owned_drop s2Step354HeadFvAfter [s2Step354HeadGOut,s2Step354HeadFOut,s2Step354HeadGvOut,s2Step354HeadFvOut] 1 s2Step354HeadBank_outgoingOwned

private theorem s2Step354HeadF_distinct : (s2Step354HeadFRow.sign::s2Step354HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354HeadF_owned : (s2Step354HeadFRow.sign::s2Step354HeadFRow.payload).toFinset⊆s2Step354HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step354HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354HeadF_reserved : s2Step354HeadFBefore.reserve s2Step354HeadFFresh.toFinset=some s2Step354HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step354HeadFFresh,arenaWires]
  · norm_num [s2Step354HeadFBefore,s2Step354HeadGAfter,s2Step354HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step354HeadFAfter,s2Step354HeadFBefore,s2Step354HeadGAfter,s2Step354HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step354HeadF_checked : planRowResizeLog s2Step354HeadFBefore s2Step354HeadFRow 96 s2Step354HeadFFresh=
    some (s2Step354HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 894],768⟩,growRow 768 s2Step354HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step354HeadFBefore s2Step354HeadFAfter s2Step354HeadFRow 96 s2Step354HeadFFresh
    s2Step354HeadF_distinct s2Step354HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step354HeadF_reserved
  have rowEq : WindowRow.mk (s2Step354HeadFRow.payload++s2Step354HeadFFresh) s2Step354HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 894],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step354HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step354HeadFvBefore : Arena := s2Step354HeadGvAfter

private theorem s2Step354HeadFv_Incoming : rowsOwned s2Step354HeadFvBefore [s2Step354HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step354HeadGRow,s2Step354HeadFRow,s2Step354HeadGvRow,s2Step354HeadFvRow] 3 s2Step354HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step354HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step354HeadFv_Outgoing : rowsOwned s2Step354HeadFvAfter [s2Step354HeadFvOut] :=
  hmrRows_owned_drop s2Step354HeadFvAfter [s2Step354HeadGOut,s2Step354HeadFOut,s2Step354HeadGvOut,s2Step354HeadFvOut] 3 s2Step354HeadBank_outgoingOwned

private theorem s2Step354HeadFv_distinct : (s2Step354HeadFvRow.sign::s2Step354HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354HeadFv_owned : (s2Step354HeadFvRow.sign::s2Step354HeadFvRow.payload).toFinset⊆s2Step354HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step354HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354HeadFv_reserved : s2Step354HeadFvBefore.reserve s2Step354HeadFvFresh.toFinset=some s2Step354HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step354HeadFvFresh,arenaWires]
  · norm_num [s2Step354HeadFvBefore,s2Step354HeadGvAfter,s2Step354HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step354HeadFvAfter,s2Step354HeadFvBefore,s2Step354HeadGvAfter,s2Step354HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step354HeadFv_checked : planRowResizeLog s2Step354HeadFvBefore s2Step354HeadFvRow 194 s2Step354HeadFvFresh=
    some (s2Step354HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 839],770⟩,growRow 770 s2Step354HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step354HeadFvBefore s2Step354HeadFvAfter s2Step354HeadFvRow 194 s2Step354HeadFvFresh
    s2Step354HeadFv_distinct s2Step354HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step354HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step354HeadFvRow.payload++s2Step354HeadFvFresh) s2Step354HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 839],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step354HeadG_Incoming : rowsOwned s2Step354HeadGBefore [s2Step354HeadGRow,s2Step354HeadFRow,s2Step354HeadGvRow,s2Step354HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step354HeadGRow,s2Step354HeadFRow,s2Step354HeadGvRow,s2Step354HeadFvRow] 0 s2Step354HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step354HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step354HeadG_Outgoing : rowsOwned s2Step354HeadFvAfter [s2Step354HeadGOut,s2Step354HeadFOut,s2Step354HeadGvOut,s2Step354HeadFvOut] :=
  hmrRows_owned_drop s2Step354HeadFvAfter [s2Step354HeadGOut,s2Step354HeadFOut,s2Step354HeadGvOut,s2Step354HeadFvOut] 0 s2Step354HeadBank_outgoingOwned

private theorem s2Step354HeadG_distinct : (s2Step354HeadGRow.sign::s2Step354HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354HeadG_owned : (s2Step354HeadGRow.sign::s2Step354HeadGRow.payload).toFinset⊆s2Step354HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step354HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354HeadG_reserved : s2Step354HeadGBefore.reserve s2Step354HeadGFresh.toFinset=some s2Step354HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step354HeadGFresh,arenaWires]
  · norm_num [s2Step354HeadGBefore,s2Step354HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step354HeadGAfter,s2Step354HeadGBefore,s2Step354HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step354HeadG_checked : planRowResizeLog s2Step354HeadGBefore s2Step354HeadGRow 96 s2Step354HeadGFresh=
    some (s2Step354HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 790, 903],769⟩,growRow 769 s2Step354HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step354HeadGBefore s2Step354HeadGAfter s2Step354HeadGRow 96 s2Step354HeadGFresh
    s2Step354HeadG_distinct s2Step354HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step354HeadG_reserved
  have rowEq : WindowRow.mk (s2Step354HeadGRow.payload++s2Step354HeadGFresh) s2Step354HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 790, 903],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step354HeadGvBefore : Arena := s2Step354HeadFAfter

private theorem s2Step354HeadGv_Incoming : rowsOwned s2Step354HeadGvBefore [s2Step354HeadGvRow,s2Step354HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step354HeadGRow,s2Step354HeadFRow,s2Step354HeadGvRow,s2Step354HeadFvRow] 2 s2Step354HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step354HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step354HeadGv_Outgoing : rowsOwned s2Step354HeadFvAfter [s2Step354HeadGvOut,s2Step354HeadFvOut] :=
  hmrRows_owned_drop s2Step354HeadFvAfter [s2Step354HeadGOut,s2Step354HeadFOut,s2Step354HeadGvOut,s2Step354HeadFvOut] 2 s2Step354HeadBank_outgoingOwned

private theorem s2Step354HeadGv_distinct : (s2Step354HeadGvRow.sign::s2Step354HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step354HeadGv_owned : (s2Step354HeadGvRow.sign::s2Step354HeadGvRow.payload).toFinset⊆s2Step354HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step354HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step354HeadGv_reserved : s2Step354HeadGvBefore.reserve s2Step354HeadGvFresh.toFinset=some s2Step354HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step354HeadGvFresh,arenaWires]
  · norm_num [s2Step354HeadGvBefore,s2Step354HeadFAfter,s2Step354HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step354HeadGvAfter,s2Step354HeadGvBefore,s2Step354HeadFAfter,s2Step354HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step354HeadGv_checked : planRowResizeLog s2Step354HeadGvBefore s2Step354HeadGvRow 194 s2Step354HeadGvFresh=
    some (s2Step354HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 791, 796],771⟩,growRow 771 s2Step354HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step354HeadGvBefore s2Step354HeadGvAfter s2Step354HeadGvRow 194 s2Step354HeadGvFresh
    s2Step354HeadGv_distinct s2Step354HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step354HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step354HeadGvRow.payload++s2Step354HeadGvFresh) s2Step354HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 791, 796],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step354HeadBank_rows : planWindowRowsLog s2Step354HeadGBefore [(s2Step354HeadGRow,96),(s2Step354HeadFRow,96),(s2Step354HeadGvRow,194),(s2Step354HeadFvRow,194)] [s2Step354HeadGFresh,s2Step354HeadFFresh,s2Step354HeadGvFresh,s2Step354HeadFvFresh]=
    some (s2Step354HeadFvAfter,[s2Step354HeadGOut,s2Step354HeadFOut,s2Step354HeadGvOut,s2Step354HeadFvOut],(growRow 769 s2Step354HeadGFresh ++ (growRow 768 s2Step354HeadFFresh ++ (growRow 771 s2Step354HeadGvFresh ++ (growRow 770 s2Step354HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step354HeadFvAfter [] []=some (s2Step354HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step354HeadFvBefore s2Step354HeadFvAfter s2Step354HeadFvAfter
    s2Step354HeadFvRow s2Step354HeadFvOut 194 s2Step354HeadFvFresh [] [] []
    (growRow 770 s2Step354HeadFvFresh) ([]) s2Step354HeadFv_Incoming s2Step354HeadFv_checked h4 s2Step354HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step354HeadGvBefore s2Step354HeadGvAfter s2Step354HeadFvAfter
    s2Step354HeadGvRow s2Step354HeadGvOut 194 s2Step354HeadGvFresh [(s2Step354HeadFvRow,194)] [s2Step354HeadFvFresh] [s2Step354HeadFvOut]
    (growRow 771 s2Step354HeadGvFresh) ((growRow 770 s2Step354HeadFvFresh ++ [])) s2Step354HeadGv_Incoming s2Step354HeadGv_checked h3 s2Step354HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step354HeadFBefore s2Step354HeadFAfter s2Step354HeadFvAfter
    s2Step354HeadFRow s2Step354HeadFOut 96 s2Step354HeadFFresh [(s2Step354HeadGvRow,194),(s2Step354HeadFvRow,194)] [s2Step354HeadGvFresh,s2Step354HeadFvFresh] [s2Step354HeadGvOut,s2Step354HeadFvOut]
    (growRow 768 s2Step354HeadFFresh) ((growRow 771 s2Step354HeadGvFresh ++ (growRow 770 s2Step354HeadFvFresh ++ []))) s2Step354HeadF_Incoming s2Step354HeadF_checked h2 s2Step354HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step354HeadGBefore s2Step354HeadGAfter s2Step354HeadFvAfter
    s2Step354HeadGRow s2Step354HeadGOut 96 s2Step354HeadGFresh [(s2Step354HeadFRow,96),(s2Step354HeadGvRow,194),(s2Step354HeadFvRow,194)] [s2Step354HeadFFresh,s2Step354HeadGvFresh,s2Step354HeadFvFresh] [s2Step354HeadFOut,s2Step354HeadGvOut,s2Step354HeadFvOut]
    (growRow 769 s2Step354HeadGFresh) ((growRow 768 s2Step354HeadFFresh ++ (growRow 771 s2Step354HeadGvFresh ++ (growRow 770 s2Step354HeadFvFresh ++ [])))) s2Step354HeadG_Incoming s2Step354HeadG_checked h1 s2Step354HeadG_Outgoing
  exact h0

private theorem s2Step354HeadBank_checked : compileHmrBankResizeLog .headroom s2Step354HeadGBefore ⟨s2Step354HeadFRow,s2Step354HeadGRow,s2Step354HeadFvRow,s2Step354HeadGvRow⟩ ⟨96,96,194,194⟩ [s2Step354HeadGFresh,s2Step354HeadFFresh,s2Step354HeadGvFresh,s2Step354HeadFvFresh]=
    some (s2Step354HeadFvAfter,⟨s2Step354HeadFOut,s2Step354HeadGOut,s2Step354HeadFvOut,s2Step354HeadGvOut⟩,(growRow 769 s2Step354HeadGFresh ++ (growRow 768 s2Step354HeadFFresh ++ (growRow 771 s2Step354HeadGvFresh ++ (growRow 770 s2Step354HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step354HeadBank_rows]
  rfl

private theorem s2Step354Front_checked : compileHmrSourceFrontLog s2Step354EntryFBefore s2Step354FrontBank 95 193 ⟨94,94,193,192⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step354FrontLog=some s2Step354FrontPlan := by
  have pairEq : s2Step354FrontPair=⟨s2Step354HeadFRow,s2Step354HeadGRow,s2Step354HeadFvRow,s2Step354HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step354FrontHead=⟨s2Step354ExitFRow,s2Step354ExitGRow,s2Step354ExitFvRow,s2Step354ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step354Add0A=s2Step354FrontHead.f.wires := by decide +kernel
  have gEq : s2Step354Add0B=s2Step354FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step354Add1A=s2Step354FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step354Add1B=s2Step354FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step354EntryFBefore s2Step354FrontBank 95 193 ⟨94,94,193,192⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step354FrontLog s2Step354FrontPlan
  · exact s2Step354Front_entry
  · exact s2Step354EntryBank_checked
  · exact s2Step354Front_sigma
  · rfl
  · exact s2Step354Front_branch
  · rfl
  · simpa only [s2Step354FrontPlan,pairEq] using s2Step354HeadBank_checked
  · simpa only [s2Step354FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step354F4_checked
  · exact s2Step354Counter_checked
  · rfl
  · simpa only [s2Step354FrontPlan,headEq] using s2Step354ExitBank_checked

private theorem s2Step354Complete_explicit_checked : compileHmrEarlyStepLog s2Step354EntryFBefore s2Step354FrontBank 95 193 ⟨94,94,193,192⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step354CompleteLog=some s2Step354CompletePlan := by
  let Q := s2Step354EarlyControlPlan
  have hq := s2Step354EarlyControl_plan_checked
  have fv1 : s2Step354CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step354CompleteOut.fv.payload[2]?.getD s2Step354CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step354CompleteOut.fv.payload[3]?.getD s2Step354CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step354CompleteOut.fv.payload[4]?.getD s2Step354CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step354EntryFBefore s2Step354EarlyControlArena s2Step354FrontBank 95 193 ⟨94,94,193,192⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step354CompleteLog s2Step354FrontPlan Q
    s2Step354Front_checked s2Step354Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step354Complete_owned s2Step354Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step354EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 808 s2Step354CompleteOut.fv.second (s2Step354CompleteOut.fv.payload[2]?.getD s2Step354CompleteOut.fv.sign) (s2Step354CompleteOut.fv.payload[3]?.getD s2Step354CompleteOut.fv.sign) (s2Step354CompleteOut.fv.payload[4]?.getD s2Step354CompleteOut.fv.sign) 801 60 s2Step354EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep354Arena : Arena := s2Step354EntryFBefore
def s2PrivateStep354Bank : WindowBank := s2Step354FrontBank
def s2PrivateStep354Spec : HmrSourceWalkStepLog := ⟨95,193,⟨94,94,193,192⟩,60,.early s2Step354CompleteLog⟩
def s2PrivateStep354Plan : HmrSourceStepPlan := .early s2Step354CompletePlan
theorem s2PrivateStep354_source : s2PrivateStep354Spec=s2ObservedLogs352[2] := rfl
theorem s2PrivateStep354_checked : compileHmrSourceStepLog s2PrivateStep354Arena s2PrivateStep354Bank
    s2PrivateStep354Spec.fgWidth s2PrivateStep354Spec.vWidth s2PrivateStep354Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 354 s2PrivateStep354Spec.need none s2PrivateStep354Spec.log=some s2PrivateStep354Plan := by
  change compileHmrSourceStepLog s2Step354EntryFBefore s2Step354FrontBank 95 193 ⟨94,94,193,192⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 354 60 none (.early s2Step354CompleteLog)=some (.early s2Step354CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 354<498)]
  rw [s2Step354Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
