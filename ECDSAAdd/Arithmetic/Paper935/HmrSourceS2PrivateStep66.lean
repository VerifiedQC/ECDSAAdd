import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep64
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

private def s2Step66CompleteMoves : List (Wire × Wire) := [(829,746)]

private def s2Step66EarlyControlLog : HmrEarlyControlLog := ⟨[829, 844, 827, 826, 814],[825],[816],[845, 846, 847, 849, 851, 867],[872]⟩

private def s2Step66FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[826], [827], [844], [790]],[[], [], [], []]⟩,[824],[822],[814],[825],[816, 845, 846, 847, 849, 851, 867, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[816, 845, 846, 847, 849, 851, 867, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911],[814, 825, 816, 845]⟩

private def s2Step66CompleteLog : HmrEarlyStepLog := ⟨s2Step66FrontLog,s2Step66CompleteMoves,s2Step66EarlyControlLog⟩

private def s2Step66ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745],768⟩

private def s2Step66ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩

private def s2Step66ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],769⟩

private def s2Step66ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩

private def s2Step66FrontOut : WindowBank := ⟨s2Step66ExitFOut,s2Step66ExitGOut,s2Step66ExitFvOut,s2Step66ExitGvOut⟩

private def s2Step66CompleteOut : WindowBank := s2Step66FrontOut.repacked s2Step66CompleteMoves

private def s2Step66EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step66EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step66EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step66EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step66EarlyControlPositiveArena,[825],s2Step66EarlyControlEqualityArena,[816],⟨⟨824,false⟩,[⟨⟨825,false⟩,816⟩]⟩⟩

private def s2Step66EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step66EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step66EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step66EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step66EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step66EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step66EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,829⟩,⟨⟨774,false⟩,844⟩,⟨⟨775,false⟩,827⟩,⟨⟨776,false⟩,826⟩,⟨⟨777,false⟩,814⟩]⟩

private def s2Step66EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step66EarlyControlZeroArena,s2Step66EarlyControlZeroPlan,s2Step66EarlyControlClassPlan,s2Step66EarlyControlFlagArena,s2Step66EarlyControlFittedArena,s2Step66EarlyControlHistoryArena,s2Step66EarlyControlSigmaArena,s2Step66EarlyControlOutputArena,s2Step66EarlyControlLog⟩

private def s2Step66CounterWork : List Wire := [814, 825, 816, 845]

private theorem s2Step66Counter_bounded : s2Step66CounterWork.toFinset⊆arenaWires := by norm_num [s2Step66CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step66HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step66CounterDuring : Arena := ⟨s2Step66HeadFvAfter.live∪s2Step66CounterWork.toFinset,Finset.union_subset s2Step66HeadFvAfter.bounded s2Step66Counter_bounded⟩

private def s2Step66EntryFFresh : List Wire := []

private def s2Step66EntryFvFresh : List Wire := []

private def s2Step66EntryGFresh : List Wire := []

private def s2Step66EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step66EntryGvAfter : Arena := s2Step66EntryFBefore

private def s2Step66EntryGvFresh : List Wire := []

private def s2Step66ExitFExtra : List Wire := [746, 827]

private def s2Step66ExitGExtra : List Wire := [826]

private def s2Step66ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<746) ∨ (747≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step66ExitGvExtra : List Wire := [844]

private def s2Step66Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step66Add0Work : List Wire := [816, 845, 846, 847, 849, 851, 867, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step66Add0_bounded : s2Step66Add0Work.toFinset⊆arenaWires := by
  have h : s2Step66Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step66Add0During : Arena := ⟨s2Step66Add0Arena.live∪s2Step66Add0Work.toFinset,Finset.union_subset s2Step66Add0Arena.bounded s2Step66Add0_bounded⟩

private def s2Step66Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step66Add1Work : List Wire := [816, 845, 846, 847, 849, 851, 867, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911]

private theorem s2Step66Add1_bounded : s2Step66Add1Work.toFinset⊆arenaWires := by
  have h : s2Step66Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step66Add1During : Arena := ⟨s2Step66Add1Arena.live∪s2Step66Add1Work.toFinset,Finset.union_subset s2Step66Add1Arena.bounded s2Step66Add1_bounded⟩

private def s2Step66F4FlagArena : Arena := ⟨s2Step66HeadFvAfter.live∪{814},Finset.union_subset s2Step66HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step66F4Plan : HmrHybridF4Plan := ⟨s2Step66F4FlagArena,[814],s2Step66Add0Arena,[825],s2Step66Add0During,s2Step66Add0Work,s2Step66Add1During,s2Step66Add1Work⟩

private def s2Step66HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 827],768⟩

private def s2Step66HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩

private def s2Step66HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 826],769⟩

private def s2Step66HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 844],771⟩

private def s2Step66FrontHead : WindowBank := ⟨s2Step66HeadFOut,s2Step66HeadGOut,s2Step66HeadFvOut,s2Step66HeadGvOut⟩

private def s2Step66EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746],768⟩

private def s2Step66EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817],770⟩

private def s2Step66EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],769⟩

private def s2Step66EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩

private def s2Step66FrontPair : WindowBank := ⟨s2Step66EntryFOut,s2Step66EntryGOut,s2Step66EntryFvOut,s2Step66EntryGvOut⟩

private def s2Step66FrontSigmaArena : Arena := ⟨s2Step66EntryGvAfter.live∪{824},Finset.union_subset s2Step66EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step66HeadFFresh : List Wire := [827]

private def s2Step66HeadFvFresh : List Wire := [790]

private def s2Step66HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step66HeadGFresh : List Wire := [826]

private def s2Step66HeadGvFresh : List Wire := [844]

private def s2Step66FrontPlan : HmrSourceFront := ⟨s2Step66EntryGvAfter,s2Step66FrontPair,(growRow 768 s2Step66EntryFFresh ++ (growRow 769 s2Step66EntryGFresh ++ (growRow 770 s2Step66EntryFvFresh ++ (growRow 771 s2Step66EntryGvFresh ++ [])))),s2Step66FrontSigmaArena,[824],s2Step66HeadGBefore,[822],
  s2Step66HeadFvAfter,s2Step66FrontHead,(growRow 769 s2Step66HeadGFresh ++ (growRow 768 s2Step66HeadFFresh ++ (growRow 771 s2Step66HeadGvFresh ++ (growRow 770 s2Step66HeadFvFresh ++ [])))),s2Step66F4Plan,s2Step66CounterDuring,s2Step66CounterWork,s2Step66ExitGvAfter,s2Step66FrontOut,(shrinkRow 769 s2Step66ExitGExtra ++ (shrinkRow 768 s2Step66ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step66ExitGvExtra ++ []))))⟩

private def s2Step66CompletePlan : HmrEarlyStepPlan := ⟨s2Step66FrontPlan,s2Step66EarlyControlArena,s2Step66EarlyControlPlan,s2Step66CompleteMoves⟩

private theorem s2Step66Complete_apart : List.Disjoint (s2Step66CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [824, 822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868] := by
  have nd : ((s2Step66CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[824, 822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step66Complete_owned : (s2Step66CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step66EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step66EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private def s2Step66CompleteMoveArena : Arena := ⟨s2Step66ExitGvAfter.live∪{746},Finset.union_subset s2Step66ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step66Complete_repack : s2Step66ExitGvAfter.checkRepack s2Step66CompleteMoves=some s2Step66EarlyControlArena := by
  have owned : 829∈s2Step66ExitGvAfter.live := by norm_num [s2Step66ExitGvAfter,arenaWires]
  have reserve : s2Step66ExitGvAfter.reserve {746}=some s2Step66CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step66ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step66CompleteMoveArena.retireSet {829}=s2Step66EarlyControlArena := by
    unfold Arena.retireSet s2Step66EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step66CompleteMoveArena,s2Step66ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step66CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step66CompleteMoveArena.retireSet {829}).checkRepack []=some s2Step66EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step66EarlyControl_branchOwned : ([822] : List Wire).toFinset⊆s2Step66EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step66EarlyControlSigmaArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step66EarlyControl_branch : compileHmrBranchRetirement s2Step66EarlyControlSigmaArena 822=some s2Step66EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step66EarlyControl_branchOwned
  · ext q
    simp [s2Step66EarlyControlOutputArena,s2Step66EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step66EarlyControl_classEqualityBorrow : s2Step66EarlyControlPositiveArena.checkBorrow (([824, 825] : List Wire).length-1) s2Step66EarlyControlLog.classWork=some s2Step66EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step66EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step66EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step66EarlyControlEqualityArena,s2Step66EarlyControlPositiveArena,s2Step66EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step66EarlyControl_classEqualityOwned : ([824, 825] : List Wire).toFinset⊆s2Step66EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step66EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66EarlyControl_classEquality : compileHmrEqualityLog s2Step66EarlyControlPositiveArena [824, 825] 0 s2Step66EarlyControlLog.classWork=some (s2Step66EarlyControlEqualityArena,s2Step66EarlyControlLog.classWork,s2Step66EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step66EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step66EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step66EarlyControl_classOwned : ([777, 814, 824] : List Wire).toFinset⊆s2Step66EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step66EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66EarlyControl_positiveBorrow : s2Step66EarlyControlZeroArena.checkBorrow (1) s2Step66EarlyControlLog.positiveWork=some s2Step66EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step66EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step66EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step66EarlyControlPositiveArena,s2Step66EarlyControlZeroArena,s2Step66EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step66EarlyControl_class : compileHmrSourceClassLog s2Step66EarlyControlZeroArena false 777 s2Step66EarlyControlZeroPlan.top 0 824 s2Step66EarlyControlLog.positiveWork s2Step66EarlyControlLog.classWork=some s2Step66EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step66EarlyControlClassPlan s2Step66EarlyControlZeroArena false 777 s2Step66EarlyControlZeroPlan.top 0 824
  constructor
  · decide +kernel
  · exact s2Step66EarlyControl_classOwned
  · exact s2Step66EarlyControl_positiveBorrow
  · exact s2Step66EarlyControl_classEquality

private theorem s2Step66EarlyControl_entryRecordOwned : ([822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868] : List Wire).toFinset⊆s2Step66EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step66EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66EarlyControl_entrySigmaOwned : ([824, 254] : List Wire).toFinset⊆s2Step66EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step66EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66EarlyControl_fitBorrow : s2Step66EarlyControlFlagArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868] : List Wire).length)) s2Step66EarlyControlLog.recordFresh=some s2Step66EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step66EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step66EarlyControlFlagArena (fun q => (0≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step66EarlyControlFittedArena,s2Step66EarlyControlFlagArena,s2Step66EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step66EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868] : List Wire).toFinset⊆s2Step66EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step66EarlyControlFlagArena (fun q => (0≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66EarlyControl_fit : compileHmrRecordGrowLog s2Step66EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868] 30 s2Step66EarlyControlLog.recordFresh=some s2Step66EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step66EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step66EarlyControl_fitBorrow

private theorem s2Step66EarlyControl_flagsBorrow : s2Step66EarlyControlEqualityArena.checkBorrow (6) s2Step66EarlyControlLog.flagWork=some s2Step66EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step66EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step66EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step66EarlyControlFlagArena,s2Step66EarlyControlEqualityArena,s2Step66EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step66EarlyControl_flagsOwned : ([816, 253, 252, 251] : List Wire).toFinset⊆s2Step66EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step66EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66EarlyControl_flags : compileHmrFlagsLog s2Step66EarlyControlClassPlan.equalityArena s2Step66EarlyControlClassPlan.equality.top 253 252 251 s2Step66EarlyControlLog.flagWork=some s2Step66EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step66EarlyControl_flagsOwned⟩
  · exact s2Step66EarlyControl_flagsBorrow

private theorem s2Step66EarlyControl_historyBorrow : s2Step66EarlyControlArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868] : List Wire).length)) s2Step66EarlyControlLog.recordFresh=some s2Step66EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step66EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step66EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step66EarlyControlHistoryArena,s2Step66EarlyControlArena,s2Step66EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step66EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868] : List Wire).toFinset⊆s2Step66EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step66EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66EarlyControl_history : compileHmrRecordGrowLog s2Step66EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868] 30 s2Step66EarlyControlLog.recordFresh=some s2Step66EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step66EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step66EarlyControl_historyBorrow

private theorem s2Step66EarlyControl_sigmaOwned : ([254, 824] : List Wire).toFinset⊆s2Step66EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step66EarlyControlHistoryArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step66EarlyControl_sigmaReleaseOwned : ([824] : List Wire).toFinset⊆s2Step66EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step66EarlyControlHistoryArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step66EarlyControl_sigmaRelease : s2Step66EarlyControlHistoryArena.release {824} (fun _ => false)=some s2Step66EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step66EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step66EarlyControlSigmaArena,s2Step66EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step66EarlyControl_sigma : compileHmrSigmaDropLog s2Step66EarlyControlHistoryArena false 0 0 254 824 []=some s2Step66EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step66EarlyControl_sigmaOwned⟩
  · exact s2Step66EarlyControl_sigmaRelease

private theorem s2Step66EarlyControl_zeroBorrow : s2Step66EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step66EarlyControlLog.zeroWork=some s2Step66EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step66EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step66EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step66EarlyControlZeroArena,s2Step66EarlyControlArena,s2Step66EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step66EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step66EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step66EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66EarlyControl_zero : compileHmrEqualityLog s2Step66EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step66EarlyControlLog.zeroWork=some (s2Step66EarlyControlZeroArena,s2Step66EarlyControlLog.zeroWork,s2Step66EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step66EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step66EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step66EarlyControl_logged : s2Step66EarlyControlPlan.Logged s2Step66EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868] 777 824 254 253 252 251 822 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step66EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step66EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step66EarlyControl_zero
  · exact s2Step66EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step66EarlyControl_flags
  · exact s2Step66EarlyControl_fit
  · exact s2Step66EarlyControl_history
  · exact s2Step66EarlyControl_sigma
  · exact s2Step66EarlyControl_branch

private theorem s2Step66EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step66EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868] 777 824 254 253 252 251 822 30 s2Step66EarlyControlLog=some s2Step66EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step66EarlyControlPlan s2Step66EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868] 777 824 254 253 252 251 822 30 s2Step66EarlyControl_logged

private def s2Step66EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746],768⟩

private def s2Step66EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817],770⟩

private def s2Step66EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],769⟩

private def s2Step66EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩

private def s2Step66FrontBank : WindowBank := ⟨s2Step66EntryFRow,s2Step66EntryGRow,s2Step66EntryFvRow,s2Step66EntryGvRow⟩

private def s2Step66Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 827, 768]

private def s2Step66Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 826, 769]

private def s2Step66Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 770]

private def s2Step66Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 844, 771]

private theorem s2Step66Counter_apart : Disjoint s2Step66HeadFvAfter.live s2Step66CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step66HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66Counter_borrowed : s2Step66HeadFvAfter.checkBorrow 4 s2Step66CounterWork=some s2Step66CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step66HeadFvAfter s2Step66CounterDuring s2Step66CounterWork.toFinset s2Step66Counter_bounded s2Step66Counter_apart rfl

private theorem s2Step66Counter_owned : (824::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step66HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step66HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66Counter_checked : compileHmrCounterStepLog s2Step66HeadFvAfter true 824 [772, 773, 774, 775, 776, 777] s2Step66CounterWork=some s2Step66CounterDuring := by
  have owned : ∀q∈824::[772, 773, 774, 775, 776, 777],q∈s2Step66HeadFvAfter.live := fun q hq => s2Step66Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step66Counter_borrowed

private def s2Step66EntryFAfter : Arena := s2Step66EntryFBefore

private theorem s2Step66EntryBank_incomingDistinct : ([s2Step66EntryFRow,s2Step66EntryGRow,s2Step66EntryFvRow,s2Step66EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66EntryF_Incoming : rowsOwned s2Step66EntryFBefore [s2Step66EntryFRow,s2Step66EntryGRow,s2Step66EntryFvRow,s2Step66EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step66EntryFRow,s2Step66EntryGRow,s2Step66EntryFvRow,s2Step66EntryGvRow] 0 s2Step66EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step66EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step66EntryBank_outgoingOwned : rowsOwned s2Step66EntryGvAfter [s2Step66EntryFOut,s2Step66EntryGOut,s2Step66EntryFvOut,s2Step66EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step66EntryGvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step66EntryF_Outgoing : rowsOwned s2Step66EntryGvAfter [s2Step66EntryFOut,s2Step66EntryGOut,s2Step66EntryFvOut,s2Step66EntryGvOut] :=
  hmrRows_owned_drop s2Step66EntryGvAfter [s2Step66EntryFOut,s2Step66EntryGOut,s2Step66EntryFvOut,s2Step66EntryGvOut] 0 s2Step66EntryBank_outgoingOwned

private theorem s2Step66EntryF_distinct : (s2Step66EntryFRow.sign::s2Step66EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66EntryF_owned : (s2Step66EntryFRow.sign::s2Step66EntryFRow.payload).toFinset⊆s2Step66EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step66EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66EntryF_reserved : s2Step66EntryFBefore.reserve s2Step66EntryFFresh.toFinset=some s2Step66EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step66EntryFFresh,arenaWires]
  · norm_num [s2Step66EntryFBefore,s2Step66EntryFFresh,arenaWires]
  · simp only [s2Step66EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step66EntryF_checked : planRowResizeLog s2Step66EntryFBefore s2Step66EntryFRow 235 s2Step66EntryFFresh=
    some (s2Step66EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746],768⟩,growRow 768 s2Step66EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step66EntryFBefore s2Step66EntryFAfter s2Step66EntryFRow 235 s2Step66EntryFFresh
    s2Step66EntryF_distinct s2Step66EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step66EntryF_reserved
  have rowEq : WindowRow.mk (s2Step66EntryFRow.payload++s2Step66EntryFFresh) s2Step66EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step66EntryFvAfter : Arena := s2Step66EntryFBefore

private def s2Step66EntryFvBefore : Arena := s2Step66EntryFBefore

private theorem s2Step66EntryFv_Incoming : rowsOwned s2Step66EntryFvBefore [s2Step66EntryFvRow,s2Step66EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step66EntryFRow,s2Step66EntryGRow,s2Step66EntryFvRow,s2Step66EntryGvRow] 2 s2Step66EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step66EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step66EntryFv_Outgoing : rowsOwned s2Step66EntryGvAfter [s2Step66EntryFvOut,s2Step66EntryGvOut] :=
  hmrRows_owned_drop s2Step66EntryGvAfter [s2Step66EntryFOut,s2Step66EntryGOut,s2Step66EntryFvOut,s2Step66EntryGvOut] 2 s2Step66EntryBank_outgoingOwned

private theorem s2Step66EntryFv_distinct : (s2Step66EntryFvRow.sign::s2Step66EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66EntryFv_owned : (s2Step66EntryFvRow.sign::s2Step66EntryFvRow.payload).toFinset⊆s2Step66EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step66EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66EntryFv_reserved : s2Step66EntryFvBefore.reserve s2Step66EntryFvFresh.toFinset=some s2Step66EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step66EntryFvFresh,arenaWires]
  · norm_num [s2Step66EntryFvBefore,s2Step66EntryFBefore,s2Step66EntryFvFresh,arenaWires]
  · simp only [s2Step66EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step66EntryFv_checked : planRowResizeLog s2Step66EntryFvBefore s2Step66EntryFvRow 46 s2Step66EntryFvFresh=
    some (s2Step66EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817],770⟩,growRow 770 s2Step66EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step66EntryFvBefore s2Step66EntryFvAfter s2Step66EntryFvRow 46 s2Step66EntryFvFresh
    s2Step66EntryFv_distinct s2Step66EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step66EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step66EntryFvRow.payload++s2Step66EntryFvFresh) s2Step66EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step66EntryGAfter : Arena := s2Step66EntryFBefore

private def s2Step66EntryGBefore : Arena := s2Step66EntryFBefore

private theorem s2Step66EntryG_Incoming : rowsOwned s2Step66EntryGBefore [s2Step66EntryGRow,s2Step66EntryFvRow,s2Step66EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step66EntryFRow,s2Step66EntryGRow,s2Step66EntryFvRow,s2Step66EntryGvRow] 1 s2Step66EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step66EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step66EntryG_Outgoing : rowsOwned s2Step66EntryGvAfter [s2Step66EntryGOut,s2Step66EntryFvOut,s2Step66EntryGvOut] :=
  hmrRows_owned_drop s2Step66EntryGvAfter [s2Step66EntryFOut,s2Step66EntryGOut,s2Step66EntryFvOut,s2Step66EntryGvOut] 1 s2Step66EntryBank_outgoingOwned

private theorem s2Step66EntryG_distinct : (s2Step66EntryGRow.sign::s2Step66EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66EntryG_owned : (s2Step66EntryGRow.sign::s2Step66EntryGRow.payload).toFinset⊆s2Step66EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step66EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66EntryG_reserved : s2Step66EntryGBefore.reserve s2Step66EntryGFresh.toFinset=some s2Step66EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step66EntryGFresh,arenaWires]
  · norm_num [s2Step66EntryGBefore,s2Step66EntryFBefore,s2Step66EntryGFresh,arenaWires]
  · simp only [s2Step66EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step66EntryG_checked : planRowResizeLog s2Step66EntryGBefore s2Step66EntryGRow 235 s2Step66EntryGFresh=
    some (s2Step66EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],769⟩,growRow 769 s2Step66EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step66EntryGBefore s2Step66EntryGAfter s2Step66EntryGRow 235 s2Step66EntryGFresh
    s2Step66EntryG_distinct s2Step66EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step66EntryG_reserved
  have rowEq : WindowRow.mk (s2Step66EntryGRow.payload++s2Step66EntryGFresh) s2Step66EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step66EntryGvBefore : Arena := s2Step66EntryFBefore

private theorem s2Step66EntryGv_Incoming : rowsOwned s2Step66EntryGvBefore [s2Step66EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step66EntryFRow,s2Step66EntryGRow,s2Step66EntryFvRow,s2Step66EntryGvRow] 3 s2Step66EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step66EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step66EntryGv_Outgoing : rowsOwned s2Step66EntryGvAfter [s2Step66EntryGvOut] :=
  hmrRows_owned_drop s2Step66EntryGvAfter [s2Step66EntryFOut,s2Step66EntryGOut,s2Step66EntryFvOut,s2Step66EntryGvOut] 3 s2Step66EntryBank_outgoingOwned

private theorem s2Step66EntryGv_distinct : (s2Step66EntryGvRow.sign::s2Step66EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66EntryGv_owned : (s2Step66EntryGvRow.sign::s2Step66EntryGvRow.payload).toFinset⊆s2Step66EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step66EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66EntryGv_reserved : s2Step66EntryGvBefore.reserve s2Step66EntryGvFresh.toFinset=some s2Step66EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step66EntryGvFresh,arenaWires]
  · norm_num [s2Step66EntryGvBefore,s2Step66EntryFBefore,s2Step66EntryGvFresh,arenaWires]
  · simp only [s2Step66EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step66EntryGv_checked : planRowResizeLog s2Step66EntryGvBefore s2Step66EntryGvRow 46 s2Step66EntryGvFresh=
    some (s2Step66EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩,growRow 771 s2Step66EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step66EntryGvBefore s2Step66EntryGvAfter s2Step66EntryGvRow 46 s2Step66EntryGvFresh
    s2Step66EntryGv_distinct s2Step66EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step66EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step66EntryGvRow.payload++s2Step66EntryGvFresh) s2Step66EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step66EntryBank_rows : planWindowRowsLog s2Step66EntryFBefore [(s2Step66EntryFRow,235),(s2Step66EntryGRow,235),(s2Step66EntryFvRow,46),(s2Step66EntryGvRow,46)] [s2Step66EntryFFresh,s2Step66EntryGFresh,s2Step66EntryFvFresh,s2Step66EntryGvFresh]=
    some (s2Step66EntryGvAfter,[s2Step66EntryFOut,s2Step66EntryGOut,s2Step66EntryFvOut,s2Step66EntryGvOut],(growRow 768 s2Step66EntryFFresh ++ (growRow 769 s2Step66EntryGFresh ++ (growRow 770 s2Step66EntryFvFresh ++ (growRow 771 s2Step66EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step66EntryGvAfter [] []=some (s2Step66EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step66EntryGvBefore s2Step66EntryGvAfter s2Step66EntryGvAfter
    s2Step66EntryGvRow s2Step66EntryGvOut 46 s2Step66EntryGvFresh [] [] []
    (growRow 771 s2Step66EntryGvFresh) ([]) s2Step66EntryGv_Incoming s2Step66EntryGv_checked h4 s2Step66EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step66EntryFvBefore s2Step66EntryFvAfter s2Step66EntryGvAfter
    s2Step66EntryFvRow s2Step66EntryFvOut 46 s2Step66EntryFvFresh [(s2Step66EntryGvRow,46)] [s2Step66EntryGvFresh] [s2Step66EntryGvOut]
    (growRow 770 s2Step66EntryFvFresh) ((growRow 771 s2Step66EntryGvFresh ++ [])) s2Step66EntryFv_Incoming s2Step66EntryFv_checked h3 s2Step66EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step66EntryGBefore s2Step66EntryGAfter s2Step66EntryGvAfter
    s2Step66EntryGRow s2Step66EntryGOut 235 s2Step66EntryGFresh [(s2Step66EntryFvRow,46),(s2Step66EntryGvRow,46)] [s2Step66EntryFvFresh,s2Step66EntryGvFresh] [s2Step66EntryFvOut,s2Step66EntryGvOut]
    (growRow 769 s2Step66EntryGFresh) ((growRow 770 s2Step66EntryFvFresh ++ (growRow 771 s2Step66EntryGvFresh ++ []))) s2Step66EntryG_Incoming s2Step66EntryG_checked h2 s2Step66EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step66EntryFBefore s2Step66EntryFAfter s2Step66EntryGvAfter
    s2Step66EntryFRow s2Step66EntryFOut 235 s2Step66EntryFFresh [(s2Step66EntryGRow,235),(s2Step66EntryFvRow,46),(s2Step66EntryGvRow,46)] [s2Step66EntryGFresh,s2Step66EntryFvFresh,s2Step66EntryGvFresh] [s2Step66EntryGOut,s2Step66EntryFvOut,s2Step66EntryGvOut]
    (growRow 768 s2Step66EntryFFresh) ((growRow 769 s2Step66EntryGFresh ++ (growRow 770 s2Step66EntryFvFresh ++ (growRow 771 s2Step66EntryGvFresh ++ [])))) s2Step66EntryF_Incoming s2Step66EntryF_checked h1 s2Step66EntryF_Outgoing
  exact h0

private theorem s2Step66EntryBank_checked : compileHmrBankResizeLog .entry s2Step66EntryFBefore ⟨s2Step66EntryFRow,s2Step66EntryGRow,s2Step66EntryFvRow,s2Step66EntryGvRow⟩ ⟨235,235,46,46⟩ [s2Step66EntryFFresh,s2Step66EntryGFresh,s2Step66EntryFvFresh,s2Step66EntryGvFresh]=
    some (s2Step66EntryGvAfter,⟨s2Step66EntryFOut,s2Step66EntryGOut,s2Step66EntryFvOut,s2Step66EntryGvOut⟩,(growRow 768 s2Step66EntryFFresh ++ (growRow 769 s2Step66EntryGFresh ++ (growRow 770 s2Step66EntryFvFresh ++ (growRow 771 s2Step66EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step66EntryBank_rows]
  rfl

private def s2Step66ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<746) ∨ (747≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step66ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (827≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step66ExitFBefore : Arena := s2Step66ExitGAfter

private def s2Step66ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 827],768⟩

private def s2Step66ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩

private def s2Step66ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 826],769⟩

private def s2Step66ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 844],771⟩

private theorem s2Step66ExitBank_incomingDistinct : ([s2Step66ExitGRow,s2Step66ExitFRow,s2Step66ExitFvRow,s2Step66ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66ExitF_Incoming : rowsOwned s2Step66ExitFBefore [s2Step66ExitFRow,s2Step66ExitFvRow,s2Step66ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step66ExitGRow,s2Step66ExitFRow,s2Step66ExitFvRow,s2Step66ExitGvRow] 1 s2Step66ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step66ExitFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (827≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step66ExitBank_outgoingOwned : rowsOwned s2Step66ExitGvAfter [s2Step66ExitGOut,s2Step66ExitFOut,s2Step66ExitFvOut,s2Step66ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step66ExitGvAfter (fun q => (0≤q ∧ q<746) ∨ (747≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step66ExitF_Outgoing : rowsOwned s2Step66ExitGvAfter [s2Step66ExitFOut,s2Step66ExitFvOut,s2Step66ExitGvOut] :=
  hmrRows_owned_drop s2Step66ExitGvAfter [s2Step66ExitGOut,s2Step66ExitFOut,s2Step66ExitFvOut,s2Step66ExitGvOut] 1 s2Step66ExitBank_outgoingOwned

private theorem s2Step66ExitF_distinct : (s2Step66ExitFRow.sign::s2Step66ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66ExitF_owned : (s2Step66ExitFRow.sign::s2Step66ExitFRow.payload).toFinset⊆s2Step66ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step66ExitFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (827≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66ExitF_retired : s2Step66ExitFBefore.retireSet s2Step66ExitFExtra.toFinset=s2Step66ExitFAfter := by
  unfold Arena.retireSet s2Step66ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step66ExitFBefore,s2Step66ExitGAfter,s2Step66ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step66ExitF_checked : planRowResizeLog s2Step66ExitFBefore s2Step66ExitFRow 234 []=
    some (s2Step66ExitFAfter,s2Step66ExitFOut,shrinkRow 768 s2Step66ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step66ExitFBefore s2Step66ExitFRow 234 s2Step66ExitF_distinct s2Step66ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step66ExitFRow.payload.take 234) s2Step66ExitFRow.sign=s2Step66ExitFOut := by decide +kernel
  have hi : s2Step66ExitFRow.payload.drop 234=s2Step66ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step66ExitF_retired] at result
  exact result

private def s2Step66ExitFvAfter : Arena := s2Step66ExitFAfter

private def s2Step66ExitFvBefore : Arena := s2Step66ExitFAfter

private theorem s2Step66ExitFv_Incoming : rowsOwned s2Step66ExitFvBefore [s2Step66ExitFvRow,s2Step66ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step66ExitGRow,s2Step66ExitFRow,s2Step66ExitFvRow,s2Step66ExitGvRow] 2 s2Step66ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step66ExitFvBefore (fun q => (0≤q ∧ q<746) ∨ (747≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step66ExitFv_Outgoing : rowsOwned s2Step66ExitGvAfter [s2Step66ExitFvOut,s2Step66ExitGvOut] :=
  hmrRows_owned_drop s2Step66ExitGvAfter [s2Step66ExitGOut,s2Step66ExitFOut,s2Step66ExitFvOut,s2Step66ExitGvOut] 2 s2Step66ExitBank_outgoingOwned

private theorem s2Step66ExitFv_distinct : (s2Step66ExitFvRow.sign::s2Step66ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66ExitFv_owned : (s2Step66ExitFvRow.sign::s2Step66ExitFvRow.payload).toFinset⊆s2Step66ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step66ExitFvBefore (fun q => (0≤q ∧ q<746) ∨ (747≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66ExitFv_reserved : s2Step66ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step66ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step66ExitFv_checked : planRowResizeLog s2Step66ExitFvBefore s2Step66ExitFvRow 47 []=
    some (s2Step66ExitFvAfter,s2Step66ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step66ExitFvBefore s2Step66ExitFvAfter s2Step66ExitFvRow 47 []
    s2Step66ExitFv_distinct s2Step66ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step66ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step66ExitFvRow.payload++[]) s2Step66ExitFvRow.sign=s2Step66ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step66ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private theorem s2Step66ExitG_Incoming : rowsOwned s2Step66ExitGBefore [s2Step66ExitGRow,s2Step66ExitFRow,s2Step66ExitFvRow,s2Step66ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step66ExitGRow,s2Step66ExitFRow,s2Step66ExitFvRow,s2Step66ExitGvRow] 0 s2Step66ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step66ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step66ExitG_Outgoing : rowsOwned s2Step66ExitGvAfter [s2Step66ExitGOut,s2Step66ExitFOut,s2Step66ExitFvOut,s2Step66ExitGvOut] :=
  hmrRows_owned_drop s2Step66ExitGvAfter [s2Step66ExitGOut,s2Step66ExitFOut,s2Step66ExitFvOut,s2Step66ExitGvOut] 0 s2Step66ExitBank_outgoingOwned

private theorem s2Step66ExitG_distinct : (s2Step66ExitGRow.sign::s2Step66ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66ExitG_owned : (s2Step66ExitGRow.sign::s2Step66ExitGRow.payload).toFinset⊆s2Step66ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step66ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66ExitG_retired : s2Step66ExitGBefore.retireSet s2Step66ExitGExtra.toFinset=s2Step66ExitGAfter := by
  unfold Arena.retireSet s2Step66ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step66ExitGBefore,s2Step66ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step66ExitG_checked : planRowResizeLog s2Step66ExitGBefore s2Step66ExitGRow 235 []=
    some (s2Step66ExitGAfter,s2Step66ExitGOut,shrinkRow 769 s2Step66ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step66ExitGBefore s2Step66ExitGRow 235 s2Step66ExitG_distinct s2Step66ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step66ExitGRow.payload.take 235) s2Step66ExitGRow.sign=s2Step66ExitGOut := by decide +kernel
  have hi : s2Step66ExitGRow.payload.drop 235=s2Step66ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step66ExitG_retired] at result
  exact result

private def s2Step66ExitGvBefore : Arena := s2Step66ExitFAfter

private theorem s2Step66ExitGv_Incoming : rowsOwned s2Step66ExitGvBefore [s2Step66ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step66ExitGRow,s2Step66ExitFRow,s2Step66ExitFvRow,s2Step66ExitGvRow] 3 s2Step66ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step66ExitGvBefore (fun q => (0≤q ∧ q<746) ∨ (747≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step66ExitGv_Outgoing : rowsOwned s2Step66ExitGvAfter [s2Step66ExitGvOut] :=
  hmrRows_owned_drop s2Step66ExitGvAfter [s2Step66ExitGOut,s2Step66ExitFOut,s2Step66ExitFvOut,s2Step66ExitGvOut] 3 s2Step66ExitBank_outgoingOwned

private theorem s2Step66ExitGv_distinct : (s2Step66ExitGvRow.sign::s2Step66ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66ExitGv_owned : (s2Step66ExitGvRow.sign::s2Step66ExitGvRow.payload).toFinset⊆s2Step66ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step66ExitGvBefore (fun q => (0≤q ∧ q<746) ∨ (747≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66ExitGv_retired : s2Step66ExitGvBefore.retireSet s2Step66ExitGvExtra.toFinset=s2Step66ExitGvAfter := by
  unfold Arena.retireSet s2Step66ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step66ExitGvBefore,s2Step66ExitFAfter,s2Step66ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step66ExitGv_checked : planRowResizeLog s2Step66ExitGvBefore s2Step66ExitGvRow 46 []=
    some (s2Step66ExitGvAfter,s2Step66ExitGvOut,shrinkRow 771 s2Step66ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step66ExitGvBefore s2Step66ExitGvRow 46 s2Step66ExitGv_distinct s2Step66ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step66ExitGvRow.payload.take 46) s2Step66ExitGvRow.sign=s2Step66ExitGvOut := by decide +kernel
  have hi : s2Step66ExitGvRow.payload.drop 46=s2Step66ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step66ExitGv_retired] at result
  exact result

private theorem s2Step66ExitBank_rows : planWindowRowsLog s2Step66ExitGBefore [(s2Step66ExitGRow,235),(s2Step66ExitFRow,234),(s2Step66ExitFvRow,47),(s2Step66ExitGvRow,46)] [[],[],[],[]]=
    some (s2Step66ExitGvAfter,[s2Step66ExitGOut,s2Step66ExitFOut,s2Step66ExitFvOut,s2Step66ExitGvOut],(shrinkRow 769 s2Step66ExitGExtra ++ (shrinkRow 768 s2Step66ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step66ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step66ExitGvAfter [] []=some (s2Step66ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step66ExitGvBefore s2Step66ExitGvAfter s2Step66ExitGvAfter
    s2Step66ExitGvRow s2Step66ExitGvOut 46 [] [] [] []
    (shrinkRow 771 s2Step66ExitGvExtra) ([]) s2Step66ExitGv_Incoming s2Step66ExitGv_checked h4 s2Step66ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step66ExitFvBefore s2Step66ExitFvAfter s2Step66ExitGvAfter
    s2Step66ExitFvRow s2Step66ExitFvOut 47 [] [(s2Step66ExitGvRow,46)] [[]] [s2Step66ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step66ExitGvExtra ++ [])) s2Step66ExitFv_Incoming s2Step66ExitFv_checked h3 s2Step66ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step66ExitFBefore s2Step66ExitFAfter s2Step66ExitGvAfter
    s2Step66ExitFRow s2Step66ExitFOut 234 [] [(s2Step66ExitFvRow,47),(s2Step66ExitGvRow,46)] [[],[]] [s2Step66ExitFvOut,s2Step66ExitGvOut]
    (shrinkRow 768 s2Step66ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step66ExitGvExtra ++ []))) s2Step66ExitF_Incoming s2Step66ExitF_checked h2 s2Step66ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step66ExitGBefore s2Step66ExitGAfter s2Step66ExitGvAfter
    s2Step66ExitGRow s2Step66ExitGOut 235 [] [(s2Step66ExitFRow,234),(s2Step66ExitFvRow,47),(s2Step66ExitGvRow,46)] [[],[],[]] [s2Step66ExitFOut,s2Step66ExitFvOut,s2Step66ExitGvOut]
    (shrinkRow 769 s2Step66ExitGExtra) ((shrinkRow 768 s2Step66ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step66ExitGvExtra ++ [])))) s2Step66ExitG_Incoming s2Step66ExitG_checked h1 s2Step66ExitG_Outgoing
  exact h0

private theorem s2Step66ExitBank_checked : compileHmrBankResizeLog .exit s2Step66ExitGBefore ⟨s2Step66ExitFRow,s2Step66ExitGRow,s2Step66ExitFvRow,s2Step66ExitGvRow⟩ ⟨234,235,47,46⟩ [[],[],[],[]]=
    some (s2Step66ExitGvAfter,⟨s2Step66ExitFOut,s2Step66ExitGOut,s2Step66ExitFvOut,s2Step66ExitGvOut⟩,(shrinkRow 769 s2Step66ExitGExtra ++ (shrinkRow 768 s2Step66ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step66ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step66ExitBank_rows]
  rfl

private theorem s2Step66Add0_apart : Disjoint s2Step66Add0Arena.live s2Step66Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step66Add0Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66Add0_card : s2Step66Add0Arena.live.card=865 := by
  decide +kernel

private theorem s2Step66Add0_borrowed : s2Step66Add0Arena.checkBorrow (hmrHybridCount s2Step66Add0Arena s2Step66Add0B.length) s2Step66Add0Work=some s2Step66Add0During := by
  have len : s2Step66Add0Work.length=hmrHybridCount s2Step66Add0Arena s2Step66Add0B.length := by
    rw [hmrHybridCount,s2Step66Add0_card]
    decide +kernel
  have nd : s2Step66Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step66Add0Arena s2Step66Add0During s2Step66Add0Work.toFinset s2Step66Add0_bounded s2Step66Add0_apart rfl

private theorem s2Step66Add0_distinct : (814::822::825::(s2Step66Add0A++s2Step66Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66Add0_owned : (814::822::825::(s2Step66Add0A++s2Step66Add0B)).toFinset⊆s2Step66Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step66Add0Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66Add0_checked : compileHmrHybridCinLog s2Step66Add0Arena 822 814 825 s2Step66Add0A s2Step66Add0B s2Step66Add0Work=some s2Step66Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step66Add0Arena s2Step66Add0During 822 814 825 s2Step66Add0A s2Step66Add0B s2Step66Add0Work
    (by decide +kernel) (by decide +kernel) s2Step66Add0_distinct
    (fun q hq => s2Step66Add0_owned (List.mem_toFinset.mpr hq)) s2Step66Add0_borrowed

private theorem s2Step66Add1_apart : Disjoint s2Step66Add1Arena.live s2Step66Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step66Add1Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66Add1_card : s2Step66Add1Arena.live.card=865 := by
  decide +kernel

private theorem s2Step66Add1_borrowed : s2Step66Add1Arena.checkBorrow (hmrHybridCount s2Step66Add1Arena s2Step66Add1B.length) s2Step66Add1Work=some s2Step66Add1During := by
  have len : s2Step66Add1Work.length=hmrHybridCount s2Step66Add1Arena s2Step66Add1B.length := by
    rw [hmrHybridCount,s2Step66Add1_card]
    decide +kernel
  have nd : s2Step66Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step66Add1Arena s2Step66Add1During s2Step66Add1Work.toFinset s2Step66Add1_bounded s2Step66Add1_apart rfl

private theorem s2Step66Add1_distinct : (814::822::825::(s2Step66Add1A++s2Step66Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66Add1_owned : (814::822::825::(s2Step66Add1A++s2Step66Add1B)).toFinset⊆s2Step66Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step66Add1Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66Add1_checked : compileHmrHybridCinLog s2Step66Add1Arena 822 814 825 s2Step66Add1A s2Step66Add1B s2Step66Add1Work=some s2Step66Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step66Add1Arena s2Step66Add1During 822 814 825 s2Step66Add1A s2Step66Add1B s2Step66Add1Work
    (by decide +kernel) (by decide +kernel) s2Step66Add1_distinct
    (fun q hq => s2Step66Add1_owned (List.mem_toFinset.mpr hq)) s2Step66Add1_borrowed

private theorem s2Step66F4_apart : Disjoint (s2Step66Add0A++s2Step66Add0B).toFinset (s2Step66Add1A++s2Step66Add1B).toFinset := by
  have nd : ((s2Step66Add0A++s2Step66Add0B)++(s2Step66Add1A++s2Step66Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step66F4_carry : s2Step66F4FlagArena.checkBorrow 1 [825]=some s2Step66Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step66F4FlagArena,s2Step66HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step66F4FlagArena,s2Step66HeadFvAfter,s2Step66Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step66F4_distinct : (824::822::814::825::((s2Step66Add0A++s2Step66Add1A)++(s2Step66Add0B++s2Step66Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66F4_flag : s2Step66HeadFvAfter.checkBorrow 1 [814]=some s2Step66F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step66HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step66F4_owned : (824::822::((s2Step66Add0A++s2Step66Add1A)++(s2Step66Add0B++s2Step66Add1B))).toFinset⊆s2Step66HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step66HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66F4_checked : compileHmrHybridF4Log s2Step66HeadFvAfter 824 822 s2Step66Add0A s2Step66Add0B s2Step66Add1A s2Step66Add1B [814] [825] s2Step66Add0Work s2Step66Add1Work=some s2Step66F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step66HeadFvAfter s2Step66F4FlagArena s2Step66Add0Arena s2Step66Add0During s2Step66Add1During 824 822
    s2Step66Add0A s2Step66Add0B s2Step66Add1A s2Step66Add1B [814] [825] s2Step66Add0Work s2Step66Add1Work
    (fun q hq => s2Step66F4_owned (List.mem_toFinset.mpr hq)) s2Step66F4_flag s2Step66F4_carry
    s2Step66F4_distinct s2Step66F4_apart s2Step66Add0_checked s2Step66Add1_checked

private theorem s2Step66Front_branch : s2Step66FrontSigmaArena.checkBorrow 1 [822]=some s2Step66HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step66FrontSigmaArena,s2Step66EntryGvAfter,s2Step66EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step66FrontSigmaArena,s2Step66EntryGvAfter,s2Step66EntryFBefore,s2Step66HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step66Front_entry : HmrFrontEntryValid s2Step66EntryFBefore s2Step66FrontBank 235 46 ⟨234,235,47,46⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step66FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step66EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step66EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step66FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step66Front_sigma : s2Step66EntryGvAfter.checkBorrow 1 [824]=some s2Step66FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step66EntryGvAfter,s2Step66EntryFBefore,arenaWires]
  · rfl

private def s2Step66HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step66HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step66HeadFBefore : Arena := s2Step66HeadGAfter

private def s2Step66HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746],768⟩

private def s2Step66HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817],770⟩

private def s2Step66HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],769⟩

private def s2Step66HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩

private theorem s2Step66HeadBank_incomingDistinct : ([s2Step66HeadGRow,s2Step66HeadFRow,s2Step66HeadGvRow,s2Step66HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66HeadF_Incoming : rowsOwned s2Step66HeadFBefore [s2Step66HeadFRow,s2Step66HeadGvRow,s2Step66HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step66HeadGRow,s2Step66HeadFRow,s2Step66HeadGvRow,s2Step66HeadFvRow] 1 s2Step66HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step66HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step66HeadBank_outgoingOwned : rowsOwned s2Step66HeadFvAfter [s2Step66HeadGOut,s2Step66HeadFOut,s2Step66HeadGvOut,s2Step66HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step66HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step66HeadF_Outgoing : rowsOwned s2Step66HeadFvAfter [s2Step66HeadFOut,s2Step66HeadGvOut,s2Step66HeadFvOut] :=
  hmrRows_owned_drop s2Step66HeadFvAfter [s2Step66HeadGOut,s2Step66HeadFOut,s2Step66HeadGvOut,s2Step66HeadFvOut] 1 s2Step66HeadBank_outgoingOwned

private theorem s2Step66HeadF_distinct : (s2Step66HeadFRow.sign::s2Step66HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66HeadF_owned : (s2Step66HeadFRow.sign::s2Step66HeadFRow.payload).toFinset⊆s2Step66HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step66HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66HeadF_reserved : s2Step66HeadFBefore.reserve s2Step66HeadFFresh.toFinset=some s2Step66HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step66HeadFFresh,arenaWires]
  · norm_num [s2Step66HeadFBefore,s2Step66HeadGAfter,s2Step66HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step66HeadFAfter,s2Step66HeadFBefore,s2Step66HeadGAfter,s2Step66HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step66HeadF_checked : planRowResizeLog s2Step66HeadFBefore s2Step66HeadFRow 236 s2Step66HeadFFresh=
    some (s2Step66HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 827],768⟩,growRow 768 s2Step66HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step66HeadFBefore s2Step66HeadFAfter s2Step66HeadFRow 236 s2Step66HeadFFresh
    s2Step66HeadF_distinct s2Step66HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step66HeadF_reserved
  have rowEq : WindowRow.mk (s2Step66HeadFRow.payload++s2Step66HeadFFresh) s2Step66HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 827],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step66HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step66HeadFvBefore : Arena := s2Step66HeadGvAfter

private theorem s2Step66HeadFv_Incoming : rowsOwned s2Step66HeadFvBefore [s2Step66HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step66HeadGRow,s2Step66HeadFRow,s2Step66HeadGvRow,s2Step66HeadFvRow] 3 s2Step66HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step66HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step66HeadFv_Outgoing : rowsOwned s2Step66HeadFvAfter [s2Step66HeadFvOut] :=
  hmrRows_owned_drop s2Step66HeadFvAfter [s2Step66HeadGOut,s2Step66HeadFOut,s2Step66HeadGvOut,s2Step66HeadFvOut] 3 s2Step66HeadBank_outgoingOwned

private theorem s2Step66HeadFv_distinct : (s2Step66HeadFvRow.sign::s2Step66HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66HeadFv_owned : (s2Step66HeadFvRow.sign::s2Step66HeadFvRow.payload).toFinset⊆s2Step66HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step66HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66HeadFv_reserved : s2Step66HeadFvBefore.reserve s2Step66HeadFvFresh.toFinset=some s2Step66HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step66HeadFvFresh,arenaWires]
  · norm_num [s2Step66HeadFvBefore,s2Step66HeadGvAfter,s2Step66HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step66HeadFvAfter,s2Step66HeadFvBefore,s2Step66HeadGvAfter,s2Step66HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step66HeadFv_checked : planRowResizeLog s2Step66HeadFvBefore s2Step66HeadFvRow 47 s2Step66HeadFvFresh=
    some (s2Step66HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩,growRow 770 s2Step66HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step66HeadFvBefore s2Step66HeadFvAfter s2Step66HeadFvRow 47 s2Step66HeadFvFresh
    s2Step66HeadFv_distinct s2Step66HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step66HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step66HeadFvRow.payload++s2Step66HeadFvFresh) s2Step66HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step66HeadG_Incoming : rowsOwned s2Step66HeadGBefore [s2Step66HeadGRow,s2Step66HeadFRow,s2Step66HeadGvRow,s2Step66HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step66HeadGRow,s2Step66HeadFRow,s2Step66HeadGvRow,s2Step66HeadFvRow] 0 s2Step66HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step66HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step66HeadG_Outgoing : rowsOwned s2Step66HeadFvAfter [s2Step66HeadGOut,s2Step66HeadFOut,s2Step66HeadGvOut,s2Step66HeadFvOut] :=
  hmrRows_owned_drop s2Step66HeadFvAfter [s2Step66HeadGOut,s2Step66HeadFOut,s2Step66HeadGvOut,s2Step66HeadFvOut] 0 s2Step66HeadBank_outgoingOwned

private theorem s2Step66HeadG_distinct : (s2Step66HeadGRow.sign::s2Step66HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66HeadG_owned : (s2Step66HeadGRow.sign::s2Step66HeadGRow.payload).toFinset⊆s2Step66HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step66HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66HeadG_reserved : s2Step66HeadGBefore.reserve s2Step66HeadGFresh.toFinset=some s2Step66HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step66HeadGFresh,arenaWires]
  · norm_num [s2Step66HeadGBefore,s2Step66HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step66HeadGAfter,s2Step66HeadGBefore,s2Step66HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step66HeadG_checked : planRowResizeLog s2Step66HeadGBefore s2Step66HeadGRow 236 s2Step66HeadGFresh=
    some (s2Step66HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 826],769⟩,growRow 769 s2Step66HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step66HeadGBefore s2Step66HeadGAfter s2Step66HeadGRow 236 s2Step66HeadGFresh
    s2Step66HeadG_distinct s2Step66HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step66HeadG_reserved
  have rowEq : WindowRow.mk (s2Step66HeadGRow.payload++s2Step66HeadGFresh) s2Step66HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 826],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step66HeadGvBefore : Arena := s2Step66HeadFAfter

private theorem s2Step66HeadGv_Incoming : rowsOwned s2Step66HeadGvBefore [s2Step66HeadGvRow,s2Step66HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step66HeadGRow,s2Step66HeadFRow,s2Step66HeadGvRow,s2Step66HeadFvRow] 2 s2Step66HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step66HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step66HeadGv_Outgoing : rowsOwned s2Step66HeadFvAfter [s2Step66HeadGvOut,s2Step66HeadFvOut] :=
  hmrRows_owned_drop s2Step66HeadFvAfter [s2Step66HeadGOut,s2Step66HeadFOut,s2Step66HeadGvOut,s2Step66HeadFvOut] 2 s2Step66HeadBank_outgoingOwned

private theorem s2Step66HeadGv_distinct : (s2Step66HeadGvRow.sign::s2Step66HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step66HeadGv_owned : (s2Step66HeadGvRow.sign::s2Step66HeadGvRow.payload).toFinset⊆s2Step66HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step66HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step66HeadGv_reserved : s2Step66HeadGvBefore.reserve s2Step66HeadGvFresh.toFinset=some s2Step66HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step66HeadGvFresh,arenaWires]
  · norm_num [s2Step66HeadGvBefore,s2Step66HeadFAfter,s2Step66HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step66HeadGvAfter,s2Step66HeadGvBefore,s2Step66HeadFAfter,s2Step66HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step66HeadGv_checked : planRowResizeLog s2Step66HeadGvBefore s2Step66HeadGvRow 47 s2Step66HeadGvFresh=
    some (s2Step66HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 844],771⟩,growRow 771 s2Step66HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step66HeadGvBefore s2Step66HeadGvAfter s2Step66HeadGvRow 47 s2Step66HeadGvFresh
    s2Step66HeadGv_distinct s2Step66HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step66HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step66HeadGvRow.payload++s2Step66HeadGvFresh) s2Step66HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 844],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step66HeadBank_rows : planWindowRowsLog s2Step66HeadGBefore [(s2Step66HeadGRow,236),(s2Step66HeadFRow,236),(s2Step66HeadGvRow,47),(s2Step66HeadFvRow,47)] [s2Step66HeadGFresh,s2Step66HeadFFresh,s2Step66HeadGvFresh,s2Step66HeadFvFresh]=
    some (s2Step66HeadFvAfter,[s2Step66HeadGOut,s2Step66HeadFOut,s2Step66HeadGvOut,s2Step66HeadFvOut],(growRow 769 s2Step66HeadGFresh ++ (growRow 768 s2Step66HeadFFresh ++ (growRow 771 s2Step66HeadGvFresh ++ (growRow 770 s2Step66HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step66HeadFvAfter [] []=some (s2Step66HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step66HeadFvBefore s2Step66HeadFvAfter s2Step66HeadFvAfter
    s2Step66HeadFvRow s2Step66HeadFvOut 47 s2Step66HeadFvFresh [] [] []
    (growRow 770 s2Step66HeadFvFresh) ([]) s2Step66HeadFv_Incoming s2Step66HeadFv_checked h4 s2Step66HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step66HeadGvBefore s2Step66HeadGvAfter s2Step66HeadFvAfter
    s2Step66HeadGvRow s2Step66HeadGvOut 47 s2Step66HeadGvFresh [(s2Step66HeadFvRow,47)] [s2Step66HeadFvFresh] [s2Step66HeadFvOut]
    (growRow 771 s2Step66HeadGvFresh) ((growRow 770 s2Step66HeadFvFresh ++ [])) s2Step66HeadGv_Incoming s2Step66HeadGv_checked h3 s2Step66HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step66HeadFBefore s2Step66HeadFAfter s2Step66HeadFvAfter
    s2Step66HeadFRow s2Step66HeadFOut 236 s2Step66HeadFFresh [(s2Step66HeadGvRow,47),(s2Step66HeadFvRow,47)] [s2Step66HeadGvFresh,s2Step66HeadFvFresh] [s2Step66HeadGvOut,s2Step66HeadFvOut]
    (growRow 768 s2Step66HeadFFresh) ((growRow 771 s2Step66HeadGvFresh ++ (growRow 770 s2Step66HeadFvFresh ++ []))) s2Step66HeadF_Incoming s2Step66HeadF_checked h2 s2Step66HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step66HeadGBefore s2Step66HeadGAfter s2Step66HeadFvAfter
    s2Step66HeadGRow s2Step66HeadGOut 236 s2Step66HeadGFresh [(s2Step66HeadFRow,236),(s2Step66HeadGvRow,47),(s2Step66HeadFvRow,47)] [s2Step66HeadFFresh,s2Step66HeadGvFresh,s2Step66HeadFvFresh] [s2Step66HeadFOut,s2Step66HeadGvOut,s2Step66HeadFvOut]
    (growRow 769 s2Step66HeadGFresh) ((growRow 768 s2Step66HeadFFresh ++ (growRow 771 s2Step66HeadGvFresh ++ (growRow 770 s2Step66HeadFvFresh ++ [])))) s2Step66HeadG_Incoming s2Step66HeadG_checked h1 s2Step66HeadG_Outgoing
  exact h0

private theorem s2Step66HeadBank_checked : compileHmrBankResizeLog .headroom s2Step66HeadGBefore ⟨s2Step66HeadFRow,s2Step66HeadGRow,s2Step66HeadFvRow,s2Step66HeadGvRow⟩ ⟨236,236,47,47⟩ [s2Step66HeadGFresh,s2Step66HeadFFresh,s2Step66HeadGvFresh,s2Step66HeadFvFresh]=
    some (s2Step66HeadFvAfter,⟨s2Step66HeadFOut,s2Step66HeadGOut,s2Step66HeadFvOut,s2Step66HeadGvOut⟩,(growRow 769 s2Step66HeadGFresh ++ (growRow 768 s2Step66HeadFFresh ++ (growRow 771 s2Step66HeadGvFresh ++ (growRow 770 s2Step66HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step66HeadBank_rows]
  rfl

private theorem s2Step66Front_checked : compileHmrSourceFrontLog s2Step66EntryFBefore s2Step66FrontBank 235 46 ⟨234,235,47,46⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step66FrontLog=some s2Step66FrontPlan := by
  have pairEq : s2Step66FrontPair=⟨s2Step66HeadFRow,s2Step66HeadGRow,s2Step66HeadFvRow,s2Step66HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step66FrontHead=⟨s2Step66ExitFRow,s2Step66ExitGRow,s2Step66ExitFvRow,s2Step66ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step66Add0A=s2Step66FrontHead.f.wires := by decide +kernel
  have gEq : s2Step66Add0B=s2Step66FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step66Add1A=s2Step66FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step66Add1B=s2Step66FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step66EntryFBefore s2Step66FrontBank 235 46 ⟨234,235,47,46⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step66FrontLog s2Step66FrontPlan
  · exact s2Step66Front_entry
  · exact s2Step66EntryBank_checked
  · exact s2Step66Front_sigma
  · rfl
  · exact s2Step66Front_branch
  · rfl
  · simpa only [s2Step66FrontPlan,pairEq] using s2Step66HeadBank_checked
  · simpa only [s2Step66FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step66F4_checked
  · exact s2Step66Counter_checked
  · rfl
  · simpa only [s2Step66FrontPlan,headEq] using s2Step66ExitBank_checked

private theorem s2Step66Complete_explicit_checked : compileHmrEarlyStepLog s2Step66EntryFBefore s2Step66FrontBank 235 46 ⟨234,235,47,46⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868] 30 s2Step66CompleteLog=some s2Step66CompletePlan := by
  let Q := s2Step66EarlyControlPlan
  have hq := s2Step66EarlyControl_plan_checked
  have fv1 : s2Step66CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step66CompleteOut.fv.payload[2]?.getD s2Step66CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step66CompleteOut.fv.payload[3]?.getD s2Step66CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step66CompleteOut.fv.payload[4]?.getD s2Step66CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step66EntryFBefore s2Step66EarlyControlArena s2Step66FrontBank 235 46 ⟨234,235,47,46⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868] 30 s2Step66CompleteLog s2Step66FrontPlan Q
    s2Step66Front_checked s2Step66Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step66Complete_owned s2Step66Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step66EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868] 777 824 s2Step66CompleteOut.fv.second (s2Step66CompleteOut.fv.payload[2]?.getD s2Step66CompleteOut.fv.sign) (s2Step66CompleteOut.fv.payload[3]?.getD s2Step66CompleteOut.fv.sign) (s2Step66CompleteOut.fv.payload[4]?.getD s2Step66CompleteOut.fv.sign) 822 30 s2Step66EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep66Arena : Arena := s2Step66EntryFBefore
def s2PrivateStep66Bank : WindowBank := s2Step66FrontBank
def s2PrivateStep66Spec : HmrSourceWalkStepLog := ⟨235,46,⟨234,235,47,46⟩,30,.early s2Step66CompleteLog⟩
def s2PrivateStep66Plan : HmrSourceStepPlan := .early s2Step66CompletePlan
theorem s2PrivateStep66_source : s2PrivateStep66Spec=s2ObservedLogs64[2] := rfl
theorem s2PrivateStep66_checked : compileHmrSourceStepLog s2PrivateStep66Arena s2PrivateStep66Bank
    s2PrivateStep66Spec.fgWidth s2PrivateStep66Spec.vWidth s2PrivateStep66Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868]
    6 498 66 s2PrivateStep66Spec.need none s2PrivateStep66Spec.log=some s2PrivateStep66Plan := by
  change compileHmrSourceStepLog s2Step66EntryFBefore s2Step66FrontBank 235 46 ⟨234,235,47,46⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868] 6 498 66 30 none (.early s2Step66CompleteLog)=some (.early s2Step66CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 66<498)]
  rw [s2Step66Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
