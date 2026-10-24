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

private def s2Step64CompleteMoves : List (Wire × Wire) := [(825,236),(824,748)]

private def s2Step64EarlyControlLog : HmrEarlyControlLog := ⟨[824, 825, 814, 844, 790],[816],[845],[846, 847, 849, 851, 867, 868],[870]⟩

private def s2Step64FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [821, 819]],[[845], [816], [814], [790]],[[], [], [], []]⟩,[822],[817],[846],[847],[849, 851, 867, 868, 870, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[849, 851, 867, 868, 870, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913],[846, 847, 849, 851]⟩

private def s2Step64CompleteLog : HmrEarlyStepLog := ⟨s2Step64FrontLog,s2Step64CompleteMoves,s2Step64EarlyControlLog⟩

private def s2Step64ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747],768⟩

private def s2Step64ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820],770⟩

private def s2Step64ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235],769⟩

private def s2Step64ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩

private def s2Step64FrontOut : WindowBank := ⟨s2Step64ExitFOut,s2Step64ExitGOut,s2Step64ExitFvOut,s2Step64ExitGvOut⟩

private def s2Step64CompleteOut : WindowBank := s2Step64FrontOut.repacked s2Step64CompleteMoves

private def s2Step64EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step64EarlyControlPositiveArena,[816],s2Step64EarlyControlEqualityArena,[845],⟨⟨822,false⟩,[⟨⟨816,false⟩,845⟩]⟩⟩

private def s2Step64EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,824⟩,⟨⟨774,false⟩,825⟩,⟨⟨775,false⟩,814⟩,⟨⟨776,false⟩,844⟩,⟨⟨777,false⟩,790⟩]⟩

private def s2Step64EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step64EarlyControlZeroArena,s2Step64EarlyControlZeroPlan,s2Step64EarlyControlClassPlan,s2Step64EarlyControlFlagArena,s2Step64EarlyControlFittedArena,s2Step64EarlyControlHistoryArena,s2Step64EarlyControlSigmaArena,s2Step64EarlyControlOutputArena,s2Step64EarlyControlLog⟩

private def s2Step64CounterWork : List Wire := [846, 847, 849, 851]

private theorem s2Step64Counter_bounded : s2Step64CounterWork.toFinset⊆arenaWires := by norm_num [s2Step64CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step64HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64CounterDuring : Arena := ⟨s2Step64HeadFvAfter.live∪s2Step64CounterWork.toFinset,Finset.union_subset s2Step64HeadFvAfter.bounded s2Step64Counter_bounded⟩

private def s2Step64EntryFFresh : List Wire := []

private def s2Step64EntryFvFresh : List Wire := []

private def s2Step64EntryGFresh : List Wire := []

private def s2Step64EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64EntryGvFresh : List Wire := [821, 819]

private def s2Step64ExitFExtra : List Wire := [748, 816]

private def s2Step64ExitFvExtra : List Wire := [844, 790]

private def s2Step64ExitGExtra : List Wire := [236, 845]

private def s2Step64ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<236) ∨ (237≤q ∧ q<748) ∨ (749≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64ExitGvExtra : List Wire := [814]

private def s2Step64Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64Add0Work : List Wire := [849, 851, 867, 868, 870, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step64Add0_bounded : s2Step64Add0Work.toFinset⊆arenaWires := by
  have h : s2Step64Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step64Add0During : Arena := ⟨s2Step64Add0Arena.live∪s2Step64Add0Work.toFinset,Finset.union_subset s2Step64Add0Arena.bounded s2Step64Add0_bounded⟩

private def s2Step64Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64Add1Work : List Wire := [849, 851, 867, 868, 870, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913]

private theorem s2Step64Add1_bounded : s2Step64Add1Work.toFinset⊆arenaWires := by
  have h : s2Step64Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step64Add1During : Arena := ⟨s2Step64Add1Arena.live∪s2Step64Add1Work.toFinset,Finset.union_subset s2Step64Add1Arena.bounded s2Step64Add1_bounded⟩

private def s2Step64F4FlagArena : Arena := ⟨s2Step64HeadFvAfter.live∪{846},Finset.union_subset s2Step64HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step64F4Plan : HmrHybridF4Plan := ⟨s2Step64F4FlagArena,[846],s2Step64Add0Arena,[847],s2Step64Add0During,s2Step64Add0Work,s2Step64Add1During,s2Step64Add1Work⟩

private def s2Step64HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 816],768⟩

private def s2Step64HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 844, 790],770⟩

private def s2Step64HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 845],769⟩

private def s2Step64HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 814],771⟩

private def s2Step64FrontHead : WindowBank := ⟨s2Step64HeadFOut,s2Step64HeadGOut,s2Step64HeadFvOut,s2Step64HeadGvOut⟩

private def s2Step64EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748],768⟩

private def s2Step64EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 844],770⟩

private def s2Step64EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],769⟩

private def s2Step64EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩

private def s2Step64FrontPair : WindowBank := ⟨s2Step64EntryFOut,s2Step64EntryGOut,s2Step64EntryFvOut,s2Step64EntryGvOut⟩

private def s2Step64FrontSigmaArena : Arena := ⟨s2Step64EntryGvAfter.live∪{822},Finset.union_subset s2Step64EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step64HeadFFresh : List Wire := [816]

private def s2Step64HeadFvFresh : List Wire := [790]

private def s2Step64HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64HeadGFresh : List Wire := [845]

private def s2Step64HeadGvFresh : List Wire := [814]

private def s2Step64FrontPlan : HmrSourceFront := ⟨s2Step64EntryGvAfter,s2Step64FrontPair,(growRow 768 s2Step64EntryFFresh ++ (growRow 769 s2Step64EntryGFresh ++ (growRow 770 s2Step64EntryFvFresh ++ (growRow 771 s2Step64EntryGvFresh ++ [])))),s2Step64FrontSigmaArena,[822],s2Step64HeadGBefore,[817],
  s2Step64HeadFvAfter,s2Step64FrontHead,(growRow 769 s2Step64HeadGFresh ++ (growRow 768 s2Step64HeadFFresh ++ (growRow 771 s2Step64HeadGvFresh ++ (growRow 770 s2Step64HeadFvFresh ++ [])))),s2Step64F4Plan,s2Step64CounterDuring,s2Step64CounterWork,s2Step64ExitGvAfter,s2Step64FrontOut,(shrinkRow 769 s2Step64ExitGExtra ++ (shrinkRow 768 s2Step64ExitFExtra ++ (shrinkRow 770 s2Step64ExitFvExtra ++ (shrinkRow 771 s2Step64ExitGvExtra ++ []))))⟩

private def s2Step64CompletePlan : HmrEarlyStepPlan := ⟨s2Step64FrontPlan,s2Step64EarlyControlArena,s2Step64EarlyControlPlan,s2Step64CompleteMoves⟩

private theorem s2Step64Complete_apart : List.Disjoint (s2Step64CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [822, 817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871] := by
  have nd : ((s2Step64CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[822, 817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step64Complete_owned : (s2Step64CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step64EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step64EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private def s2Step64CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,748),(749,790),(791,814),(815,816),(817,825),(826,844),(848,849),(850,851),(852,867),(869,870),(871,872)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step64CompleteRelocationMove0Borrowed : Arena := ⟨s2Step64ExitGvAfter.live∪{236},Finset.union_subset s2Step64ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step64CompleteRelocationMove1Borrowed : Arena := ⟨s2Step64CompleteRelocationMove0After.live∪{748},Finset.union_subset s2Step64CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step64CompleteRelocation_move0_owned : 825∈s2Step64ExitGvAfter.live := by norm_num [s2Step64ExitGvAfter,arenaWires]

private theorem s2Step64CompleteRelocation_move0_reserve : s2Step64ExitGvAfter.reserve {236}=some s2Step64CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step64ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step64CompleteRelocation_move0_retire : s2Step64CompleteRelocationMove0Borrowed.retireSet {825}=s2Step64CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step64CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step64CompleteRelocationMove0Borrowed,s2Step64ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step64CompleteRelocation_move1_owned : 824∈s2Step64CompleteRelocationMove0After.live := by norm_num [s2Step64CompleteRelocationMove0After,arenaWires]

private theorem s2Step64CompleteRelocation_move1_reserve : s2Step64CompleteRelocationMove0After.reserve {748}=some s2Step64CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step64CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step64CompleteRelocation_move1_retire : s2Step64CompleteRelocationMove1Borrowed.retireSet {824}=s2Step64EarlyControlArena := by
  unfold Arena.retireSet s2Step64EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step64CompleteRelocationMove1Borrowed,s2Step64CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step64CompleteRelocation_checked : s2Step64ExitGvAfter.checkRepack [(825,236),(824,748)]=some s2Step64EarlyControlArena := by
  have tail2 : s2Step64EarlyControlArena.checkRepack []=some s2Step64EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step64CompleteRelocationMove0After s2Step64CompleteRelocationMove1Borrowed s2Step64EarlyControlArena s2Step64EarlyControlArena 824 748 []
    s2Step64CompleteRelocation_move1_owned s2Step64CompleteRelocation_move1_reserve s2Step64CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step64ExitGvAfter s2Step64CompleteRelocationMove0Borrowed s2Step64CompleteRelocationMove0After s2Step64EarlyControlArena 825 236 [(824,748)]
    s2Step64CompleteRelocation_move0_owned s2Step64CompleteRelocation_move0_reserve s2Step64CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step64Complete_repack : s2Step64ExitGvAfter.checkRepack s2Step64CompleteMoves=some s2Step64EarlyControlArena := by
  simpa only [s2Step64CompleteMoves] using s2Step64CompleteRelocation_checked

private theorem s2Step64EarlyControl_branchOwned : ([817] : List Wire).toFinset⊆s2Step64EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step64EarlyControlSigmaArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64EarlyControl_branch : compileHmrBranchRetirement s2Step64EarlyControlSigmaArena 817=some s2Step64EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step64EarlyControl_branchOwned
  · ext q
    simp [s2Step64EarlyControlOutputArena,s2Step64EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step64EarlyControl_classEqualityBorrow : s2Step64EarlyControlPositiveArena.checkBorrow (([822, 816] : List Wire).length-1) s2Step64EarlyControlLog.classWork=some s2Step64EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step64EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step64EarlyControlPositiveArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step64EarlyControlEqualityArena,s2Step64EarlyControlPositiveArena,s2Step64EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step64EarlyControl_classEqualityOwned : ([822, 816] : List Wire).toFinset⊆s2Step64EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step64EarlyControlPositiveArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64EarlyControl_classEquality : compileHmrEqualityLog s2Step64EarlyControlPositiveArena [822, 816] 0 s2Step64EarlyControlLog.classWork=some (s2Step64EarlyControlEqualityArena,s2Step64EarlyControlLog.classWork,s2Step64EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step64EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step64EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step64EarlyControl_classOwned : ([777, 790, 822] : List Wire).toFinset⊆s2Step64EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step64EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64EarlyControl_positiveBorrow : s2Step64EarlyControlZeroArena.checkBorrow (1) s2Step64EarlyControlLog.positiveWork=some s2Step64EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step64EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step64EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step64EarlyControlPositiveArena,s2Step64EarlyControlZeroArena,s2Step64EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step64EarlyControl_class : compileHmrSourceClassLog s2Step64EarlyControlZeroArena false 777 s2Step64EarlyControlZeroPlan.top 0 822 s2Step64EarlyControlLog.positiveWork s2Step64EarlyControlLog.classWork=some s2Step64EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step64EarlyControlClassPlan s2Step64EarlyControlZeroArena false 777 s2Step64EarlyControlZeroPlan.top 0 822
  constructor
  · decide +kernel
  · exact s2Step64EarlyControl_classOwned
  · exact s2Step64EarlyControl_positiveBorrow
  · exact s2Step64EarlyControl_classEquality

private theorem s2Step64EarlyControl_entryRecordOwned : ([817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871] : List Wire).toFinset⊆s2Step64EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step64EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64EarlyControl_entrySigmaOwned : ([822, 254] : List Wire).toFinset⊆s2Step64EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step64EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64EarlyControl_fitBorrow : s2Step64EarlyControlFlagArena.checkBorrow ((28-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871] : List Wire).length)) s2Step64EarlyControlLog.recordFresh=some s2Step64EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step64EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step64EarlyControlFlagArena (fun q => (0≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step64EarlyControlFittedArena,s2Step64EarlyControlFlagArena,s2Step64EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step64EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871] : List Wire).toFinset⊆s2Step64EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step64EarlyControlFlagArena (fun q => (0≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64EarlyControl_fit : compileHmrRecordGrowLog s2Step64EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871] 28 s2Step64EarlyControlLog.recordFresh=some s2Step64EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step64EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step64EarlyControl_fitBorrow

private theorem s2Step64EarlyControl_flagsBorrow : s2Step64EarlyControlEqualityArena.checkBorrow (6) s2Step64EarlyControlLog.flagWork=some s2Step64EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step64EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step64EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step64EarlyControlFlagArena,s2Step64EarlyControlEqualityArena,s2Step64EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step64EarlyControl_flagsOwned : ([845, 253, 252, 251] : List Wire).toFinset⊆s2Step64EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step64EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64EarlyControl_flags : compileHmrFlagsLog s2Step64EarlyControlClassPlan.equalityArena s2Step64EarlyControlClassPlan.equality.top 253 252 251 s2Step64EarlyControlLog.flagWork=some s2Step64EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step64EarlyControl_flagsOwned⟩
  · exact s2Step64EarlyControl_flagsBorrow

private theorem s2Step64EarlyControl_historyBorrow : s2Step64EarlyControlArena.checkBorrow ((28-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871] : List Wire).length)) s2Step64EarlyControlLog.recordFresh=some s2Step64EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step64EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step64EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step64EarlyControlHistoryArena,s2Step64EarlyControlArena,s2Step64EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step64EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871] : List Wire).toFinset⊆s2Step64EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step64EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64EarlyControl_history : compileHmrRecordGrowLog s2Step64EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871] 28 s2Step64EarlyControlLog.recordFresh=some s2Step64EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step64EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step64EarlyControl_historyBorrow

private theorem s2Step64EarlyControl_sigmaOwned : ([254, 822] : List Wire).toFinset⊆s2Step64EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step64EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64EarlyControl_sigmaReleaseOwned : ([822] : List Wire).toFinset⊆s2Step64EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step64EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64EarlyControl_sigmaRelease : s2Step64EarlyControlHistoryArena.release {822} (fun _ => false)=some s2Step64EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step64EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step64EarlyControlSigmaArena,s2Step64EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step64EarlyControl_sigma : compileHmrSigmaDropLog s2Step64EarlyControlHistoryArena false 0 0 254 822 []=some s2Step64EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step64EarlyControl_sigmaOwned⟩
  · exact s2Step64EarlyControl_sigmaRelease

private theorem s2Step64EarlyControl_zeroBorrow : s2Step64EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step64EarlyControlLog.zeroWork=some s2Step64EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step64EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step64EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step64EarlyControlZeroArena,s2Step64EarlyControlArena,s2Step64EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step64EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step64EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step64EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64EarlyControl_zero : compileHmrEqualityLog s2Step64EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step64EarlyControlLog.zeroWork=some (s2Step64EarlyControlZeroArena,s2Step64EarlyControlLog.zeroWork,s2Step64EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step64EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step64EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step64EarlyControl_logged : s2Step64EarlyControlPlan.Logged s2Step64EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871] 777 822 254 253 252 251 817 28 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step64EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step64EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step64EarlyControl_zero
  · exact s2Step64EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step64EarlyControl_flags
  · exact s2Step64EarlyControl_fit
  · exact s2Step64EarlyControl_history
  · exact s2Step64EarlyControl_sigma
  · exact s2Step64EarlyControl_branch

private theorem s2Step64EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step64EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871] 777 822 254 253 252 251 817 28 s2Step64EarlyControlLog=some s2Step64EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step64EarlyControlPlan s2Step64EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871] 777 822 254 253 252 251 817 28 s2Step64EarlyControl_logged

private def s2Step64EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748],768⟩

private def s2Step64EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 844],770⟩

private def s2Step64EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],769⟩

private def s2Step64EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807],771⟩

private def s2Step64FrontBank : WindowBank := ⟨s2Step64EntryFRow,s2Step64EntryGRow,s2Step64EntryFvRow,s2Step64EntryGvRow⟩

private def s2Step64Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 816, 768]

private def s2Step64Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 845, 769]

private def s2Step64Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 844, 790, 770]

private def s2Step64Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 814, 771]

private theorem s2Step64Counter_apart : Disjoint s2Step64HeadFvAfter.live s2Step64CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step64HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64Counter_borrowed : s2Step64HeadFvAfter.checkBorrow 4 s2Step64CounterWork=some s2Step64CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step64HeadFvAfter s2Step64CounterDuring s2Step64CounterWork.toFinset s2Step64Counter_bounded s2Step64Counter_apart rfl

private theorem s2Step64Counter_owned : (822::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step64HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step64HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64Counter_checked : compileHmrCounterStepLog s2Step64HeadFvAfter true 822 [772, 773, 774, 775, 776, 777] s2Step64CounterWork=some s2Step64CounterDuring := by
  have owned : ∀q∈822::[772, 773, 774, 775, 776, 777],q∈s2Step64HeadFvAfter.live := fun q hq => s2Step64Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step64Counter_borrowed

private def s2Step64EntryFAfter : Arena := s2Step64EntryFBefore

private theorem s2Step64EntryBank_incomingDistinct : ([s2Step64EntryFRow,s2Step64EntryGRow,s2Step64EntryFvRow,s2Step64EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64EntryF_Incoming : rowsOwned s2Step64EntryFBefore [s2Step64EntryFRow,s2Step64EntryGRow,s2Step64EntryFvRow,s2Step64EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step64EntryFRow,s2Step64EntryGRow,s2Step64EntryFvRow,s2Step64EntryGvRow] 0 s2Step64EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step64EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step64EntryBank_outgoingOwned : rowsOwned s2Step64EntryGvAfter [s2Step64EntryFOut,s2Step64EntryGOut,s2Step64EntryFvOut,s2Step64EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step64EntryGvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step64EntryF_Outgoing : rowsOwned s2Step64EntryGvAfter [s2Step64EntryFOut,s2Step64EntryGOut,s2Step64EntryFvOut,s2Step64EntryGvOut] :=
  hmrRows_owned_drop s2Step64EntryGvAfter [s2Step64EntryFOut,s2Step64EntryGOut,s2Step64EntryFvOut,s2Step64EntryGvOut] 0 s2Step64EntryBank_outgoingOwned

private theorem s2Step64EntryF_distinct : (s2Step64EntryFRow.sign::s2Step64EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64EntryF_owned : (s2Step64EntryFRow.sign::s2Step64EntryFRow.payload).toFinset⊆s2Step64EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step64EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64EntryF_reserved : s2Step64EntryFBefore.reserve s2Step64EntryFFresh.toFinset=some s2Step64EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step64EntryFFresh,arenaWires]
  · norm_num [s2Step64EntryFBefore,s2Step64EntryFFresh,arenaWires]
  · simp only [s2Step64EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step64EntryF_checked : planRowResizeLog s2Step64EntryFBefore s2Step64EntryFRow 237 s2Step64EntryFFresh=
    some (s2Step64EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748],768⟩,growRow 768 s2Step64EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step64EntryFBefore s2Step64EntryFAfter s2Step64EntryFRow 237 s2Step64EntryFFresh
    s2Step64EntryF_distinct s2Step64EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step64EntryF_reserved
  have rowEq : WindowRow.mk (s2Step64EntryFRow.payload++s2Step64EntryFFresh) s2Step64EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step64EntryFvAfter : Arena := s2Step64EntryFBefore

private def s2Step64EntryFvBefore : Arena := s2Step64EntryFBefore

private theorem s2Step64EntryFv_Incoming : rowsOwned s2Step64EntryFvBefore [s2Step64EntryFvRow,s2Step64EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step64EntryFRow,s2Step64EntryGRow,s2Step64EntryFvRow,s2Step64EntryGvRow] 2 s2Step64EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step64EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step64EntryFv_Outgoing : rowsOwned s2Step64EntryGvAfter [s2Step64EntryFvOut,s2Step64EntryGvOut] :=
  hmrRows_owned_drop s2Step64EntryGvAfter [s2Step64EntryFOut,s2Step64EntryGOut,s2Step64EntryFvOut,s2Step64EntryGvOut] 2 s2Step64EntryBank_outgoingOwned

private theorem s2Step64EntryFv_distinct : (s2Step64EntryFvRow.sign::s2Step64EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64EntryFv_owned : (s2Step64EntryFvRow.sign::s2Step64EntryFvRow.payload).toFinset⊆s2Step64EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step64EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64EntryFv_reserved : s2Step64EntryFvBefore.reserve s2Step64EntryFvFresh.toFinset=some s2Step64EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step64EntryFvFresh,arenaWires]
  · norm_num [s2Step64EntryFvBefore,s2Step64EntryFBefore,s2Step64EntryFvFresh,arenaWires]
  · simp only [s2Step64EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step64EntryFv_checked : planRowResizeLog s2Step64EntryFvBefore s2Step64EntryFvRow 46 s2Step64EntryFvFresh=
    some (s2Step64EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 844],770⟩,growRow 770 s2Step64EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step64EntryFvBefore s2Step64EntryFvAfter s2Step64EntryFvRow 46 s2Step64EntryFvFresh
    s2Step64EntryFv_distinct s2Step64EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step64EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step64EntryFvRow.payload++s2Step64EntryFvFresh) s2Step64EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 844],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step64EntryGAfter : Arena := s2Step64EntryFBefore

private def s2Step64EntryGBefore : Arena := s2Step64EntryFBefore

private theorem s2Step64EntryG_Incoming : rowsOwned s2Step64EntryGBefore [s2Step64EntryGRow,s2Step64EntryFvRow,s2Step64EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step64EntryFRow,s2Step64EntryGRow,s2Step64EntryFvRow,s2Step64EntryGvRow] 1 s2Step64EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step64EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step64EntryG_Outgoing : rowsOwned s2Step64EntryGvAfter [s2Step64EntryGOut,s2Step64EntryFvOut,s2Step64EntryGvOut] :=
  hmrRows_owned_drop s2Step64EntryGvAfter [s2Step64EntryFOut,s2Step64EntryGOut,s2Step64EntryFvOut,s2Step64EntryGvOut] 1 s2Step64EntryBank_outgoingOwned

private theorem s2Step64EntryG_distinct : (s2Step64EntryGRow.sign::s2Step64EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64EntryG_owned : (s2Step64EntryGRow.sign::s2Step64EntryGRow.payload).toFinset⊆s2Step64EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step64EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64EntryG_reserved : s2Step64EntryGBefore.reserve s2Step64EntryGFresh.toFinset=some s2Step64EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step64EntryGFresh,arenaWires]
  · norm_num [s2Step64EntryGBefore,s2Step64EntryFBefore,s2Step64EntryGFresh,arenaWires]
  · simp only [s2Step64EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step64EntryG_checked : planRowResizeLog s2Step64EntryGBefore s2Step64EntryGRow 237 s2Step64EntryGFresh=
    some (s2Step64EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],769⟩,growRow 769 s2Step64EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step64EntryGBefore s2Step64EntryGAfter s2Step64EntryGRow 237 s2Step64EntryGFresh
    s2Step64EntryG_distinct s2Step64EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step64EntryG_reserved
  have rowEq : WindowRow.mk (s2Step64EntryGRow.payload++s2Step64EntryGFresh) s2Step64EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step64EntryGvBefore : Arena := s2Step64EntryFBefore

private theorem s2Step64EntryGv_Incoming : rowsOwned s2Step64EntryGvBefore [s2Step64EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step64EntryFRow,s2Step64EntryGRow,s2Step64EntryFvRow,s2Step64EntryGvRow] 3 s2Step64EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step64EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step64EntryGv_Outgoing : rowsOwned s2Step64EntryGvAfter [s2Step64EntryGvOut] :=
  hmrRows_owned_drop s2Step64EntryGvAfter [s2Step64EntryFOut,s2Step64EntryGOut,s2Step64EntryFvOut,s2Step64EntryGvOut] 3 s2Step64EntryBank_outgoingOwned

private theorem s2Step64EntryGv_distinct : (s2Step64EntryGvRow.sign::s2Step64EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64EntryGv_owned : (s2Step64EntryGvRow.sign::s2Step64EntryGvRow.payload).toFinset⊆s2Step64EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step64EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64EntryGv_reserved : s2Step64EntryGvBefore.reserve s2Step64EntryGvFresh.toFinset=some s2Step64EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step64EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step64EntryGvBefore,s2Step64EntryFBefore,s2Step64EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step64EntryGvAfter,s2Step64EntryGvBefore,s2Step64EntryFBefore,s2Step64EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step64EntryGv_checked : planRowResizeLog s2Step64EntryGvBefore s2Step64EntryGvRow 46 s2Step64EntryGvFresh=
    some (s2Step64EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩,growRow 771 s2Step64EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step64EntryGvBefore s2Step64EntryGvAfter s2Step64EntryGvRow 46 s2Step64EntryGvFresh
    s2Step64EntryGv_distinct s2Step64EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step64EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step64EntryGvRow.payload++s2Step64EntryGvFresh) s2Step64EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step64EntryBank_rows : planWindowRowsLog s2Step64EntryFBefore [(s2Step64EntryFRow,237),(s2Step64EntryGRow,237),(s2Step64EntryFvRow,46),(s2Step64EntryGvRow,46)] [s2Step64EntryFFresh,s2Step64EntryGFresh,s2Step64EntryFvFresh,s2Step64EntryGvFresh]=
    some (s2Step64EntryGvAfter,[s2Step64EntryFOut,s2Step64EntryGOut,s2Step64EntryFvOut,s2Step64EntryGvOut],(growRow 768 s2Step64EntryFFresh ++ (growRow 769 s2Step64EntryGFresh ++ (growRow 770 s2Step64EntryFvFresh ++ (growRow 771 s2Step64EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step64EntryGvAfter [] []=some (s2Step64EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step64EntryGvBefore s2Step64EntryGvAfter s2Step64EntryGvAfter
    s2Step64EntryGvRow s2Step64EntryGvOut 46 s2Step64EntryGvFresh [] [] []
    (growRow 771 s2Step64EntryGvFresh) ([]) s2Step64EntryGv_Incoming s2Step64EntryGv_checked h4 s2Step64EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step64EntryFvBefore s2Step64EntryFvAfter s2Step64EntryGvAfter
    s2Step64EntryFvRow s2Step64EntryFvOut 46 s2Step64EntryFvFresh [(s2Step64EntryGvRow,46)] [s2Step64EntryGvFresh] [s2Step64EntryGvOut]
    (growRow 770 s2Step64EntryFvFresh) ((growRow 771 s2Step64EntryGvFresh ++ [])) s2Step64EntryFv_Incoming s2Step64EntryFv_checked h3 s2Step64EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step64EntryGBefore s2Step64EntryGAfter s2Step64EntryGvAfter
    s2Step64EntryGRow s2Step64EntryGOut 237 s2Step64EntryGFresh [(s2Step64EntryFvRow,46),(s2Step64EntryGvRow,46)] [s2Step64EntryFvFresh,s2Step64EntryGvFresh] [s2Step64EntryFvOut,s2Step64EntryGvOut]
    (growRow 769 s2Step64EntryGFresh) ((growRow 770 s2Step64EntryFvFresh ++ (growRow 771 s2Step64EntryGvFresh ++ []))) s2Step64EntryG_Incoming s2Step64EntryG_checked h2 s2Step64EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step64EntryFBefore s2Step64EntryFAfter s2Step64EntryGvAfter
    s2Step64EntryFRow s2Step64EntryFOut 237 s2Step64EntryFFresh [(s2Step64EntryGRow,237),(s2Step64EntryFvRow,46),(s2Step64EntryGvRow,46)] [s2Step64EntryGFresh,s2Step64EntryFvFresh,s2Step64EntryGvFresh] [s2Step64EntryGOut,s2Step64EntryFvOut,s2Step64EntryGvOut]
    (growRow 768 s2Step64EntryFFresh) ((growRow 769 s2Step64EntryGFresh ++ (growRow 770 s2Step64EntryFvFresh ++ (growRow 771 s2Step64EntryGvFresh ++ [])))) s2Step64EntryF_Incoming s2Step64EntryF_checked h1 s2Step64EntryF_Outgoing
  exact h0

private theorem s2Step64EntryBank_checked : compileHmrBankResizeLog .entry s2Step64EntryFBefore ⟨s2Step64EntryFRow,s2Step64EntryGRow,s2Step64EntryFvRow,s2Step64EntryGvRow⟩ ⟨237,237,46,46⟩ [s2Step64EntryFFresh,s2Step64EntryGFresh,s2Step64EntryFvFresh,s2Step64EntryGvFresh]=
    some (s2Step64EntryGvAfter,⟨s2Step64EntryFOut,s2Step64EntryGOut,s2Step64EntryFvOut,s2Step64EntryGvOut⟩,(growRow 768 s2Step64EntryFFresh ++ (growRow 769 s2Step64EntryGFresh ++ (growRow 770 s2Step64EntryFvFresh ++ (growRow 771 s2Step64EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step64EntryBank_rows]
  rfl

private def s2Step64ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<236) ∨ (237≤q ∧ q<748) ∨ (749≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<236) ∨ (237≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64ExitFBefore : Arena := s2Step64ExitGAfter

private def s2Step64ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 816],768⟩

private def s2Step64ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 844, 790],770⟩

private def s2Step64ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 845],769⟩

private def s2Step64ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 814],771⟩

private theorem s2Step64ExitBank_incomingDistinct : ([s2Step64ExitGRow,s2Step64ExitFRow,s2Step64ExitFvRow,s2Step64ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64ExitF_Incoming : rowsOwned s2Step64ExitFBefore [s2Step64ExitFRow,s2Step64ExitFvRow,s2Step64ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step64ExitGRow,s2Step64ExitFRow,s2Step64ExitFvRow,s2Step64ExitGvRow] 1 s2Step64ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step64ExitFBefore (fun q => (0≤q ∧ q<236) ∨ (237≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step64ExitBank_outgoingOwned : rowsOwned s2Step64ExitGvAfter [s2Step64ExitGOut,s2Step64ExitFOut,s2Step64ExitFvOut,s2Step64ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step64ExitGvAfter (fun q => (0≤q ∧ q<236) ∨ (237≤q ∧ q<748) ∨ (749≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step64ExitF_Outgoing : rowsOwned s2Step64ExitGvAfter [s2Step64ExitFOut,s2Step64ExitFvOut,s2Step64ExitGvOut] :=
  hmrRows_owned_drop s2Step64ExitGvAfter [s2Step64ExitGOut,s2Step64ExitFOut,s2Step64ExitFvOut,s2Step64ExitGvOut] 1 s2Step64ExitBank_outgoingOwned

private theorem s2Step64ExitF_distinct : (s2Step64ExitFRow.sign::s2Step64ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64ExitF_owned : (s2Step64ExitFRow.sign::s2Step64ExitFRow.payload).toFinset⊆s2Step64ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step64ExitFBefore (fun q => (0≤q ∧ q<236) ∨ (237≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64ExitF_retired : s2Step64ExitFBefore.retireSet s2Step64ExitFExtra.toFinset=s2Step64ExitFAfter := by
  unfold Arena.retireSet s2Step64ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step64ExitFBefore,s2Step64ExitGAfter,s2Step64ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step64ExitF_checked : planRowResizeLog s2Step64ExitFBefore s2Step64ExitFRow 236 []=
    some (s2Step64ExitFAfter,s2Step64ExitFOut,shrinkRow 768 s2Step64ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step64ExitFBefore s2Step64ExitFRow 236 s2Step64ExitF_distinct s2Step64ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step64ExitFRow.payload.take 236) s2Step64ExitFRow.sign=s2Step64ExitFOut := by decide +kernel
  have hi : s2Step64ExitFRow.payload.drop 236=s2Step64ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step64ExitF_retired] at result
  exact result

private def s2Step64ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<236) ∨ (237≤q ∧ q<748) ∨ (749≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64ExitFvBefore : Arena := s2Step64ExitFAfter

private theorem s2Step64ExitFv_Incoming : rowsOwned s2Step64ExitFvBefore [s2Step64ExitFvRow,s2Step64ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step64ExitGRow,s2Step64ExitFRow,s2Step64ExitFvRow,s2Step64ExitGvRow] 2 s2Step64ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step64ExitFvBefore (fun q => (0≤q ∧ q<236) ∨ (237≤q ∧ q<748) ∨ (749≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step64ExitFv_Outgoing : rowsOwned s2Step64ExitGvAfter [s2Step64ExitFvOut,s2Step64ExitGvOut] :=
  hmrRows_owned_drop s2Step64ExitGvAfter [s2Step64ExitGOut,s2Step64ExitFOut,s2Step64ExitFvOut,s2Step64ExitGvOut] 2 s2Step64ExitBank_outgoingOwned

private theorem s2Step64ExitFv_distinct : (s2Step64ExitFvRow.sign::s2Step64ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64ExitFv_owned : (s2Step64ExitFvRow.sign::s2Step64ExitFvRow.payload).toFinset⊆s2Step64ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step64ExitFvBefore (fun q => (0≤q ∧ q<236) ∨ (237≤q ∧ q<748) ∨ (749≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64ExitFv_retired : s2Step64ExitFvBefore.retireSet s2Step64ExitFvExtra.toFinset=s2Step64ExitFvAfter := by
  unfold Arena.retireSet s2Step64ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step64ExitFvBefore,s2Step64ExitFAfter,s2Step64ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step64ExitFv_checked : planRowResizeLog s2Step64ExitFvBefore s2Step64ExitFvRow 45 []=
    some (s2Step64ExitFvAfter,s2Step64ExitFvOut,shrinkRow 770 s2Step64ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step64ExitFvBefore s2Step64ExitFvRow 45 s2Step64ExitFv_distinct s2Step64ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step64ExitFvRow.payload.take 45) s2Step64ExitFvRow.sign=s2Step64ExitFvOut := by decide +kernel
  have hi : s2Step64ExitFvRow.payload.drop 45=s2Step64ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step64ExitFv_retired] at result
  exact result

private def s2Step64ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private theorem s2Step64ExitG_Incoming : rowsOwned s2Step64ExitGBefore [s2Step64ExitGRow,s2Step64ExitFRow,s2Step64ExitFvRow,s2Step64ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step64ExitGRow,s2Step64ExitFRow,s2Step64ExitFvRow,s2Step64ExitGvRow] 0 s2Step64ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step64ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step64ExitG_Outgoing : rowsOwned s2Step64ExitGvAfter [s2Step64ExitGOut,s2Step64ExitFOut,s2Step64ExitFvOut,s2Step64ExitGvOut] :=
  hmrRows_owned_drop s2Step64ExitGvAfter [s2Step64ExitGOut,s2Step64ExitFOut,s2Step64ExitFvOut,s2Step64ExitGvOut] 0 s2Step64ExitBank_outgoingOwned

private theorem s2Step64ExitG_distinct : (s2Step64ExitGRow.sign::s2Step64ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64ExitG_owned : (s2Step64ExitGRow.sign::s2Step64ExitGRow.payload).toFinset⊆s2Step64ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step64ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64ExitG_retired : s2Step64ExitGBefore.retireSet s2Step64ExitGExtra.toFinset=s2Step64ExitGAfter := by
  unfold Arena.retireSet s2Step64ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step64ExitGBefore,s2Step64ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step64ExitG_checked : planRowResizeLog s2Step64ExitGBefore s2Step64ExitGRow 236 []=
    some (s2Step64ExitGAfter,s2Step64ExitGOut,shrinkRow 769 s2Step64ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step64ExitGBefore s2Step64ExitGRow 236 s2Step64ExitG_distinct s2Step64ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step64ExitGRow.payload.take 236) s2Step64ExitGRow.sign=s2Step64ExitGOut := by decide +kernel
  have hi : s2Step64ExitGRow.payload.drop 236=s2Step64ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step64ExitG_retired] at result
  exact result

private def s2Step64ExitGvBefore : Arena := s2Step64ExitFvAfter

private theorem s2Step64ExitGv_Incoming : rowsOwned s2Step64ExitGvBefore [s2Step64ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step64ExitGRow,s2Step64ExitFRow,s2Step64ExitFvRow,s2Step64ExitGvRow] 3 s2Step64ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step64ExitGvBefore (fun q => (0≤q ∧ q<236) ∨ (237≤q ∧ q<748) ∨ (749≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step64ExitGv_Outgoing : rowsOwned s2Step64ExitGvAfter [s2Step64ExitGvOut] :=
  hmrRows_owned_drop s2Step64ExitGvAfter [s2Step64ExitGOut,s2Step64ExitFOut,s2Step64ExitFvOut,s2Step64ExitGvOut] 3 s2Step64ExitBank_outgoingOwned

private theorem s2Step64ExitGv_distinct : (s2Step64ExitGvRow.sign::s2Step64ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64ExitGv_owned : (s2Step64ExitGvRow.sign::s2Step64ExitGvRow.payload).toFinset⊆s2Step64ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step64ExitGvBefore (fun q => (0≤q ∧ q<236) ∨ (237≤q ∧ q<748) ∨ (749≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64ExitGv_retired : s2Step64ExitGvBefore.retireSet s2Step64ExitGvExtra.toFinset=s2Step64ExitGvAfter := by
  unfold Arena.retireSet s2Step64ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step64ExitGvBefore,s2Step64ExitFvAfter,s2Step64ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step64ExitGv_checked : planRowResizeLog s2Step64ExitGvBefore s2Step64ExitGvRow 46 []=
    some (s2Step64ExitGvAfter,s2Step64ExitGvOut,shrinkRow 771 s2Step64ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step64ExitGvBefore s2Step64ExitGvRow 46 s2Step64ExitGv_distinct s2Step64ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step64ExitGvRow.payload.take 46) s2Step64ExitGvRow.sign=s2Step64ExitGvOut := by decide +kernel
  have hi : s2Step64ExitGvRow.payload.drop 46=s2Step64ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step64ExitGv_retired] at result
  exact result

private theorem s2Step64ExitBank_rows : planWindowRowsLog s2Step64ExitGBefore [(s2Step64ExitGRow,236),(s2Step64ExitFRow,236),(s2Step64ExitFvRow,45),(s2Step64ExitGvRow,46)] [[],[],[],[]]=
    some (s2Step64ExitGvAfter,[s2Step64ExitGOut,s2Step64ExitFOut,s2Step64ExitFvOut,s2Step64ExitGvOut],(shrinkRow 769 s2Step64ExitGExtra ++ (shrinkRow 768 s2Step64ExitFExtra ++ (shrinkRow 770 s2Step64ExitFvExtra ++ (shrinkRow 771 s2Step64ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step64ExitGvAfter [] []=some (s2Step64ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step64ExitGvBefore s2Step64ExitGvAfter s2Step64ExitGvAfter
    s2Step64ExitGvRow s2Step64ExitGvOut 46 [] [] [] []
    (shrinkRow 771 s2Step64ExitGvExtra) ([]) s2Step64ExitGv_Incoming s2Step64ExitGv_checked h4 s2Step64ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step64ExitFvBefore s2Step64ExitFvAfter s2Step64ExitGvAfter
    s2Step64ExitFvRow s2Step64ExitFvOut 45 [] [(s2Step64ExitGvRow,46)] [[]] [s2Step64ExitGvOut]
    (shrinkRow 770 s2Step64ExitFvExtra) ((shrinkRow 771 s2Step64ExitGvExtra ++ [])) s2Step64ExitFv_Incoming s2Step64ExitFv_checked h3 s2Step64ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step64ExitFBefore s2Step64ExitFAfter s2Step64ExitGvAfter
    s2Step64ExitFRow s2Step64ExitFOut 236 [] [(s2Step64ExitFvRow,45),(s2Step64ExitGvRow,46)] [[],[]] [s2Step64ExitFvOut,s2Step64ExitGvOut]
    (shrinkRow 768 s2Step64ExitFExtra) ((shrinkRow 770 s2Step64ExitFvExtra ++ (shrinkRow 771 s2Step64ExitGvExtra ++ []))) s2Step64ExitF_Incoming s2Step64ExitF_checked h2 s2Step64ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step64ExitGBefore s2Step64ExitGAfter s2Step64ExitGvAfter
    s2Step64ExitGRow s2Step64ExitGOut 236 [] [(s2Step64ExitFRow,236),(s2Step64ExitFvRow,45),(s2Step64ExitGvRow,46)] [[],[],[]] [s2Step64ExitFOut,s2Step64ExitFvOut,s2Step64ExitGvOut]
    (shrinkRow 769 s2Step64ExitGExtra) ((shrinkRow 768 s2Step64ExitFExtra ++ (shrinkRow 770 s2Step64ExitFvExtra ++ (shrinkRow 771 s2Step64ExitGvExtra ++ [])))) s2Step64ExitG_Incoming s2Step64ExitG_checked h1 s2Step64ExitG_Outgoing
  exact h0

private theorem s2Step64ExitBank_checked : compileHmrBankResizeLog .exit s2Step64ExitGBefore ⟨s2Step64ExitFRow,s2Step64ExitGRow,s2Step64ExitFvRow,s2Step64ExitGvRow⟩ ⟨236,236,45,46⟩ [[],[],[],[]]=
    some (s2Step64ExitGvAfter,⟨s2Step64ExitFOut,s2Step64ExitGOut,s2Step64ExitFvOut,s2Step64ExitGvOut⟩,(shrinkRow 769 s2Step64ExitGExtra ++ (shrinkRow 768 s2Step64ExitFExtra ++ (shrinkRow 770 s2Step64ExitFvExtra ++ (shrinkRow 771 s2Step64ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step64ExitBank_rows]
  rfl

private theorem s2Step64Add0_apart : Disjoint s2Step64Add0Arena.live s2Step64Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step64Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64Add0_card : s2Step64Add0Arena.live.card=867 := by
  decide +kernel

private theorem s2Step64Add0_borrowed : s2Step64Add0Arena.checkBorrow (hmrHybridCount s2Step64Add0Arena s2Step64Add0B.length) s2Step64Add0Work=some s2Step64Add0During := by
  have len : s2Step64Add0Work.length=hmrHybridCount s2Step64Add0Arena s2Step64Add0B.length := by
    rw [hmrHybridCount,s2Step64Add0_card]
    decide +kernel
  have nd : s2Step64Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step64Add0Arena s2Step64Add0During s2Step64Add0Work.toFinset s2Step64Add0_bounded s2Step64Add0_apart rfl

private theorem s2Step64Add0_distinct : (846::817::847::(s2Step64Add0A++s2Step64Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64Add0_owned : (846::817::847::(s2Step64Add0A++s2Step64Add0B)).toFinset⊆s2Step64Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step64Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64Add0_checked : compileHmrHybridCinLog s2Step64Add0Arena 817 846 847 s2Step64Add0A s2Step64Add0B s2Step64Add0Work=some s2Step64Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step64Add0Arena s2Step64Add0During 817 846 847 s2Step64Add0A s2Step64Add0B s2Step64Add0Work
    (by decide +kernel) (by decide +kernel) s2Step64Add0_distinct
    (fun q hq => s2Step64Add0_owned (List.mem_toFinset.mpr hq)) s2Step64Add0_borrowed

private theorem s2Step64Add1_apart : Disjoint s2Step64Add1Arena.live s2Step64Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step64Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64Add1_card : s2Step64Add1Arena.live.card=867 := by
  decide +kernel

private theorem s2Step64Add1_borrowed : s2Step64Add1Arena.checkBorrow (hmrHybridCount s2Step64Add1Arena s2Step64Add1B.length) s2Step64Add1Work=some s2Step64Add1During := by
  have len : s2Step64Add1Work.length=hmrHybridCount s2Step64Add1Arena s2Step64Add1B.length := by
    rw [hmrHybridCount,s2Step64Add1_card]
    decide +kernel
  have nd : s2Step64Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step64Add1Arena s2Step64Add1During s2Step64Add1Work.toFinset s2Step64Add1_bounded s2Step64Add1_apart rfl

private theorem s2Step64Add1_distinct : (846::817::847::(s2Step64Add1A++s2Step64Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64Add1_owned : (846::817::847::(s2Step64Add1A++s2Step64Add1B)).toFinset⊆s2Step64Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step64Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64Add1_checked : compileHmrHybridCinLog s2Step64Add1Arena 817 846 847 s2Step64Add1A s2Step64Add1B s2Step64Add1Work=some s2Step64Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step64Add1Arena s2Step64Add1During 817 846 847 s2Step64Add1A s2Step64Add1B s2Step64Add1Work
    (by decide +kernel) (by decide +kernel) s2Step64Add1_distinct
    (fun q hq => s2Step64Add1_owned (List.mem_toFinset.mpr hq)) s2Step64Add1_borrowed

private theorem s2Step64F4_apart : Disjoint (s2Step64Add0A++s2Step64Add0B).toFinset (s2Step64Add1A++s2Step64Add1B).toFinset := by
  have nd : ((s2Step64Add0A++s2Step64Add0B)++(s2Step64Add1A++s2Step64Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step64F4_carry : s2Step64F4FlagArena.checkBorrow 1 [847]=some s2Step64Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step64F4FlagArena,s2Step64HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step64F4FlagArena,s2Step64HeadFvAfter,s2Step64Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step64F4_distinct : (822::817::846::847::((s2Step64Add0A++s2Step64Add1A)++(s2Step64Add0B++s2Step64Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64F4_flag : s2Step64HeadFvAfter.checkBorrow 1 [846]=some s2Step64F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step64HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step64F4_owned : (822::817::((s2Step64Add0A++s2Step64Add1A)++(s2Step64Add0B++s2Step64Add1B))).toFinset⊆s2Step64HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step64HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64F4_checked : compileHmrHybridF4Log s2Step64HeadFvAfter 822 817 s2Step64Add0A s2Step64Add0B s2Step64Add1A s2Step64Add1B [846] [847] s2Step64Add0Work s2Step64Add1Work=some s2Step64F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step64HeadFvAfter s2Step64F4FlagArena s2Step64Add0Arena s2Step64Add0During s2Step64Add1During 822 817
    s2Step64Add0A s2Step64Add0B s2Step64Add1A s2Step64Add1B [846] [847] s2Step64Add0Work s2Step64Add1Work
    (fun q hq => s2Step64F4_owned (List.mem_toFinset.mpr hq)) s2Step64F4_flag s2Step64F4_carry
    s2Step64F4_distinct s2Step64F4_apart s2Step64Add0_checked s2Step64Add1_checked

private theorem s2Step64Front_branch : s2Step64FrontSigmaArena.checkBorrow 1 [817]=some s2Step64HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step64FrontSigmaArena,s2Step64EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step64FrontSigmaArena,s2Step64EntryGvAfter,s2Step64HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step64Front_entry : HmrFrontEntryValid s2Step64EntryFBefore s2Step64FrontBank 237 46 ⟨236,236,45,46⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step64FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step64EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step64EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step64FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step64Front_sigma : s2Step64EntryGvAfter.checkBorrow 1 [822]=some s2Step64FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step64EntryGvAfter,arenaWires]
  · rfl

private def s2Step64HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64HeadFBefore : Arena := s2Step64HeadGAfter

private def s2Step64HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748],768⟩

private def s2Step64HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 844],770⟩

private def s2Step64HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],769⟩

private def s2Step64HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩

private theorem s2Step64HeadBank_incomingDistinct : ([s2Step64HeadGRow,s2Step64HeadFRow,s2Step64HeadGvRow,s2Step64HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64HeadF_Incoming : rowsOwned s2Step64HeadFBefore [s2Step64HeadFRow,s2Step64HeadGvRow,s2Step64HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step64HeadGRow,s2Step64HeadFRow,s2Step64HeadGvRow,s2Step64HeadFvRow] 1 s2Step64HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step64HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step64HeadBank_outgoingOwned : rowsOwned s2Step64HeadFvAfter [s2Step64HeadGOut,s2Step64HeadFOut,s2Step64HeadGvOut,s2Step64HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step64HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step64HeadF_Outgoing : rowsOwned s2Step64HeadFvAfter [s2Step64HeadFOut,s2Step64HeadGvOut,s2Step64HeadFvOut] :=
  hmrRows_owned_drop s2Step64HeadFvAfter [s2Step64HeadGOut,s2Step64HeadFOut,s2Step64HeadGvOut,s2Step64HeadFvOut] 1 s2Step64HeadBank_outgoingOwned

private theorem s2Step64HeadF_distinct : (s2Step64HeadFRow.sign::s2Step64HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64HeadF_owned : (s2Step64HeadFRow.sign::s2Step64HeadFRow.payload).toFinset⊆s2Step64HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step64HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64HeadF_reserved : s2Step64HeadFBefore.reserve s2Step64HeadFFresh.toFinset=some s2Step64HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step64HeadFFresh,arenaWires]
  · norm_num [s2Step64HeadFBefore,s2Step64HeadGAfter,s2Step64HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step64HeadFAfter,s2Step64HeadFBefore,s2Step64HeadGAfter,s2Step64HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step64HeadF_checked : planRowResizeLog s2Step64HeadFBefore s2Step64HeadFRow 238 s2Step64HeadFFresh=
    some (s2Step64HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 816],768⟩,growRow 768 s2Step64HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step64HeadFBefore s2Step64HeadFAfter s2Step64HeadFRow 238 s2Step64HeadFFresh
    s2Step64HeadF_distinct s2Step64HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step64HeadF_reserved
  have rowEq : WindowRow.mk (s2Step64HeadFRow.payload++s2Step64HeadFFresh) s2Step64HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 816],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step64HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step64HeadFvBefore : Arena := s2Step64HeadGvAfter

private theorem s2Step64HeadFv_Incoming : rowsOwned s2Step64HeadFvBefore [s2Step64HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step64HeadGRow,s2Step64HeadFRow,s2Step64HeadGvRow,s2Step64HeadFvRow] 3 s2Step64HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step64HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step64HeadFv_Outgoing : rowsOwned s2Step64HeadFvAfter [s2Step64HeadFvOut] :=
  hmrRows_owned_drop s2Step64HeadFvAfter [s2Step64HeadGOut,s2Step64HeadFOut,s2Step64HeadGvOut,s2Step64HeadFvOut] 3 s2Step64HeadBank_outgoingOwned

private theorem s2Step64HeadFv_distinct : (s2Step64HeadFvRow.sign::s2Step64HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64HeadFv_owned : (s2Step64HeadFvRow.sign::s2Step64HeadFvRow.payload).toFinset⊆s2Step64HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step64HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64HeadFv_reserved : s2Step64HeadFvBefore.reserve s2Step64HeadFvFresh.toFinset=some s2Step64HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step64HeadFvFresh,arenaWires]
  · norm_num [s2Step64HeadFvBefore,s2Step64HeadGvAfter,s2Step64HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step64HeadFvAfter,s2Step64HeadFvBefore,s2Step64HeadGvAfter,s2Step64HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step64HeadFv_checked : planRowResizeLog s2Step64HeadFvBefore s2Step64HeadFvRow 47 s2Step64HeadFvFresh=
    some (s2Step64HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 844, 790],770⟩,growRow 770 s2Step64HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step64HeadFvBefore s2Step64HeadFvAfter s2Step64HeadFvRow 47 s2Step64HeadFvFresh
    s2Step64HeadFv_distinct s2Step64HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step64HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step64HeadFvRow.payload++s2Step64HeadFvFresh) s2Step64HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 844, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step64HeadG_Incoming : rowsOwned s2Step64HeadGBefore [s2Step64HeadGRow,s2Step64HeadFRow,s2Step64HeadGvRow,s2Step64HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step64HeadGRow,s2Step64HeadFRow,s2Step64HeadGvRow,s2Step64HeadFvRow] 0 s2Step64HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step64HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step64HeadG_Outgoing : rowsOwned s2Step64HeadFvAfter [s2Step64HeadGOut,s2Step64HeadFOut,s2Step64HeadGvOut,s2Step64HeadFvOut] :=
  hmrRows_owned_drop s2Step64HeadFvAfter [s2Step64HeadGOut,s2Step64HeadFOut,s2Step64HeadGvOut,s2Step64HeadFvOut] 0 s2Step64HeadBank_outgoingOwned

private theorem s2Step64HeadG_distinct : (s2Step64HeadGRow.sign::s2Step64HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64HeadG_owned : (s2Step64HeadGRow.sign::s2Step64HeadGRow.payload).toFinset⊆s2Step64HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step64HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64HeadG_reserved : s2Step64HeadGBefore.reserve s2Step64HeadGFresh.toFinset=some s2Step64HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step64HeadGFresh,arenaWires]
  · norm_num [s2Step64HeadGBefore,s2Step64HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step64HeadGAfter,s2Step64HeadGBefore,s2Step64HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step64HeadG_checked : planRowResizeLog s2Step64HeadGBefore s2Step64HeadGRow 238 s2Step64HeadGFresh=
    some (s2Step64HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 845],769⟩,growRow 769 s2Step64HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step64HeadGBefore s2Step64HeadGAfter s2Step64HeadGRow 238 s2Step64HeadGFresh
    s2Step64HeadG_distinct s2Step64HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step64HeadG_reserved
  have rowEq : WindowRow.mk (s2Step64HeadGRow.payload++s2Step64HeadGFresh) s2Step64HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 845],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step64HeadGvBefore : Arena := s2Step64HeadFAfter

private theorem s2Step64HeadGv_Incoming : rowsOwned s2Step64HeadGvBefore [s2Step64HeadGvRow,s2Step64HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step64HeadGRow,s2Step64HeadFRow,s2Step64HeadGvRow,s2Step64HeadFvRow] 2 s2Step64HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step64HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step64HeadGv_Outgoing : rowsOwned s2Step64HeadFvAfter [s2Step64HeadGvOut,s2Step64HeadFvOut] :=
  hmrRows_owned_drop s2Step64HeadFvAfter [s2Step64HeadGOut,s2Step64HeadFOut,s2Step64HeadGvOut,s2Step64HeadFvOut] 2 s2Step64HeadBank_outgoingOwned

private theorem s2Step64HeadGv_distinct : (s2Step64HeadGvRow.sign::s2Step64HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step64HeadGv_owned : (s2Step64HeadGvRow.sign::s2Step64HeadGvRow.payload).toFinset⊆s2Step64HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step64HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step64HeadGv_reserved : s2Step64HeadGvBefore.reserve s2Step64HeadGvFresh.toFinset=some s2Step64HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step64HeadGvFresh,arenaWires]
  · norm_num [s2Step64HeadGvBefore,s2Step64HeadFAfter,s2Step64HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step64HeadGvAfter,s2Step64HeadGvBefore,s2Step64HeadFAfter,s2Step64HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step64HeadGv_checked : planRowResizeLog s2Step64HeadGvBefore s2Step64HeadGvRow 47 s2Step64HeadGvFresh=
    some (s2Step64HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 814],771⟩,growRow 771 s2Step64HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step64HeadGvBefore s2Step64HeadGvAfter s2Step64HeadGvRow 47 s2Step64HeadGvFresh
    s2Step64HeadGv_distinct s2Step64HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step64HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step64HeadGvRow.payload++s2Step64HeadGvFresh) s2Step64HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 814],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step64HeadBank_rows : planWindowRowsLog s2Step64HeadGBefore [(s2Step64HeadGRow,238),(s2Step64HeadFRow,238),(s2Step64HeadGvRow,47),(s2Step64HeadFvRow,47)] [s2Step64HeadGFresh,s2Step64HeadFFresh,s2Step64HeadGvFresh,s2Step64HeadFvFresh]=
    some (s2Step64HeadFvAfter,[s2Step64HeadGOut,s2Step64HeadFOut,s2Step64HeadGvOut,s2Step64HeadFvOut],(growRow 769 s2Step64HeadGFresh ++ (growRow 768 s2Step64HeadFFresh ++ (growRow 771 s2Step64HeadGvFresh ++ (growRow 770 s2Step64HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step64HeadFvAfter [] []=some (s2Step64HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step64HeadFvBefore s2Step64HeadFvAfter s2Step64HeadFvAfter
    s2Step64HeadFvRow s2Step64HeadFvOut 47 s2Step64HeadFvFresh [] [] []
    (growRow 770 s2Step64HeadFvFresh) ([]) s2Step64HeadFv_Incoming s2Step64HeadFv_checked h4 s2Step64HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step64HeadGvBefore s2Step64HeadGvAfter s2Step64HeadFvAfter
    s2Step64HeadGvRow s2Step64HeadGvOut 47 s2Step64HeadGvFresh [(s2Step64HeadFvRow,47)] [s2Step64HeadFvFresh] [s2Step64HeadFvOut]
    (growRow 771 s2Step64HeadGvFresh) ((growRow 770 s2Step64HeadFvFresh ++ [])) s2Step64HeadGv_Incoming s2Step64HeadGv_checked h3 s2Step64HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step64HeadFBefore s2Step64HeadFAfter s2Step64HeadFvAfter
    s2Step64HeadFRow s2Step64HeadFOut 238 s2Step64HeadFFresh [(s2Step64HeadGvRow,47),(s2Step64HeadFvRow,47)] [s2Step64HeadGvFresh,s2Step64HeadFvFresh] [s2Step64HeadGvOut,s2Step64HeadFvOut]
    (growRow 768 s2Step64HeadFFresh) ((growRow 771 s2Step64HeadGvFresh ++ (growRow 770 s2Step64HeadFvFresh ++ []))) s2Step64HeadF_Incoming s2Step64HeadF_checked h2 s2Step64HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step64HeadGBefore s2Step64HeadGAfter s2Step64HeadFvAfter
    s2Step64HeadGRow s2Step64HeadGOut 238 s2Step64HeadGFresh [(s2Step64HeadFRow,238),(s2Step64HeadGvRow,47),(s2Step64HeadFvRow,47)] [s2Step64HeadFFresh,s2Step64HeadGvFresh,s2Step64HeadFvFresh] [s2Step64HeadFOut,s2Step64HeadGvOut,s2Step64HeadFvOut]
    (growRow 769 s2Step64HeadGFresh) ((growRow 768 s2Step64HeadFFresh ++ (growRow 771 s2Step64HeadGvFresh ++ (growRow 770 s2Step64HeadFvFresh ++ [])))) s2Step64HeadG_Incoming s2Step64HeadG_checked h1 s2Step64HeadG_Outgoing
  exact h0

private theorem s2Step64HeadBank_checked : compileHmrBankResizeLog .headroom s2Step64HeadGBefore ⟨s2Step64HeadFRow,s2Step64HeadGRow,s2Step64HeadFvRow,s2Step64HeadGvRow⟩ ⟨238,238,47,47⟩ [s2Step64HeadGFresh,s2Step64HeadFFresh,s2Step64HeadGvFresh,s2Step64HeadFvFresh]=
    some (s2Step64HeadFvAfter,⟨s2Step64HeadFOut,s2Step64HeadGOut,s2Step64HeadFvOut,s2Step64HeadGvOut⟩,(growRow 769 s2Step64HeadGFresh ++ (growRow 768 s2Step64HeadFFresh ++ (growRow 771 s2Step64HeadGvFresh ++ (growRow 770 s2Step64HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step64HeadBank_rows]
  rfl

private theorem s2Step64Front_checked : compileHmrSourceFrontLog s2Step64EntryFBefore s2Step64FrontBank 237 46 ⟨236,236,45,46⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step64FrontLog=some s2Step64FrontPlan := by
  have pairEq : s2Step64FrontPair=⟨s2Step64HeadFRow,s2Step64HeadGRow,s2Step64HeadFvRow,s2Step64HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step64FrontHead=⟨s2Step64ExitFRow,s2Step64ExitGRow,s2Step64ExitFvRow,s2Step64ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step64Add0A=s2Step64FrontHead.f.wires := by decide +kernel
  have gEq : s2Step64Add0B=s2Step64FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step64Add1A=s2Step64FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step64Add1B=s2Step64FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step64EntryFBefore s2Step64FrontBank 237 46 ⟨236,236,45,46⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step64FrontLog s2Step64FrontPlan
  · exact s2Step64Front_entry
  · exact s2Step64EntryBank_checked
  · exact s2Step64Front_sigma
  · rfl
  · exact s2Step64Front_branch
  · rfl
  · simpa only [s2Step64FrontPlan,pairEq] using s2Step64HeadBank_checked
  · simpa only [s2Step64FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step64F4_checked
  · exact s2Step64Counter_checked
  · rfl
  · simpa only [s2Step64FrontPlan,headEq] using s2Step64ExitBank_checked

private theorem s2Step64Complete_explicit_checked : compileHmrEarlyStepLog s2Step64EntryFBefore s2Step64FrontBank 237 46 ⟨236,236,45,46⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871] 28 s2Step64CompleteLog=some s2Step64CompletePlan := by
  let Q := s2Step64EarlyControlPlan
  have hq := s2Step64EarlyControl_plan_checked
  have fv1 : s2Step64CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step64CompleteOut.fv.payload[2]?.getD s2Step64CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step64CompleteOut.fv.payload[3]?.getD s2Step64CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step64CompleteOut.fv.payload[4]?.getD s2Step64CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step64EntryFBefore s2Step64EarlyControlArena s2Step64FrontBank 237 46 ⟨236,236,45,46⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871] 28 s2Step64CompleteLog s2Step64FrontPlan Q
    s2Step64Front_checked s2Step64Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step64Complete_owned s2Step64Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step64EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871] 777 822 s2Step64CompleteOut.fv.second (s2Step64CompleteOut.fv.payload[2]?.getD s2Step64CompleteOut.fv.sign) (s2Step64CompleteOut.fv.payload[3]?.getD s2Step64CompleteOut.fv.sign) (s2Step64CompleteOut.fv.payload[4]?.getD s2Step64CompleteOut.fv.sign) 817 28 s2Step64EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep64Arena : Arena := s2Step64EntryFBefore
def s2PrivateStep64Bank : WindowBank := s2Step64FrontBank
def s2PrivateStep64Spec : HmrSourceWalkStepLog := ⟨237,46,⟨236,236,45,46⟩,28,.early s2Step64CompleteLog⟩
def s2PrivateStep64Plan : HmrSourceStepPlan := .early s2Step64CompletePlan
theorem s2PrivateStep64_source : s2PrivateStep64Spec=s2ObservedLogs64[0] := rfl
theorem s2PrivateStep64_checked : compileHmrSourceStepLog s2PrivateStep64Arena s2PrivateStep64Bank
    s2PrivateStep64Spec.fgWidth s2PrivateStep64Spec.vWidth s2PrivateStep64Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871]
    6 498 64 s2PrivateStep64Spec.need none s2PrivateStep64Spec.log=some s2PrivateStep64Plan := by
  change compileHmrSourceStepLog s2Step64EntryFBefore s2Step64FrontBank 237 46 ⟨236,236,45,46⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871] 6 498 64 28 none (.early s2Step64CompleteLog)=some (.early s2Step64CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 64<498)]
  rw [s2Step64Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
