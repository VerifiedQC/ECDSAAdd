import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep369
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

private def s2Step371CompleteMoves : List (Wire × Wire) := [(799,597),(811,598)]

private def s2Step371EarlyControlLog : HmrEarlyControlLog := ⟨[811, 799, 800, 789, 826],[785],[802],[827, 844, 907, 913, 914, 915],[]⟩

private def s2Step371FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [785], [], [819]],[[802], [826], [800], [789]],[[], [], [], []]⟩,[796],[797],[827],[844],[907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913]⟩

private def s2Step371CompleteLog : HmrEarlyStepLog := ⟨s2Step371FrontLog,s2Step371CompleteMoves,s2Step371EarlyControlLog⟩

private def s2Step371ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596],768⟩

private def s2Step371ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783],770⟩

private def s2Step371ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],769⟩

private def s2Step371ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819],771⟩

private def s2Step371FrontOut : WindowBank := ⟨s2Step371ExitFOut,s2Step371ExitGOut,s2Step371ExitFvOut,s2Step371ExitGvOut⟩

private def s2Step371CompleteOut : WindowBank := s2Step371FrontOut.repacked s2Step371CompleteMoves

private def s2Step371EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step371EarlyControlPositiveArena,[785],s2Step371EarlyControlEqualityArena,[802],⟨⟨796,false⟩,[⟨⟨785,false⟩,802⟩]⟩⟩

private def s2Step371EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step371EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step371EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,811⟩,⟨⟨774,false⟩,799⟩,⟨⟨775,false⟩,800⟩,⟨⟨776,false⟩,789⟩,⟨⟨777,false⟩,826⟩]⟩

private def s2Step371EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step371EarlyControlZeroArena,s2Step371EarlyControlZeroPlan,s2Step371EarlyControlClassPlan,s2Step371EarlyControlFlagArena,s2Step371EarlyControlFittedArena,s2Step371EarlyControlHistoryArena,s2Step371EarlyControlSigmaArena,s2Step371EarlyControlOutputArena,s2Step371EarlyControlLog⟩

private def s2Step371CounterWork : List Wire := [827, 844, 907, 913]

private theorem s2Step371Counter_bounded : s2Step371CounterWork.toFinset⊆arenaWires := by norm_num [s2Step371CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step371HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371CounterDuring : Arena := ⟨s2Step371HeadFvAfter.live∪s2Step371CounterWork.toFinset,Finset.union_subset s2Step371HeadFvAfter.bounded s2Step371Counter_bounded⟩

private def s2Step371EntryFFresh : List Wire := []

private def s2Step371EntryFvFresh : List Wire := []

private def s2Step371EntryGFresh : List Wire := [785]

private def s2Step371EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371EntryGvFresh : List Wire := [819]

private def s2Step371ExitFExtra : List Wire := [597, 598, 826]

private def s2Step371ExitFvExtra : List Wire := [789]

private def s2Step371ExitGExtra : List Wire := [785, 802]

private def s2Step371ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<597) ∨ (599≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371ExitGvExtra : List Wire := [800]

private def s2Step371Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371Add0Work : List Wire := [907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step371Add0_bounded : s2Step371Add0Work.toFinset⊆arenaWires := by
  have h : s2Step371Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step371Add0During : Arena := ⟨s2Step371Add0Arena.live∪s2Step371Add0Work.toFinset,Finset.union_subset s2Step371Add0Arena.bounded s2Step371Add0_bounded⟩

private def s2Step371Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371Add1Work : List Wire := [907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step371Add1_bounded : s2Step371Add1Work.toFinset⊆arenaWires := by
  have h : s2Step371Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step371Add1During : Arena := ⟨s2Step371Add1Arena.live∪s2Step371Add1Work.toFinset,Finset.union_subset s2Step371Add1Arena.bounded s2Step371Add1_bounded⟩

private def s2Step371F4FlagArena : Arena := ⟨s2Step371HeadFvAfter.live∪{827},Finset.union_subset s2Step371HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step371F4Plan : HmrHybridF4Plan := ⟨s2Step371F4FlagArena,[827],s2Step371Add0Arena,[844],s2Step371Add0During,s2Step371Add0Work,s2Step371Add1During,s2Step371Add1Work⟩

private def s2Step371HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 826],768⟩

private def s2Step371HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 789],770⟩

private def s2Step371HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 785, 802],769⟩

private def s2Step371HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 800],771⟩

private def s2Step371FrontHead : WindowBank := ⟨s2Step371HeadFOut,s2Step371HeadGOut,s2Step371HeadFvOut,s2Step371HeadGvOut⟩

private def s2Step371EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩

private def s2Step371EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783],770⟩

private def s2Step371EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 785],769⟩

private def s2Step371EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819],771⟩

private def s2Step371FrontPair : WindowBank := ⟨s2Step371EntryFOut,s2Step371EntryGOut,s2Step371EntryFvOut,s2Step371EntryGvOut⟩

private def s2Step371FrontSigmaArena : Arena := ⟨s2Step371EntryGvAfter.live∪{796},Finset.union_subset s2Step371EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step371HeadFFresh : List Wire := [826]

private def s2Step371HeadFvFresh : List Wire := [789]

private def s2Step371HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371HeadGFresh : List Wire := [802]

private def s2Step371HeadGvFresh : List Wire := [800]

private def s2Step371FrontPlan : HmrSourceFront := ⟨s2Step371EntryGvAfter,s2Step371FrontPair,(growRow 768 s2Step371EntryFFresh ++ (growRow 769 s2Step371EntryGFresh ++ (growRow 770 s2Step371EntryFvFresh ++ (growRow 771 s2Step371EntryGvFresh ++ [])))),s2Step371FrontSigmaArena,[796],s2Step371HeadGBefore,[797],
  s2Step371HeadFvAfter,s2Step371FrontHead,(growRow 769 s2Step371HeadGFresh ++ (growRow 768 s2Step371HeadFFresh ++ (growRow 771 s2Step371HeadGvFresh ++ (growRow 770 s2Step371HeadFvFresh ++ [])))),s2Step371F4Plan,s2Step371CounterDuring,s2Step371CounterWork,s2Step371ExitGvAfter,s2Step371FrontOut,(shrinkRow 769 s2Step371ExitGExtra ++ (shrinkRow 768 s2Step371ExitFExtra ++ (shrinkRow 770 s2Step371ExitFvExtra ++ (shrinkRow 771 s2Step371ExitGvExtra ++ []))))⟩

private def s2Step371CompletePlan : HmrEarlyStepPlan := ⟨s2Step371FrontPlan,s2Step371EarlyControlArena,s2Step371EarlyControlPlan,s2Step371CompleteMoves⟩

private theorem s2Step371Complete_apart : List.Disjoint (s2Step371CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [796, 797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step371CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[796, 797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step371Complete_owned : (s2Step371CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step371EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step371EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step371CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,598),(599,785),(786,789),(790,799),(801,802),(803,826),(828,844),(845,907),(908,913)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step371CompleteRelocationMove0Borrowed : Arena := ⟨s2Step371ExitGvAfter.live∪{597},Finset.union_subset s2Step371ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step371CompleteRelocationMove1Borrowed : Arena := ⟨s2Step371CompleteRelocationMove0After.live∪{598},Finset.union_subset s2Step371CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step371CompleteRelocation_move0_owned : 799∈s2Step371ExitGvAfter.live := by norm_num [s2Step371ExitGvAfter,arenaWires]

private theorem s2Step371CompleteRelocation_move0_reserve : s2Step371ExitGvAfter.reserve {597}=some s2Step371CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step371ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step371CompleteRelocation_move0_retire : s2Step371CompleteRelocationMove0Borrowed.retireSet {799}=s2Step371CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step371CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step371CompleteRelocationMove0Borrowed,s2Step371ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step371CompleteRelocation_move1_owned : 811∈s2Step371CompleteRelocationMove0After.live := by norm_num [s2Step371CompleteRelocationMove0After,arenaWires]

private theorem s2Step371CompleteRelocation_move1_reserve : s2Step371CompleteRelocationMove0After.reserve {598}=some s2Step371CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step371CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step371CompleteRelocation_move1_retire : s2Step371CompleteRelocationMove1Borrowed.retireSet {811}=s2Step371EarlyControlArena := by
  unfold Arena.retireSet s2Step371EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step371CompleteRelocationMove1Borrowed,s2Step371CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step371CompleteRelocation_checked : s2Step371ExitGvAfter.checkRepack [(799,597),(811,598)]=some s2Step371EarlyControlArena := by
  have tail2 : s2Step371EarlyControlArena.checkRepack []=some s2Step371EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step371CompleteRelocationMove0After s2Step371CompleteRelocationMove1Borrowed s2Step371EarlyControlArena s2Step371EarlyControlArena 811 598 []
    s2Step371CompleteRelocation_move1_owned s2Step371CompleteRelocation_move1_reserve s2Step371CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step371ExitGvAfter s2Step371CompleteRelocationMove0Borrowed s2Step371CompleteRelocationMove0After s2Step371EarlyControlArena 799 597 [(811,598)]
    s2Step371CompleteRelocation_move0_owned s2Step371CompleteRelocation_move0_reserve s2Step371CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step371Complete_repack : s2Step371ExitGvAfter.checkRepack s2Step371CompleteMoves=some s2Step371EarlyControlArena := by
  simpa only [s2Step371CompleteMoves] using s2Step371CompleteRelocation_checked

private theorem s2Step371EarlyControl_branchOwned : ([797] : List Wire).toFinset⊆s2Step371EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step371EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371EarlyControl_branch : compileHmrBranchRetirement s2Step371EarlyControlSigmaArena 797=some s2Step371EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step371EarlyControl_branchOwned
  · ext q
    simp [s2Step371EarlyControlOutputArena,s2Step371EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step371EarlyControl_classEqualityBorrow : s2Step371EarlyControlPositiveArena.checkBorrow (([796, 785] : List Wire).length-1) s2Step371EarlyControlLog.classWork=some s2Step371EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step371EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step371EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step371EarlyControlEqualityArena,s2Step371EarlyControlPositiveArena,s2Step371EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step371EarlyControl_classEqualityOwned : ([796, 785] : List Wire).toFinset⊆s2Step371EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step371EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371EarlyControl_classEquality : compileHmrEqualityLog s2Step371EarlyControlPositiveArena [796, 785] 0 s2Step371EarlyControlLog.classWork=some (s2Step371EarlyControlEqualityArena,s2Step371EarlyControlLog.classWork,s2Step371EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step371EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step371EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step371EarlyControl_classOwned : ([777, 826, 796] : List Wire).toFinset⊆s2Step371EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step371EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371EarlyControl_positiveBorrow : s2Step371EarlyControlZeroArena.checkBorrow (1) s2Step371EarlyControlLog.positiveWork=some s2Step371EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step371EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step371EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step371EarlyControlPositiveArena,s2Step371EarlyControlZeroArena,s2Step371EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step371EarlyControl_class : compileHmrSourceClassLog s2Step371EarlyControlZeroArena false 777 s2Step371EarlyControlZeroPlan.top 0 796 s2Step371EarlyControlLog.positiveWork s2Step371EarlyControlLog.classWork=some s2Step371EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step371EarlyControlClassPlan s2Step371EarlyControlZeroArena false 777 s2Step371EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s2Step371EarlyControl_classOwned
  · exact s2Step371EarlyControl_positiveBorrow
  · exact s2Step371EarlyControl_classEquality

private theorem s2Step371EarlyControl_entryRecordOwned : ([797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step371EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step371EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s2Step371EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step371EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371EarlyControl_fitBorrow : s2Step371EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step371EarlyControlLog.recordFresh=some s2Step371EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step371EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step371EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
      decide +kernel
    · ext q
      simp [s2Step371EarlyControlFittedArena,s2Step371EarlyControlFlagArena,s2Step371EarlyControlLog,arenaWires]

private theorem s2Step371EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step371EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step371EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
  decide +kernel

private theorem s2Step371EarlyControl_fit : compileHmrRecordGrowLog s2Step371EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step371EarlyControlLog.recordFresh=some s2Step371EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step371EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step371EarlyControl_fitBorrow

private theorem s2Step371EarlyControl_flagsBorrow : s2Step371EarlyControlEqualityArena.checkBorrow (6) s2Step371EarlyControlLog.flagWork=some s2Step371EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step371EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step371EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step371EarlyControlFlagArena,s2Step371EarlyControlEqualityArena,s2Step371EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step371EarlyControl_flagsOwned : ([802, 253, 252, 251] : List Wire).toFinset⊆s2Step371EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step371EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371EarlyControl_flags : compileHmrFlagsLog s2Step371EarlyControlClassPlan.equalityArena s2Step371EarlyControlClassPlan.equality.top 253 252 251 s2Step371EarlyControlLog.flagWork=some s2Step371EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step371EarlyControl_flagsOwned⟩
  · exact s2Step371EarlyControl_flagsBorrow

private theorem s2Step371EarlyControl_historyBorrow : s2Step371EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step371EarlyControlLog.recordFresh=some s2Step371EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step371EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step371EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step371EarlyControlHistoryArena,s2Step371EarlyControlArena,s2Step371EarlyControlLog,arenaWires]

private theorem s2Step371EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step371EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step371EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371EarlyControl_history : compileHmrRecordGrowLog s2Step371EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step371EarlyControlLog.recordFresh=some s2Step371EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step371EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step371EarlyControl_historyBorrow

private theorem s2Step371EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s2Step371EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step371EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s2Step371EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step371EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371EarlyControl_sigmaRelease : s2Step371EarlyControlHistoryArena.release {796} (fun _ => false)=some s2Step371EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step371EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step371EarlyControlSigmaArena,s2Step371EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step371EarlyControl_sigma : compileHmrSigmaDropLog s2Step371EarlyControlHistoryArena false 0 0 254 796 []=some s2Step371EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step371EarlyControl_sigmaOwned⟩
  · exact s2Step371EarlyControl_sigmaRelease

private theorem s2Step371EarlyControl_zeroBorrow : s2Step371EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step371EarlyControlLog.zeroWork=some s2Step371EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step371EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step371EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step371EarlyControlZeroArena,s2Step371EarlyControlArena,s2Step371EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step371EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step371EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step371EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371EarlyControl_zero : compileHmrEqualityLog s2Step371EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step371EarlyControlLog.zeroWork=some (s2Step371EarlyControlZeroArena,s2Step371EarlyControlLog.zeroWork,s2Step371EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step371EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step371EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step371EarlyControl_logged : s2Step371EarlyControlPlan.Logged s2Step371EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 797 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step371EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step371EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step371EarlyControl_zero
  · exact s2Step371EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step371EarlyControl_flags
  · exact s2Step371EarlyControl_fit
  · exact s2Step371EarlyControl_history
  · exact s2Step371EarlyControl_sigma
  · exact s2Step371EarlyControl_branch

private theorem s2Step371EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step371EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 797 60 s2Step371EarlyControlLog=some s2Step371EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step371EarlyControlPlan s2Step371EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 797 60 s2Step371EarlyControl_logged

private def s2Step371EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩

private def s2Step371EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783],770⟩

private def s2Step371EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85],769⟩

private def s2Step371EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805],771⟩

private def s2Step371FrontBank : WindowBank := ⟨s2Step371EntryFRow,s2Step371EntryGRow,s2Step371EntryFvRow,s2Step371EntryGvRow⟩

private def s2Step371Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 826, 768]

private def s2Step371Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 785, 802, 769]

private def s2Step371Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 789, 770]

private def s2Step371Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 800, 771]

private theorem s2Step371Counter_apart : Disjoint s2Step371HeadFvAfter.live s2Step371CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step371HeadFvAfter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371Counter_borrowed : s2Step371HeadFvAfter.checkBorrow 4 s2Step371CounterWork=some s2Step371CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step371HeadFvAfter s2Step371CounterDuring s2Step371CounterWork.toFinset s2Step371Counter_bounded s2Step371Counter_apart rfl

private theorem s2Step371Counter_owned : (796::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step371HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step371HeadFvAfter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371Counter_checked : compileHmrCounterStepLog s2Step371HeadFvAfter true 796 [772, 773, 774, 775, 776, 777] s2Step371CounterWork=some s2Step371CounterDuring := by
  have owned : ∀q∈796::[772, 773, 774, 775, 776, 777],q∈s2Step371HeadFvAfter.live := fun q hq => s2Step371Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step371Counter_borrowed

private def s2Step371EntryFAfter : Arena := s2Step371EntryFBefore

private theorem s2Step371EntryBank_incomingDistinct : ([s2Step371EntryFRow,s2Step371EntryGRow,s2Step371EntryFvRow,s2Step371EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371EntryF_Incoming : rowsOwned s2Step371EntryFBefore [s2Step371EntryFRow,s2Step371EntryGRow,s2Step371EntryFvRow,s2Step371EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step371EntryFRow,s2Step371EntryGRow,s2Step371EntryFvRow,s2Step371EntryGvRow] 0 s2Step371EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step371EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step371EntryBank_outgoingOwned : rowsOwned s2Step371EntryGvAfter [s2Step371EntryFOut,s2Step371EntryGOut,s2Step371EntryFvOut,s2Step371EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step371EntryGvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step371EntryF_Outgoing : rowsOwned s2Step371EntryGvAfter [s2Step371EntryFOut,s2Step371EntryGOut,s2Step371EntryFvOut,s2Step371EntryGvOut] :=
  hmrRows_owned_drop s2Step371EntryGvAfter [s2Step371EntryFOut,s2Step371EntryGOut,s2Step371EntryFvOut,s2Step371EntryGvOut] 0 s2Step371EntryBank_outgoingOwned

private theorem s2Step371EntryF_distinct : (s2Step371EntryFRow.sign::s2Step371EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371EntryF_owned : (s2Step371EntryFRow.sign::s2Step371EntryFRow.payload).toFinset⊆s2Step371EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step371EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371EntryF_reserved : s2Step371EntryFBefore.reserve s2Step371EntryFFresh.toFinset=some s2Step371EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step371EntryFFresh,arenaWires]
  · norm_num [s2Step371EntryFBefore,s2Step371EntryFFresh,arenaWires]
  · simp only [s2Step371EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step371EntryF_checked : planRowResizeLog s2Step371EntryFBefore s2Step371EntryFRow 87 s2Step371EntryFFresh=
    some (s2Step371EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩,growRow 768 s2Step371EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step371EntryFBefore s2Step371EntryFAfter s2Step371EntryFRow 87 s2Step371EntryFFresh
    s2Step371EntryF_distinct s2Step371EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step371EntryF_reserved
  have rowEq : WindowRow.mk (s2Step371EntryFRow.payload++s2Step371EntryFFresh) s2Step371EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step371EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371EntryFvAfter : Arena := s2Step371EntryGAfter

private def s2Step371EntryFvBefore : Arena := s2Step371EntryGAfter

private theorem s2Step371EntryFv_Incoming : rowsOwned s2Step371EntryFvBefore [s2Step371EntryFvRow,s2Step371EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step371EntryFRow,s2Step371EntryGRow,s2Step371EntryFvRow,s2Step371EntryGvRow] 2 s2Step371EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step371EntryFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step371EntryFv_Outgoing : rowsOwned s2Step371EntryGvAfter [s2Step371EntryFvOut,s2Step371EntryGvOut] :=
  hmrRows_owned_drop s2Step371EntryGvAfter [s2Step371EntryFOut,s2Step371EntryGOut,s2Step371EntryFvOut,s2Step371EntryGvOut] 2 s2Step371EntryBank_outgoingOwned

private theorem s2Step371EntryFv_distinct : (s2Step371EntryFvRow.sign::s2Step371EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371EntryFv_owned : (s2Step371EntryFvRow.sign::s2Step371EntryFvRow.payload).toFinset⊆s2Step371EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step371EntryFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371EntryFv_reserved : s2Step371EntryFvBefore.reserve s2Step371EntryFvFresh.toFinset=some s2Step371EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step371EntryFvFresh,arenaWires]
  · norm_num [s2Step371EntryFvBefore,s2Step371EntryGAfter,s2Step371EntryFvFresh,arenaWires]
  · simp only [s2Step371EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step371EntryFv_checked : planRowResizeLog s2Step371EntryFvBefore s2Step371EntryFvRow 202 s2Step371EntryFvFresh=
    some (s2Step371EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783],770⟩,growRow 770 s2Step371EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step371EntryFvBefore s2Step371EntryFvAfter s2Step371EntryFvRow 202 s2Step371EntryFvFresh
    s2Step371EntryFv_distinct s2Step371EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step371EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step371EntryFvRow.payload++s2Step371EntryFvFresh) s2Step371EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step371EntryGBefore : Arena := s2Step371EntryFBefore

private theorem s2Step371EntryG_Incoming : rowsOwned s2Step371EntryGBefore [s2Step371EntryGRow,s2Step371EntryFvRow,s2Step371EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step371EntryFRow,s2Step371EntryGRow,s2Step371EntryFvRow,s2Step371EntryGvRow] 1 s2Step371EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step371EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step371EntryG_Outgoing : rowsOwned s2Step371EntryGvAfter [s2Step371EntryGOut,s2Step371EntryFvOut,s2Step371EntryGvOut] :=
  hmrRows_owned_drop s2Step371EntryGvAfter [s2Step371EntryFOut,s2Step371EntryGOut,s2Step371EntryFvOut,s2Step371EntryGvOut] 1 s2Step371EntryBank_outgoingOwned

private theorem s2Step371EntryG_distinct : (s2Step371EntryGRow.sign::s2Step371EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371EntryG_owned : (s2Step371EntryGRow.sign::s2Step371EntryGRow.payload).toFinset⊆s2Step371EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step371EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371EntryG_reserved : s2Step371EntryGBefore.reserve s2Step371EntryGFresh.toFinset=some s2Step371EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step371EntryGFresh,arenaWires]
  · norm_num [s2Step371EntryGBefore,s2Step371EntryFBefore,s2Step371EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step371EntryGAfter,s2Step371EntryGBefore,s2Step371EntryFBefore,s2Step371EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step371EntryG_checked : planRowResizeLog s2Step371EntryGBefore s2Step371EntryGRow 87 s2Step371EntryGFresh=
    some (s2Step371EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 785],769⟩,growRow 769 s2Step371EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step371EntryGBefore s2Step371EntryGAfter s2Step371EntryGRow 87 s2Step371EntryGFresh
    s2Step371EntryG_distinct s2Step371EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step371EntryG_reserved
  have rowEq : WindowRow.mk (s2Step371EntryGRow.payload++s2Step371EntryGFresh) s2Step371EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step371EntryGvBefore : Arena := s2Step371EntryGAfter

private theorem s2Step371EntryGv_Incoming : rowsOwned s2Step371EntryGvBefore [s2Step371EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step371EntryFRow,s2Step371EntryGRow,s2Step371EntryFvRow,s2Step371EntryGvRow] 3 s2Step371EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step371EntryGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step371EntryGv_Outgoing : rowsOwned s2Step371EntryGvAfter [s2Step371EntryGvOut] :=
  hmrRows_owned_drop s2Step371EntryGvAfter [s2Step371EntryFOut,s2Step371EntryGOut,s2Step371EntryFvOut,s2Step371EntryGvOut] 3 s2Step371EntryBank_outgoingOwned

private theorem s2Step371EntryGv_distinct : (s2Step371EntryGvRow.sign::s2Step371EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371EntryGv_owned : (s2Step371EntryGvRow.sign::s2Step371EntryGvRow.payload).toFinset⊆s2Step371EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step371EntryGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371EntryGv_reserved : s2Step371EntryGvBefore.reserve s2Step371EntryGvFresh.toFinset=some s2Step371EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step371EntryGvFresh,arenaWires]
  · norm_num [s2Step371EntryGvBefore,s2Step371EntryGAfter,s2Step371EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step371EntryGvAfter,s2Step371EntryGvBefore,s2Step371EntryGAfter,s2Step371EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step371EntryGv_checked : planRowResizeLog s2Step371EntryGvBefore s2Step371EntryGvRow 202 s2Step371EntryGvFresh=
    some (s2Step371EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819],771⟩,growRow 771 s2Step371EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step371EntryGvBefore s2Step371EntryGvAfter s2Step371EntryGvRow 202 s2Step371EntryGvFresh
    s2Step371EntryGv_distinct s2Step371EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step371EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step371EntryGvRow.payload++s2Step371EntryGvFresh) s2Step371EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step371EntryBank_rows : planWindowRowsLog s2Step371EntryFBefore [(s2Step371EntryFRow,87),(s2Step371EntryGRow,87),(s2Step371EntryFvRow,202),(s2Step371EntryGvRow,202)] [s2Step371EntryFFresh,s2Step371EntryGFresh,s2Step371EntryFvFresh,s2Step371EntryGvFresh]=
    some (s2Step371EntryGvAfter,[s2Step371EntryFOut,s2Step371EntryGOut,s2Step371EntryFvOut,s2Step371EntryGvOut],(growRow 768 s2Step371EntryFFresh ++ (growRow 769 s2Step371EntryGFresh ++ (growRow 770 s2Step371EntryFvFresh ++ (growRow 771 s2Step371EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step371EntryGvAfter [] []=some (s2Step371EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step371EntryGvBefore s2Step371EntryGvAfter s2Step371EntryGvAfter
    s2Step371EntryGvRow s2Step371EntryGvOut 202 s2Step371EntryGvFresh [] [] []
    (growRow 771 s2Step371EntryGvFresh) ([]) s2Step371EntryGv_Incoming s2Step371EntryGv_checked h4 s2Step371EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step371EntryFvBefore s2Step371EntryFvAfter s2Step371EntryGvAfter
    s2Step371EntryFvRow s2Step371EntryFvOut 202 s2Step371EntryFvFresh [(s2Step371EntryGvRow,202)] [s2Step371EntryGvFresh] [s2Step371EntryGvOut]
    (growRow 770 s2Step371EntryFvFresh) ((growRow 771 s2Step371EntryGvFresh ++ [])) s2Step371EntryFv_Incoming s2Step371EntryFv_checked h3 s2Step371EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step371EntryGBefore s2Step371EntryGAfter s2Step371EntryGvAfter
    s2Step371EntryGRow s2Step371EntryGOut 87 s2Step371EntryGFresh [(s2Step371EntryFvRow,202),(s2Step371EntryGvRow,202)] [s2Step371EntryFvFresh,s2Step371EntryGvFresh] [s2Step371EntryFvOut,s2Step371EntryGvOut]
    (growRow 769 s2Step371EntryGFresh) ((growRow 770 s2Step371EntryFvFresh ++ (growRow 771 s2Step371EntryGvFresh ++ []))) s2Step371EntryG_Incoming s2Step371EntryG_checked h2 s2Step371EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step371EntryFBefore s2Step371EntryFAfter s2Step371EntryGvAfter
    s2Step371EntryFRow s2Step371EntryFOut 87 s2Step371EntryFFresh [(s2Step371EntryGRow,87),(s2Step371EntryFvRow,202),(s2Step371EntryGvRow,202)] [s2Step371EntryGFresh,s2Step371EntryFvFresh,s2Step371EntryGvFresh] [s2Step371EntryGOut,s2Step371EntryFvOut,s2Step371EntryGvOut]
    (growRow 768 s2Step371EntryFFresh) ((growRow 769 s2Step371EntryGFresh ++ (growRow 770 s2Step371EntryFvFresh ++ (growRow 771 s2Step371EntryGvFresh ++ [])))) s2Step371EntryF_Incoming s2Step371EntryF_checked h1 s2Step371EntryF_Outgoing
  exact h0

private theorem s2Step371EntryBank_checked : compileHmrBankResizeLog .entry s2Step371EntryFBefore ⟨s2Step371EntryFRow,s2Step371EntryGRow,s2Step371EntryFvRow,s2Step371EntryGvRow⟩ ⟨87,87,202,202⟩ [s2Step371EntryFFresh,s2Step371EntryGFresh,s2Step371EntryFvFresh,s2Step371EntryGvFresh]=
    some (s2Step371EntryGvAfter,⟨s2Step371EntryFOut,s2Step371EntryGOut,s2Step371EntryFvOut,s2Step371EntryGvOut⟩,(growRow 768 s2Step371EntryFFresh ++ (growRow 769 s2Step371EntryGFresh ++ (growRow 770 s2Step371EntryFvFresh ++ (growRow 771 s2Step371EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step371EntryBank_rows]
  rfl

private def s2Step371ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<597) ∨ (599≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371ExitFBefore : Arena := s2Step371ExitGAfter

private def s2Step371ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 826],768⟩

private def s2Step371ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 789],770⟩

private def s2Step371ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 785, 802],769⟩

private def s2Step371ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 800],771⟩

private theorem s2Step371ExitBank_incomingDistinct : ([s2Step371ExitGRow,s2Step371ExitFRow,s2Step371ExitFvRow,s2Step371ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371ExitF_Incoming : rowsOwned s2Step371ExitFBefore [s2Step371ExitFRow,s2Step371ExitFvRow,s2Step371ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step371ExitGRow,s2Step371ExitFRow,s2Step371ExitFvRow,s2Step371ExitGvRow] 1 s2Step371ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step371ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step371ExitBank_outgoingOwned : rowsOwned s2Step371ExitGvAfter [s2Step371ExitGOut,s2Step371ExitFOut,s2Step371ExitFvOut,s2Step371ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step371ExitGvAfter (fun q => (0≤q ∧ q<597) ∨ (599≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step371ExitF_Outgoing : rowsOwned s2Step371ExitGvAfter [s2Step371ExitFOut,s2Step371ExitFvOut,s2Step371ExitGvOut] :=
  hmrRows_owned_drop s2Step371ExitGvAfter [s2Step371ExitGOut,s2Step371ExitFOut,s2Step371ExitFvOut,s2Step371ExitGvOut] 1 s2Step371ExitBank_outgoingOwned

private theorem s2Step371ExitF_distinct : (s2Step371ExitFRow.sign::s2Step371ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371ExitF_owned : (s2Step371ExitFRow.sign::s2Step371ExitFRow.payload).toFinset⊆s2Step371ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step371ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371ExitF_retired : s2Step371ExitFBefore.retireSet s2Step371ExitFExtra.toFinset=s2Step371ExitFAfter := by
  unfold Arena.retireSet s2Step371ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step371ExitFBefore,s2Step371ExitGAfter,s2Step371ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step371ExitF_checked : planRowResizeLog s2Step371ExitFBefore s2Step371ExitFRow 85 []=
    some (s2Step371ExitFAfter,s2Step371ExitFOut,shrinkRow 768 s2Step371ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step371ExitFBefore s2Step371ExitFRow 85 s2Step371ExitF_distinct s2Step371ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step371ExitFRow.payload.take 85) s2Step371ExitFRow.sign=s2Step371ExitFOut := by decide +kernel
  have hi : s2Step371ExitFRow.payload.drop 85=s2Step371ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step371ExitF_retired] at result
  exact result

private def s2Step371ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<597) ∨ (599≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371ExitFvBefore : Arena := s2Step371ExitFAfter

private theorem s2Step371ExitFv_Incoming : rowsOwned s2Step371ExitFvBefore [s2Step371ExitFvRow,s2Step371ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step371ExitGRow,s2Step371ExitFRow,s2Step371ExitFvRow,s2Step371ExitGvRow] 2 s2Step371ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step371ExitFvBefore (fun q => (0≤q ∧ q<597) ∨ (599≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step371ExitFv_Outgoing : rowsOwned s2Step371ExitGvAfter [s2Step371ExitFvOut,s2Step371ExitGvOut] :=
  hmrRows_owned_drop s2Step371ExitGvAfter [s2Step371ExitGOut,s2Step371ExitFOut,s2Step371ExitFvOut,s2Step371ExitGvOut] 2 s2Step371ExitBank_outgoingOwned

private theorem s2Step371ExitFv_distinct : (s2Step371ExitFvRow.sign::s2Step371ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371ExitFv_owned : (s2Step371ExitFvRow.sign::s2Step371ExitFvRow.payload).toFinset⊆s2Step371ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step371ExitFvBefore (fun q => (0≤q ∧ q<597) ∨ (599≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371ExitFv_retired : s2Step371ExitFvBefore.retireSet s2Step371ExitFvExtra.toFinset=s2Step371ExitFvAfter := by
  unfold Arena.retireSet s2Step371ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step371ExitFvBefore,s2Step371ExitFAfter,s2Step371ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step371ExitFv_checked : planRowResizeLog s2Step371ExitFvBefore s2Step371ExitFvRow 202 []=
    some (s2Step371ExitFvAfter,s2Step371ExitFvOut,shrinkRow 770 s2Step371ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step371ExitFvBefore s2Step371ExitFvRow 202 s2Step371ExitFv_distinct s2Step371ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step371ExitFvRow.payload.take 202) s2Step371ExitFvRow.sign=s2Step371ExitFvOut := by decide +kernel
  have hi : s2Step371ExitFvRow.payload.drop 202=s2Step371ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step371ExitFv_retired] at result
  exact result

private def s2Step371ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step371ExitG_Incoming : rowsOwned s2Step371ExitGBefore [s2Step371ExitGRow,s2Step371ExitFRow,s2Step371ExitFvRow,s2Step371ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step371ExitGRow,s2Step371ExitFRow,s2Step371ExitFvRow,s2Step371ExitGvRow] 0 s2Step371ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step371ExitGBefore (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step371ExitG_Outgoing : rowsOwned s2Step371ExitGvAfter [s2Step371ExitGOut,s2Step371ExitFOut,s2Step371ExitFvOut,s2Step371ExitGvOut] :=
  hmrRows_owned_drop s2Step371ExitGvAfter [s2Step371ExitGOut,s2Step371ExitFOut,s2Step371ExitFvOut,s2Step371ExitGvOut] 0 s2Step371ExitBank_outgoingOwned

private theorem s2Step371ExitG_distinct : (s2Step371ExitGRow.sign::s2Step371ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371ExitG_owned : (s2Step371ExitGRow.sign::s2Step371ExitGRow.payload).toFinset⊆s2Step371ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step371ExitGBefore (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371ExitG_retired : s2Step371ExitGBefore.retireSet s2Step371ExitGExtra.toFinset=s2Step371ExitGAfter := by
  unfold Arena.retireSet s2Step371ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step371ExitGBefore,s2Step371ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step371ExitG_checked : planRowResizeLog s2Step371ExitGBefore s2Step371ExitGRow 86 []=
    some (s2Step371ExitGAfter,s2Step371ExitGOut,shrinkRow 769 s2Step371ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step371ExitGBefore s2Step371ExitGRow 86 s2Step371ExitG_distinct s2Step371ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step371ExitGRow.payload.take 86) s2Step371ExitGRow.sign=s2Step371ExitGOut := by decide +kernel
  have hi : s2Step371ExitGRow.payload.drop 86=s2Step371ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step371ExitG_retired] at result
  exact result

private def s2Step371ExitGvBefore : Arena := s2Step371ExitFvAfter

private theorem s2Step371ExitGv_Incoming : rowsOwned s2Step371ExitGvBefore [s2Step371ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step371ExitGRow,s2Step371ExitFRow,s2Step371ExitFvRow,s2Step371ExitGvRow] 3 s2Step371ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step371ExitGvBefore (fun q => (0≤q ∧ q<597) ∨ (599≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step371ExitGv_Outgoing : rowsOwned s2Step371ExitGvAfter [s2Step371ExitGvOut] :=
  hmrRows_owned_drop s2Step371ExitGvAfter [s2Step371ExitGOut,s2Step371ExitFOut,s2Step371ExitFvOut,s2Step371ExitGvOut] 3 s2Step371ExitBank_outgoingOwned

private theorem s2Step371ExitGv_distinct : (s2Step371ExitGvRow.sign::s2Step371ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371ExitGv_owned : (s2Step371ExitGvRow.sign::s2Step371ExitGvRow.payload).toFinset⊆s2Step371ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step371ExitGvBefore (fun q => (0≤q ∧ q<597) ∨ (599≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371ExitGv_retired : s2Step371ExitGvBefore.retireSet s2Step371ExitGvExtra.toFinset=s2Step371ExitGvAfter := by
  unfold Arena.retireSet s2Step371ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step371ExitGvBefore,s2Step371ExitFvAfter,s2Step371ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step371ExitGv_checked : planRowResizeLog s2Step371ExitGvBefore s2Step371ExitGvRow 202 []=
    some (s2Step371ExitGvAfter,s2Step371ExitGvOut,shrinkRow 771 s2Step371ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step371ExitGvBefore s2Step371ExitGvRow 202 s2Step371ExitGv_distinct s2Step371ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step371ExitGvRow.payload.take 202) s2Step371ExitGvRow.sign=s2Step371ExitGvOut := by decide +kernel
  have hi : s2Step371ExitGvRow.payload.drop 202=s2Step371ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step371ExitGv_retired] at result
  exact result

private theorem s2Step371ExitBank_rows : planWindowRowsLog s2Step371ExitGBefore [(s2Step371ExitGRow,86),(s2Step371ExitFRow,85),(s2Step371ExitFvRow,202),(s2Step371ExitGvRow,202)] [[],[],[],[]]=
    some (s2Step371ExitGvAfter,[s2Step371ExitGOut,s2Step371ExitFOut,s2Step371ExitFvOut,s2Step371ExitGvOut],(shrinkRow 769 s2Step371ExitGExtra ++ (shrinkRow 768 s2Step371ExitFExtra ++ (shrinkRow 770 s2Step371ExitFvExtra ++ (shrinkRow 771 s2Step371ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step371ExitGvAfter [] []=some (s2Step371ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step371ExitGvBefore s2Step371ExitGvAfter s2Step371ExitGvAfter
    s2Step371ExitGvRow s2Step371ExitGvOut 202 [] [] [] []
    (shrinkRow 771 s2Step371ExitGvExtra) ([]) s2Step371ExitGv_Incoming s2Step371ExitGv_checked h4 s2Step371ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step371ExitFvBefore s2Step371ExitFvAfter s2Step371ExitGvAfter
    s2Step371ExitFvRow s2Step371ExitFvOut 202 [] [(s2Step371ExitGvRow,202)] [[]] [s2Step371ExitGvOut]
    (shrinkRow 770 s2Step371ExitFvExtra) ((shrinkRow 771 s2Step371ExitGvExtra ++ [])) s2Step371ExitFv_Incoming s2Step371ExitFv_checked h3 s2Step371ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step371ExitFBefore s2Step371ExitFAfter s2Step371ExitGvAfter
    s2Step371ExitFRow s2Step371ExitFOut 85 [] [(s2Step371ExitFvRow,202),(s2Step371ExitGvRow,202)] [[],[]] [s2Step371ExitFvOut,s2Step371ExitGvOut]
    (shrinkRow 768 s2Step371ExitFExtra) ((shrinkRow 770 s2Step371ExitFvExtra ++ (shrinkRow 771 s2Step371ExitGvExtra ++ []))) s2Step371ExitF_Incoming s2Step371ExitF_checked h2 s2Step371ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step371ExitGBefore s2Step371ExitGAfter s2Step371ExitGvAfter
    s2Step371ExitGRow s2Step371ExitGOut 86 [] [(s2Step371ExitFRow,85),(s2Step371ExitFvRow,202),(s2Step371ExitGvRow,202)] [[],[],[]] [s2Step371ExitFOut,s2Step371ExitFvOut,s2Step371ExitGvOut]
    (shrinkRow 769 s2Step371ExitGExtra) ((shrinkRow 768 s2Step371ExitFExtra ++ (shrinkRow 770 s2Step371ExitFvExtra ++ (shrinkRow 771 s2Step371ExitGvExtra ++ [])))) s2Step371ExitG_Incoming s2Step371ExitG_checked h1 s2Step371ExitG_Outgoing
  exact h0

private theorem s2Step371ExitBank_checked : compileHmrBankResizeLog .exit s2Step371ExitGBefore ⟨s2Step371ExitFRow,s2Step371ExitGRow,s2Step371ExitFvRow,s2Step371ExitGvRow⟩ ⟨85,86,202,202⟩ [[],[],[],[]]=
    some (s2Step371ExitGvAfter,⟨s2Step371ExitFOut,s2Step371ExitGOut,s2Step371ExitFvOut,s2Step371ExitGvOut⟩,(shrinkRow 769 s2Step371ExitGExtra ++ (shrinkRow 768 s2Step371ExitFExtra ++ (shrinkRow 770 s2Step371ExitFvExtra ++ (shrinkRow 771 s2Step371ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step371ExitBank_rows]
  rfl

private theorem s2Step371Add0_apart : Disjoint s2Step371Add0Arena.live s2Step371Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step371Add0Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371Add0_card : s2Step371Add0Arena.live.card=912 := by
  decide +kernel

private theorem s2Step371Add0_borrowed : s2Step371Add0Arena.checkBorrow (hmrHybridCount s2Step371Add0Arena s2Step371Add0B.length) s2Step371Add0Work=some s2Step371Add0During := by
  have len : s2Step371Add0Work.length=hmrHybridCount s2Step371Add0Arena s2Step371Add0B.length := by
    rw [hmrHybridCount,s2Step371Add0_card]
    decide +kernel
  have nd : s2Step371Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step371Add0Arena s2Step371Add0During s2Step371Add0Work.toFinset s2Step371Add0_bounded s2Step371Add0_apart rfl

private theorem s2Step371Add0_distinct : (827::797::844::(s2Step371Add0A++s2Step371Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371Add0_owned : (827::797::844::(s2Step371Add0A++s2Step371Add0B)).toFinset⊆s2Step371Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step371Add0Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371Add0_checked : compileHmrHybridCinLog s2Step371Add0Arena 797 827 844 s2Step371Add0A s2Step371Add0B s2Step371Add0Work=some s2Step371Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step371Add0Arena s2Step371Add0During 797 827 844 s2Step371Add0A s2Step371Add0B s2Step371Add0Work
    (by decide +kernel) (by decide +kernel) s2Step371Add0_distinct
    (fun q hq => s2Step371Add0_owned (List.mem_toFinset.mpr hq)) s2Step371Add0_borrowed

private theorem s2Step371Add1_apart : Disjoint s2Step371Add1Arena.live s2Step371Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step371Add1Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371Add1_card : s2Step371Add1Arena.live.card=912 := by
  decide +kernel

private theorem s2Step371Add1_borrowed : s2Step371Add1Arena.checkBorrow (hmrHybridCount s2Step371Add1Arena s2Step371Add1B.length) s2Step371Add1Work=some s2Step371Add1During := by
  have len : s2Step371Add1Work.length=hmrHybridCount s2Step371Add1Arena s2Step371Add1B.length := by
    rw [hmrHybridCount,s2Step371Add1_card]
    decide +kernel
  have nd : s2Step371Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step371Add1Arena s2Step371Add1During s2Step371Add1Work.toFinset s2Step371Add1_bounded s2Step371Add1_apart rfl

private theorem s2Step371Add1_distinct : (827::797::844::(s2Step371Add1A++s2Step371Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371Add1_owned : (827::797::844::(s2Step371Add1A++s2Step371Add1B)).toFinset⊆s2Step371Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step371Add1Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371Add1_checked : compileHmrHybridCinLog s2Step371Add1Arena 797 827 844 s2Step371Add1A s2Step371Add1B s2Step371Add1Work=some s2Step371Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step371Add1Arena s2Step371Add1During 797 827 844 s2Step371Add1A s2Step371Add1B s2Step371Add1Work
    (by decide +kernel) (by decide +kernel) s2Step371Add1_distinct
    (fun q hq => s2Step371Add1_owned (List.mem_toFinset.mpr hq)) s2Step371Add1_borrowed

private theorem s2Step371F4_apart : Disjoint (s2Step371Add0A++s2Step371Add0B).toFinset (s2Step371Add1A++s2Step371Add1B).toFinset := by
  have nd : ((s2Step371Add0A++s2Step371Add0B)++(s2Step371Add1A++s2Step371Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step371F4_carry : s2Step371F4FlagArena.checkBorrow 1 [844]=some s2Step371Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step371F4FlagArena,s2Step371HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step371F4FlagArena,s2Step371HeadFvAfter,s2Step371Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step371F4_distinct : (796::797::827::844::((s2Step371Add0A++s2Step371Add1A)++(s2Step371Add0B++s2Step371Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371F4_flag : s2Step371HeadFvAfter.checkBorrow 1 [827]=some s2Step371F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step371HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step371F4_owned : (796::797::((s2Step371Add0A++s2Step371Add1A)++(s2Step371Add0B++s2Step371Add1B))).toFinset⊆s2Step371HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step371HeadFvAfter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371F4_checked : compileHmrHybridF4Log s2Step371HeadFvAfter 796 797 s2Step371Add0A s2Step371Add0B s2Step371Add1A s2Step371Add1B [827] [844] s2Step371Add0Work s2Step371Add1Work=some s2Step371F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step371HeadFvAfter s2Step371F4FlagArena s2Step371Add0Arena s2Step371Add0During s2Step371Add1During 796 797
    s2Step371Add0A s2Step371Add0B s2Step371Add1A s2Step371Add1B [827] [844] s2Step371Add0Work s2Step371Add1Work
    (fun q hq => s2Step371F4_owned (List.mem_toFinset.mpr hq)) s2Step371F4_flag s2Step371F4_carry
    s2Step371F4_distinct s2Step371F4_apart s2Step371Add0_checked s2Step371Add1_checked

private theorem s2Step371Front_branch : s2Step371FrontSigmaArena.checkBorrow 1 [797]=some s2Step371HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step371FrontSigmaArena,s2Step371EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step371FrontSigmaArena,s2Step371EntryGvAfter,s2Step371HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step371Front_entry : HmrFrontEntryValid s2Step371EntryFBefore s2Step371FrontBank 87 202 ⟨85,86,202,202⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step371FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step371EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step371EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step371FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step371Front_sigma : s2Step371EntryGvAfter.checkBorrow 1 [796]=some s2Step371FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step371EntryGvAfter,arenaWires]
  · rfl

private def s2Step371HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371HeadFBefore : Arena := s2Step371HeadGAfter

private def s2Step371HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598],768⟩

private def s2Step371HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783],770⟩

private def s2Step371HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 785],769⟩

private def s2Step371HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819],771⟩

private theorem s2Step371HeadBank_incomingDistinct : ([s2Step371HeadGRow,s2Step371HeadFRow,s2Step371HeadGvRow,s2Step371HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371HeadF_Incoming : rowsOwned s2Step371HeadFBefore [s2Step371HeadFRow,s2Step371HeadGvRow,s2Step371HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step371HeadGRow,s2Step371HeadFRow,s2Step371HeadGvRow,s2Step371HeadFvRow] 1 s2Step371HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step371HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step371HeadBank_outgoingOwned : rowsOwned s2Step371HeadFvAfter [s2Step371HeadGOut,s2Step371HeadFOut,s2Step371HeadGvOut,s2Step371HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step371HeadFvAfter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step371HeadF_Outgoing : rowsOwned s2Step371HeadFvAfter [s2Step371HeadFOut,s2Step371HeadGvOut,s2Step371HeadFvOut] :=
  hmrRows_owned_drop s2Step371HeadFvAfter [s2Step371HeadGOut,s2Step371HeadFOut,s2Step371HeadGvOut,s2Step371HeadFvOut] 1 s2Step371HeadBank_outgoingOwned

private theorem s2Step371HeadF_distinct : (s2Step371HeadFRow.sign::s2Step371HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371HeadF_owned : (s2Step371HeadFRow.sign::s2Step371HeadFRow.payload).toFinset⊆s2Step371HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step371HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371HeadF_reserved : s2Step371HeadFBefore.reserve s2Step371HeadFFresh.toFinset=some s2Step371HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step371HeadFFresh,arenaWires]
  · norm_num [s2Step371HeadFBefore,s2Step371HeadGAfter,s2Step371HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step371HeadFAfter,s2Step371HeadFBefore,s2Step371HeadGAfter,s2Step371HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step371HeadF_checked : planRowResizeLog s2Step371HeadFBefore s2Step371HeadFRow 88 s2Step371HeadFFresh=
    some (s2Step371HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 826],768⟩,growRow 768 s2Step371HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step371HeadFBefore s2Step371HeadFAfter s2Step371HeadFRow 88 s2Step371HeadFFresh
    s2Step371HeadF_distinct s2Step371HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step371HeadF_reserved
  have rowEq : WindowRow.mk (s2Step371HeadFRow.payload++s2Step371HeadFFresh) s2Step371HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 826],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step371HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step371HeadFvBefore : Arena := s2Step371HeadGvAfter

private theorem s2Step371HeadFv_Incoming : rowsOwned s2Step371HeadFvBefore [s2Step371HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step371HeadGRow,s2Step371HeadFRow,s2Step371HeadGvRow,s2Step371HeadFvRow] 3 s2Step371HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step371HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step371HeadFv_Outgoing : rowsOwned s2Step371HeadFvAfter [s2Step371HeadFvOut] :=
  hmrRows_owned_drop s2Step371HeadFvAfter [s2Step371HeadGOut,s2Step371HeadFOut,s2Step371HeadGvOut,s2Step371HeadFvOut] 3 s2Step371HeadBank_outgoingOwned

private theorem s2Step371HeadFv_distinct : (s2Step371HeadFvRow.sign::s2Step371HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371HeadFv_owned : (s2Step371HeadFvRow.sign::s2Step371HeadFvRow.payload).toFinset⊆s2Step371HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step371HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371HeadFv_reserved : s2Step371HeadFvBefore.reserve s2Step371HeadFvFresh.toFinset=some s2Step371HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step371HeadFvFresh,arenaWires]
  · norm_num [s2Step371HeadFvBefore,s2Step371HeadGvAfter,s2Step371HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step371HeadFvAfter,s2Step371HeadFvBefore,s2Step371HeadGvAfter,s2Step371HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step371HeadFv_checked : planRowResizeLog s2Step371HeadFvBefore s2Step371HeadFvRow 203 s2Step371HeadFvFresh=
    some (s2Step371HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 789],770⟩,growRow 770 s2Step371HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step371HeadFvBefore s2Step371HeadFvAfter s2Step371HeadFvRow 203 s2Step371HeadFvFresh
    s2Step371HeadFv_distinct s2Step371HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step371HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step371HeadFvRow.payload++s2Step371HeadFvFresh) s2Step371HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 832, 839, 882, 847, 812, 831, 783, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step371HeadG_Incoming : rowsOwned s2Step371HeadGBefore [s2Step371HeadGRow,s2Step371HeadFRow,s2Step371HeadGvRow,s2Step371HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step371HeadGRow,s2Step371HeadFRow,s2Step371HeadGvRow,s2Step371HeadFvRow] 0 s2Step371HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step371HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step371HeadG_Outgoing : rowsOwned s2Step371HeadFvAfter [s2Step371HeadGOut,s2Step371HeadFOut,s2Step371HeadGvOut,s2Step371HeadFvOut] :=
  hmrRows_owned_drop s2Step371HeadFvAfter [s2Step371HeadGOut,s2Step371HeadFOut,s2Step371HeadGvOut,s2Step371HeadFvOut] 0 s2Step371HeadBank_outgoingOwned

private theorem s2Step371HeadG_distinct : (s2Step371HeadGRow.sign::s2Step371HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371HeadG_owned : (s2Step371HeadGRow.sign::s2Step371HeadGRow.payload).toFinset⊆s2Step371HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step371HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<826) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371HeadG_reserved : s2Step371HeadGBefore.reserve s2Step371HeadGFresh.toFinset=some s2Step371HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step371HeadGFresh,arenaWires]
  · norm_num [s2Step371HeadGBefore,s2Step371HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step371HeadGAfter,s2Step371HeadGBefore,s2Step371HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step371HeadG_checked : planRowResizeLog s2Step371HeadGBefore s2Step371HeadGRow 88 s2Step371HeadGFresh=
    some (s2Step371HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 785, 802],769⟩,growRow 769 s2Step371HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step371HeadGBefore s2Step371HeadGAfter s2Step371HeadGRow 88 s2Step371HeadGFresh
    s2Step371HeadG_distinct s2Step371HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step371HeadG_reserved
  have rowEq : WindowRow.mk (s2Step371HeadGRow.payload++s2Step371HeadGFresh) s2Step371HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 785, 802],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step371HeadGvBefore : Arena := s2Step371HeadFAfter

private theorem s2Step371HeadGv_Incoming : rowsOwned s2Step371HeadGvBefore [s2Step371HeadGvRow,s2Step371HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step371HeadGRow,s2Step371HeadFRow,s2Step371HeadGvRow,s2Step371HeadFvRow] 2 s2Step371HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step371HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step371HeadGv_Outgoing : rowsOwned s2Step371HeadFvAfter [s2Step371HeadGvOut,s2Step371HeadFvOut] :=
  hmrRows_owned_drop s2Step371HeadFvAfter [s2Step371HeadGOut,s2Step371HeadFOut,s2Step371HeadGvOut,s2Step371HeadFvOut] 2 s2Step371HeadBank_outgoingOwned

private theorem s2Step371HeadGv_distinct : (s2Step371HeadGvRow.sign::s2Step371HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step371HeadGv_owned : (s2Step371HeadGvRow.sign::s2Step371HeadGvRow.payload).toFinset⊆s2Step371HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step371HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step371HeadGv_reserved : s2Step371HeadGvBefore.reserve s2Step371HeadGvFresh.toFinset=some s2Step371HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step371HeadGvFresh,arenaWires]
  · norm_num [s2Step371HeadGvBefore,s2Step371HeadFAfter,s2Step371HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step371HeadGvAfter,s2Step371HeadGvBefore,s2Step371HeadFAfter,s2Step371HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step371HeadGv_checked : planRowResizeLog s2Step371HeadGvBefore s2Step371HeadGvRow 203 s2Step371HeadGvFresh=
    some (s2Step371HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 800],771⟩,growRow 771 s2Step371HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step371HeadGvBefore s2Step371HeadGvAfter s2Step371HeadGvRow 203 s2Step371HeadGvFresh
    s2Step371HeadGv_distinct s2Step371HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step371HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step371HeadGvRow.payload++s2Step371HeadGvFresh) s2Step371HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 790, 821, 780, 820, 903, 805, 819, 800],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step371HeadBank_rows : planWindowRowsLog s2Step371HeadGBefore [(s2Step371HeadGRow,88),(s2Step371HeadFRow,88),(s2Step371HeadGvRow,203),(s2Step371HeadFvRow,203)] [s2Step371HeadGFresh,s2Step371HeadFFresh,s2Step371HeadGvFresh,s2Step371HeadFvFresh]=
    some (s2Step371HeadFvAfter,[s2Step371HeadGOut,s2Step371HeadFOut,s2Step371HeadGvOut,s2Step371HeadFvOut],(growRow 769 s2Step371HeadGFresh ++ (growRow 768 s2Step371HeadFFresh ++ (growRow 771 s2Step371HeadGvFresh ++ (growRow 770 s2Step371HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step371HeadFvAfter [] []=some (s2Step371HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step371HeadFvBefore s2Step371HeadFvAfter s2Step371HeadFvAfter
    s2Step371HeadFvRow s2Step371HeadFvOut 203 s2Step371HeadFvFresh [] [] []
    (growRow 770 s2Step371HeadFvFresh) ([]) s2Step371HeadFv_Incoming s2Step371HeadFv_checked h4 s2Step371HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step371HeadGvBefore s2Step371HeadGvAfter s2Step371HeadFvAfter
    s2Step371HeadGvRow s2Step371HeadGvOut 203 s2Step371HeadGvFresh [(s2Step371HeadFvRow,203)] [s2Step371HeadFvFresh] [s2Step371HeadFvOut]
    (growRow 771 s2Step371HeadGvFresh) ((growRow 770 s2Step371HeadFvFresh ++ [])) s2Step371HeadGv_Incoming s2Step371HeadGv_checked h3 s2Step371HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step371HeadFBefore s2Step371HeadFAfter s2Step371HeadFvAfter
    s2Step371HeadFRow s2Step371HeadFOut 88 s2Step371HeadFFresh [(s2Step371HeadGvRow,203),(s2Step371HeadFvRow,203)] [s2Step371HeadGvFresh,s2Step371HeadFvFresh] [s2Step371HeadGvOut,s2Step371HeadFvOut]
    (growRow 768 s2Step371HeadFFresh) ((growRow 771 s2Step371HeadGvFresh ++ (growRow 770 s2Step371HeadFvFresh ++ []))) s2Step371HeadF_Incoming s2Step371HeadF_checked h2 s2Step371HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step371HeadGBefore s2Step371HeadGAfter s2Step371HeadFvAfter
    s2Step371HeadGRow s2Step371HeadGOut 88 s2Step371HeadGFresh [(s2Step371HeadFRow,88),(s2Step371HeadGvRow,203),(s2Step371HeadFvRow,203)] [s2Step371HeadFFresh,s2Step371HeadGvFresh,s2Step371HeadFvFresh] [s2Step371HeadFOut,s2Step371HeadGvOut,s2Step371HeadFvOut]
    (growRow 769 s2Step371HeadGFresh) ((growRow 768 s2Step371HeadFFresh ++ (growRow 771 s2Step371HeadGvFresh ++ (growRow 770 s2Step371HeadFvFresh ++ [])))) s2Step371HeadG_Incoming s2Step371HeadG_checked h1 s2Step371HeadG_Outgoing
  exact h0

private theorem s2Step371HeadBank_checked : compileHmrBankResizeLog .headroom s2Step371HeadGBefore ⟨s2Step371HeadFRow,s2Step371HeadGRow,s2Step371HeadFvRow,s2Step371HeadGvRow⟩ ⟨88,88,203,203⟩ [s2Step371HeadGFresh,s2Step371HeadFFresh,s2Step371HeadGvFresh,s2Step371HeadFvFresh]=
    some (s2Step371HeadFvAfter,⟨s2Step371HeadFOut,s2Step371HeadGOut,s2Step371HeadFvOut,s2Step371HeadGvOut⟩,(growRow 769 s2Step371HeadGFresh ++ (growRow 768 s2Step371HeadFFresh ++ (growRow 771 s2Step371HeadGvFresh ++ (growRow 770 s2Step371HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step371HeadBank_rows]
  rfl

private theorem s2Step371Front_checked : compileHmrSourceFrontLog s2Step371EntryFBefore s2Step371FrontBank 87 202 ⟨85,86,202,202⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step371FrontLog=some s2Step371FrontPlan := by
  have pairEq : s2Step371FrontPair=⟨s2Step371HeadFRow,s2Step371HeadGRow,s2Step371HeadFvRow,s2Step371HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step371FrontHead=⟨s2Step371ExitFRow,s2Step371ExitGRow,s2Step371ExitFvRow,s2Step371ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step371Add0A=s2Step371FrontHead.f.wires := by decide +kernel
  have gEq : s2Step371Add0B=s2Step371FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step371Add1A=s2Step371FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step371Add1B=s2Step371FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step371EntryFBefore s2Step371FrontBank 87 202 ⟨85,86,202,202⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step371FrontLog s2Step371FrontPlan
  · exact s2Step371Front_entry
  · exact s2Step371EntryBank_checked
  · exact s2Step371Front_sigma
  · rfl
  · exact s2Step371Front_branch
  · rfl
  · simpa only [s2Step371FrontPlan,pairEq] using s2Step371HeadBank_checked
  · simpa only [s2Step371FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step371F4_checked
  · exact s2Step371Counter_checked
  · rfl
  · simpa only [s2Step371FrontPlan,headEq] using s2Step371ExitBank_checked

private theorem s2Step371Complete_explicit_checked : compileHmrEarlyStepLog s2Step371EntryFBefore s2Step371FrontBank 87 202 ⟨85,86,202,202⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step371CompleteLog=some s2Step371CompletePlan := by
  let Q := s2Step371EarlyControlPlan
  have hq := s2Step371EarlyControl_plan_checked
  have fv1 : s2Step371CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step371CompleteOut.fv.payload[2]?.getD s2Step371CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step371CompleteOut.fv.payload[3]?.getD s2Step371CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step371CompleteOut.fv.payload[4]?.getD s2Step371CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step371EntryFBefore s2Step371EarlyControlArena s2Step371FrontBank 87 202 ⟨85,86,202,202⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step371CompleteLog s2Step371FrontPlan Q
    s2Step371Front_checked s2Step371Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step371Complete_owned s2Step371Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step371EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 s2Step371CompleteOut.fv.second (s2Step371CompleteOut.fv.payload[2]?.getD s2Step371CompleteOut.fv.sign) (s2Step371CompleteOut.fv.payload[3]?.getD s2Step371CompleteOut.fv.sign) (s2Step371CompleteOut.fv.payload[4]?.getD s2Step371CompleteOut.fv.sign) 797 60 s2Step371EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep371Arena : Arena := s2Step371EntryFBefore
def s2PrivateStep371Bank : WindowBank := s2Step371FrontBank
def s2PrivateStep371Spec : HmrSourceWalkStepLog := ⟨87,202,⟨85,86,202,202⟩,60,.early s2Step371CompleteLog⟩
def s2PrivateStep371Plan : HmrSourceStepPlan := .early s2Step371CompletePlan
theorem s2PrivateStep371_source : s2PrivateStep371Spec=s2ObservedLogs368[3] := rfl
theorem s2PrivateStep371_checked : compileHmrSourceStepLog s2PrivateStep371Arena s2PrivateStep371Bank
    s2PrivateStep371Spec.fgWidth s2PrivateStep371Spec.vWidth s2PrivateStep371Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 371 s2PrivateStep371Spec.need none s2PrivateStep371Spec.log=some s2PrivateStep371Plan := by
  change compileHmrSourceStepLog s2Step371EntryFBefore s2Step371FrontBank 87 202 ⟨85,86,202,202⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 371 60 none (.early s2Step371CompleteLog)=some (.early s2Step371CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 371<498)]
  rw [s2Step371Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
