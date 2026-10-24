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

private def s2Step65CompleteMoves : List (Wire × Wire) := [(827,235),(826,747)]

private def s2Step65EarlyControlLog : HmrEarlyControlLog := ⟨[826, 827, 844, 790, 814],[825],[816],[845, 846, 847, 849, 851, 867],[868]⟩

private def s2Step65FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [817], []],[[825], [814], [844], [790]],[[], [], [], []]⟩,[822],[824],[816],[845],[846, 847, 849, 851, 867, 868, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 868, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912],[816, 845, 846, 847]⟩

private def s2Step65CompleteLog : HmrEarlyStepLog := ⟨s2Step65FrontLog,s2Step65CompleteMoves,s2Step65EarlyControlLog⟩

private def s2Step65ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746],768⟩

private def s2Step65ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817],770⟩

private def s2Step65ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],769⟩

private def s2Step65ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩

private def s2Step65FrontOut : WindowBank := ⟨s2Step65ExitFOut,s2Step65ExitGOut,s2Step65ExitFvOut,s2Step65ExitGvOut⟩

private def s2Step65CompleteOut : WindowBank := s2Step65FrontOut.repacked s2Step65CompleteMoves

private def s2Step65EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step65EarlyControlPositiveArena,[825],s2Step65EarlyControlEqualityArena,[816],⟨⟨822,false⟩,[⟨⟨825,false⟩,816⟩]⟩⟩

private def s2Step65EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<868) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,826⟩,⟨⟨774,false⟩,827⟩,⟨⟨775,false⟩,844⟩,⟨⟨776,false⟩,790⟩,⟨⟨777,false⟩,814⟩]⟩

private def s2Step65EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step65EarlyControlZeroArena,s2Step65EarlyControlZeroPlan,s2Step65EarlyControlClassPlan,s2Step65EarlyControlFlagArena,s2Step65EarlyControlFittedArena,s2Step65EarlyControlHistoryArena,s2Step65EarlyControlSigmaArena,s2Step65EarlyControlOutputArena,s2Step65EarlyControlLog⟩

private def s2Step65CounterWork : List Wire := [816, 845, 846, 847]

private theorem s2Step65Counter_bounded : s2Step65CounterWork.toFinset⊆arenaWires := by norm_num [s2Step65CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step65HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65CounterDuring : Arena := ⟨s2Step65HeadFvAfter.live∪s2Step65CounterWork.toFinset,Finset.union_subset s2Step65HeadFvAfter.bounded s2Step65Counter_bounded⟩

private def s2Step65EntryFFresh : List Wire := []

private def s2Step65EntryFvFresh : List Wire := [817]

private def s2Step65EntryGFresh : List Wire := []

private def s2Step65EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65EntryGvAfter : Arena := s2Step65EntryFvAfter

private def s2Step65EntryGvFresh : List Wire := []

private def s2Step65ExitFExtra : List Wire := [747, 814]

private def s2Step65ExitFvExtra : List Wire := [790]

private def s2Step65ExitGExtra : List Wire := [235, 825]

private def s2Step65ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<235) ∨ (236≤q ∧ q<747) ∨ (748≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65ExitGvExtra : List Wire := [844]

private def s2Step65Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65Add0Work : List Wire := [846, 847, 849, 851, 867, 868, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step65Add0_bounded : s2Step65Add0Work.toFinset⊆arenaWires := by
  have h : s2Step65Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step65Add0During : Arena := ⟨s2Step65Add0Arena.live∪s2Step65Add0Work.toFinset,Finset.union_subset s2Step65Add0Arena.bounded s2Step65Add0_bounded⟩

private def s2Step65Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65Add1Work : List Wire := [846, 847, 849, 851, 867, 868, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912]

private theorem s2Step65Add1_bounded : s2Step65Add1Work.toFinset⊆arenaWires := by
  have h : s2Step65Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step65Add1During : Arena := ⟨s2Step65Add1Arena.live∪s2Step65Add1Work.toFinset,Finset.union_subset s2Step65Add1Arena.bounded s2Step65Add1_bounded⟩

private def s2Step65F4FlagArena : Arena := ⟨s2Step65HeadFvAfter.live∪{816},Finset.union_subset s2Step65HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step65F4Plan : HmrHybridF4Plan := ⟨s2Step65F4FlagArena,[816],s2Step65Add0Arena,[845],s2Step65Add0During,s2Step65Add0Work,s2Step65Add1During,s2Step65Add1Work⟩

private def s2Step65HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 814],768⟩

private def s2Step65HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩

private def s2Step65HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 825],769⟩

private def s2Step65HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 844],771⟩

private def s2Step65FrontHead : WindowBank := ⟨s2Step65HeadFOut,s2Step65HeadGOut,s2Step65HeadFvOut,s2Step65HeadGvOut⟩

private def s2Step65EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747],768⟩

private def s2Step65EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817],770⟩

private def s2Step65EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235],769⟩

private def s2Step65EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩

private def s2Step65FrontPair : WindowBank := ⟨s2Step65EntryFOut,s2Step65EntryGOut,s2Step65EntryFvOut,s2Step65EntryGvOut⟩

private def s2Step65FrontSigmaArena : Arena := ⟨s2Step65EntryGvAfter.live∪{822},Finset.union_subset s2Step65EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step65HeadFFresh : List Wire := [814]

private def s2Step65HeadFvFresh : List Wire := [790]

private def s2Step65HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65HeadGFresh : List Wire := [825]

private def s2Step65HeadGvFresh : List Wire := [844]

private def s2Step65FrontPlan : HmrSourceFront := ⟨s2Step65EntryGvAfter,s2Step65FrontPair,(growRow 768 s2Step65EntryFFresh ++ (growRow 769 s2Step65EntryGFresh ++ (growRow 770 s2Step65EntryFvFresh ++ (growRow 771 s2Step65EntryGvFresh ++ [])))),s2Step65FrontSigmaArena,[822],s2Step65HeadGBefore,[824],
  s2Step65HeadFvAfter,s2Step65FrontHead,(growRow 769 s2Step65HeadGFresh ++ (growRow 768 s2Step65HeadFFresh ++ (growRow 771 s2Step65HeadGvFresh ++ (growRow 770 s2Step65HeadFvFresh ++ [])))),s2Step65F4Plan,s2Step65CounterDuring,s2Step65CounterWork,s2Step65ExitGvAfter,s2Step65FrontOut,(shrinkRow 769 s2Step65ExitGExtra ++ (shrinkRow 768 s2Step65ExitFExtra ++ (shrinkRow 770 s2Step65ExitFvExtra ++ (shrinkRow 771 s2Step65ExitGvExtra ++ []))))⟩

private def s2Step65CompletePlan : HmrEarlyStepPlan := ⟨s2Step65FrontPlan,s2Step65EarlyControlArena,s2Step65EarlyControlPlan,s2Step65CompleteMoves⟩

private theorem s2Step65Complete_apart : List.Disjoint (s2Step65CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [822, 824, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870] := by
  have nd : ((s2Step65CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[822, 824, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step65Complete_owned : (s2Step65CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step65EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step65EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private def s2Step65CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,747),(748,790),(791,814),(815,816),(817,825),(826,827),(828,844),(848,849),(850,851),(852,867),(869,872)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step65CompleteRelocationMove0Borrowed : Arena := ⟨s2Step65ExitGvAfter.live∪{235},Finset.union_subset s2Step65ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step65CompleteRelocationMove1Borrowed : Arena := ⟨s2Step65CompleteRelocationMove0After.live∪{747},Finset.union_subset s2Step65CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step65CompleteRelocation_move0_owned : 827∈s2Step65ExitGvAfter.live := by norm_num [s2Step65ExitGvAfter,arenaWires]

private theorem s2Step65CompleteRelocation_move0_reserve : s2Step65ExitGvAfter.reserve {235}=some s2Step65CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step65ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step65CompleteRelocation_move0_retire : s2Step65CompleteRelocationMove0Borrowed.retireSet {827}=s2Step65CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step65CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step65CompleteRelocationMove0Borrowed,s2Step65ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step65CompleteRelocation_move1_owned : 826∈s2Step65CompleteRelocationMove0After.live := by norm_num [s2Step65CompleteRelocationMove0After,arenaWires]

private theorem s2Step65CompleteRelocation_move1_reserve : s2Step65CompleteRelocationMove0After.reserve {747}=some s2Step65CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step65CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step65CompleteRelocation_move1_retire : s2Step65CompleteRelocationMove1Borrowed.retireSet {826}=s2Step65EarlyControlArena := by
  unfold Arena.retireSet s2Step65EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step65CompleteRelocationMove1Borrowed,s2Step65CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step65CompleteRelocation_checked : s2Step65ExitGvAfter.checkRepack [(827,235),(826,747)]=some s2Step65EarlyControlArena := by
  have tail2 : s2Step65EarlyControlArena.checkRepack []=some s2Step65EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step65CompleteRelocationMove0After s2Step65CompleteRelocationMove1Borrowed s2Step65EarlyControlArena s2Step65EarlyControlArena 826 747 []
    s2Step65CompleteRelocation_move1_owned s2Step65CompleteRelocation_move1_reserve s2Step65CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step65ExitGvAfter s2Step65CompleteRelocationMove0Borrowed s2Step65CompleteRelocationMove0After s2Step65EarlyControlArena 827 235 [(826,747)]
    s2Step65CompleteRelocation_move0_owned s2Step65CompleteRelocation_move0_reserve s2Step65CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step65Complete_repack : s2Step65ExitGvAfter.checkRepack s2Step65CompleteMoves=some s2Step65EarlyControlArena := by
  simpa only [s2Step65CompleteMoves] using s2Step65CompleteRelocation_checked

private theorem s2Step65EarlyControl_branchOwned : ([824] : List Wire).toFinset⊆s2Step65EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step65EarlyControlSigmaArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65EarlyControl_branch : compileHmrBranchRetirement s2Step65EarlyControlSigmaArena 824=some s2Step65EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step65EarlyControl_branchOwned
  · ext q
    simp [s2Step65EarlyControlOutputArena,s2Step65EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step65EarlyControl_classEqualityBorrow : s2Step65EarlyControlPositiveArena.checkBorrow (([822, 825] : List Wire).length-1) s2Step65EarlyControlLog.classWork=some s2Step65EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step65EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step65EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step65EarlyControlEqualityArena,s2Step65EarlyControlPositiveArena,s2Step65EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step65EarlyControl_classEqualityOwned : ([822, 825] : List Wire).toFinset⊆s2Step65EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step65EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65EarlyControl_classEquality : compileHmrEqualityLog s2Step65EarlyControlPositiveArena [822, 825] 0 s2Step65EarlyControlLog.classWork=some (s2Step65EarlyControlEqualityArena,s2Step65EarlyControlLog.classWork,s2Step65EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step65EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step65EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step65EarlyControl_classOwned : ([777, 814, 822] : List Wire).toFinset⊆s2Step65EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step65EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65EarlyControl_positiveBorrow : s2Step65EarlyControlZeroArena.checkBorrow (1) s2Step65EarlyControlLog.positiveWork=some s2Step65EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step65EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step65EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step65EarlyControlPositiveArena,s2Step65EarlyControlZeroArena,s2Step65EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step65EarlyControl_class : compileHmrSourceClassLog s2Step65EarlyControlZeroArena false 777 s2Step65EarlyControlZeroPlan.top 0 822 s2Step65EarlyControlLog.positiveWork s2Step65EarlyControlLog.classWork=some s2Step65EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step65EarlyControlClassPlan s2Step65EarlyControlZeroArena false 777 s2Step65EarlyControlZeroPlan.top 0 822
  constructor
  · decide +kernel
  · exact s2Step65EarlyControl_classOwned
  · exact s2Step65EarlyControl_positiveBorrow
  · exact s2Step65EarlyControl_classEquality

private theorem s2Step65EarlyControl_entryRecordOwned : ([824, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870] : List Wire).toFinset⊆s2Step65EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step65EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65EarlyControl_entrySigmaOwned : ([822, 254] : List Wire).toFinset⊆s2Step65EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step65EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65EarlyControl_fitBorrow : s2Step65EarlyControlFlagArena.checkBorrow ((29-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870] : List Wire).length)) s2Step65EarlyControlLog.recordFresh=some s2Step65EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step65EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step65EarlyControlFlagArena (fun q => (0≤q ∧ q<868) ∨ (869≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step65EarlyControlFittedArena,s2Step65EarlyControlFlagArena,s2Step65EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step65EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870] : List Wire).toFinset⊆s2Step65EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step65EarlyControlFlagArena (fun q => (0≤q ∧ q<868) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65EarlyControl_fit : compileHmrRecordGrowLog s2Step65EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870] 29 s2Step65EarlyControlLog.recordFresh=some s2Step65EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step65EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step65EarlyControl_fitBorrow

private theorem s2Step65EarlyControl_flagsBorrow : s2Step65EarlyControlEqualityArena.checkBorrow (6) s2Step65EarlyControlLog.flagWork=some s2Step65EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step65EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step65EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step65EarlyControlFlagArena,s2Step65EarlyControlEqualityArena,s2Step65EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step65EarlyControl_flagsOwned : ([816, 253, 252, 251] : List Wire).toFinset⊆s2Step65EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step65EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65EarlyControl_flags : compileHmrFlagsLog s2Step65EarlyControlClassPlan.equalityArena s2Step65EarlyControlClassPlan.equality.top 253 252 251 s2Step65EarlyControlLog.flagWork=some s2Step65EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step65EarlyControl_flagsOwned⟩
  · exact s2Step65EarlyControl_flagsBorrow

private theorem s2Step65EarlyControl_historyBorrow : s2Step65EarlyControlArena.checkBorrow ((29-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870] : List Wire).length)) s2Step65EarlyControlLog.recordFresh=some s2Step65EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step65EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step65EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step65EarlyControlHistoryArena,s2Step65EarlyControlArena,s2Step65EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step65EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870] : List Wire).toFinset⊆s2Step65EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step65EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65EarlyControl_history : compileHmrRecordGrowLog s2Step65EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870] 29 s2Step65EarlyControlLog.recordFresh=some s2Step65EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step65EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step65EarlyControl_historyBorrow

private theorem s2Step65EarlyControl_sigmaOwned : ([254, 822] : List Wire).toFinset⊆s2Step65EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step65EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65EarlyControl_sigmaReleaseOwned : ([822] : List Wire).toFinset⊆s2Step65EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step65EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65EarlyControl_sigmaRelease : s2Step65EarlyControlHistoryArena.release {822} (fun _ => false)=some s2Step65EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step65EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step65EarlyControlSigmaArena,s2Step65EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step65EarlyControl_sigma : compileHmrSigmaDropLog s2Step65EarlyControlHistoryArena false 0 0 254 822 []=some s2Step65EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step65EarlyControl_sigmaOwned⟩
  · exact s2Step65EarlyControl_sigmaRelease

private theorem s2Step65EarlyControl_zeroBorrow : s2Step65EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step65EarlyControlLog.zeroWork=some s2Step65EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step65EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step65EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
      decide +kernel
    · ext q
      simp [s2Step65EarlyControlZeroArena,s2Step65EarlyControlArena,s2Step65EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step65EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step65EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step65EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65EarlyControl_zero : compileHmrEqualityLog s2Step65EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step65EarlyControlLog.zeroWork=some (s2Step65EarlyControlZeroArena,s2Step65EarlyControlLog.zeroWork,s2Step65EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step65EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step65EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step65EarlyControl_logged : s2Step65EarlyControlPlan.Logged s2Step65EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870] 777 822 254 253 252 251 824 29 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step65EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step65EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step65EarlyControl_zero
  · exact s2Step65EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step65EarlyControl_flags
  · exact s2Step65EarlyControl_fit
  · exact s2Step65EarlyControl_history
  · exact s2Step65EarlyControl_sigma
  · exact s2Step65EarlyControl_branch

private theorem s2Step65EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step65EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870] 777 822 254 253 252 251 824 29 s2Step65EarlyControlLog=some s2Step65EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step65EarlyControlPlan s2Step65EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870] 777 822 254 253 252 251 824 29 s2Step65EarlyControl_logged

private def s2Step65EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747],768⟩

private def s2Step65EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820],770⟩

private def s2Step65EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235],769⟩

private def s2Step65EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩

private def s2Step65FrontBank : WindowBank := ⟨s2Step65EntryFRow,s2Step65EntryGRow,s2Step65EntryFvRow,s2Step65EntryGvRow⟩

private def s2Step65Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 814, 768]

private def s2Step65Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 825, 769]

private def s2Step65Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 770]

private def s2Step65Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 844, 771]

private theorem s2Step65Counter_apart : Disjoint s2Step65HeadFvAfter.live s2Step65CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step65HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65Counter_borrowed : s2Step65HeadFvAfter.checkBorrow 4 s2Step65CounterWork=some s2Step65CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step65HeadFvAfter s2Step65CounterDuring s2Step65CounterWork.toFinset s2Step65Counter_bounded s2Step65Counter_apart rfl

private theorem s2Step65Counter_owned : (822::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step65HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step65HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65Counter_checked : compileHmrCounterStepLog s2Step65HeadFvAfter true 822 [772, 773, 774, 775, 776, 777] s2Step65CounterWork=some s2Step65CounterDuring := by
  have owned : ∀q∈822::[772, 773, 774, 775, 776, 777],q∈s2Step65HeadFvAfter.live := fun q hq => s2Step65Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step65Counter_borrowed

private def s2Step65EntryFAfter : Arena := s2Step65EntryFBefore

private theorem s2Step65EntryBank_incomingDistinct : ([s2Step65EntryFRow,s2Step65EntryGRow,s2Step65EntryFvRow,s2Step65EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65EntryF_Incoming : rowsOwned s2Step65EntryFBefore [s2Step65EntryFRow,s2Step65EntryGRow,s2Step65EntryFvRow,s2Step65EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step65EntryFRow,s2Step65EntryGRow,s2Step65EntryFvRow,s2Step65EntryGvRow] 0 s2Step65EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step65EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step65EntryBank_outgoingOwned : rowsOwned s2Step65EntryGvAfter [s2Step65EntryFOut,s2Step65EntryGOut,s2Step65EntryFvOut,s2Step65EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step65EntryGvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step65EntryF_Outgoing : rowsOwned s2Step65EntryGvAfter [s2Step65EntryFOut,s2Step65EntryGOut,s2Step65EntryFvOut,s2Step65EntryGvOut] :=
  hmrRows_owned_drop s2Step65EntryGvAfter [s2Step65EntryFOut,s2Step65EntryGOut,s2Step65EntryFvOut,s2Step65EntryGvOut] 0 s2Step65EntryBank_outgoingOwned

private theorem s2Step65EntryF_distinct : (s2Step65EntryFRow.sign::s2Step65EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65EntryF_owned : (s2Step65EntryFRow.sign::s2Step65EntryFRow.payload).toFinset⊆s2Step65EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step65EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65EntryF_reserved : s2Step65EntryFBefore.reserve s2Step65EntryFFresh.toFinset=some s2Step65EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step65EntryFFresh,arenaWires]
  · norm_num [s2Step65EntryFBefore,s2Step65EntryFFresh,arenaWires]
  · simp only [s2Step65EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step65EntryF_checked : planRowResizeLog s2Step65EntryFBefore s2Step65EntryFRow 236 s2Step65EntryFFresh=
    some (s2Step65EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747],768⟩,growRow 768 s2Step65EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step65EntryFBefore s2Step65EntryFAfter s2Step65EntryFRow 236 s2Step65EntryFFresh
    s2Step65EntryF_distinct s2Step65EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step65EntryF_reserved
  have rowEq : WindowRow.mk (s2Step65EntryFRow.payload++s2Step65EntryFFresh) s2Step65EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step65EntryFvBefore : Arena := s2Step65EntryFBefore

private theorem s2Step65EntryFv_Incoming : rowsOwned s2Step65EntryFvBefore [s2Step65EntryFvRow,s2Step65EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step65EntryFRow,s2Step65EntryGRow,s2Step65EntryFvRow,s2Step65EntryGvRow] 2 s2Step65EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step65EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step65EntryFv_Outgoing : rowsOwned s2Step65EntryGvAfter [s2Step65EntryFvOut,s2Step65EntryGvOut] :=
  hmrRows_owned_drop s2Step65EntryGvAfter [s2Step65EntryFOut,s2Step65EntryGOut,s2Step65EntryFvOut,s2Step65EntryGvOut] 2 s2Step65EntryBank_outgoingOwned

private theorem s2Step65EntryFv_distinct : (s2Step65EntryFvRow.sign::s2Step65EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65EntryFv_owned : (s2Step65EntryFvRow.sign::s2Step65EntryFvRow.payload).toFinset⊆s2Step65EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step65EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65EntryFv_reserved : s2Step65EntryFvBefore.reserve s2Step65EntryFvFresh.toFinset=some s2Step65EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step65EntryFvFresh,arenaWires]
  · norm_num [s2Step65EntryFvBefore,s2Step65EntryFBefore,s2Step65EntryFvFresh,arenaWires]
  · ext q
    simp only [s2Step65EntryFvAfter,s2Step65EntryFvBefore,s2Step65EntryFBefore,s2Step65EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step65EntryFv_checked : planRowResizeLog s2Step65EntryFvBefore s2Step65EntryFvRow 46 s2Step65EntryFvFresh=
    some (s2Step65EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817],770⟩,growRow 770 s2Step65EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step65EntryFvBefore s2Step65EntryFvAfter s2Step65EntryFvRow 46 s2Step65EntryFvFresh
    s2Step65EntryFv_distinct s2Step65EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step65EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step65EntryFvRow.payload++s2Step65EntryFvFresh) s2Step65EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step65EntryGAfter : Arena := s2Step65EntryFBefore

private def s2Step65EntryGBefore : Arena := s2Step65EntryFBefore

private theorem s2Step65EntryG_Incoming : rowsOwned s2Step65EntryGBefore [s2Step65EntryGRow,s2Step65EntryFvRow,s2Step65EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step65EntryFRow,s2Step65EntryGRow,s2Step65EntryFvRow,s2Step65EntryGvRow] 1 s2Step65EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step65EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step65EntryG_Outgoing : rowsOwned s2Step65EntryGvAfter [s2Step65EntryGOut,s2Step65EntryFvOut,s2Step65EntryGvOut] :=
  hmrRows_owned_drop s2Step65EntryGvAfter [s2Step65EntryFOut,s2Step65EntryGOut,s2Step65EntryFvOut,s2Step65EntryGvOut] 1 s2Step65EntryBank_outgoingOwned

private theorem s2Step65EntryG_distinct : (s2Step65EntryGRow.sign::s2Step65EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65EntryG_owned : (s2Step65EntryGRow.sign::s2Step65EntryGRow.payload).toFinset⊆s2Step65EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step65EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65EntryG_reserved : s2Step65EntryGBefore.reserve s2Step65EntryGFresh.toFinset=some s2Step65EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step65EntryGFresh,arenaWires]
  · norm_num [s2Step65EntryGBefore,s2Step65EntryFBefore,s2Step65EntryGFresh,arenaWires]
  · simp only [s2Step65EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step65EntryG_checked : planRowResizeLog s2Step65EntryGBefore s2Step65EntryGRow 236 s2Step65EntryGFresh=
    some (s2Step65EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235],769⟩,growRow 769 s2Step65EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step65EntryGBefore s2Step65EntryGAfter s2Step65EntryGRow 236 s2Step65EntryGFresh
    s2Step65EntryG_distinct s2Step65EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step65EntryG_reserved
  have rowEq : WindowRow.mk (s2Step65EntryGRow.payload++s2Step65EntryGFresh) s2Step65EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step65EntryGvBefore : Arena := s2Step65EntryFvAfter

private theorem s2Step65EntryGv_Incoming : rowsOwned s2Step65EntryGvBefore [s2Step65EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step65EntryFRow,s2Step65EntryGRow,s2Step65EntryFvRow,s2Step65EntryGvRow] 3 s2Step65EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step65EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step65EntryGv_Outgoing : rowsOwned s2Step65EntryGvAfter [s2Step65EntryGvOut] :=
  hmrRows_owned_drop s2Step65EntryGvAfter [s2Step65EntryFOut,s2Step65EntryGOut,s2Step65EntryFvOut,s2Step65EntryGvOut] 3 s2Step65EntryBank_outgoingOwned

private theorem s2Step65EntryGv_distinct : (s2Step65EntryGvRow.sign::s2Step65EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65EntryGv_owned : (s2Step65EntryGvRow.sign::s2Step65EntryGvRow.payload).toFinset⊆s2Step65EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step65EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65EntryGv_reserved : s2Step65EntryGvBefore.reserve s2Step65EntryGvFresh.toFinset=some s2Step65EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step65EntryGvFresh,arenaWires]
  · norm_num [s2Step65EntryGvBefore,s2Step65EntryFvAfter,s2Step65EntryGvFresh,arenaWires]
  · simp only [s2Step65EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step65EntryGv_checked : planRowResizeLog s2Step65EntryGvBefore s2Step65EntryGvRow 46 s2Step65EntryGvFresh=
    some (s2Step65EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩,growRow 771 s2Step65EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step65EntryGvBefore s2Step65EntryGvAfter s2Step65EntryGvRow 46 s2Step65EntryGvFresh
    s2Step65EntryGv_distinct s2Step65EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step65EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step65EntryGvRow.payload++s2Step65EntryGvFresh) s2Step65EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step65EntryBank_rows : planWindowRowsLog s2Step65EntryFBefore [(s2Step65EntryFRow,236),(s2Step65EntryGRow,236),(s2Step65EntryFvRow,46),(s2Step65EntryGvRow,46)] [s2Step65EntryFFresh,s2Step65EntryGFresh,s2Step65EntryFvFresh,s2Step65EntryGvFresh]=
    some (s2Step65EntryGvAfter,[s2Step65EntryFOut,s2Step65EntryGOut,s2Step65EntryFvOut,s2Step65EntryGvOut],(growRow 768 s2Step65EntryFFresh ++ (growRow 769 s2Step65EntryGFresh ++ (growRow 770 s2Step65EntryFvFresh ++ (growRow 771 s2Step65EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step65EntryGvAfter [] []=some (s2Step65EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step65EntryGvBefore s2Step65EntryGvAfter s2Step65EntryGvAfter
    s2Step65EntryGvRow s2Step65EntryGvOut 46 s2Step65EntryGvFresh [] [] []
    (growRow 771 s2Step65EntryGvFresh) ([]) s2Step65EntryGv_Incoming s2Step65EntryGv_checked h4 s2Step65EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step65EntryFvBefore s2Step65EntryFvAfter s2Step65EntryGvAfter
    s2Step65EntryFvRow s2Step65EntryFvOut 46 s2Step65EntryFvFresh [(s2Step65EntryGvRow,46)] [s2Step65EntryGvFresh] [s2Step65EntryGvOut]
    (growRow 770 s2Step65EntryFvFresh) ((growRow 771 s2Step65EntryGvFresh ++ [])) s2Step65EntryFv_Incoming s2Step65EntryFv_checked h3 s2Step65EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step65EntryGBefore s2Step65EntryGAfter s2Step65EntryGvAfter
    s2Step65EntryGRow s2Step65EntryGOut 236 s2Step65EntryGFresh [(s2Step65EntryFvRow,46),(s2Step65EntryGvRow,46)] [s2Step65EntryFvFresh,s2Step65EntryGvFresh] [s2Step65EntryFvOut,s2Step65EntryGvOut]
    (growRow 769 s2Step65EntryGFresh) ((growRow 770 s2Step65EntryFvFresh ++ (growRow 771 s2Step65EntryGvFresh ++ []))) s2Step65EntryG_Incoming s2Step65EntryG_checked h2 s2Step65EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step65EntryFBefore s2Step65EntryFAfter s2Step65EntryGvAfter
    s2Step65EntryFRow s2Step65EntryFOut 236 s2Step65EntryFFresh [(s2Step65EntryGRow,236),(s2Step65EntryFvRow,46),(s2Step65EntryGvRow,46)] [s2Step65EntryGFresh,s2Step65EntryFvFresh,s2Step65EntryGvFresh] [s2Step65EntryGOut,s2Step65EntryFvOut,s2Step65EntryGvOut]
    (growRow 768 s2Step65EntryFFresh) ((growRow 769 s2Step65EntryGFresh ++ (growRow 770 s2Step65EntryFvFresh ++ (growRow 771 s2Step65EntryGvFresh ++ [])))) s2Step65EntryF_Incoming s2Step65EntryF_checked h1 s2Step65EntryF_Outgoing
  exact h0

private theorem s2Step65EntryBank_checked : compileHmrBankResizeLog .entry s2Step65EntryFBefore ⟨s2Step65EntryFRow,s2Step65EntryGRow,s2Step65EntryFvRow,s2Step65EntryGvRow⟩ ⟨236,236,46,46⟩ [s2Step65EntryFFresh,s2Step65EntryGFresh,s2Step65EntryFvFresh,s2Step65EntryGvFresh]=
    some (s2Step65EntryGvAfter,⟨s2Step65EntryFOut,s2Step65EntryGOut,s2Step65EntryFvOut,s2Step65EntryGvOut⟩,(growRow 768 s2Step65EntryFFresh ++ (growRow 769 s2Step65EntryGFresh ++ (growRow 770 s2Step65EntryFvFresh ++ (growRow 771 s2Step65EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step65EntryBank_rows]
  rfl

private def s2Step65ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<235) ∨ (236≤q ∧ q<747) ∨ (748≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<235) ∨ (236≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65ExitFBefore : Arena := s2Step65ExitGAfter

private def s2Step65ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 814],768⟩

private def s2Step65ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩

private def s2Step65ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 825],769⟩

private def s2Step65ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 844],771⟩

private theorem s2Step65ExitBank_incomingDistinct : ([s2Step65ExitGRow,s2Step65ExitFRow,s2Step65ExitFvRow,s2Step65ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65ExitF_Incoming : rowsOwned s2Step65ExitFBefore [s2Step65ExitFRow,s2Step65ExitFvRow,s2Step65ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step65ExitGRow,s2Step65ExitFRow,s2Step65ExitFvRow,s2Step65ExitGvRow] 1 s2Step65ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step65ExitFBefore (fun q => (0≤q ∧ q<235) ∨ (236≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step65ExitBank_outgoingOwned : rowsOwned s2Step65ExitGvAfter [s2Step65ExitGOut,s2Step65ExitFOut,s2Step65ExitFvOut,s2Step65ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step65ExitGvAfter (fun q => (0≤q ∧ q<235) ∨ (236≤q ∧ q<747) ∨ (748≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step65ExitF_Outgoing : rowsOwned s2Step65ExitGvAfter [s2Step65ExitFOut,s2Step65ExitFvOut,s2Step65ExitGvOut] :=
  hmrRows_owned_drop s2Step65ExitGvAfter [s2Step65ExitGOut,s2Step65ExitFOut,s2Step65ExitFvOut,s2Step65ExitGvOut] 1 s2Step65ExitBank_outgoingOwned

private theorem s2Step65ExitF_distinct : (s2Step65ExitFRow.sign::s2Step65ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65ExitF_owned : (s2Step65ExitFRow.sign::s2Step65ExitFRow.payload).toFinset⊆s2Step65ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step65ExitFBefore (fun q => (0≤q ∧ q<235) ∨ (236≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65ExitF_retired : s2Step65ExitFBefore.retireSet s2Step65ExitFExtra.toFinset=s2Step65ExitFAfter := by
  unfold Arena.retireSet s2Step65ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step65ExitFBefore,s2Step65ExitGAfter,s2Step65ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step65ExitF_checked : planRowResizeLog s2Step65ExitFBefore s2Step65ExitFRow 235 []=
    some (s2Step65ExitFAfter,s2Step65ExitFOut,shrinkRow 768 s2Step65ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step65ExitFBefore s2Step65ExitFRow 235 s2Step65ExitF_distinct s2Step65ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step65ExitFRow.payload.take 235) s2Step65ExitFRow.sign=s2Step65ExitFOut := by decide +kernel
  have hi : s2Step65ExitFRow.payload.drop 235=s2Step65ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step65ExitF_retired] at result
  exact result

private def s2Step65ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<235) ∨ (236≤q ∧ q<747) ∨ (748≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65ExitFvBefore : Arena := s2Step65ExitFAfter

private theorem s2Step65ExitFv_Incoming : rowsOwned s2Step65ExitFvBefore [s2Step65ExitFvRow,s2Step65ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step65ExitGRow,s2Step65ExitFRow,s2Step65ExitFvRow,s2Step65ExitGvRow] 2 s2Step65ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step65ExitFvBefore (fun q => (0≤q ∧ q<235) ∨ (236≤q ∧ q<747) ∨ (748≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step65ExitFv_Outgoing : rowsOwned s2Step65ExitGvAfter [s2Step65ExitFvOut,s2Step65ExitGvOut] :=
  hmrRows_owned_drop s2Step65ExitGvAfter [s2Step65ExitGOut,s2Step65ExitFOut,s2Step65ExitFvOut,s2Step65ExitGvOut] 2 s2Step65ExitBank_outgoingOwned

private theorem s2Step65ExitFv_distinct : (s2Step65ExitFvRow.sign::s2Step65ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65ExitFv_owned : (s2Step65ExitFvRow.sign::s2Step65ExitFvRow.payload).toFinset⊆s2Step65ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step65ExitFvBefore (fun q => (0≤q ∧ q<235) ∨ (236≤q ∧ q<747) ∨ (748≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65ExitFv_retired : s2Step65ExitFvBefore.retireSet s2Step65ExitFvExtra.toFinset=s2Step65ExitFvAfter := by
  unfold Arena.retireSet s2Step65ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step65ExitFvBefore,s2Step65ExitFAfter,s2Step65ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step65ExitFv_checked : planRowResizeLog s2Step65ExitFvBefore s2Step65ExitFvRow 46 []=
    some (s2Step65ExitFvAfter,s2Step65ExitFvOut,shrinkRow 770 s2Step65ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step65ExitFvBefore s2Step65ExitFvRow 46 s2Step65ExitFv_distinct s2Step65ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step65ExitFvRow.payload.take 46) s2Step65ExitFvRow.sign=s2Step65ExitFvOut := by decide +kernel
  have hi : s2Step65ExitFvRow.payload.drop 46=s2Step65ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step65ExitFv_retired] at result
  exact result

private def s2Step65ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private theorem s2Step65ExitG_Incoming : rowsOwned s2Step65ExitGBefore [s2Step65ExitGRow,s2Step65ExitFRow,s2Step65ExitFvRow,s2Step65ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step65ExitGRow,s2Step65ExitFRow,s2Step65ExitFvRow,s2Step65ExitGvRow] 0 s2Step65ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step65ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step65ExitG_Outgoing : rowsOwned s2Step65ExitGvAfter [s2Step65ExitGOut,s2Step65ExitFOut,s2Step65ExitFvOut,s2Step65ExitGvOut] :=
  hmrRows_owned_drop s2Step65ExitGvAfter [s2Step65ExitGOut,s2Step65ExitFOut,s2Step65ExitFvOut,s2Step65ExitGvOut] 0 s2Step65ExitBank_outgoingOwned

private theorem s2Step65ExitG_distinct : (s2Step65ExitGRow.sign::s2Step65ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65ExitG_owned : (s2Step65ExitGRow.sign::s2Step65ExitGRow.payload).toFinset⊆s2Step65ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step65ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65ExitG_retired : s2Step65ExitGBefore.retireSet s2Step65ExitGExtra.toFinset=s2Step65ExitGAfter := by
  unfold Arena.retireSet s2Step65ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step65ExitGBefore,s2Step65ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step65ExitG_checked : planRowResizeLog s2Step65ExitGBefore s2Step65ExitGRow 235 []=
    some (s2Step65ExitGAfter,s2Step65ExitGOut,shrinkRow 769 s2Step65ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step65ExitGBefore s2Step65ExitGRow 235 s2Step65ExitG_distinct s2Step65ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step65ExitGRow.payload.take 235) s2Step65ExitGRow.sign=s2Step65ExitGOut := by decide +kernel
  have hi : s2Step65ExitGRow.payload.drop 235=s2Step65ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step65ExitG_retired] at result
  exact result

private def s2Step65ExitGvBefore : Arena := s2Step65ExitFvAfter

private theorem s2Step65ExitGv_Incoming : rowsOwned s2Step65ExitGvBefore [s2Step65ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step65ExitGRow,s2Step65ExitFRow,s2Step65ExitFvRow,s2Step65ExitGvRow] 3 s2Step65ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step65ExitGvBefore (fun q => (0≤q ∧ q<235) ∨ (236≤q ∧ q<747) ∨ (748≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step65ExitGv_Outgoing : rowsOwned s2Step65ExitGvAfter [s2Step65ExitGvOut] :=
  hmrRows_owned_drop s2Step65ExitGvAfter [s2Step65ExitGOut,s2Step65ExitFOut,s2Step65ExitFvOut,s2Step65ExitGvOut] 3 s2Step65ExitBank_outgoingOwned

private theorem s2Step65ExitGv_distinct : (s2Step65ExitGvRow.sign::s2Step65ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65ExitGv_owned : (s2Step65ExitGvRow.sign::s2Step65ExitGvRow.payload).toFinset⊆s2Step65ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step65ExitGvBefore (fun q => (0≤q ∧ q<235) ∨ (236≤q ∧ q<747) ∨ (748≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65ExitGv_retired : s2Step65ExitGvBefore.retireSet s2Step65ExitGvExtra.toFinset=s2Step65ExitGvAfter := by
  unfold Arena.retireSet s2Step65ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step65ExitGvBefore,s2Step65ExitFvAfter,s2Step65ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step65ExitGv_checked : planRowResizeLog s2Step65ExitGvBefore s2Step65ExitGvRow 46 []=
    some (s2Step65ExitGvAfter,s2Step65ExitGvOut,shrinkRow 771 s2Step65ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step65ExitGvBefore s2Step65ExitGvRow 46 s2Step65ExitGv_distinct s2Step65ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step65ExitGvRow.payload.take 46) s2Step65ExitGvRow.sign=s2Step65ExitGvOut := by decide +kernel
  have hi : s2Step65ExitGvRow.payload.drop 46=s2Step65ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step65ExitGv_retired] at result
  exact result

private theorem s2Step65ExitBank_rows : planWindowRowsLog s2Step65ExitGBefore [(s2Step65ExitGRow,235),(s2Step65ExitFRow,235),(s2Step65ExitFvRow,46),(s2Step65ExitGvRow,46)] [[],[],[],[]]=
    some (s2Step65ExitGvAfter,[s2Step65ExitGOut,s2Step65ExitFOut,s2Step65ExitFvOut,s2Step65ExitGvOut],(shrinkRow 769 s2Step65ExitGExtra ++ (shrinkRow 768 s2Step65ExitFExtra ++ (shrinkRow 770 s2Step65ExitFvExtra ++ (shrinkRow 771 s2Step65ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step65ExitGvAfter [] []=some (s2Step65ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step65ExitGvBefore s2Step65ExitGvAfter s2Step65ExitGvAfter
    s2Step65ExitGvRow s2Step65ExitGvOut 46 [] [] [] []
    (shrinkRow 771 s2Step65ExitGvExtra) ([]) s2Step65ExitGv_Incoming s2Step65ExitGv_checked h4 s2Step65ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step65ExitFvBefore s2Step65ExitFvAfter s2Step65ExitGvAfter
    s2Step65ExitFvRow s2Step65ExitFvOut 46 [] [(s2Step65ExitGvRow,46)] [[]] [s2Step65ExitGvOut]
    (shrinkRow 770 s2Step65ExitFvExtra) ((shrinkRow 771 s2Step65ExitGvExtra ++ [])) s2Step65ExitFv_Incoming s2Step65ExitFv_checked h3 s2Step65ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step65ExitFBefore s2Step65ExitFAfter s2Step65ExitGvAfter
    s2Step65ExitFRow s2Step65ExitFOut 235 [] [(s2Step65ExitFvRow,46),(s2Step65ExitGvRow,46)] [[],[]] [s2Step65ExitFvOut,s2Step65ExitGvOut]
    (shrinkRow 768 s2Step65ExitFExtra) ((shrinkRow 770 s2Step65ExitFvExtra ++ (shrinkRow 771 s2Step65ExitGvExtra ++ []))) s2Step65ExitF_Incoming s2Step65ExitF_checked h2 s2Step65ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step65ExitGBefore s2Step65ExitGAfter s2Step65ExitGvAfter
    s2Step65ExitGRow s2Step65ExitGOut 235 [] [(s2Step65ExitFRow,235),(s2Step65ExitFvRow,46),(s2Step65ExitGvRow,46)] [[],[],[]] [s2Step65ExitFOut,s2Step65ExitFvOut,s2Step65ExitGvOut]
    (shrinkRow 769 s2Step65ExitGExtra) ((shrinkRow 768 s2Step65ExitFExtra ++ (shrinkRow 770 s2Step65ExitFvExtra ++ (shrinkRow 771 s2Step65ExitGvExtra ++ [])))) s2Step65ExitG_Incoming s2Step65ExitG_checked h1 s2Step65ExitG_Outgoing
  exact h0

private theorem s2Step65ExitBank_checked : compileHmrBankResizeLog .exit s2Step65ExitGBefore ⟨s2Step65ExitFRow,s2Step65ExitGRow,s2Step65ExitFvRow,s2Step65ExitGvRow⟩ ⟨235,235,46,46⟩ [[],[],[],[]]=
    some (s2Step65ExitGvAfter,⟨s2Step65ExitFOut,s2Step65ExitGOut,s2Step65ExitFvOut,s2Step65ExitGvOut⟩,(shrinkRow 769 s2Step65ExitGExtra ++ (shrinkRow 768 s2Step65ExitFExtra ++ (shrinkRow 770 s2Step65ExitFvExtra ++ (shrinkRow 771 s2Step65ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step65ExitBank_rows]
  rfl

private theorem s2Step65Add0_apart : Disjoint s2Step65Add0Arena.live s2Step65Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step65Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65Add0_card : s2Step65Add0Arena.live.card=866 := by
  decide +kernel

private theorem s2Step65Add0_borrowed : s2Step65Add0Arena.checkBorrow (hmrHybridCount s2Step65Add0Arena s2Step65Add0B.length) s2Step65Add0Work=some s2Step65Add0During := by
  have len : s2Step65Add0Work.length=hmrHybridCount s2Step65Add0Arena s2Step65Add0B.length := by
    rw [hmrHybridCount,s2Step65Add0_card]
    decide +kernel
  have nd : s2Step65Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step65Add0Arena s2Step65Add0During s2Step65Add0Work.toFinset s2Step65Add0_bounded s2Step65Add0_apart rfl

private theorem s2Step65Add0_distinct : (816::824::845::(s2Step65Add0A++s2Step65Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65Add0_owned : (816::824::845::(s2Step65Add0A++s2Step65Add0B)).toFinset⊆s2Step65Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step65Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65Add0_checked : compileHmrHybridCinLog s2Step65Add0Arena 824 816 845 s2Step65Add0A s2Step65Add0B s2Step65Add0Work=some s2Step65Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step65Add0Arena s2Step65Add0During 824 816 845 s2Step65Add0A s2Step65Add0B s2Step65Add0Work
    (by decide +kernel) (by decide +kernel) s2Step65Add0_distinct
    (fun q hq => s2Step65Add0_owned (List.mem_toFinset.mpr hq)) s2Step65Add0_borrowed

private theorem s2Step65Add1_apart : Disjoint s2Step65Add1Arena.live s2Step65Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step65Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65Add1_card : s2Step65Add1Arena.live.card=866 := by
  decide +kernel

private theorem s2Step65Add1_borrowed : s2Step65Add1Arena.checkBorrow (hmrHybridCount s2Step65Add1Arena s2Step65Add1B.length) s2Step65Add1Work=some s2Step65Add1During := by
  have len : s2Step65Add1Work.length=hmrHybridCount s2Step65Add1Arena s2Step65Add1B.length := by
    rw [hmrHybridCount,s2Step65Add1_card]
    decide +kernel
  have nd : s2Step65Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step65Add1Arena s2Step65Add1During s2Step65Add1Work.toFinset s2Step65Add1_bounded s2Step65Add1_apart rfl

private theorem s2Step65Add1_distinct : (816::824::845::(s2Step65Add1A++s2Step65Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65Add1_owned : (816::824::845::(s2Step65Add1A++s2Step65Add1B)).toFinset⊆s2Step65Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step65Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65Add1_checked : compileHmrHybridCinLog s2Step65Add1Arena 824 816 845 s2Step65Add1A s2Step65Add1B s2Step65Add1Work=some s2Step65Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step65Add1Arena s2Step65Add1During 824 816 845 s2Step65Add1A s2Step65Add1B s2Step65Add1Work
    (by decide +kernel) (by decide +kernel) s2Step65Add1_distinct
    (fun q hq => s2Step65Add1_owned (List.mem_toFinset.mpr hq)) s2Step65Add1_borrowed

private theorem s2Step65F4_apart : Disjoint (s2Step65Add0A++s2Step65Add0B).toFinset (s2Step65Add1A++s2Step65Add1B).toFinset := by
  have nd : ((s2Step65Add0A++s2Step65Add0B)++(s2Step65Add1A++s2Step65Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step65F4_carry : s2Step65F4FlagArena.checkBorrow 1 [845]=some s2Step65Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step65F4FlagArena,s2Step65HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step65F4FlagArena,s2Step65HeadFvAfter,s2Step65Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step65F4_distinct : (822::824::816::845::((s2Step65Add0A++s2Step65Add1A)++(s2Step65Add0B++s2Step65Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65F4_flag : s2Step65HeadFvAfter.checkBorrow 1 [816]=some s2Step65F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step65HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step65F4_owned : (822::824::((s2Step65Add0A++s2Step65Add1A)++(s2Step65Add0B++s2Step65Add1B))).toFinset⊆s2Step65HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step65HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65F4_checked : compileHmrHybridF4Log s2Step65HeadFvAfter 822 824 s2Step65Add0A s2Step65Add0B s2Step65Add1A s2Step65Add1B [816] [845] s2Step65Add0Work s2Step65Add1Work=some s2Step65F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step65HeadFvAfter s2Step65F4FlagArena s2Step65Add0Arena s2Step65Add0During s2Step65Add1During 822 824
    s2Step65Add0A s2Step65Add0B s2Step65Add1A s2Step65Add1B [816] [845] s2Step65Add0Work s2Step65Add1Work
    (fun q hq => s2Step65F4_owned (List.mem_toFinset.mpr hq)) s2Step65F4_flag s2Step65F4_carry
    s2Step65F4_distinct s2Step65F4_apart s2Step65Add0_checked s2Step65Add1_checked

private theorem s2Step65Front_branch : s2Step65FrontSigmaArena.checkBorrow 1 [824]=some s2Step65HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step65FrontSigmaArena,s2Step65EntryGvAfter,s2Step65EntryFvAfter,arenaWires]
  · ext q
    simp only [s2Step65FrontSigmaArena,s2Step65EntryGvAfter,s2Step65EntryFvAfter,s2Step65HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step65Front_entry : HmrFrontEntryValid s2Step65EntryFBefore s2Step65FrontBank 236 46 ⟨235,235,46,46⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step65FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step65EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step65EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step65FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step65Front_sigma : s2Step65EntryGvAfter.checkBorrow 1 [822]=some s2Step65FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step65EntryGvAfter,s2Step65EntryFvAfter,arenaWires]
  · rfl

private def s2Step65HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65HeadFBefore : Arena := s2Step65HeadGAfter

private def s2Step65HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747],768⟩

private def s2Step65HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817],770⟩

private def s2Step65HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235],769⟩

private def s2Step65HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩

private theorem s2Step65HeadBank_incomingDistinct : ([s2Step65HeadGRow,s2Step65HeadFRow,s2Step65HeadGvRow,s2Step65HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65HeadF_Incoming : rowsOwned s2Step65HeadFBefore [s2Step65HeadFRow,s2Step65HeadGvRow,s2Step65HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step65HeadGRow,s2Step65HeadFRow,s2Step65HeadGvRow,s2Step65HeadFvRow] 1 s2Step65HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step65HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step65HeadBank_outgoingOwned : rowsOwned s2Step65HeadFvAfter [s2Step65HeadGOut,s2Step65HeadFOut,s2Step65HeadGvOut,s2Step65HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step65HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step65HeadF_Outgoing : rowsOwned s2Step65HeadFvAfter [s2Step65HeadFOut,s2Step65HeadGvOut,s2Step65HeadFvOut] :=
  hmrRows_owned_drop s2Step65HeadFvAfter [s2Step65HeadGOut,s2Step65HeadFOut,s2Step65HeadGvOut,s2Step65HeadFvOut] 1 s2Step65HeadBank_outgoingOwned

private theorem s2Step65HeadF_distinct : (s2Step65HeadFRow.sign::s2Step65HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65HeadF_owned : (s2Step65HeadFRow.sign::s2Step65HeadFRow.payload).toFinset⊆s2Step65HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step65HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65HeadF_reserved : s2Step65HeadFBefore.reserve s2Step65HeadFFresh.toFinset=some s2Step65HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step65HeadFFresh,arenaWires]
  · norm_num [s2Step65HeadFBefore,s2Step65HeadGAfter,s2Step65HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step65HeadFAfter,s2Step65HeadFBefore,s2Step65HeadGAfter,s2Step65HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step65HeadF_checked : planRowResizeLog s2Step65HeadFBefore s2Step65HeadFRow 237 s2Step65HeadFFresh=
    some (s2Step65HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 814],768⟩,growRow 768 s2Step65HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step65HeadFBefore s2Step65HeadFAfter s2Step65HeadFRow 237 s2Step65HeadFFresh
    s2Step65HeadF_distinct s2Step65HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step65HeadF_reserved
  have rowEq : WindowRow.mk (s2Step65HeadFRow.payload++s2Step65HeadFFresh) s2Step65HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 814],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step65HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)),Finset.filter_subset _ _⟩

private def s2Step65HeadFvBefore : Arena := s2Step65HeadGvAfter

private theorem s2Step65HeadFv_Incoming : rowsOwned s2Step65HeadFvBefore [s2Step65HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step65HeadGRow,s2Step65HeadFRow,s2Step65HeadGvRow,s2Step65HeadFvRow] 3 s2Step65HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step65HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step65HeadFv_Outgoing : rowsOwned s2Step65HeadFvAfter [s2Step65HeadFvOut] :=
  hmrRows_owned_drop s2Step65HeadFvAfter [s2Step65HeadGOut,s2Step65HeadFOut,s2Step65HeadGvOut,s2Step65HeadFvOut] 3 s2Step65HeadBank_outgoingOwned

private theorem s2Step65HeadFv_distinct : (s2Step65HeadFvRow.sign::s2Step65HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65HeadFv_owned : (s2Step65HeadFvRow.sign::s2Step65HeadFvRow.payload).toFinset⊆s2Step65HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step65HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65HeadFv_reserved : s2Step65HeadFvBefore.reserve s2Step65HeadFvFresh.toFinset=some s2Step65HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step65HeadFvFresh,arenaWires]
  · norm_num [s2Step65HeadFvBefore,s2Step65HeadGvAfter,s2Step65HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step65HeadFvAfter,s2Step65HeadFvBefore,s2Step65HeadGvAfter,s2Step65HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step65HeadFv_checked : planRowResizeLog s2Step65HeadFvBefore s2Step65HeadFvRow 47 s2Step65HeadFvFresh=
    some (s2Step65HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩,growRow 770 s2Step65HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step65HeadFvBefore s2Step65HeadFvAfter s2Step65HeadFvRow 47 s2Step65HeadFvFresh
    s2Step65HeadFv_distinct s2Step65HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step65HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step65HeadFvRow.payload++s2Step65HeadFvFresh) s2Step65HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step65HeadG_Incoming : rowsOwned s2Step65HeadGBefore [s2Step65HeadGRow,s2Step65HeadFRow,s2Step65HeadGvRow,s2Step65HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step65HeadGRow,s2Step65HeadFRow,s2Step65HeadGvRow,s2Step65HeadFvRow] 0 s2Step65HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step65HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step65HeadG_Outgoing : rowsOwned s2Step65HeadFvAfter [s2Step65HeadGOut,s2Step65HeadFOut,s2Step65HeadGvOut,s2Step65HeadFvOut] :=
  hmrRows_owned_drop s2Step65HeadFvAfter [s2Step65HeadGOut,s2Step65HeadFOut,s2Step65HeadGvOut,s2Step65HeadFvOut] 0 s2Step65HeadBank_outgoingOwned

private theorem s2Step65HeadG_distinct : (s2Step65HeadGRow.sign::s2Step65HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65HeadG_owned : (s2Step65HeadGRow.sign::s2Step65HeadGRow.payload).toFinset⊆s2Step65HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step65HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65HeadG_reserved : s2Step65HeadGBefore.reserve s2Step65HeadGFresh.toFinset=some s2Step65HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step65HeadGFresh,arenaWires]
  · norm_num [s2Step65HeadGBefore,s2Step65HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step65HeadGAfter,s2Step65HeadGBefore,s2Step65HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step65HeadG_checked : planRowResizeLog s2Step65HeadGBefore s2Step65HeadGRow 237 s2Step65HeadGFresh=
    some (s2Step65HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 825],769⟩,growRow 769 s2Step65HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step65HeadGBefore s2Step65HeadGAfter s2Step65HeadGRow 237 s2Step65HeadGFresh
    s2Step65HeadG_distinct s2Step65HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step65HeadG_reserved
  have rowEq : WindowRow.mk (s2Step65HeadGRow.payload++s2Step65HeadGFresh) s2Step65HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 825],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step65HeadGvBefore : Arena := s2Step65HeadFAfter

private theorem s2Step65HeadGv_Incoming : rowsOwned s2Step65HeadGvBefore [s2Step65HeadGvRow,s2Step65HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step65HeadGRow,s2Step65HeadFRow,s2Step65HeadGvRow,s2Step65HeadFvRow] 2 s2Step65HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step65HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
    decide +kernel

private theorem s2Step65HeadGv_Outgoing : rowsOwned s2Step65HeadFvAfter [s2Step65HeadGvOut,s2Step65HeadFvOut] :=
  hmrRows_owned_drop s2Step65HeadFvAfter [s2Step65HeadGOut,s2Step65HeadFOut,s2Step65HeadGvOut,s2Step65HeadFvOut] 2 s2Step65HeadBank_outgoingOwned

private theorem s2Step65HeadGv_distinct : (s2Step65HeadGvRow.sign::s2Step65HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step65HeadGv_owned : (s2Step65HeadGvRow.sign::s2Step65HeadGvRow.payload).toFinset⊆s2Step65HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step65HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<872)) rfl
  decide +kernel

private theorem s2Step65HeadGv_reserved : s2Step65HeadGvBefore.reserve s2Step65HeadGvFresh.toFinset=some s2Step65HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step65HeadGvFresh,arenaWires]
  · norm_num [s2Step65HeadGvBefore,s2Step65HeadFAfter,s2Step65HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step65HeadGvAfter,s2Step65HeadGvBefore,s2Step65HeadFAfter,s2Step65HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step65HeadGv_checked : planRowResizeLog s2Step65HeadGvBefore s2Step65HeadGvRow 47 s2Step65HeadGvFresh=
    some (s2Step65HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 844],771⟩,growRow 771 s2Step65HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step65HeadGvBefore s2Step65HeadGvAfter s2Step65HeadGvRow 47 s2Step65HeadGvFresh
    s2Step65HeadGv_distinct s2Step65HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step65HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step65HeadGvRow.payload++s2Step65HeadGvFresh) s2Step65HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 844],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step65HeadBank_rows : planWindowRowsLog s2Step65HeadGBefore [(s2Step65HeadGRow,237),(s2Step65HeadFRow,237),(s2Step65HeadGvRow,47),(s2Step65HeadFvRow,47)] [s2Step65HeadGFresh,s2Step65HeadFFresh,s2Step65HeadGvFresh,s2Step65HeadFvFresh]=
    some (s2Step65HeadFvAfter,[s2Step65HeadGOut,s2Step65HeadFOut,s2Step65HeadGvOut,s2Step65HeadFvOut],(growRow 769 s2Step65HeadGFresh ++ (growRow 768 s2Step65HeadFFresh ++ (growRow 771 s2Step65HeadGvFresh ++ (growRow 770 s2Step65HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step65HeadFvAfter [] []=some (s2Step65HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step65HeadFvBefore s2Step65HeadFvAfter s2Step65HeadFvAfter
    s2Step65HeadFvRow s2Step65HeadFvOut 47 s2Step65HeadFvFresh [] [] []
    (growRow 770 s2Step65HeadFvFresh) ([]) s2Step65HeadFv_Incoming s2Step65HeadFv_checked h4 s2Step65HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step65HeadGvBefore s2Step65HeadGvAfter s2Step65HeadFvAfter
    s2Step65HeadGvRow s2Step65HeadGvOut 47 s2Step65HeadGvFresh [(s2Step65HeadFvRow,47)] [s2Step65HeadFvFresh] [s2Step65HeadFvOut]
    (growRow 771 s2Step65HeadGvFresh) ((growRow 770 s2Step65HeadFvFresh ++ [])) s2Step65HeadGv_Incoming s2Step65HeadGv_checked h3 s2Step65HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step65HeadFBefore s2Step65HeadFAfter s2Step65HeadFvAfter
    s2Step65HeadFRow s2Step65HeadFOut 237 s2Step65HeadFFresh [(s2Step65HeadGvRow,47),(s2Step65HeadFvRow,47)] [s2Step65HeadGvFresh,s2Step65HeadFvFresh] [s2Step65HeadGvOut,s2Step65HeadFvOut]
    (growRow 768 s2Step65HeadFFresh) ((growRow 771 s2Step65HeadGvFresh ++ (growRow 770 s2Step65HeadFvFresh ++ []))) s2Step65HeadF_Incoming s2Step65HeadF_checked h2 s2Step65HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step65HeadGBefore s2Step65HeadGAfter s2Step65HeadFvAfter
    s2Step65HeadGRow s2Step65HeadGOut 237 s2Step65HeadGFresh [(s2Step65HeadFRow,237),(s2Step65HeadGvRow,47),(s2Step65HeadFvRow,47)] [s2Step65HeadFFresh,s2Step65HeadGvFresh,s2Step65HeadFvFresh] [s2Step65HeadFOut,s2Step65HeadGvOut,s2Step65HeadFvOut]
    (growRow 769 s2Step65HeadGFresh) ((growRow 768 s2Step65HeadFFresh ++ (growRow 771 s2Step65HeadGvFresh ++ (growRow 770 s2Step65HeadFvFresh ++ [])))) s2Step65HeadG_Incoming s2Step65HeadG_checked h1 s2Step65HeadG_Outgoing
  exact h0

private theorem s2Step65HeadBank_checked : compileHmrBankResizeLog .headroom s2Step65HeadGBefore ⟨s2Step65HeadFRow,s2Step65HeadGRow,s2Step65HeadFvRow,s2Step65HeadGvRow⟩ ⟨237,237,47,47⟩ [s2Step65HeadGFresh,s2Step65HeadFFresh,s2Step65HeadGvFresh,s2Step65HeadFvFresh]=
    some (s2Step65HeadFvAfter,⟨s2Step65HeadFOut,s2Step65HeadGOut,s2Step65HeadFvOut,s2Step65HeadGvOut⟩,(growRow 769 s2Step65HeadGFresh ++ (growRow 768 s2Step65HeadFFresh ++ (growRow 771 s2Step65HeadGvFresh ++ (growRow 770 s2Step65HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step65HeadBank_rows]
  rfl

private theorem s2Step65Front_checked : compileHmrSourceFrontLog s2Step65EntryFBefore s2Step65FrontBank 236 46 ⟨235,235,46,46⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step65FrontLog=some s2Step65FrontPlan := by
  have pairEq : s2Step65FrontPair=⟨s2Step65HeadFRow,s2Step65HeadGRow,s2Step65HeadFvRow,s2Step65HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step65FrontHead=⟨s2Step65ExitFRow,s2Step65ExitGRow,s2Step65ExitFvRow,s2Step65ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step65Add0A=s2Step65FrontHead.f.wires := by decide +kernel
  have gEq : s2Step65Add0B=s2Step65FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step65Add1A=s2Step65FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step65Add1B=s2Step65FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step65EntryFBefore s2Step65FrontBank 236 46 ⟨235,235,46,46⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step65FrontLog s2Step65FrontPlan
  · exact s2Step65Front_entry
  · exact s2Step65EntryBank_checked
  · exact s2Step65Front_sigma
  · rfl
  · exact s2Step65Front_branch
  · rfl
  · simpa only [s2Step65FrontPlan,pairEq] using s2Step65HeadBank_checked
  · simpa only [s2Step65FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step65F4_checked
  · exact s2Step65Counter_checked
  · rfl
  · simpa only [s2Step65FrontPlan,headEq] using s2Step65ExitBank_checked

private theorem s2Step65Complete_explicit_checked : compileHmrEarlyStepLog s2Step65EntryFBefore s2Step65FrontBank 236 46 ⟨235,235,46,46⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870] 29 s2Step65CompleteLog=some s2Step65CompletePlan := by
  let Q := s2Step65EarlyControlPlan
  have hq := s2Step65EarlyControl_plan_checked
  have fv1 : s2Step65CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step65CompleteOut.fv.payload[2]?.getD s2Step65CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step65CompleteOut.fv.payload[3]?.getD s2Step65CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step65CompleteOut.fv.payload[4]?.getD s2Step65CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step65EntryFBefore s2Step65EarlyControlArena s2Step65FrontBank 236 46 ⟨235,235,46,46⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870] 29 s2Step65CompleteLog s2Step65FrontPlan Q
    s2Step65Front_checked s2Step65Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step65Complete_owned s2Step65Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step65EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870] 777 822 s2Step65CompleteOut.fv.second (s2Step65CompleteOut.fv.payload[2]?.getD s2Step65CompleteOut.fv.sign) (s2Step65CompleteOut.fv.payload[3]?.getD s2Step65CompleteOut.fv.sign) (s2Step65CompleteOut.fv.payload[4]?.getD s2Step65CompleteOut.fv.sign) 824 29 s2Step65EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep65Arena : Arena := s2Step65EntryFBefore
def s2PrivateStep65Bank : WindowBank := s2Step65FrontBank
def s2PrivateStep65Spec : HmrSourceWalkStepLog := ⟨236,46,⟨235,235,46,46⟩,29,.early s2Step65CompleteLog⟩
def s2PrivateStep65Plan : HmrSourceStepPlan := .early s2Step65CompletePlan
theorem s2PrivateStep65_source : s2PrivateStep65Spec=s2ObservedLogs64[1] := rfl
theorem s2PrivateStep65_checked : compileHmrSourceStepLog s2PrivateStep65Arena s2PrivateStep65Bank
    s2PrivateStep65Spec.fgWidth s2PrivateStep65Spec.vWidth s2PrivateStep65Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870]
    6 498 65 s2PrivateStep65Spec.need none s2PrivateStep65Spec.log=some s2PrivateStep65Plan := by
  change compileHmrSourceStepLog s2Step65EntryFBefore s2Step65FrontBank 236 46 ⟨235,235,46,46⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870] 6 498 65 29 none (.early s2Step65CompleteLog)=some (.early s2Step65CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 65<498)]
  rw [s2Step65Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
