import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep345
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

private def s2Step347CompleteMoves : List (Wire × Wire) := [(891,98)]

private def s2Step347EarlyControlLog : HmrEarlyControlLog := ⟨[891, 903, 894, 788, 845],[800],[789],[827, 844, 907, 913, 914, 915],[]⟩

private def s2Step347FrontLog : HmrFrontAllocationLog := ⟨⟨[[788, 845], [], [804], []],[[789], [800], [903], [894]],[[], [], [], []]⟩,[801],[839],[827],[844],[907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913]⟩

private def s2Step347CompleteLog : HmrEarlyStepLog := ⟨s2Step347FrontLog,s2Step347CompleteMoves,s2Step347EarlyControlLog⟩

private def s2Step347ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608],768⟩

private def s2Step347ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804],770⟩

private def s2Step347ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97],769⟩

private def s2Step347ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩

private def s2Step347FrontOut : WindowBank := ⟨s2Step347ExitFOut,s2Step347ExitGOut,s2Step347ExitFvOut,s2Step347ExitGvOut⟩

private def s2Step347CompleteOut : WindowBank := s2Step347FrontOut.repacked s2Step347CompleteMoves

private def s2Step347EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step347EarlyControlPositiveArena,[800],s2Step347EarlyControlEqualityArena,[789],⟨⟨801,false⟩,[⟨⟨800,false⟩,789⟩]⟩⟩

private def s2Step347EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step347EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step347EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,891⟩,⟨⟨774,false⟩,903⟩,⟨⟨775,false⟩,894⟩,⟨⟨776,false⟩,788⟩,⟨⟨777,false⟩,845⟩]⟩

private def s2Step347EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step347EarlyControlZeroArena,s2Step347EarlyControlZeroPlan,s2Step347EarlyControlClassPlan,s2Step347EarlyControlFlagArena,s2Step347EarlyControlFittedArena,s2Step347EarlyControlHistoryArena,s2Step347EarlyControlSigmaArena,s2Step347EarlyControlOutputArena,s2Step347EarlyControlLog⟩

private def s2Step347CounterWork : List Wire := [827, 844, 907, 913]

private theorem s2Step347Counter_bounded : s2Step347CounterWork.toFinset⊆arenaWires := by norm_num [s2Step347CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step347HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347CounterDuring : Arena := ⟨s2Step347HeadFvAfter.live∪s2Step347CounterWork.toFinset,Finset.union_subset s2Step347HeadFvAfter.bounded s2Step347Counter_bounded⟩

private def s2Step347EntryFFresh : List Wire := [788, 845]

private def s2Step347EntryFvFresh : List Wire := [804]

private def s2Step347EntryGFresh : List Wire := []

private def s2Step347EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347EntryGvAfter : Arena := s2Step347EntryFvAfter

private def s2Step347EntryGvFresh : List Wire := []

private def s2Step347ExitFExtra : List Wire := [788, 845, 800]

private def s2Step347ExitFvExtra : List Wire := [894]

private def s2Step347ExitGExtra : List Wire := [98, 789]

private def s2Step347ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347ExitGvExtra : List Wire := [903]

private def s2Step347Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347Add0Work : List Wire := [907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step347Add0_bounded : s2Step347Add0Work.toFinset⊆arenaWires := by
  have h : s2Step347Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step347Add0During : Arena := ⟨s2Step347Add0Arena.live∪s2Step347Add0Work.toFinset,Finset.union_subset s2Step347Add0Arena.bounded s2Step347Add0_bounded⟩

private def s2Step347Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347Add1Work : List Wire := [907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step347Add1_bounded : s2Step347Add1Work.toFinset⊆arenaWires := by
  have h : s2Step347Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step347Add1During : Arena := ⟨s2Step347Add1Arena.live∪s2Step347Add1Work.toFinset,Finset.union_subset s2Step347Add1Arena.bounded s2Step347Add1_bounded⟩

private def s2Step347F4FlagArena : Arena := ⟨s2Step347HeadFvAfter.live∪{827},Finset.union_subset s2Step347HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step347F4Plan : HmrHybridF4Plan := ⟨s2Step347F4FlagArena,[827],s2Step347Add0Arena,[844],s2Step347Add0During,s2Step347Add0Work,s2Step347Add1During,s2Step347Add1Work⟩

private def s2Step347HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 788, 845, 800],768⟩

private def s2Step347HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 894],770⟩

private def s2Step347HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 789],769⟩

private def s2Step347HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 903],771⟩

private def s2Step347FrontHead : WindowBank := ⟨s2Step347HeadFOut,s2Step347HeadGOut,s2Step347HeadFvOut,s2Step347HeadGvOut⟩

private def s2Step347EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 788, 845],768⟩

private def s2Step347EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804],770⟩

private def s2Step347EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],769⟩

private def s2Step347EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩

private def s2Step347FrontPair : WindowBank := ⟨s2Step347EntryFOut,s2Step347EntryGOut,s2Step347EntryFvOut,s2Step347EntryGvOut⟩

private def s2Step347FrontSigmaArena : Arena := ⟨s2Step347EntryGvAfter.live∪{801},Finset.union_subset s2Step347EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step347HeadFFresh : List Wire := [800]

private def s2Step347HeadFvFresh : List Wire := [894]

private def s2Step347HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347HeadGFresh : List Wire := [789]

private def s2Step347HeadGvFresh : List Wire := [903]

private def s2Step347FrontPlan : HmrSourceFront := ⟨s2Step347EntryGvAfter,s2Step347FrontPair,(growRow 768 s2Step347EntryFFresh ++ (growRow 769 s2Step347EntryGFresh ++ (growRow 770 s2Step347EntryFvFresh ++ (growRow 771 s2Step347EntryGvFresh ++ [])))),s2Step347FrontSigmaArena,[801],s2Step347HeadGBefore,[839],
  s2Step347HeadFvAfter,s2Step347FrontHead,(growRow 769 s2Step347HeadGFresh ++ (growRow 768 s2Step347HeadFFresh ++ (growRow 771 s2Step347HeadGvFresh ++ (growRow 770 s2Step347HeadFvFresh ++ [])))),s2Step347F4Plan,s2Step347CounterDuring,s2Step347CounterWork,s2Step347ExitGvAfter,s2Step347FrontOut,(shrinkRow 769 s2Step347ExitGExtra ++ (shrinkRow 768 s2Step347ExitFExtra ++ (shrinkRow 770 s2Step347ExitFvExtra ++ (shrinkRow 771 s2Step347ExitGvExtra ++ []))))⟩

private def s2Step347CompletePlan : HmrEarlyStepPlan := ⟨s2Step347FrontPlan,s2Step347EarlyControlArena,s2Step347EarlyControlPlan,s2Step347CompleteMoves⟩

private theorem s2Step347Complete_apart : List.Disjoint (s2Step347CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [801, 839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step347CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[801, 839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step347Complete_owned : (s2Step347CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step347EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step347EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step347CompleteMoveArena : Arena := ⟨s2Step347ExitGvAfter.live∪{98},Finset.union_subset s2Step347ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step347Complete_repack : s2Step347ExitGvAfter.checkRepack s2Step347CompleteMoves=some s2Step347EarlyControlArena := by
  have owned : 891∈s2Step347ExitGvAfter.live := by norm_num [s2Step347ExitGvAfter,arenaWires]
  have reserve : s2Step347ExitGvAfter.reserve {98}=some s2Step347CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step347ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step347CompleteMoveArena.retireSet {891}=s2Step347EarlyControlArena := by
    unfold Arena.retireSet s2Step347EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step347CompleteMoveArena,s2Step347ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step347CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step347CompleteMoveArena.retireSet {891}).checkRepack []=some s2Step347EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step347EarlyControl_branchOwned : ([839] : List Wire).toFinset⊆s2Step347EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step347EarlyControlSigmaArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347EarlyControl_branch : compileHmrBranchRetirement s2Step347EarlyControlSigmaArena 839=some s2Step347EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step347EarlyControl_branchOwned
  · ext q
    simp [s2Step347EarlyControlOutputArena,s2Step347EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step347EarlyControl_classEqualityBorrow : s2Step347EarlyControlPositiveArena.checkBorrow (([801, 800] : List Wire).length-1) s2Step347EarlyControlLog.classWork=some s2Step347EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step347EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step347EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step347EarlyControlEqualityArena,s2Step347EarlyControlPositiveArena,s2Step347EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step347EarlyControl_classEqualityOwned : ([801, 800] : List Wire).toFinset⊆s2Step347EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step347EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347EarlyControl_classEquality : compileHmrEqualityLog s2Step347EarlyControlPositiveArena [801, 800] 0 s2Step347EarlyControlLog.classWork=some (s2Step347EarlyControlEqualityArena,s2Step347EarlyControlLog.classWork,s2Step347EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step347EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step347EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step347EarlyControl_classOwned : ([777, 845, 801] : List Wire).toFinset⊆s2Step347EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step347EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347EarlyControl_positiveBorrow : s2Step347EarlyControlZeroArena.checkBorrow (1) s2Step347EarlyControlLog.positiveWork=some s2Step347EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step347EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step347EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step347EarlyControlPositiveArena,s2Step347EarlyControlZeroArena,s2Step347EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step347EarlyControl_class : compileHmrSourceClassLog s2Step347EarlyControlZeroArena false 777 s2Step347EarlyControlZeroPlan.top 0 801 s2Step347EarlyControlLog.positiveWork s2Step347EarlyControlLog.classWork=some s2Step347EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step347EarlyControlClassPlan s2Step347EarlyControlZeroArena false 777 s2Step347EarlyControlZeroPlan.top 0 801
  constructor
  · decide +kernel
  · exact s2Step347EarlyControl_classOwned
  · exact s2Step347EarlyControl_positiveBorrow
  · exact s2Step347EarlyControl_classEquality

private theorem s2Step347EarlyControl_entryRecordOwned : ([839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step347EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step347EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347EarlyControl_entrySigmaOwned : ([801, 254] : List Wire).toFinset⊆s2Step347EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step347EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347EarlyControl_fitBorrow : s2Step347EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step347EarlyControlLog.recordFresh=some s2Step347EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step347EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step347EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
      decide +kernel
    · ext q
      simp [s2Step347EarlyControlFittedArena,s2Step347EarlyControlFlagArena,s2Step347EarlyControlLog,arenaWires]

private theorem s2Step347EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step347EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step347EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
  decide +kernel

private theorem s2Step347EarlyControl_fit : compileHmrRecordGrowLog s2Step347EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step347EarlyControlLog.recordFresh=some s2Step347EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step347EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step347EarlyControl_fitBorrow

private theorem s2Step347EarlyControl_flagsBorrow : s2Step347EarlyControlEqualityArena.checkBorrow (6) s2Step347EarlyControlLog.flagWork=some s2Step347EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step347EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step347EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step347EarlyControlFlagArena,s2Step347EarlyControlEqualityArena,s2Step347EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step347EarlyControl_flagsOwned : ([789, 253, 252, 251] : List Wire).toFinset⊆s2Step347EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step347EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347EarlyControl_flags : compileHmrFlagsLog s2Step347EarlyControlClassPlan.equalityArena s2Step347EarlyControlClassPlan.equality.top 253 252 251 s2Step347EarlyControlLog.flagWork=some s2Step347EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step347EarlyControl_flagsOwned⟩
  · exact s2Step347EarlyControl_flagsBorrow

private theorem s2Step347EarlyControl_historyBorrow : s2Step347EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step347EarlyControlLog.recordFresh=some s2Step347EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step347EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step347EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step347EarlyControlHistoryArena,s2Step347EarlyControlArena,s2Step347EarlyControlLog,arenaWires]

private theorem s2Step347EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step347EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step347EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347EarlyControl_history : compileHmrRecordGrowLog s2Step347EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step347EarlyControlLog.recordFresh=some s2Step347EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step347EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step347EarlyControl_historyBorrow

private theorem s2Step347EarlyControl_sigmaOwned : ([254, 801] : List Wire).toFinset⊆s2Step347EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step347EarlyControlHistoryArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347EarlyControl_sigmaReleaseOwned : ([801] : List Wire).toFinset⊆s2Step347EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step347EarlyControlHistoryArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347EarlyControl_sigmaRelease : s2Step347EarlyControlHistoryArena.release {801} (fun _ => false)=some s2Step347EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step347EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step347EarlyControlSigmaArena,s2Step347EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step347EarlyControl_sigma : compileHmrSigmaDropLog s2Step347EarlyControlHistoryArena false 0 0 254 801 []=some s2Step347EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step347EarlyControl_sigmaOwned⟩
  · exact s2Step347EarlyControl_sigmaRelease

private theorem s2Step347EarlyControl_zeroBorrow : s2Step347EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step347EarlyControlLog.zeroWork=some s2Step347EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step347EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step347EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step347EarlyControlZeroArena,s2Step347EarlyControlArena,s2Step347EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step347EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step347EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step347EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347EarlyControl_zero : compileHmrEqualityLog s2Step347EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step347EarlyControlLog.zeroWork=some (s2Step347EarlyControlZeroArena,s2Step347EarlyControlLog.zeroWork,s2Step347EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step347EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step347EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step347EarlyControl_logged : s2Step347EarlyControlPlan.Logged s2Step347EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 801 254 253 252 251 839 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step347EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step347EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step347EarlyControl_zero
  · exact s2Step347EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step347EarlyControl_flags
  · exact s2Step347EarlyControl_fit
  · exact s2Step347EarlyControl_history
  · exact s2Step347EarlyControl_sigma
  · exact s2Step347EarlyControl_branch

private theorem s2Step347EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step347EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 801 254 253 252 251 839 60 s2Step347EarlyControlLog=some s2Step347EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step347EarlyControlPlan s2Step347EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 801 254 253 252 251 839 60 s2Step347EarlyControl_logged

private def s2Step347EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608],768⟩

private def s2Step347EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩

private def s2Step347EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],769⟩

private def s2Step347EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩

private def s2Step347FrontBank : WindowBank := ⟨s2Step347EntryFRow,s2Step347EntryGRow,s2Step347EntryFvRow,s2Step347EntryGvRow⟩

private def s2Step347Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 788, 845, 800, 768]

private def s2Step347Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 789, 769]

private def s2Step347Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 894, 770]

private def s2Step347Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 903, 771]

private theorem s2Step347Counter_apart : Disjoint s2Step347HeadFvAfter.live s2Step347CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step347HeadFvAfter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347Counter_borrowed : s2Step347HeadFvAfter.checkBorrow 4 s2Step347CounterWork=some s2Step347CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step347HeadFvAfter s2Step347CounterDuring s2Step347CounterWork.toFinset s2Step347Counter_bounded s2Step347Counter_apart rfl

private theorem s2Step347Counter_owned : (801::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step347HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step347HeadFvAfter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347Counter_checked : compileHmrCounterStepLog s2Step347HeadFvAfter true 801 [772, 773, 774, 775, 776, 777] s2Step347CounterWork=some s2Step347CounterDuring := by
  have owned : ∀q∈801::[772, 773, 774, 775, 776, 777],q∈s2Step347HeadFvAfter.live := fun q hq => s2Step347Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step347Counter_borrowed

private def s2Step347EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step347EntryBank_incomingDistinct : ([s2Step347EntryFRow,s2Step347EntryGRow,s2Step347EntryFvRow,s2Step347EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347EntryF_Incoming : rowsOwned s2Step347EntryFBefore [s2Step347EntryFRow,s2Step347EntryGRow,s2Step347EntryFvRow,s2Step347EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step347EntryFRow,s2Step347EntryGRow,s2Step347EntryFvRow,s2Step347EntryGvRow] 0 s2Step347EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step347EntryFBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step347EntryBank_outgoingOwned : rowsOwned s2Step347EntryGvAfter [s2Step347EntryFOut,s2Step347EntryGOut,s2Step347EntryFvOut,s2Step347EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step347EntryGvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step347EntryF_Outgoing : rowsOwned s2Step347EntryGvAfter [s2Step347EntryFOut,s2Step347EntryGOut,s2Step347EntryFvOut,s2Step347EntryGvOut] :=
  hmrRows_owned_drop s2Step347EntryGvAfter [s2Step347EntryFOut,s2Step347EntryGOut,s2Step347EntryFvOut,s2Step347EntryGvOut] 0 s2Step347EntryBank_outgoingOwned

private theorem s2Step347EntryF_distinct : (s2Step347EntryFRow.sign::s2Step347EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347EntryF_owned : (s2Step347EntryFRow.sign::s2Step347EntryFRow.payload).toFinset⊆s2Step347EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step347EntryFBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347EntryF_reserved : s2Step347EntryFBefore.reserve s2Step347EntryFFresh.toFinset=some s2Step347EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step347EntryFFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step347EntryFBefore,s2Step347EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step347EntryFAfter,s2Step347EntryFBefore,s2Step347EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step347EntryF_checked : planRowResizeLog s2Step347EntryFBefore s2Step347EntryFRow 99 s2Step347EntryFFresh=
    some (s2Step347EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 788, 845],768⟩,growRow 768 s2Step347EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step347EntryFBefore s2Step347EntryFAfter s2Step347EntryFRow 99 s2Step347EntryFFresh
    s2Step347EntryF_distinct s2Step347EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step347EntryF_reserved
  have rowEq : WindowRow.mk (s2Step347EntryFRow.payload++s2Step347EntryFFresh) s2Step347EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 788, 845],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step347EntryFvBefore : Arena := s2Step347EntryFAfter

private theorem s2Step347EntryFv_Incoming : rowsOwned s2Step347EntryFvBefore [s2Step347EntryFvRow,s2Step347EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step347EntryFRow,s2Step347EntryGRow,s2Step347EntryFvRow,s2Step347EntryGvRow] 2 s2Step347EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step347EntryFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step347EntryFv_Outgoing : rowsOwned s2Step347EntryGvAfter [s2Step347EntryFvOut,s2Step347EntryGvOut] :=
  hmrRows_owned_drop s2Step347EntryGvAfter [s2Step347EntryFOut,s2Step347EntryGOut,s2Step347EntryFvOut,s2Step347EntryGvOut] 2 s2Step347EntryBank_outgoingOwned

private theorem s2Step347EntryFv_distinct : (s2Step347EntryFvRow.sign::s2Step347EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347EntryFv_owned : (s2Step347EntryFvRow.sign::s2Step347EntryFvRow.payload).toFinset⊆s2Step347EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step347EntryFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347EntryFv_reserved : s2Step347EntryFvBefore.reserve s2Step347EntryFvFresh.toFinset=some s2Step347EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step347EntryFvFresh,arenaWires]
  · norm_num [s2Step347EntryFvBefore,s2Step347EntryFAfter,s2Step347EntryFvFresh,arenaWires]
  · ext q
    simp only [s2Step347EntryFvAfter,s2Step347EntryFvBefore,s2Step347EntryFAfter,s2Step347EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step347EntryFv_checked : planRowResizeLog s2Step347EntryFvBefore s2Step347EntryFvRow 190 s2Step347EntryFvFresh=
    some (s2Step347EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804],770⟩,growRow 770 s2Step347EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step347EntryFvBefore s2Step347EntryFvAfter s2Step347EntryFvRow 190 s2Step347EntryFvFresh
    s2Step347EntryFv_distinct s2Step347EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step347EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step347EntryFvRow.payload++s2Step347EntryFvFresh) s2Step347EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step347EntryGAfter : Arena := s2Step347EntryFAfter

private def s2Step347EntryGBefore : Arena := s2Step347EntryFAfter

private theorem s2Step347EntryG_Incoming : rowsOwned s2Step347EntryGBefore [s2Step347EntryGRow,s2Step347EntryFvRow,s2Step347EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step347EntryFRow,s2Step347EntryGRow,s2Step347EntryFvRow,s2Step347EntryGvRow] 1 s2Step347EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step347EntryGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step347EntryG_Outgoing : rowsOwned s2Step347EntryGvAfter [s2Step347EntryGOut,s2Step347EntryFvOut,s2Step347EntryGvOut] :=
  hmrRows_owned_drop s2Step347EntryGvAfter [s2Step347EntryFOut,s2Step347EntryGOut,s2Step347EntryFvOut,s2Step347EntryGvOut] 1 s2Step347EntryBank_outgoingOwned

private theorem s2Step347EntryG_distinct : (s2Step347EntryGRow.sign::s2Step347EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347EntryG_owned : (s2Step347EntryGRow.sign::s2Step347EntryGRow.payload).toFinset⊆s2Step347EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step347EntryGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347EntryG_reserved : s2Step347EntryGBefore.reserve s2Step347EntryGFresh.toFinset=some s2Step347EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step347EntryGFresh,arenaWires]
  · norm_num [s2Step347EntryGBefore,s2Step347EntryFAfter,s2Step347EntryGFresh,arenaWires]
  · simp only [s2Step347EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step347EntryG_checked : planRowResizeLog s2Step347EntryGBefore s2Step347EntryGRow 99 s2Step347EntryGFresh=
    some (s2Step347EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],769⟩,growRow 769 s2Step347EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step347EntryGBefore s2Step347EntryGAfter s2Step347EntryGRow 99 s2Step347EntryGFresh
    s2Step347EntryG_distinct s2Step347EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step347EntryG_reserved
  have rowEq : WindowRow.mk (s2Step347EntryGRow.payload++s2Step347EntryGFresh) s2Step347EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step347EntryGvBefore : Arena := s2Step347EntryFvAfter

private theorem s2Step347EntryGv_Incoming : rowsOwned s2Step347EntryGvBefore [s2Step347EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step347EntryFRow,s2Step347EntryGRow,s2Step347EntryFvRow,s2Step347EntryGvRow] 3 s2Step347EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step347EntryGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step347EntryGv_Outgoing : rowsOwned s2Step347EntryGvAfter [s2Step347EntryGvOut] :=
  hmrRows_owned_drop s2Step347EntryGvAfter [s2Step347EntryFOut,s2Step347EntryGOut,s2Step347EntryFvOut,s2Step347EntryGvOut] 3 s2Step347EntryBank_outgoingOwned

private theorem s2Step347EntryGv_distinct : (s2Step347EntryGvRow.sign::s2Step347EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347EntryGv_owned : (s2Step347EntryGvRow.sign::s2Step347EntryGvRow.payload).toFinset⊆s2Step347EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step347EntryGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347EntryGv_reserved : s2Step347EntryGvBefore.reserve s2Step347EntryGvFresh.toFinset=some s2Step347EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step347EntryGvFresh,arenaWires]
  · norm_num [s2Step347EntryGvBefore,s2Step347EntryFvAfter,s2Step347EntryGvFresh,arenaWires]
  · simp only [s2Step347EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step347EntryGv_checked : planRowResizeLog s2Step347EntryGvBefore s2Step347EntryGvRow 190 s2Step347EntryGvFresh=
    some (s2Step347EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩,growRow 771 s2Step347EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step347EntryGvBefore s2Step347EntryGvAfter s2Step347EntryGvRow 190 s2Step347EntryGvFresh
    s2Step347EntryGv_distinct s2Step347EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step347EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step347EntryGvRow.payload++s2Step347EntryGvFresh) s2Step347EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step347EntryBank_rows : planWindowRowsLog s2Step347EntryFBefore [(s2Step347EntryFRow,99),(s2Step347EntryGRow,99),(s2Step347EntryFvRow,190),(s2Step347EntryGvRow,190)] [s2Step347EntryFFresh,s2Step347EntryGFresh,s2Step347EntryFvFresh,s2Step347EntryGvFresh]=
    some (s2Step347EntryGvAfter,[s2Step347EntryFOut,s2Step347EntryGOut,s2Step347EntryFvOut,s2Step347EntryGvOut],(growRow 768 s2Step347EntryFFresh ++ (growRow 769 s2Step347EntryGFresh ++ (growRow 770 s2Step347EntryFvFresh ++ (growRow 771 s2Step347EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step347EntryGvAfter [] []=some (s2Step347EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step347EntryGvBefore s2Step347EntryGvAfter s2Step347EntryGvAfter
    s2Step347EntryGvRow s2Step347EntryGvOut 190 s2Step347EntryGvFresh [] [] []
    (growRow 771 s2Step347EntryGvFresh) ([]) s2Step347EntryGv_Incoming s2Step347EntryGv_checked h4 s2Step347EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step347EntryFvBefore s2Step347EntryFvAfter s2Step347EntryGvAfter
    s2Step347EntryFvRow s2Step347EntryFvOut 190 s2Step347EntryFvFresh [(s2Step347EntryGvRow,190)] [s2Step347EntryGvFresh] [s2Step347EntryGvOut]
    (growRow 770 s2Step347EntryFvFresh) ((growRow 771 s2Step347EntryGvFresh ++ [])) s2Step347EntryFv_Incoming s2Step347EntryFv_checked h3 s2Step347EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step347EntryGBefore s2Step347EntryGAfter s2Step347EntryGvAfter
    s2Step347EntryGRow s2Step347EntryGOut 99 s2Step347EntryGFresh [(s2Step347EntryFvRow,190),(s2Step347EntryGvRow,190)] [s2Step347EntryFvFresh,s2Step347EntryGvFresh] [s2Step347EntryFvOut,s2Step347EntryGvOut]
    (growRow 769 s2Step347EntryGFresh) ((growRow 770 s2Step347EntryFvFresh ++ (growRow 771 s2Step347EntryGvFresh ++ []))) s2Step347EntryG_Incoming s2Step347EntryG_checked h2 s2Step347EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step347EntryFBefore s2Step347EntryFAfter s2Step347EntryGvAfter
    s2Step347EntryFRow s2Step347EntryFOut 99 s2Step347EntryFFresh [(s2Step347EntryGRow,99),(s2Step347EntryFvRow,190),(s2Step347EntryGvRow,190)] [s2Step347EntryGFresh,s2Step347EntryFvFresh,s2Step347EntryGvFresh] [s2Step347EntryGOut,s2Step347EntryFvOut,s2Step347EntryGvOut]
    (growRow 768 s2Step347EntryFFresh) ((growRow 769 s2Step347EntryGFresh ++ (growRow 770 s2Step347EntryFvFresh ++ (growRow 771 s2Step347EntryGvFresh ++ [])))) s2Step347EntryF_Incoming s2Step347EntryF_checked h1 s2Step347EntryF_Outgoing
  exact h0

private theorem s2Step347EntryBank_checked : compileHmrBankResizeLog .entry s2Step347EntryFBefore ⟨s2Step347EntryFRow,s2Step347EntryGRow,s2Step347EntryFvRow,s2Step347EntryGvRow⟩ ⟨99,99,190,190⟩ [s2Step347EntryFFresh,s2Step347EntryGFresh,s2Step347EntryFvFresh,s2Step347EntryGvFresh]=
    some (s2Step347EntryGvAfter,⟨s2Step347EntryFOut,s2Step347EntryGOut,s2Step347EntryFvOut,s2Step347EntryGvOut⟩,(growRow 768 s2Step347EntryFFresh ++ (growRow 769 s2Step347EntryGFresh ++ (growRow 770 s2Step347EntryFvFresh ++ (growRow 771 s2Step347EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step347EntryBank_rows]
  rfl

private def s2Step347ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347ExitFBefore : Arena := s2Step347ExitGAfter

private def s2Step347ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 788, 845, 800],768⟩

private def s2Step347ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 894],770⟩

private def s2Step347ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 789],769⟩

private def s2Step347ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 903],771⟩

private theorem s2Step347ExitBank_incomingDistinct : ([s2Step347ExitGRow,s2Step347ExitFRow,s2Step347ExitFvRow,s2Step347ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347ExitF_Incoming : rowsOwned s2Step347ExitFBefore [s2Step347ExitFRow,s2Step347ExitFvRow,s2Step347ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step347ExitGRow,s2Step347ExitFRow,s2Step347ExitFvRow,s2Step347ExitGvRow] 1 s2Step347ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step347ExitFBefore (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step347ExitBank_outgoingOwned : rowsOwned s2Step347ExitGvAfter [s2Step347ExitGOut,s2Step347ExitFOut,s2Step347ExitFvOut,s2Step347ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step347ExitGvAfter (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step347ExitF_Outgoing : rowsOwned s2Step347ExitGvAfter [s2Step347ExitFOut,s2Step347ExitFvOut,s2Step347ExitGvOut] :=
  hmrRows_owned_drop s2Step347ExitGvAfter [s2Step347ExitGOut,s2Step347ExitFOut,s2Step347ExitFvOut,s2Step347ExitGvOut] 1 s2Step347ExitBank_outgoingOwned

private theorem s2Step347ExitF_distinct : (s2Step347ExitFRow.sign::s2Step347ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347ExitF_owned : (s2Step347ExitFRow.sign::s2Step347ExitFRow.payload).toFinset⊆s2Step347ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step347ExitFBefore (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<789) ∨ (790≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347ExitF_retired : s2Step347ExitFBefore.retireSet s2Step347ExitFExtra.toFinset=s2Step347ExitFAfter := by
  unfold Arena.retireSet s2Step347ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step347ExitFBefore,s2Step347ExitGAfter,s2Step347ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step347ExitF_checked : planRowResizeLog s2Step347ExitFBefore s2Step347ExitFRow 97 []=
    some (s2Step347ExitFAfter,s2Step347ExitFOut,shrinkRow 768 s2Step347ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step347ExitFBefore s2Step347ExitFRow 97 s2Step347ExitF_distinct s2Step347ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step347ExitFRow.payload.take 97) s2Step347ExitFRow.sign=s2Step347ExitFOut := by decide +kernel
  have hi : s2Step347ExitFRow.payload.drop 97=s2Step347ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step347ExitF_retired] at result
  exact result

private def s2Step347ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347ExitFvBefore : Arena := s2Step347ExitFAfter

private theorem s2Step347ExitFv_Incoming : rowsOwned s2Step347ExitFvBefore [s2Step347ExitFvRow,s2Step347ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step347ExitGRow,s2Step347ExitFRow,s2Step347ExitFvRow,s2Step347ExitGvRow] 2 s2Step347ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step347ExitFvBefore (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step347ExitFv_Outgoing : rowsOwned s2Step347ExitGvAfter [s2Step347ExitFvOut,s2Step347ExitGvOut] :=
  hmrRows_owned_drop s2Step347ExitGvAfter [s2Step347ExitGOut,s2Step347ExitFOut,s2Step347ExitFvOut,s2Step347ExitGvOut] 2 s2Step347ExitBank_outgoingOwned

private theorem s2Step347ExitFv_distinct : (s2Step347ExitFvRow.sign::s2Step347ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347ExitFv_owned : (s2Step347ExitFvRow.sign::s2Step347ExitFvRow.payload).toFinset⊆s2Step347ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step347ExitFvBefore (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347ExitFv_retired : s2Step347ExitFvBefore.retireSet s2Step347ExitFvExtra.toFinset=s2Step347ExitFvAfter := by
  unfold Arena.retireSet s2Step347ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step347ExitFvBefore,s2Step347ExitFAfter,s2Step347ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step347ExitFv_checked : planRowResizeLog s2Step347ExitFvBefore s2Step347ExitFvRow 190 []=
    some (s2Step347ExitFvAfter,s2Step347ExitFvOut,shrinkRow 770 s2Step347ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step347ExitFvBefore s2Step347ExitFvRow 190 s2Step347ExitFv_distinct s2Step347ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step347ExitFvRow.payload.take 190) s2Step347ExitFvRow.sign=s2Step347ExitFvOut := by decide +kernel
  have hi : s2Step347ExitFvRow.payload.drop 190=s2Step347ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step347ExitFv_retired] at result
  exact result

private def s2Step347ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step347ExitG_Incoming : rowsOwned s2Step347ExitGBefore [s2Step347ExitGRow,s2Step347ExitFRow,s2Step347ExitFvRow,s2Step347ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step347ExitGRow,s2Step347ExitFRow,s2Step347ExitFvRow,s2Step347ExitGvRow] 0 s2Step347ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step347ExitGBefore (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step347ExitG_Outgoing : rowsOwned s2Step347ExitGvAfter [s2Step347ExitGOut,s2Step347ExitFOut,s2Step347ExitFvOut,s2Step347ExitGvOut] :=
  hmrRows_owned_drop s2Step347ExitGvAfter [s2Step347ExitGOut,s2Step347ExitFOut,s2Step347ExitFvOut,s2Step347ExitGvOut] 0 s2Step347ExitBank_outgoingOwned

private theorem s2Step347ExitG_distinct : (s2Step347ExitGRow.sign::s2Step347ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347ExitG_owned : (s2Step347ExitGRow.sign::s2Step347ExitGRow.payload).toFinset⊆s2Step347ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step347ExitGBefore (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347ExitG_retired : s2Step347ExitGBefore.retireSet s2Step347ExitGExtra.toFinset=s2Step347ExitGAfter := by
  unfold Arena.retireSet s2Step347ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step347ExitGBefore,s2Step347ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step347ExitG_checked : planRowResizeLog s2Step347ExitGBefore s2Step347ExitGRow 98 []=
    some (s2Step347ExitGAfter,s2Step347ExitGOut,shrinkRow 769 s2Step347ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step347ExitGBefore s2Step347ExitGRow 98 s2Step347ExitG_distinct s2Step347ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step347ExitGRow.payload.take 98) s2Step347ExitGRow.sign=s2Step347ExitGOut := by decide +kernel
  have hi : s2Step347ExitGRow.payload.drop 98=s2Step347ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step347ExitG_retired] at result
  exact result

private def s2Step347ExitGvBefore : Arena := s2Step347ExitFvAfter

private theorem s2Step347ExitGv_Incoming : rowsOwned s2Step347ExitGvBefore [s2Step347ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step347ExitGRow,s2Step347ExitFRow,s2Step347ExitFvRow,s2Step347ExitGvRow] 3 s2Step347ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step347ExitGvBefore (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step347ExitGv_Outgoing : rowsOwned s2Step347ExitGvAfter [s2Step347ExitGvOut] :=
  hmrRows_owned_drop s2Step347ExitGvAfter [s2Step347ExitGOut,s2Step347ExitFOut,s2Step347ExitFvOut,s2Step347ExitGvOut] 3 s2Step347ExitBank_outgoingOwned

private theorem s2Step347ExitGv_distinct : (s2Step347ExitGvRow.sign::s2Step347ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347ExitGv_owned : (s2Step347ExitGvRow.sign::s2Step347ExitGvRow.payload).toFinset⊆s2Step347ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step347ExitGvBefore (fun q => (0≤q ∧ q<98) ∨ (99≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347ExitGv_retired : s2Step347ExitGvBefore.retireSet s2Step347ExitGvExtra.toFinset=s2Step347ExitGvAfter := by
  unfold Arena.retireSet s2Step347ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step347ExitGvBefore,s2Step347ExitFvAfter,s2Step347ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step347ExitGv_checked : planRowResizeLog s2Step347ExitGvBefore s2Step347ExitGvRow 190 []=
    some (s2Step347ExitGvAfter,s2Step347ExitGvOut,shrinkRow 771 s2Step347ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step347ExitGvBefore s2Step347ExitGvRow 190 s2Step347ExitGv_distinct s2Step347ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step347ExitGvRow.payload.take 190) s2Step347ExitGvRow.sign=s2Step347ExitGvOut := by decide +kernel
  have hi : s2Step347ExitGvRow.payload.drop 190=s2Step347ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step347ExitGv_retired] at result
  exact result

private theorem s2Step347ExitBank_rows : planWindowRowsLog s2Step347ExitGBefore [(s2Step347ExitGRow,98),(s2Step347ExitFRow,97),(s2Step347ExitFvRow,190),(s2Step347ExitGvRow,190)] [[],[],[],[]]=
    some (s2Step347ExitGvAfter,[s2Step347ExitGOut,s2Step347ExitFOut,s2Step347ExitFvOut,s2Step347ExitGvOut],(shrinkRow 769 s2Step347ExitGExtra ++ (shrinkRow 768 s2Step347ExitFExtra ++ (shrinkRow 770 s2Step347ExitFvExtra ++ (shrinkRow 771 s2Step347ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step347ExitGvAfter [] []=some (s2Step347ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step347ExitGvBefore s2Step347ExitGvAfter s2Step347ExitGvAfter
    s2Step347ExitGvRow s2Step347ExitGvOut 190 [] [] [] []
    (shrinkRow 771 s2Step347ExitGvExtra) ([]) s2Step347ExitGv_Incoming s2Step347ExitGv_checked h4 s2Step347ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step347ExitFvBefore s2Step347ExitFvAfter s2Step347ExitGvAfter
    s2Step347ExitFvRow s2Step347ExitFvOut 190 [] [(s2Step347ExitGvRow,190)] [[]] [s2Step347ExitGvOut]
    (shrinkRow 770 s2Step347ExitFvExtra) ((shrinkRow 771 s2Step347ExitGvExtra ++ [])) s2Step347ExitFv_Incoming s2Step347ExitFv_checked h3 s2Step347ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step347ExitFBefore s2Step347ExitFAfter s2Step347ExitGvAfter
    s2Step347ExitFRow s2Step347ExitFOut 97 [] [(s2Step347ExitFvRow,190),(s2Step347ExitGvRow,190)] [[],[]] [s2Step347ExitFvOut,s2Step347ExitGvOut]
    (shrinkRow 768 s2Step347ExitFExtra) ((shrinkRow 770 s2Step347ExitFvExtra ++ (shrinkRow 771 s2Step347ExitGvExtra ++ []))) s2Step347ExitF_Incoming s2Step347ExitF_checked h2 s2Step347ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step347ExitGBefore s2Step347ExitGAfter s2Step347ExitGvAfter
    s2Step347ExitGRow s2Step347ExitGOut 98 [] [(s2Step347ExitFRow,97),(s2Step347ExitFvRow,190),(s2Step347ExitGvRow,190)] [[],[],[]] [s2Step347ExitFOut,s2Step347ExitFvOut,s2Step347ExitGvOut]
    (shrinkRow 769 s2Step347ExitGExtra) ((shrinkRow 768 s2Step347ExitFExtra ++ (shrinkRow 770 s2Step347ExitFvExtra ++ (shrinkRow 771 s2Step347ExitGvExtra ++ [])))) s2Step347ExitG_Incoming s2Step347ExitG_checked h1 s2Step347ExitG_Outgoing
  exact h0

private theorem s2Step347ExitBank_checked : compileHmrBankResizeLog .exit s2Step347ExitGBefore ⟨s2Step347ExitFRow,s2Step347ExitGRow,s2Step347ExitFvRow,s2Step347ExitGvRow⟩ ⟨97,98,190,190⟩ [[],[],[],[]]=
    some (s2Step347ExitGvAfter,⟨s2Step347ExitFOut,s2Step347ExitGOut,s2Step347ExitFvOut,s2Step347ExitGvOut⟩,(shrinkRow 769 s2Step347ExitGExtra ++ (shrinkRow 768 s2Step347ExitFExtra ++ (shrinkRow 770 s2Step347ExitFvExtra ++ (shrinkRow 771 s2Step347ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step347ExitBank_rows]
  rfl

private theorem s2Step347Add0_apart : Disjoint s2Step347Add0Arena.live s2Step347Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step347Add0Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347Add0_card : s2Step347Add0Arena.live.card=912 := by
  decide +kernel

private theorem s2Step347Add0_borrowed : s2Step347Add0Arena.checkBorrow (hmrHybridCount s2Step347Add0Arena s2Step347Add0B.length) s2Step347Add0Work=some s2Step347Add0During := by
  have len : s2Step347Add0Work.length=hmrHybridCount s2Step347Add0Arena s2Step347Add0B.length := by
    rw [hmrHybridCount,s2Step347Add0_card]
    decide +kernel
  have nd : s2Step347Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step347Add0Arena s2Step347Add0During s2Step347Add0Work.toFinset s2Step347Add0_bounded s2Step347Add0_apart rfl

private theorem s2Step347Add0_distinct : (827::839::844::(s2Step347Add0A++s2Step347Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347Add0_owned : (827::839::844::(s2Step347Add0A++s2Step347Add0B)).toFinset⊆s2Step347Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step347Add0Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347Add0_checked : compileHmrHybridCinLog s2Step347Add0Arena 839 827 844 s2Step347Add0A s2Step347Add0B s2Step347Add0Work=some s2Step347Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step347Add0Arena s2Step347Add0During 839 827 844 s2Step347Add0A s2Step347Add0B s2Step347Add0Work
    (by decide +kernel) (by decide +kernel) s2Step347Add0_distinct
    (fun q hq => s2Step347Add0_owned (List.mem_toFinset.mpr hq)) s2Step347Add0_borrowed

private theorem s2Step347Add1_apart : Disjoint s2Step347Add1Arena.live s2Step347Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step347Add1Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347Add1_card : s2Step347Add1Arena.live.card=912 := by
  decide +kernel

private theorem s2Step347Add1_borrowed : s2Step347Add1Arena.checkBorrow (hmrHybridCount s2Step347Add1Arena s2Step347Add1B.length) s2Step347Add1Work=some s2Step347Add1During := by
  have len : s2Step347Add1Work.length=hmrHybridCount s2Step347Add1Arena s2Step347Add1B.length := by
    rw [hmrHybridCount,s2Step347Add1_card]
    decide +kernel
  have nd : s2Step347Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step347Add1Arena s2Step347Add1During s2Step347Add1Work.toFinset s2Step347Add1_bounded s2Step347Add1_apart rfl

private theorem s2Step347Add1_distinct : (827::839::844::(s2Step347Add1A++s2Step347Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347Add1_owned : (827::839::844::(s2Step347Add1A++s2Step347Add1B)).toFinset⊆s2Step347Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step347Add1Arena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347Add1_checked : compileHmrHybridCinLog s2Step347Add1Arena 839 827 844 s2Step347Add1A s2Step347Add1B s2Step347Add1Work=some s2Step347Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step347Add1Arena s2Step347Add1During 839 827 844 s2Step347Add1A s2Step347Add1B s2Step347Add1Work
    (by decide +kernel) (by decide +kernel) s2Step347Add1_distinct
    (fun q hq => s2Step347Add1_owned (List.mem_toFinset.mpr hq)) s2Step347Add1_borrowed

private theorem s2Step347F4_apart : Disjoint (s2Step347Add0A++s2Step347Add0B).toFinset (s2Step347Add1A++s2Step347Add1B).toFinset := by
  have nd : ((s2Step347Add0A++s2Step347Add0B)++(s2Step347Add1A++s2Step347Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step347F4_carry : s2Step347F4FlagArena.checkBorrow 1 [844]=some s2Step347Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step347F4FlagArena,s2Step347HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step347F4FlagArena,s2Step347HeadFvAfter,s2Step347Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step347F4_distinct : (801::839::827::844::((s2Step347Add0A++s2Step347Add1A)++(s2Step347Add0B++s2Step347Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347F4_flag : s2Step347HeadFvAfter.checkBorrow 1 [827]=some s2Step347F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step347HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step347F4_owned : (801::839::((s2Step347Add0A++s2Step347Add1A)++(s2Step347Add0B++s2Step347Add1B))).toFinset⊆s2Step347HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step347HeadFvAfter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347F4_checked : compileHmrHybridF4Log s2Step347HeadFvAfter 801 839 s2Step347Add0A s2Step347Add0B s2Step347Add1A s2Step347Add1B [827] [844] s2Step347Add0Work s2Step347Add1Work=some s2Step347F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step347HeadFvAfter s2Step347F4FlagArena s2Step347Add0Arena s2Step347Add0During s2Step347Add1During 801 839
    s2Step347Add0A s2Step347Add0B s2Step347Add1A s2Step347Add1B [827] [844] s2Step347Add0Work s2Step347Add1Work
    (fun q hq => s2Step347F4_owned (List.mem_toFinset.mpr hq)) s2Step347F4_flag s2Step347F4_carry
    s2Step347F4_distinct s2Step347F4_apart s2Step347Add0_checked s2Step347Add1_checked

private theorem s2Step347Front_branch : s2Step347FrontSigmaArena.checkBorrow 1 [839]=some s2Step347HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step347FrontSigmaArena,s2Step347EntryGvAfter,s2Step347EntryFvAfter,arenaWires]
  · ext q
    simp only [s2Step347FrontSigmaArena,s2Step347EntryGvAfter,s2Step347EntryFvAfter,s2Step347HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step347Front_entry : HmrFrontEntryValid s2Step347EntryFBefore s2Step347FrontBank 99 190 ⟨97,98,190,190⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step347FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step347EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step347EntryFBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step347FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step347Front_sigma : s2Step347EntryGvAfter.checkBorrow 1 [801]=some s2Step347FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step347EntryGvAfter,s2Step347EntryFvAfter,arenaWires]
  · rfl

private def s2Step347HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347HeadFBefore : Arena := s2Step347HeadGAfter

private def s2Step347HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 788, 845],768⟩

private def s2Step347HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804],770⟩

private def s2Step347HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],769⟩

private def s2Step347HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩

private theorem s2Step347HeadBank_incomingDistinct : ([s2Step347HeadGRow,s2Step347HeadFRow,s2Step347HeadGvRow,s2Step347HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347HeadF_Incoming : rowsOwned s2Step347HeadFBefore [s2Step347HeadFRow,s2Step347HeadGvRow,s2Step347HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step347HeadGRow,s2Step347HeadFRow,s2Step347HeadGvRow,s2Step347HeadFvRow] 1 s2Step347HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step347HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step347HeadBank_outgoingOwned : rowsOwned s2Step347HeadFvAfter [s2Step347HeadGOut,s2Step347HeadFOut,s2Step347HeadGvOut,s2Step347HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step347HeadFvAfter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step347HeadF_Outgoing : rowsOwned s2Step347HeadFvAfter [s2Step347HeadFOut,s2Step347HeadGvOut,s2Step347HeadFvOut] :=
  hmrRows_owned_drop s2Step347HeadFvAfter [s2Step347HeadGOut,s2Step347HeadFOut,s2Step347HeadGvOut,s2Step347HeadFvOut] 1 s2Step347HeadBank_outgoingOwned

private theorem s2Step347HeadF_distinct : (s2Step347HeadFRow.sign::s2Step347HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347HeadF_owned : (s2Step347HeadFRow.sign::s2Step347HeadFRow.payload).toFinset⊆s2Step347HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step347HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347HeadF_reserved : s2Step347HeadFBefore.reserve s2Step347HeadFFresh.toFinset=some s2Step347HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step347HeadFFresh,arenaWires]
  · norm_num [s2Step347HeadFBefore,s2Step347HeadGAfter,s2Step347HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step347HeadFAfter,s2Step347HeadFBefore,s2Step347HeadGAfter,s2Step347HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step347HeadF_checked : planRowResizeLog s2Step347HeadFBefore s2Step347HeadFRow 100 s2Step347HeadFFresh=
    some (s2Step347HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 788, 845, 800],768⟩,growRow 768 s2Step347HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step347HeadFBefore s2Step347HeadFAfter s2Step347HeadFRow 100 s2Step347HeadFFresh
    s2Step347HeadF_distinct s2Step347HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step347HeadF_reserved
  have rowEq : WindowRow.mk (s2Step347HeadFRow.payload++s2Step347HeadFFresh) s2Step347HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 788, 845, 800],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step347HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step347HeadFvBefore : Arena := s2Step347HeadGvAfter

private theorem s2Step347HeadFv_Incoming : rowsOwned s2Step347HeadFvBefore [s2Step347HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step347HeadGRow,s2Step347HeadFRow,s2Step347HeadGvRow,s2Step347HeadFvRow] 3 s2Step347HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step347HeadFvBefore (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step347HeadFv_Outgoing : rowsOwned s2Step347HeadFvAfter [s2Step347HeadFvOut] :=
  hmrRows_owned_drop s2Step347HeadFvAfter [s2Step347HeadGOut,s2Step347HeadFOut,s2Step347HeadGvOut,s2Step347HeadFvOut] 3 s2Step347HeadBank_outgoingOwned

private theorem s2Step347HeadFv_distinct : (s2Step347HeadFvRow.sign::s2Step347HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347HeadFv_owned : (s2Step347HeadFvRow.sign::s2Step347HeadFvRow.payload).toFinset⊆s2Step347HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step347HeadFvBefore (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347HeadFv_reserved : s2Step347HeadFvBefore.reserve s2Step347HeadFvFresh.toFinset=some s2Step347HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step347HeadFvFresh,arenaWires]
  · norm_num [s2Step347HeadFvBefore,s2Step347HeadGvAfter,s2Step347HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step347HeadFvAfter,s2Step347HeadFvBefore,s2Step347HeadGvAfter,s2Step347HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step347HeadFv_checked : planRowResizeLog s2Step347HeadFvBefore s2Step347HeadFvRow 191 s2Step347HeadFvFresh=
    some (s2Step347HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 894],770⟩,growRow 770 s2Step347HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step347HeadFvBefore s2Step347HeadFvAfter s2Step347HeadFvRow 191 s2Step347HeadFvFresh
    s2Step347HeadFv_distinct s2Step347HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step347HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step347HeadFvRow.payload++s2Step347HeadFvFresh) s2Step347HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 894],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step347HeadG_Incoming : rowsOwned s2Step347HeadGBefore [s2Step347HeadGRow,s2Step347HeadFRow,s2Step347HeadGvRow,s2Step347HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step347HeadGRow,s2Step347HeadFRow,s2Step347HeadGvRow,s2Step347HeadFvRow] 0 s2Step347HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step347HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step347HeadG_Outgoing : rowsOwned s2Step347HeadFvAfter [s2Step347HeadGOut,s2Step347HeadFOut,s2Step347HeadGvOut,s2Step347HeadFvOut] :=
  hmrRows_owned_drop s2Step347HeadFvAfter [s2Step347HeadGOut,s2Step347HeadFOut,s2Step347HeadGvOut,s2Step347HeadFvOut] 0 s2Step347HeadBank_outgoingOwned

private theorem s2Step347HeadG_distinct : (s2Step347HeadGRow.sign::s2Step347HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347HeadG_owned : (s2Step347HeadGRow.sign::s2Step347HeadGRow.payload).toFinset⊆s2Step347HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step347HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347HeadG_reserved : s2Step347HeadGBefore.reserve s2Step347HeadGFresh.toFinset=some s2Step347HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step347HeadGFresh,arenaWires]
  · norm_num [s2Step347HeadGBefore,s2Step347HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step347HeadGAfter,s2Step347HeadGBefore,s2Step347HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step347HeadG_checked : planRowResizeLog s2Step347HeadGBefore s2Step347HeadGRow 100 s2Step347HeadGFresh=
    some (s2Step347HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 789],769⟩,growRow 769 s2Step347HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step347HeadGBefore s2Step347HeadGAfter s2Step347HeadGRow 100 s2Step347HeadGFresh
    s2Step347HeadG_distinct s2Step347HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step347HeadG_reserved
  have rowEq : WindowRow.mk (s2Step347HeadGRow.payload++s2Step347HeadGFresh) s2Step347HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 789],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step347HeadGvBefore : Arena := s2Step347HeadFAfter

private theorem s2Step347HeadGv_Incoming : rowsOwned s2Step347HeadGvBefore [s2Step347HeadGvRow,s2Step347HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step347HeadGRow,s2Step347HeadFRow,s2Step347HeadGvRow,s2Step347HeadFvRow] 2 s2Step347HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step347HeadGvBefore (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step347HeadGv_Outgoing : rowsOwned s2Step347HeadFvAfter [s2Step347HeadGvOut,s2Step347HeadFvOut] :=
  hmrRows_owned_drop s2Step347HeadFvAfter [s2Step347HeadGOut,s2Step347HeadFOut,s2Step347HeadGvOut,s2Step347HeadFvOut] 2 s2Step347HeadBank_outgoingOwned

private theorem s2Step347HeadGv_distinct : (s2Step347HeadGvRow.sign::s2Step347HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step347HeadGv_owned : (s2Step347HeadGvRow.sign::s2Step347HeadGvRow.payload).toFinset⊆s2Step347HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step347HeadGvBefore (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step347HeadGv_reserved : s2Step347HeadGvBefore.reserve s2Step347HeadGvFresh.toFinset=some s2Step347HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step347HeadGvFresh,arenaWires]
  · norm_num [s2Step347HeadGvBefore,s2Step347HeadFAfter,s2Step347HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step347HeadGvAfter,s2Step347HeadGvBefore,s2Step347HeadFAfter,s2Step347HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step347HeadGv_checked : planRowResizeLog s2Step347HeadGvBefore s2Step347HeadGvRow 191 s2Step347HeadGvFresh=
    some (s2Step347HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 903],771⟩,growRow 771 s2Step347HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step347HeadGvBefore s2Step347HeadGvAfter s2Step347HeadGvRow 191 s2Step347HeadGvFresh
    s2Step347HeadGv_distinct s2Step347HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step347HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step347HeadGvRow.payload++s2Step347HeadGvFresh) s2Step347HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 903],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step347HeadBank_rows : planWindowRowsLog s2Step347HeadGBefore [(s2Step347HeadGRow,100),(s2Step347HeadFRow,100),(s2Step347HeadGvRow,191),(s2Step347HeadFvRow,191)] [s2Step347HeadGFresh,s2Step347HeadFFresh,s2Step347HeadGvFresh,s2Step347HeadFvFresh]=
    some (s2Step347HeadFvAfter,[s2Step347HeadGOut,s2Step347HeadFOut,s2Step347HeadGvOut,s2Step347HeadFvOut],(growRow 769 s2Step347HeadGFresh ++ (growRow 768 s2Step347HeadFFresh ++ (growRow 771 s2Step347HeadGvFresh ++ (growRow 770 s2Step347HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step347HeadFvAfter [] []=some (s2Step347HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step347HeadFvBefore s2Step347HeadFvAfter s2Step347HeadFvAfter
    s2Step347HeadFvRow s2Step347HeadFvOut 191 s2Step347HeadFvFresh [] [] []
    (growRow 770 s2Step347HeadFvFresh) ([]) s2Step347HeadFv_Incoming s2Step347HeadFv_checked h4 s2Step347HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step347HeadGvBefore s2Step347HeadGvAfter s2Step347HeadFvAfter
    s2Step347HeadGvRow s2Step347HeadGvOut 191 s2Step347HeadGvFresh [(s2Step347HeadFvRow,191)] [s2Step347HeadFvFresh] [s2Step347HeadFvOut]
    (growRow 771 s2Step347HeadGvFresh) ((growRow 770 s2Step347HeadFvFresh ++ [])) s2Step347HeadGv_Incoming s2Step347HeadGv_checked h3 s2Step347HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step347HeadFBefore s2Step347HeadFAfter s2Step347HeadFvAfter
    s2Step347HeadFRow s2Step347HeadFOut 100 s2Step347HeadFFresh [(s2Step347HeadGvRow,191),(s2Step347HeadFvRow,191)] [s2Step347HeadGvFresh,s2Step347HeadFvFresh] [s2Step347HeadGvOut,s2Step347HeadFvOut]
    (growRow 768 s2Step347HeadFFresh) ((growRow 771 s2Step347HeadGvFresh ++ (growRow 770 s2Step347HeadFvFresh ++ []))) s2Step347HeadF_Incoming s2Step347HeadF_checked h2 s2Step347HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step347HeadGBefore s2Step347HeadGAfter s2Step347HeadFvAfter
    s2Step347HeadGRow s2Step347HeadGOut 100 s2Step347HeadGFresh [(s2Step347HeadFRow,100),(s2Step347HeadGvRow,191),(s2Step347HeadFvRow,191)] [s2Step347HeadFFresh,s2Step347HeadGvFresh,s2Step347HeadFvFresh] [s2Step347HeadFOut,s2Step347HeadGvOut,s2Step347HeadFvOut]
    (growRow 769 s2Step347HeadGFresh) ((growRow 768 s2Step347HeadFFresh ++ (growRow 771 s2Step347HeadGvFresh ++ (growRow 770 s2Step347HeadFvFresh ++ [])))) s2Step347HeadG_Incoming s2Step347HeadG_checked h1 s2Step347HeadG_Outgoing
  exact h0

private theorem s2Step347HeadBank_checked : compileHmrBankResizeLog .headroom s2Step347HeadGBefore ⟨s2Step347HeadFRow,s2Step347HeadGRow,s2Step347HeadFvRow,s2Step347HeadGvRow⟩ ⟨100,100,191,191⟩ [s2Step347HeadGFresh,s2Step347HeadFFresh,s2Step347HeadGvFresh,s2Step347HeadFvFresh]=
    some (s2Step347HeadFvAfter,⟨s2Step347HeadFOut,s2Step347HeadGOut,s2Step347HeadFvOut,s2Step347HeadGvOut⟩,(growRow 769 s2Step347HeadGFresh ++ (growRow 768 s2Step347HeadFFresh ++ (growRow 771 s2Step347HeadGvFresh ++ (growRow 770 s2Step347HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step347HeadBank_rows]
  rfl

private theorem s2Step347Front_checked : compileHmrSourceFrontLog s2Step347EntryFBefore s2Step347FrontBank 99 190 ⟨97,98,190,190⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step347FrontLog=some s2Step347FrontPlan := by
  have pairEq : s2Step347FrontPair=⟨s2Step347HeadFRow,s2Step347HeadGRow,s2Step347HeadFvRow,s2Step347HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step347FrontHead=⟨s2Step347ExitFRow,s2Step347ExitGRow,s2Step347ExitFvRow,s2Step347ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step347Add0A=s2Step347FrontHead.f.wires := by decide +kernel
  have gEq : s2Step347Add0B=s2Step347FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step347Add1A=s2Step347FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step347Add1B=s2Step347FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step347EntryFBefore s2Step347FrontBank 99 190 ⟨97,98,190,190⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step347FrontLog s2Step347FrontPlan
  · exact s2Step347Front_entry
  · exact s2Step347EntryBank_checked
  · exact s2Step347Front_sigma
  · rfl
  · exact s2Step347Front_branch
  · rfl
  · simpa only [s2Step347FrontPlan,pairEq] using s2Step347HeadBank_checked
  · simpa only [s2Step347FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step347F4_checked
  · exact s2Step347Counter_checked
  · rfl
  · simpa only [s2Step347FrontPlan,headEq] using s2Step347ExitBank_checked

private theorem s2Step347Complete_explicit_checked : compileHmrEarlyStepLog s2Step347EntryFBefore s2Step347FrontBank 99 190 ⟨97,98,190,190⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step347CompleteLog=some s2Step347CompletePlan := by
  let Q := s2Step347EarlyControlPlan
  have hq := s2Step347EarlyControl_plan_checked
  have fv1 : s2Step347CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step347CompleteOut.fv.payload[2]?.getD s2Step347CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step347CompleteOut.fv.payload[3]?.getD s2Step347CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step347CompleteOut.fv.payload[4]?.getD s2Step347CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step347EntryFBefore s2Step347EarlyControlArena s2Step347FrontBank 99 190 ⟨97,98,190,190⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step347CompleteLog s2Step347FrontPlan Q
    s2Step347Front_checked s2Step347Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step347Complete_owned s2Step347Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step347EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 801 s2Step347CompleteOut.fv.second (s2Step347CompleteOut.fv.payload[2]?.getD s2Step347CompleteOut.fv.sign) (s2Step347CompleteOut.fv.payload[3]?.getD s2Step347CompleteOut.fv.sign) (s2Step347CompleteOut.fv.payload[4]?.getD s2Step347CompleteOut.fv.sign) 839 60 s2Step347EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep347Arena : Arena := s2Step347EntryFBefore
def s2PrivateStep347Bank : WindowBank := s2Step347FrontBank
def s2PrivateStep347Spec : HmrSourceWalkStepLog := ⟨99,190,⟨97,98,190,190⟩,60,.early s2Step347CompleteLog⟩
def s2PrivateStep347Plan : HmrSourceStepPlan := .early s2Step347CompletePlan
theorem s2PrivateStep347_source : s2PrivateStep347Spec=s2ObservedLogs336[11] := rfl
theorem s2PrivateStep347_checked : compileHmrSourceStepLog s2PrivateStep347Arena s2PrivateStep347Bank
    s2PrivateStep347Spec.fgWidth s2PrivateStep347Spec.vWidth s2PrivateStep347Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 347 s2PrivateStep347Spec.need none s2PrivateStep347Spec.log=some s2PrivateStep347Plan := by
  change compileHmrSourceStepLog s2Step347EntryFBefore s2Step347FrontBank 99 190 ⟨97,98,190,190⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 347 60 none (.early s2Step347CompleteLog)=some (.early s2Step347CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 347<498)]
  rw [s2Step347Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
