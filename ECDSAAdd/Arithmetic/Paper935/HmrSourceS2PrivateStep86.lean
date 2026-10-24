import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep84
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

private def s2Step86CompleteMoves : List (Wire × Wire) := [(779,224)]

private def s2Step86EarlyControlLog : HmrEarlyControlLog := ⟨[779, 844, 781, 816, 839],[845],[846],[847, 849, 851, 867, 873, 874],[]⟩

private def s2Step86FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [781], [], []],[[816], [844], [842], [788]],[[], [], [], []]⟩,[836],[785],[839],[845],[846, 847, 849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925],[839, 845, 846, 847]⟩

private def s2Step86CompleteLog : HmrEarlyStepLog := ⟨s2Step86FrontLog,s2Step86CompleteMoves,s2Step86EarlyControlLog⟩

private def s2Step86ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩

private def s2Step86ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788],770⟩

private def s2Step86ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223],769⟩

private def s2Step86ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩

private def s2Step86FrontOut : WindowBank := ⟨s2Step86ExitFOut,s2Step86ExitGOut,s2Step86ExitFvOut,s2Step86ExitGvOut⟩

private def s2Step86CompleteOut : WindowBank := s2Step86FrontOut.repacked s2Step86CompleteMoves

private def s2Step86EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step86EarlyControlPositiveArena,[845],s2Step86EarlyControlEqualityArena,[846],⟨⟨836,false⟩,[⟨⟨845,false⟩,846⟩]⟩⟩

private def s2Step86EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,779⟩,⟨⟨774,false⟩,844⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,816⟩,⟨⟨777,false⟩,839⟩]⟩

private def s2Step86EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step86EarlyControlZeroArena,s2Step86EarlyControlZeroPlan,s2Step86EarlyControlClassPlan,s2Step86EarlyControlFlagArena,s2Step86EarlyControlFittedArena,s2Step86EarlyControlHistoryArena,s2Step86EarlyControlSigmaArena,s2Step86EarlyControlOutputArena,s2Step86EarlyControlLog⟩

private def s2Step86CounterWork : List Wire := [839, 845, 846, 847]

private theorem s2Step86Counter_bounded : s2Step86CounterWork.toFinset⊆arenaWires := by norm_num [s2Step86CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step86HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86CounterDuring : Arena := ⟨s2Step86HeadFvAfter.live∪s2Step86CounterWork.toFinset,Finset.union_subset s2Step86HeadFvAfter.bounded s2Step86Counter_bounded⟩

private def s2Step86EntryFFresh : List Wire := []

private def s2Step86EntryFvFresh : List Wire := []

private def s2Step86EntryGFresh : List Wire := [781]

private def s2Step86EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86EntryGvAfter : Arena := s2Step86EntryGAfter

private def s2Step86EntryGvFresh : List Wire := []

private def s2Step86ExitFExtra : List Wire := [844]

private def s2Step86ExitGExtra : List Wire := [224, 781, 816]

private def s2Step86ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<224) ∨ (225≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86ExitGvAfter : Arena := s2Step86ExitFAfter

private def s2Step86Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86Add0Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step86Add0_bounded : s2Step86Add0Work.toFinset⊆arenaWires := by
  have h : s2Step86Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step86Add0During : Arena := ⟨s2Step86Add0Arena.live∪s2Step86Add0Work.toFinset,Finset.union_subset s2Step86Add0Arena.bounded s2Step86Add0_bounded⟩

private def s2Step86Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86Add1Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925]

private theorem s2Step86Add1_bounded : s2Step86Add1Work.toFinset⊆arenaWires := by
  have h : s2Step86Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step86Add1During : Arena := ⟨s2Step86Add1Arena.live∪s2Step86Add1Work.toFinset,Finset.union_subset s2Step86Add1Arena.bounded s2Step86Add1_bounded⟩

private def s2Step86F4FlagArena : Arena := ⟨s2Step86HeadFvAfter.live∪{839},Finset.union_subset s2Step86HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step86F4Plan : HmrHybridF4Plan := ⟨s2Step86F4FlagArena,[839],s2Step86Add0Arena,[845],s2Step86Add0During,s2Step86Add0Work,s2Step86Add1During,s2Step86Add1Work⟩

private def s2Step86HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 844],768⟩

private def s2Step86HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788],770⟩

private def s2Step86HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 781, 816],769⟩

private def s2Step86HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩

private def s2Step86FrontHead : WindowBank := ⟨s2Step86HeadFOut,s2Step86HeadGOut,s2Step86HeadFvOut,s2Step86HeadGvOut⟩

private def s2Step86EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩

private def s2Step86EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩

private def s2Step86EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 781],769⟩

private def s2Step86EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841],771⟩

private def s2Step86FrontPair : WindowBank := ⟨s2Step86EntryFOut,s2Step86EntryGOut,s2Step86EntryFvOut,s2Step86EntryGvOut⟩

private def s2Step86FrontSigmaArena : Arena := ⟨s2Step86EntryGvAfter.live∪{836},Finset.union_subset s2Step86EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step86HeadFFresh : List Wire := [844]

private def s2Step86HeadFvFresh : List Wire := [788]

private def s2Step86HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86HeadGFresh : List Wire := [816]

private def s2Step86HeadGvFresh : List Wire := [842]

private def s2Step86FrontPlan : HmrSourceFront := ⟨s2Step86EntryGvAfter,s2Step86FrontPair,(growRow 768 s2Step86EntryFFresh ++ (growRow 769 s2Step86EntryGFresh ++ (growRow 770 s2Step86EntryFvFresh ++ (growRow 771 s2Step86EntryGvFresh ++ [])))),s2Step86FrontSigmaArena,[836],s2Step86HeadGBefore,[785],
  s2Step86HeadFvAfter,s2Step86FrontHead,(growRow 769 s2Step86HeadGFresh ++ (growRow 768 s2Step86HeadFFresh ++ (growRow 771 s2Step86HeadGvFresh ++ (growRow 770 s2Step86HeadFvFresh ++ [])))),s2Step86F4Plan,s2Step86CounterDuring,s2Step86CounterWork,s2Step86ExitGvAfter,s2Step86FrontOut,(shrinkRow 769 s2Step86ExitGExtra ++ (shrinkRow 768 s2Step86ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step86CompletePlan : HmrEarlyStepPlan := ⟨s2Step86FrontPlan,s2Step86EarlyControlArena,s2Step86EarlyControlPlan,s2Step86CompleteMoves⟩

private theorem s2Step86Complete_apart : List.Disjoint (s2Step86CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [836, 785, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] := by
  have nd : ((s2Step86CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[836, 785, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step86Complete_owned : (s2Step86CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step86EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step86EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private def s2Step86CompleteMoveArena : Arena := ⟨s2Step86ExitGvAfter.live∪{224},Finset.union_subset s2Step86ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step86Complete_repack : s2Step86ExitGvAfter.checkRepack s2Step86CompleteMoves=some s2Step86EarlyControlArena := by
  have owned : 779∈s2Step86ExitGvAfter.live := by norm_num [s2Step86ExitGvAfter,s2Step86ExitFAfter,arenaWires]
  have reserve : s2Step86ExitGvAfter.reserve {224}=some s2Step86CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step86ExitGvAfter,s2Step86ExitFAfter,arenaWires]
    · rfl
  have retired : s2Step86CompleteMoveArena.retireSet {779}=s2Step86EarlyControlArena := by
    unfold Arena.retireSet s2Step86EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step86CompleteMoveArena,s2Step86ExitGvAfter,s2Step86ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step86CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step86CompleteMoveArena.retireSet {779}).checkRepack []=some s2Step86EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step86EarlyControl_branchOwned : ([785] : List Wire).toFinset⊆s2Step86EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step86EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86EarlyControl_branch : compileHmrBranchRetirement s2Step86EarlyControlSigmaArena 785=some s2Step86EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step86EarlyControl_branchOwned
  · ext q
    simp [s2Step86EarlyControlOutputArena,s2Step86EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step86EarlyControl_classEqualityBorrow : s2Step86EarlyControlPositiveArena.checkBorrow (([836, 845] : List Wire).length-1) s2Step86EarlyControlLog.classWork=some s2Step86EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step86EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step86EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step86EarlyControlEqualityArena,s2Step86EarlyControlPositiveArena,s2Step86EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step86EarlyControl_classEqualityOwned : ([836, 845] : List Wire).toFinset⊆s2Step86EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step86EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86EarlyControl_classEquality : compileHmrEqualityLog s2Step86EarlyControlPositiveArena [836, 845] 0 s2Step86EarlyControlLog.classWork=some (s2Step86EarlyControlEqualityArena,s2Step86EarlyControlLog.classWork,s2Step86EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step86EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step86EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step86EarlyControl_classOwned : ([777, 839, 836] : List Wire).toFinset⊆s2Step86EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step86EarlyControlZeroArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86EarlyControl_positiveBorrow : s2Step86EarlyControlZeroArena.checkBorrow (1) s2Step86EarlyControlLog.positiveWork=some s2Step86EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step86EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step86EarlyControlZeroArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step86EarlyControlPositiveArena,s2Step86EarlyControlZeroArena,s2Step86EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step86EarlyControl_class : compileHmrSourceClassLog s2Step86EarlyControlZeroArena false 777 s2Step86EarlyControlZeroPlan.top 0 836 s2Step86EarlyControlLog.positiveWork s2Step86EarlyControlLog.classWork=some s2Step86EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step86EarlyControlClassPlan s2Step86EarlyControlZeroArena false 777 s2Step86EarlyControlZeroPlan.top 0 836
  constructor
  · decide +kernel
  · exact s2Step86EarlyControl_classOwned
  · exact s2Step86EarlyControl_positiveBorrow
  · exact s2Step86EarlyControl_classEquality

private theorem s2Step86EarlyControl_entryRecordOwned : ([785, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).toFinset⊆s2Step86EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step86EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86EarlyControl_entrySigmaOwned : ([836, 254] : List Wire).toFinset⊆s2Step86EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step86EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86EarlyControl_fitBorrow : s2Step86EarlyControlFlagArena.checkBorrow ((31-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).length)) s2Step86EarlyControlLog.recordFresh=some s2Step86EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step86EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step86EarlyControlFlagArena (fun q => (0≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step86EarlyControlFittedArena,s2Step86EarlyControlFlagArena,s2Step86EarlyControlLog,arenaWires]

private theorem s2Step86EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).toFinset⊆s2Step86EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step86EarlyControlFlagArena (fun q => (0≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86EarlyControl_fit : compileHmrRecordGrowLog s2Step86EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 31 s2Step86EarlyControlLog.recordFresh=some s2Step86EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step86EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step86EarlyControl_fitBorrow

private theorem s2Step86EarlyControl_flagsBorrow : s2Step86EarlyControlEqualityArena.checkBorrow (6) s2Step86EarlyControlLog.flagWork=some s2Step86EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step86EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step86EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step86EarlyControlFlagArena,s2Step86EarlyControlEqualityArena,s2Step86EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step86EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step86EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step86EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86EarlyControl_flags : compileHmrFlagsLog s2Step86EarlyControlClassPlan.equalityArena s2Step86EarlyControlClassPlan.equality.top 253 252 251 s2Step86EarlyControlLog.flagWork=some s2Step86EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step86EarlyControl_flagsOwned⟩
  · exact s2Step86EarlyControl_flagsBorrow

private theorem s2Step86EarlyControl_historyBorrow : s2Step86EarlyControlArena.checkBorrow ((31-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).length)) s2Step86EarlyControlLog.recordFresh=some s2Step86EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step86EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step86EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step86EarlyControlHistoryArena,s2Step86EarlyControlArena,s2Step86EarlyControlLog,arenaWires]

private theorem s2Step86EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).toFinset⊆s2Step86EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step86EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86EarlyControl_history : compileHmrRecordGrowLog s2Step86EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 31 s2Step86EarlyControlLog.recordFresh=some s2Step86EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step86EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step86EarlyControl_historyBorrow

private theorem s2Step86EarlyControl_sigmaOwned : ([254, 836] : List Wire).toFinset⊆s2Step86EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step86EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86EarlyControl_sigmaReleaseOwned : ([836] : List Wire).toFinset⊆s2Step86EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step86EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86EarlyControl_sigmaRelease : s2Step86EarlyControlHistoryArena.release {836} (fun _ => false)=some s2Step86EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step86EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step86EarlyControlSigmaArena,s2Step86EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step86EarlyControl_sigma : compileHmrSigmaDropLog s2Step86EarlyControlHistoryArena false 0 0 254 836 []=some s2Step86EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step86EarlyControl_sigmaOwned⟩
  · exact s2Step86EarlyControl_sigmaRelease

private theorem s2Step86EarlyControl_zeroBorrow : s2Step86EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step86EarlyControlLog.zeroWork=some s2Step86EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step86EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step86EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step86EarlyControlZeroArena,s2Step86EarlyControlArena,s2Step86EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step86EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step86EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step86EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86EarlyControl_zero : compileHmrEqualityLog s2Step86EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step86EarlyControlLog.zeroWork=some (s2Step86EarlyControlZeroArena,s2Step86EarlyControlLog.zeroWork,s2Step86EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step86EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step86EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step86EarlyControl_logged : s2Step86EarlyControlPlan.Logged s2Step86EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 836 254 253 252 251 785 31 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step86EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step86EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step86EarlyControl_zero
  · exact s2Step86EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step86EarlyControl_flags
  · exact s2Step86EarlyControl_fit
  · exact s2Step86EarlyControl_history
  · exact s2Step86EarlyControl_sigma
  · exact s2Step86EarlyControl_branch

private theorem s2Step86EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step86EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 836 254 253 252 251 785 31 s2Step86EarlyControlLog=some s2Step86EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step86EarlyControlPlan s2Step86EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 836 254 253 252 251 785 31 s2Step86EarlyControl_logged

private def s2Step86EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩

private def s2Step86EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩

private def s2Step86EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224],769⟩

private def s2Step86EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841],771⟩

private def s2Step86FrontBank : WindowBank := ⟨s2Step86EntryFRow,s2Step86EntryGRow,s2Step86EntryFvRow,s2Step86EntryGvRow⟩

private def s2Step86Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 844, 768]

private def s2Step86Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 781, 816, 769]

private def s2Step86Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 770]

private def s2Step86Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 771]

private theorem s2Step86Counter_apart : Disjoint s2Step86HeadFvAfter.live s2Step86CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step86HeadFvAfter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86Counter_borrowed : s2Step86HeadFvAfter.checkBorrow 4 s2Step86CounterWork=some s2Step86CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step86HeadFvAfter s2Step86CounterDuring s2Step86CounterWork.toFinset s2Step86Counter_bounded s2Step86Counter_apart rfl

private theorem s2Step86Counter_owned : (836::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step86HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step86HeadFvAfter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86Counter_checked : compileHmrCounterStepLog s2Step86HeadFvAfter true 836 [772, 773, 774, 775, 776, 777] s2Step86CounterWork=some s2Step86CounterDuring := by
  have owned : ∀q∈836::[772, 773, 774, 775, 776, 777],q∈s2Step86HeadFvAfter.live := fun q hq => s2Step86Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step86Counter_borrowed

private def s2Step86EntryFAfter : Arena := s2Step86EntryFBefore

private theorem s2Step86EntryBank_incomingDistinct : ([s2Step86EntryFRow,s2Step86EntryGRow,s2Step86EntryFvRow,s2Step86EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86EntryF_Incoming : rowsOwned s2Step86EntryFBefore [s2Step86EntryFRow,s2Step86EntryGRow,s2Step86EntryFvRow,s2Step86EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step86EntryFRow,s2Step86EntryGRow,s2Step86EntryFvRow,s2Step86EntryGvRow] 0 s2Step86EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step86EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step86EntryBank_outgoingOwned : rowsOwned s2Step86EntryGvAfter [s2Step86EntryFOut,s2Step86EntryGOut,s2Step86EntryFvOut,s2Step86EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step86EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step86EntryF_Outgoing : rowsOwned s2Step86EntryGvAfter [s2Step86EntryFOut,s2Step86EntryGOut,s2Step86EntryFvOut,s2Step86EntryGvOut] :=
  hmrRows_owned_drop s2Step86EntryGvAfter [s2Step86EntryFOut,s2Step86EntryGOut,s2Step86EntryFvOut,s2Step86EntryGvOut] 0 s2Step86EntryBank_outgoingOwned

private theorem s2Step86EntryF_distinct : (s2Step86EntryFRow.sign::s2Step86EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86EntryF_owned : (s2Step86EntryFRow.sign::s2Step86EntryFRow.payload).toFinset⊆s2Step86EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step86EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86EntryF_reserved : s2Step86EntryFBefore.reserve s2Step86EntryFFresh.toFinset=some s2Step86EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step86EntryFFresh,arenaWires]
  · norm_num [s2Step86EntryFBefore,s2Step86EntryFFresh,arenaWires]
  · simp only [s2Step86EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step86EntryF_checked : planRowResizeLog s2Step86EntryFBefore s2Step86EntryFRow 226 s2Step86EntryFFresh=
    some (s2Step86EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩,growRow 768 s2Step86EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step86EntryFBefore s2Step86EntryFAfter s2Step86EntryFRow 226 s2Step86EntryFFresh
    s2Step86EntryF_distinct s2Step86EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step86EntryF_reserved
  have rowEq : WindowRow.mk (s2Step86EntryFRow.payload++s2Step86EntryFFresh) s2Step86EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step86EntryFvAfter : Arena := s2Step86EntryGAfter

private def s2Step86EntryFvBefore : Arena := s2Step86EntryGAfter

private theorem s2Step86EntryFv_Incoming : rowsOwned s2Step86EntryFvBefore [s2Step86EntryFvRow,s2Step86EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step86EntryFRow,s2Step86EntryGRow,s2Step86EntryFvRow,s2Step86EntryGvRow] 2 s2Step86EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step86EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step86EntryFv_Outgoing : rowsOwned s2Step86EntryGvAfter [s2Step86EntryFvOut,s2Step86EntryGvOut] :=
  hmrRows_owned_drop s2Step86EntryGvAfter [s2Step86EntryFOut,s2Step86EntryGOut,s2Step86EntryFvOut,s2Step86EntryGvOut] 2 s2Step86EntryBank_outgoingOwned

private theorem s2Step86EntryFv_distinct : (s2Step86EntryFvRow.sign::s2Step86EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86EntryFv_owned : (s2Step86EntryFvRow.sign::s2Step86EntryFvRow.payload).toFinset⊆s2Step86EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step86EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86EntryFv_reserved : s2Step86EntryFvBefore.reserve s2Step86EntryFvFresh.toFinset=some s2Step86EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step86EntryFvFresh,arenaWires]
  · norm_num [s2Step86EntryFvBefore,s2Step86EntryGAfter,s2Step86EntryFvFresh,arenaWires]
  · simp only [s2Step86EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step86EntryFv_checked : planRowResizeLog s2Step86EntryFvBefore s2Step86EntryFvRow 56 s2Step86EntryFvFresh=
    some (s2Step86EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩,growRow 770 s2Step86EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step86EntryFvBefore s2Step86EntryFvAfter s2Step86EntryFvRow 56 s2Step86EntryFvFresh
    s2Step86EntryFv_distinct s2Step86EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step86EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step86EntryFvRow.payload++s2Step86EntryFvFresh) s2Step86EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step86EntryGBefore : Arena := s2Step86EntryFBefore

private theorem s2Step86EntryG_Incoming : rowsOwned s2Step86EntryGBefore [s2Step86EntryGRow,s2Step86EntryFvRow,s2Step86EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step86EntryFRow,s2Step86EntryGRow,s2Step86EntryFvRow,s2Step86EntryGvRow] 1 s2Step86EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step86EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step86EntryG_Outgoing : rowsOwned s2Step86EntryGvAfter [s2Step86EntryGOut,s2Step86EntryFvOut,s2Step86EntryGvOut] :=
  hmrRows_owned_drop s2Step86EntryGvAfter [s2Step86EntryFOut,s2Step86EntryGOut,s2Step86EntryFvOut,s2Step86EntryGvOut] 1 s2Step86EntryBank_outgoingOwned

private theorem s2Step86EntryG_distinct : (s2Step86EntryGRow.sign::s2Step86EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86EntryG_owned : (s2Step86EntryGRow.sign::s2Step86EntryGRow.payload).toFinset⊆s2Step86EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step86EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86EntryG_reserved : s2Step86EntryGBefore.reserve s2Step86EntryGFresh.toFinset=some s2Step86EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step86EntryGFresh,arenaWires]
  · norm_num [s2Step86EntryGBefore,s2Step86EntryFBefore,s2Step86EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step86EntryGAfter,s2Step86EntryGBefore,s2Step86EntryFBefore,s2Step86EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step86EntryG_checked : planRowResizeLog s2Step86EntryGBefore s2Step86EntryGRow 226 s2Step86EntryGFresh=
    some (s2Step86EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 781],769⟩,growRow 769 s2Step86EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step86EntryGBefore s2Step86EntryGAfter s2Step86EntryGRow 226 s2Step86EntryGFresh
    s2Step86EntryG_distinct s2Step86EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step86EntryG_reserved
  have rowEq : WindowRow.mk (s2Step86EntryGRow.payload++s2Step86EntryGFresh) s2Step86EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step86EntryGvBefore : Arena := s2Step86EntryGAfter

private theorem s2Step86EntryGv_Incoming : rowsOwned s2Step86EntryGvBefore [s2Step86EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step86EntryFRow,s2Step86EntryGRow,s2Step86EntryFvRow,s2Step86EntryGvRow] 3 s2Step86EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step86EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step86EntryGv_Outgoing : rowsOwned s2Step86EntryGvAfter [s2Step86EntryGvOut] :=
  hmrRows_owned_drop s2Step86EntryGvAfter [s2Step86EntryFOut,s2Step86EntryGOut,s2Step86EntryFvOut,s2Step86EntryGvOut] 3 s2Step86EntryBank_outgoingOwned

private theorem s2Step86EntryGv_distinct : (s2Step86EntryGvRow.sign::s2Step86EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86EntryGv_owned : (s2Step86EntryGvRow.sign::s2Step86EntryGvRow.payload).toFinset⊆s2Step86EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step86EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86EntryGv_reserved : s2Step86EntryGvBefore.reserve s2Step86EntryGvFresh.toFinset=some s2Step86EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step86EntryGvFresh,arenaWires]
  · norm_num [s2Step86EntryGvBefore,s2Step86EntryGAfter,s2Step86EntryGvFresh,arenaWires]
  · simp only [s2Step86EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step86EntryGv_checked : planRowResizeLog s2Step86EntryGvBefore s2Step86EntryGvRow 56 s2Step86EntryGvFresh=
    some (s2Step86EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841],771⟩,growRow 771 s2Step86EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step86EntryGvBefore s2Step86EntryGvAfter s2Step86EntryGvRow 56 s2Step86EntryGvFresh
    s2Step86EntryGv_distinct s2Step86EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step86EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step86EntryGvRow.payload++s2Step86EntryGvFresh) s2Step86EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step86EntryBank_rows : planWindowRowsLog s2Step86EntryFBefore [(s2Step86EntryFRow,226),(s2Step86EntryGRow,226),(s2Step86EntryFvRow,56),(s2Step86EntryGvRow,56)] [s2Step86EntryFFresh,s2Step86EntryGFresh,s2Step86EntryFvFresh,s2Step86EntryGvFresh]=
    some (s2Step86EntryGvAfter,[s2Step86EntryFOut,s2Step86EntryGOut,s2Step86EntryFvOut,s2Step86EntryGvOut],(growRow 768 s2Step86EntryFFresh ++ (growRow 769 s2Step86EntryGFresh ++ (growRow 770 s2Step86EntryFvFresh ++ (growRow 771 s2Step86EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step86EntryGvAfter [] []=some (s2Step86EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step86EntryGvBefore s2Step86EntryGvAfter s2Step86EntryGvAfter
    s2Step86EntryGvRow s2Step86EntryGvOut 56 s2Step86EntryGvFresh [] [] []
    (growRow 771 s2Step86EntryGvFresh) ([]) s2Step86EntryGv_Incoming s2Step86EntryGv_checked h4 s2Step86EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step86EntryFvBefore s2Step86EntryFvAfter s2Step86EntryGvAfter
    s2Step86EntryFvRow s2Step86EntryFvOut 56 s2Step86EntryFvFresh [(s2Step86EntryGvRow,56)] [s2Step86EntryGvFresh] [s2Step86EntryGvOut]
    (growRow 770 s2Step86EntryFvFresh) ((growRow 771 s2Step86EntryGvFresh ++ [])) s2Step86EntryFv_Incoming s2Step86EntryFv_checked h3 s2Step86EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step86EntryGBefore s2Step86EntryGAfter s2Step86EntryGvAfter
    s2Step86EntryGRow s2Step86EntryGOut 226 s2Step86EntryGFresh [(s2Step86EntryFvRow,56),(s2Step86EntryGvRow,56)] [s2Step86EntryFvFresh,s2Step86EntryGvFresh] [s2Step86EntryFvOut,s2Step86EntryGvOut]
    (growRow 769 s2Step86EntryGFresh) ((growRow 770 s2Step86EntryFvFresh ++ (growRow 771 s2Step86EntryGvFresh ++ []))) s2Step86EntryG_Incoming s2Step86EntryG_checked h2 s2Step86EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step86EntryFBefore s2Step86EntryFAfter s2Step86EntryGvAfter
    s2Step86EntryFRow s2Step86EntryFOut 226 s2Step86EntryFFresh [(s2Step86EntryGRow,226),(s2Step86EntryFvRow,56),(s2Step86EntryGvRow,56)] [s2Step86EntryGFresh,s2Step86EntryFvFresh,s2Step86EntryGvFresh] [s2Step86EntryGOut,s2Step86EntryFvOut,s2Step86EntryGvOut]
    (growRow 768 s2Step86EntryFFresh) ((growRow 769 s2Step86EntryGFresh ++ (growRow 770 s2Step86EntryFvFresh ++ (growRow 771 s2Step86EntryGvFresh ++ [])))) s2Step86EntryF_Incoming s2Step86EntryF_checked h1 s2Step86EntryF_Outgoing
  exact h0

private theorem s2Step86EntryBank_checked : compileHmrBankResizeLog .entry s2Step86EntryFBefore ⟨s2Step86EntryFRow,s2Step86EntryGRow,s2Step86EntryFvRow,s2Step86EntryGvRow⟩ ⟨226,226,56,56⟩ [s2Step86EntryFFresh,s2Step86EntryGFresh,s2Step86EntryFvFresh,s2Step86EntryGvFresh]=
    some (s2Step86EntryGvAfter,⟨s2Step86EntryFOut,s2Step86EntryGOut,s2Step86EntryFvOut,s2Step86EntryGvOut⟩,(growRow 768 s2Step86EntryFFresh ++ (growRow 769 s2Step86EntryGFresh ++ (growRow 770 s2Step86EntryFvFresh ++ (growRow 771 s2Step86EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step86EntryBank_rows]
  rfl

private def s2Step86ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<224) ∨ (225≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86ExitFBefore : Arena := s2Step86ExitGAfter

private def s2Step86ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 844],768⟩

private def s2Step86ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788],770⟩

private def s2Step86ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 781, 816],769⟩

private def s2Step86ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩

private theorem s2Step86ExitBank_incomingDistinct : ([s2Step86ExitGRow,s2Step86ExitFRow,s2Step86ExitFvRow,s2Step86ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86ExitF_Incoming : rowsOwned s2Step86ExitFBefore [s2Step86ExitFRow,s2Step86ExitFvRow,s2Step86ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step86ExitGRow,s2Step86ExitFRow,s2Step86ExitFvRow,s2Step86ExitGvRow] 1 s2Step86ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step86ExitFBefore (fun q => (0≤q ∧ q<224) ∨ (225≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step86ExitBank_outgoingOwned : rowsOwned s2Step86ExitGvAfter [s2Step86ExitGOut,s2Step86ExitFOut,s2Step86ExitFvOut,s2Step86ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step86ExitGvAfter (fun q => (0≤q ∧ q<224) ∨ (225≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step86ExitF_Outgoing : rowsOwned s2Step86ExitGvAfter [s2Step86ExitFOut,s2Step86ExitFvOut,s2Step86ExitGvOut] :=
  hmrRows_owned_drop s2Step86ExitGvAfter [s2Step86ExitGOut,s2Step86ExitFOut,s2Step86ExitFvOut,s2Step86ExitGvOut] 1 s2Step86ExitBank_outgoingOwned

private theorem s2Step86ExitF_distinct : (s2Step86ExitFRow.sign::s2Step86ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86ExitF_owned : (s2Step86ExitFRow.sign::s2Step86ExitFRow.payload).toFinset⊆s2Step86ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step86ExitFBefore (fun q => (0≤q ∧ q<224) ∨ (225≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86ExitF_retired : s2Step86ExitFBefore.retireSet s2Step86ExitFExtra.toFinset=s2Step86ExitFAfter := by
  unfold Arena.retireSet s2Step86ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step86ExitFBefore,s2Step86ExitGAfter,s2Step86ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step86ExitF_checked : planRowResizeLog s2Step86ExitFBefore s2Step86ExitFRow 226 []=
    some (s2Step86ExitFAfter,s2Step86ExitFOut,shrinkRow 768 s2Step86ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step86ExitFBefore s2Step86ExitFRow 226 s2Step86ExitF_distinct s2Step86ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step86ExitFRow.payload.take 226) s2Step86ExitFRow.sign=s2Step86ExitFOut := by decide +kernel
  have hi : s2Step86ExitFRow.payload.drop 226=s2Step86ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step86ExitF_retired] at result
  exact result

private def s2Step86ExitFvAfter : Arena := s2Step86ExitFAfter

private def s2Step86ExitFvBefore : Arena := s2Step86ExitFAfter

private theorem s2Step86ExitFv_Incoming : rowsOwned s2Step86ExitFvBefore [s2Step86ExitFvRow,s2Step86ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step86ExitGRow,s2Step86ExitFRow,s2Step86ExitFvRow,s2Step86ExitGvRow] 2 s2Step86ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step86ExitFvBefore (fun q => (0≤q ∧ q<224) ∨ (225≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step86ExitFv_Outgoing : rowsOwned s2Step86ExitGvAfter [s2Step86ExitFvOut,s2Step86ExitGvOut] :=
  hmrRows_owned_drop s2Step86ExitGvAfter [s2Step86ExitGOut,s2Step86ExitFOut,s2Step86ExitFvOut,s2Step86ExitGvOut] 2 s2Step86ExitBank_outgoingOwned

private theorem s2Step86ExitFv_distinct : (s2Step86ExitFvRow.sign::s2Step86ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86ExitFv_owned : (s2Step86ExitFvRow.sign::s2Step86ExitFvRow.payload).toFinset⊆s2Step86ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step86ExitFvBefore (fun q => (0≤q ∧ q<224) ∨ (225≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86ExitFv_reserved : s2Step86ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step86ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step86ExitFv_checked : planRowResizeLog s2Step86ExitFvBefore s2Step86ExitFvRow 57 []=
    some (s2Step86ExitFvAfter,s2Step86ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step86ExitFvBefore s2Step86ExitFvAfter s2Step86ExitFvRow 57 []
    s2Step86ExitFv_distinct s2Step86ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step86ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step86ExitFvRow.payload++[]) s2Step86ExitFvRow.sign=s2Step86ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step86ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private theorem s2Step86ExitG_Incoming : rowsOwned s2Step86ExitGBefore [s2Step86ExitGRow,s2Step86ExitFRow,s2Step86ExitFvRow,s2Step86ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step86ExitGRow,s2Step86ExitFRow,s2Step86ExitFvRow,s2Step86ExitGvRow] 0 s2Step86ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step86ExitGBefore (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step86ExitG_Outgoing : rowsOwned s2Step86ExitGvAfter [s2Step86ExitGOut,s2Step86ExitFOut,s2Step86ExitFvOut,s2Step86ExitGvOut] :=
  hmrRows_owned_drop s2Step86ExitGvAfter [s2Step86ExitGOut,s2Step86ExitFOut,s2Step86ExitFvOut,s2Step86ExitGvOut] 0 s2Step86ExitBank_outgoingOwned

private theorem s2Step86ExitG_distinct : (s2Step86ExitGRow.sign::s2Step86ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86ExitG_owned : (s2Step86ExitGRow.sign::s2Step86ExitGRow.payload).toFinset⊆s2Step86ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step86ExitGBefore (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86ExitG_retired : s2Step86ExitGBefore.retireSet s2Step86ExitGExtra.toFinset=s2Step86ExitGAfter := by
  unfold Arena.retireSet s2Step86ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step86ExitGBefore,s2Step86ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step86ExitG_checked : planRowResizeLog s2Step86ExitGBefore s2Step86ExitGRow 224 []=
    some (s2Step86ExitGAfter,s2Step86ExitGOut,shrinkRow 769 s2Step86ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step86ExitGBefore s2Step86ExitGRow 224 s2Step86ExitG_distinct s2Step86ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step86ExitGRow.payload.take 224) s2Step86ExitGRow.sign=s2Step86ExitGOut := by decide +kernel
  have hi : s2Step86ExitGRow.payload.drop 224=s2Step86ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step86ExitG_retired] at result
  exact result

private def s2Step86ExitGvBefore : Arena := s2Step86ExitFAfter

private theorem s2Step86ExitGv_Incoming : rowsOwned s2Step86ExitGvBefore [s2Step86ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step86ExitGRow,s2Step86ExitFRow,s2Step86ExitFvRow,s2Step86ExitGvRow] 3 s2Step86ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step86ExitGvBefore (fun q => (0≤q ∧ q<224) ∨ (225≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step86ExitGv_Outgoing : rowsOwned s2Step86ExitGvAfter [s2Step86ExitGvOut] :=
  hmrRows_owned_drop s2Step86ExitGvAfter [s2Step86ExitGOut,s2Step86ExitFOut,s2Step86ExitFvOut,s2Step86ExitGvOut] 3 s2Step86ExitBank_outgoingOwned

private theorem s2Step86ExitGv_distinct : (s2Step86ExitGvRow.sign::s2Step86ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86ExitGv_owned : (s2Step86ExitGvRow.sign::s2Step86ExitGvRow.payload).toFinset⊆s2Step86ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step86ExitGvBefore (fun q => (0≤q ∧ q<224) ∨ (225≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86ExitGv_reserved : s2Step86ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step86ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step86ExitGv_checked : planRowResizeLog s2Step86ExitGvBefore s2Step86ExitGvRow 57 []=
    some (s2Step86ExitGvAfter,s2Step86ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step86ExitGvBefore s2Step86ExitGvAfter s2Step86ExitGvRow 57 []
    s2Step86ExitGv_distinct s2Step86ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step86ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step86ExitGvRow.payload++[]) s2Step86ExitGvRow.sign=s2Step86ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step86ExitBank_rows : planWindowRowsLog s2Step86ExitGBefore [(s2Step86ExitGRow,224),(s2Step86ExitFRow,226),(s2Step86ExitFvRow,57),(s2Step86ExitGvRow,57)] [[],[],[],[]]=
    some (s2Step86ExitGvAfter,[s2Step86ExitGOut,s2Step86ExitFOut,s2Step86ExitFvOut,s2Step86ExitGvOut],(shrinkRow 769 s2Step86ExitGExtra ++ (shrinkRow 768 s2Step86ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step86ExitGvAfter [] []=some (s2Step86ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step86ExitGvBefore s2Step86ExitGvAfter s2Step86ExitGvAfter
    s2Step86ExitGvRow s2Step86ExitGvOut 57 [] [] [] []
    (growRow 771 []) ([]) s2Step86ExitGv_Incoming s2Step86ExitGv_checked h4 s2Step86ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step86ExitFvBefore s2Step86ExitFvAfter s2Step86ExitGvAfter
    s2Step86ExitFvRow s2Step86ExitFvOut 57 [] [(s2Step86ExitGvRow,57)] [[]] [s2Step86ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step86ExitFv_Incoming s2Step86ExitFv_checked h3 s2Step86ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step86ExitFBefore s2Step86ExitFAfter s2Step86ExitGvAfter
    s2Step86ExitFRow s2Step86ExitFOut 226 [] [(s2Step86ExitFvRow,57),(s2Step86ExitGvRow,57)] [[],[]] [s2Step86ExitFvOut,s2Step86ExitGvOut]
    (shrinkRow 768 s2Step86ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step86ExitF_Incoming s2Step86ExitF_checked h2 s2Step86ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step86ExitGBefore s2Step86ExitGAfter s2Step86ExitGvAfter
    s2Step86ExitGRow s2Step86ExitGOut 224 [] [(s2Step86ExitFRow,226),(s2Step86ExitFvRow,57),(s2Step86ExitGvRow,57)] [[],[],[]] [s2Step86ExitFOut,s2Step86ExitFvOut,s2Step86ExitGvOut]
    (shrinkRow 769 s2Step86ExitGExtra) ((shrinkRow 768 s2Step86ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step86ExitG_Incoming s2Step86ExitG_checked h1 s2Step86ExitG_Outgoing
  exact h0

private theorem s2Step86ExitBank_checked : compileHmrBankResizeLog .exit s2Step86ExitGBefore ⟨s2Step86ExitFRow,s2Step86ExitGRow,s2Step86ExitFvRow,s2Step86ExitGvRow⟩ ⟨226,224,57,57⟩ [[],[],[],[]]=
    some (s2Step86ExitGvAfter,⟨s2Step86ExitFOut,s2Step86ExitGOut,s2Step86ExitFvOut,s2Step86ExitGvOut⟩,(shrinkRow 769 s2Step86ExitGExtra ++ (shrinkRow 768 s2Step86ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step86ExitBank_rows]
  rfl

private theorem s2Step86Add0_apart : Disjoint s2Step86Add0Arena.live s2Step86Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step86Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86Add0_card : s2Step86Add0Arena.live.card=869 := by
  decide +kernel

private theorem s2Step86Add0_borrowed : s2Step86Add0Arena.checkBorrow (hmrHybridCount s2Step86Add0Arena s2Step86Add0B.length) s2Step86Add0Work=some s2Step86Add0During := by
  have len : s2Step86Add0Work.length=hmrHybridCount s2Step86Add0Arena s2Step86Add0B.length := by
    rw [hmrHybridCount,s2Step86Add0_card]
    decide +kernel
  have nd : s2Step86Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step86Add0Arena s2Step86Add0During s2Step86Add0Work.toFinset s2Step86Add0_bounded s2Step86Add0_apart rfl

private theorem s2Step86Add0_distinct : (839::785::845::(s2Step86Add0A++s2Step86Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86Add0_owned : (839::785::845::(s2Step86Add0A++s2Step86Add0B)).toFinset⊆s2Step86Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step86Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86Add0_checked : compileHmrHybridCinLog s2Step86Add0Arena 785 839 845 s2Step86Add0A s2Step86Add0B s2Step86Add0Work=some s2Step86Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step86Add0Arena s2Step86Add0During 785 839 845 s2Step86Add0A s2Step86Add0B s2Step86Add0Work
    (by decide +kernel) (by decide +kernel) s2Step86Add0_distinct
    (fun q hq => s2Step86Add0_owned (List.mem_toFinset.mpr hq)) s2Step86Add0_borrowed

private theorem s2Step86Add1_apart : Disjoint s2Step86Add1Arena.live s2Step86Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step86Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86Add1_card : s2Step86Add1Arena.live.card=869 := by
  decide +kernel

private theorem s2Step86Add1_borrowed : s2Step86Add1Arena.checkBorrow (hmrHybridCount s2Step86Add1Arena s2Step86Add1B.length) s2Step86Add1Work=some s2Step86Add1During := by
  have len : s2Step86Add1Work.length=hmrHybridCount s2Step86Add1Arena s2Step86Add1B.length := by
    rw [hmrHybridCount,s2Step86Add1_card]
    decide +kernel
  have nd : s2Step86Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step86Add1Arena s2Step86Add1During s2Step86Add1Work.toFinset s2Step86Add1_bounded s2Step86Add1_apart rfl

private theorem s2Step86Add1_distinct : (839::785::845::(s2Step86Add1A++s2Step86Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86Add1_owned : (839::785::845::(s2Step86Add1A++s2Step86Add1B)).toFinset⊆s2Step86Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step86Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86Add1_checked : compileHmrHybridCinLog s2Step86Add1Arena 785 839 845 s2Step86Add1A s2Step86Add1B s2Step86Add1Work=some s2Step86Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step86Add1Arena s2Step86Add1During 785 839 845 s2Step86Add1A s2Step86Add1B s2Step86Add1Work
    (by decide +kernel) (by decide +kernel) s2Step86Add1_distinct
    (fun q hq => s2Step86Add1_owned (List.mem_toFinset.mpr hq)) s2Step86Add1_borrowed

private theorem s2Step86F4_apart : Disjoint (s2Step86Add0A++s2Step86Add0B).toFinset (s2Step86Add1A++s2Step86Add1B).toFinset := by
  have nd : ((s2Step86Add0A++s2Step86Add0B)++(s2Step86Add1A++s2Step86Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step86F4_carry : s2Step86F4FlagArena.checkBorrow 1 [845]=some s2Step86Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step86F4FlagArena,s2Step86HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step86F4FlagArena,s2Step86HeadFvAfter,s2Step86Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step86F4_distinct : (836::785::839::845::((s2Step86Add0A++s2Step86Add1A)++(s2Step86Add0B++s2Step86Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86F4_flag : s2Step86HeadFvAfter.checkBorrow 1 [839]=some s2Step86F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step86HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step86F4_owned : (836::785::((s2Step86Add0A++s2Step86Add1A)++(s2Step86Add0B++s2Step86Add1B))).toFinset⊆s2Step86HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step86HeadFvAfter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86F4_checked : compileHmrHybridF4Log s2Step86HeadFvAfter 836 785 s2Step86Add0A s2Step86Add0B s2Step86Add1A s2Step86Add1B [839] [845] s2Step86Add0Work s2Step86Add1Work=some s2Step86F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step86HeadFvAfter s2Step86F4FlagArena s2Step86Add0Arena s2Step86Add0During s2Step86Add1During 836 785
    s2Step86Add0A s2Step86Add0B s2Step86Add1A s2Step86Add1B [839] [845] s2Step86Add0Work s2Step86Add1Work
    (fun q hq => s2Step86F4_owned (List.mem_toFinset.mpr hq)) s2Step86F4_flag s2Step86F4_carry
    s2Step86F4_distinct s2Step86F4_apart s2Step86Add0_checked s2Step86Add1_checked

private theorem s2Step86Front_branch : s2Step86FrontSigmaArena.checkBorrow 1 [785]=some s2Step86HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step86FrontSigmaArena,s2Step86EntryGvAfter,s2Step86EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step86FrontSigmaArena,s2Step86EntryGvAfter,s2Step86EntryGAfter,s2Step86HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step86Front_entry : HmrFrontEntryValid s2Step86EntryFBefore s2Step86FrontBank 226 56 ⟨226,224,57,57⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step86FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step86EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step86EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step86FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step86Front_sigma : s2Step86EntryGvAfter.checkBorrow 1 [836]=some s2Step86FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step86EntryGvAfter,s2Step86EntryGAfter,arenaWires]
  · rfl

private def s2Step86HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86HeadFBefore : Arena := s2Step86HeadGAfter

private def s2Step86HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩

private def s2Step86HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩

private def s2Step86HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 781],769⟩

private def s2Step86HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841],771⟩

private theorem s2Step86HeadBank_incomingDistinct : ([s2Step86HeadGRow,s2Step86HeadFRow,s2Step86HeadGvRow,s2Step86HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86HeadF_Incoming : rowsOwned s2Step86HeadFBefore [s2Step86HeadFRow,s2Step86HeadGvRow,s2Step86HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step86HeadGRow,s2Step86HeadFRow,s2Step86HeadGvRow,s2Step86HeadFvRow] 1 s2Step86HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step86HeadFBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step86HeadBank_outgoingOwned : rowsOwned s2Step86HeadFvAfter [s2Step86HeadGOut,s2Step86HeadFOut,s2Step86HeadGvOut,s2Step86HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step86HeadFvAfter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step86HeadF_Outgoing : rowsOwned s2Step86HeadFvAfter [s2Step86HeadFOut,s2Step86HeadGvOut,s2Step86HeadFvOut] :=
  hmrRows_owned_drop s2Step86HeadFvAfter [s2Step86HeadGOut,s2Step86HeadFOut,s2Step86HeadGvOut,s2Step86HeadFvOut] 1 s2Step86HeadBank_outgoingOwned

private theorem s2Step86HeadF_distinct : (s2Step86HeadFRow.sign::s2Step86HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86HeadF_owned : (s2Step86HeadFRow.sign::s2Step86HeadFRow.payload).toFinset⊆s2Step86HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step86HeadFBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86HeadF_reserved : s2Step86HeadFBefore.reserve s2Step86HeadFFresh.toFinset=some s2Step86HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step86HeadFFresh,arenaWires]
  · norm_num [s2Step86HeadFBefore,s2Step86HeadGAfter,s2Step86HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step86HeadFAfter,s2Step86HeadFBefore,s2Step86HeadGAfter,s2Step86HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step86HeadF_checked : planRowResizeLog s2Step86HeadFBefore s2Step86HeadFRow 227 s2Step86HeadFFresh=
    some (s2Step86HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 844],768⟩,growRow 768 s2Step86HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step86HeadFBefore s2Step86HeadFAfter s2Step86HeadFRow 227 s2Step86HeadFFresh
    s2Step86HeadF_distinct s2Step86HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step86HeadF_reserved
  have rowEq : WindowRow.mk (s2Step86HeadFRow.payload++s2Step86HeadFFresh) s2Step86HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 844],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step86HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step86HeadFvBefore : Arena := s2Step86HeadGvAfter

private theorem s2Step86HeadFv_Incoming : rowsOwned s2Step86HeadFvBefore [s2Step86HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step86HeadGRow,s2Step86HeadFRow,s2Step86HeadGvRow,s2Step86HeadFvRow] 3 s2Step86HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step86HeadFvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step86HeadFv_Outgoing : rowsOwned s2Step86HeadFvAfter [s2Step86HeadFvOut] :=
  hmrRows_owned_drop s2Step86HeadFvAfter [s2Step86HeadGOut,s2Step86HeadFOut,s2Step86HeadGvOut,s2Step86HeadFvOut] 3 s2Step86HeadBank_outgoingOwned

private theorem s2Step86HeadFv_distinct : (s2Step86HeadFvRow.sign::s2Step86HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86HeadFv_owned : (s2Step86HeadFvRow.sign::s2Step86HeadFvRow.payload).toFinset⊆s2Step86HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step86HeadFvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86HeadFv_reserved : s2Step86HeadFvBefore.reserve s2Step86HeadFvFresh.toFinset=some s2Step86HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step86HeadFvFresh,arenaWires]
  · norm_num [s2Step86HeadFvBefore,s2Step86HeadGvAfter,s2Step86HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step86HeadFvAfter,s2Step86HeadFvBefore,s2Step86HeadGvAfter,s2Step86HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step86HeadFv_checked : planRowResizeLog s2Step86HeadFvBefore s2Step86HeadFvRow 57 s2Step86HeadFvFresh=
    some (s2Step86HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788],770⟩,growRow 770 s2Step86HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step86HeadFvBefore s2Step86HeadFvAfter s2Step86HeadFvRow 57 s2Step86HeadFvFresh
    s2Step86HeadFv_distinct s2Step86HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step86HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step86HeadFvRow.payload++s2Step86HeadFvFresh) s2Step86HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step86HeadG_Incoming : rowsOwned s2Step86HeadGBefore [s2Step86HeadGRow,s2Step86HeadFRow,s2Step86HeadGvRow,s2Step86HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step86HeadGRow,s2Step86HeadFRow,s2Step86HeadGvRow,s2Step86HeadFvRow] 0 s2Step86HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step86HeadGBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step86HeadG_Outgoing : rowsOwned s2Step86HeadFvAfter [s2Step86HeadGOut,s2Step86HeadFOut,s2Step86HeadGvOut,s2Step86HeadFvOut] :=
  hmrRows_owned_drop s2Step86HeadFvAfter [s2Step86HeadGOut,s2Step86HeadFOut,s2Step86HeadGvOut,s2Step86HeadFvOut] 0 s2Step86HeadBank_outgoingOwned

private theorem s2Step86HeadG_distinct : (s2Step86HeadGRow.sign::s2Step86HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86HeadG_owned : (s2Step86HeadGRow.sign::s2Step86HeadGRow.payload).toFinset⊆s2Step86HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step86HeadGBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86HeadG_reserved : s2Step86HeadGBefore.reserve s2Step86HeadGFresh.toFinset=some s2Step86HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step86HeadGFresh,arenaWires]
  · norm_num [s2Step86HeadGBefore,s2Step86HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step86HeadGAfter,s2Step86HeadGBefore,s2Step86HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step86HeadG_checked : planRowResizeLog s2Step86HeadGBefore s2Step86HeadGRow 227 s2Step86HeadGFresh=
    some (s2Step86HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 781, 816],769⟩,growRow 769 s2Step86HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step86HeadGBefore s2Step86HeadGAfter s2Step86HeadGRow 227 s2Step86HeadGFresh
    s2Step86HeadG_distinct s2Step86HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step86HeadG_reserved
  have rowEq : WindowRow.mk (s2Step86HeadGRow.payload++s2Step86HeadGFresh) s2Step86HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 781, 816],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step86HeadGvBefore : Arena := s2Step86HeadFAfter

private theorem s2Step86HeadGv_Incoming : rowsOwned s2Step86HeadGvBefore [s2Step86HeadGvRow,s2Step86HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step86HeadGRow,s2Step86HeadFRow,s2Step86HeadGvRow,s2Step86HeadFvRow] 2 s2Step86HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step86HeadGvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step86HeadGv_Outgoing : rowsOwned s2Step86HeadFvAfter [s2Step86HeadGvOut,s2Step86HeadFvOut] :=
  hmrRows_owned_drop s2Step86HeadFvAfter [s2Step86HeadGOut,s2Step86HeadFOut,s2Step86HeadGvOut,s2Step86HeadFvOut] 2 s2Step86HeadBank_outgoingOwned

private theorem s2Step86HeadGv_distinct : (s2Step86HeadGvRow.sign::s2Step86HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step86HeadGv_owned : (s2Step86HeadGvRow.sign::s2Step86HeadGvRow.payload).toFinset⊆s2Step86HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step86HeadGvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step86HeadGv_reserved : s2Step86HeadGvBefore.reserve s2Step86HeadGvFresh.toFinset=some s2Step86HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step86HeadGvFresh,arenaWires]
  · norm_num [s2Step86HeadGvBefore,s2Step86HeadFAfter,s2Step86HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step86HeadGvAfter,s2Step86HeadGvBefore,s2Step86HeadFAfter,s2Step86HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step86HeadGv_checked : planRowResizeLog s2Step86HeadGvBefore s2Step86HeadGvRow 57 s2Step86HeadGvFresh=
    some (s2Step86HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩,growRow 771 s2Step86HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step86HeadGvBefore s2Step86HeadGvAfter s2Step86HeadGvRow 57 s2Step86HeadGvFresh
    s2Step86HeadGv_distinct s2Step86HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step86HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step86HeadGvRow.payload++s2Step86HeadGvFresh) s2Step86HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step86HeadBank_rows : planWindowRowsLog s2Step86HeadGBefore [(s2Step86HeadGRow,227),(s2Step86HeadFRow,227),(s2Step86HeadGvRow,57),(s2Step86HeadFvRow,57)] [s2Step86HeadGFresh,s2Step86HeadFFresh,s2Step86HeadGvFresh,s2Step86HeadFvFresh]=
    some (s2Step86HeadFvAfter,[s2Step86HeadGOut,s2Step86HeadFOut,s2Step86HeadGvOut,s2Step86HeadFvOut],(growRow 769 s2Step86HeadGFresh ++ (growRow 768 s2Step86HeadFFresh ++ (growRow 771 s2Step86HeadGvFresh ++ (growRow 770 s2Step86HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step86HeadFvAfter [] []=some (s2Step86HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step86HeadFvBefore s2Step86HeadFvAfter s2Step86HeadFvAfter
    s2Step86HeadFvRow s2Step86HeadFvOut 57 s2Step86HeadFvFresh [] [] []
    (growRow 770 s2Step86HeadFvFresh) ([]) s2Step86HeadFv_Incoming s2Step86HeadFv_checked h4 s2Step86HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step86HeadGvBefore s2Step86HeadGvAfter s2Step86HeadFvAfter
    s2Step86HeadGvRow s2Step86HeadGvOut 57 s2Step86HeadGvFresh [(s2Step86HeadFvRow,57)] [s2Step86HeadFvFresh] [s2Step86HeadFvOut]
    (growRow 771 s2Step86HeadGvFresh) ((growRow 770 s2Step86HeadFvFresh ++ [])) s2Step86HeadGv_Incoming s2Step86HeadGv_checked h3 s2Step86HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step86HeadFBefore s2Step86HeadFAfter s2Step86HeadFvAfter
    s2Step86HeadFRow s2Step86HeadFOut 227 s2Step86HeadFFresh [(s2Step86HeadGvRow,57),(s2Step86HeadFvRow,57)] [s2Step86HeadGvFresh,s2Step86HeadFvFresh] [s2Step86HeadGvOut,s2Step86HeadFvOut]
    (growRow 768 s2Step86HeadFFresh) ((growRow 771 s2Step86HeadGvFresh ++ (growRow 770 s2Step86HeadFvFresh ++ []))) s2Step86HeadF_Incoming s2Step86HeadF_checked h2 s2Step86HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step86HeadGBefore s2Step86HeadGAfter s2Step86HeadFvAfter
    s2Step86HeadGRow s2Step86HeadGOut 227 s2Step86HeadGFresh [(s2Step86HeadFRow,227),(s2Step86HeadGvRow,57),(s2Step86HeadFvRow,57)] [s2Step86HeadFFresh,s2Step86HeadGvFresh,s2Step86HeadFvFresh] [s2Step86HeadFOut,s2Step86HeadGvOut,s2Step86HeadFvOut]
    (growRow 769 s2Step86HeadGFresh) ((growRow 768 s2Step86HeadFFresh ++ (growRow 771 s2Step86HeadGvFresh ++ (growRow 770 s2Step86HeadFvFresh ++ [])))) s2Step86HeadG_Incoming s2Step86HeadG_checked h1 s2Step86HeadG_Outgoing
  exact h0

private theorem s2Step86HeadBank_checked : compileHmrBankResizeLog .headroom s2Step86HeadGBefore ⟨s2Step86HeadFRow,s2Step86HeadGRow,s2Step86HeadFvRow,s2Step86HeadGvRow⟩ ⟨227,227,57,57⟩ [s2Step86HeadGFresh,s2Step86HeadFFresh,s2Step86HeadGvFresh,s2Step86HeadFvFresh]=
    some (s2Step86HeadFvAfter,⟨s2Step86HeadFOut,s2Step86HeadGOut,s2Step86HeadFvOut,s2Step86HeadGvOut⟩,(growRow 769 s2Step86HeadGFresh ++ (growRow 768 s2Step86HeadFFresh ++ (growRow 771 s2Step86HeadGvFresh ++ (growRow 770 s2Step86HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step86HeadBank_rows]
  rfl

private theorem s2Step86Front_checked : compileHmrSourceFrontLog s2Step86EntryFBefore s2Step86FrontBank 226 56 ⟨226,224,57,57⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step86FrontLog=some s2Step86FrontPlan := by
  have pairEq : s2Step86FrontPair=⟨s2Step86HeadFRow,s2Step86HeadGRow,s2Step86HeadFvRow,s2Step86HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step86FrontHead=⟨s2Step86ExitFRow,s2Step86ExitGRow,s2Step86ExitFvRow,s2Step86ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step86Add0A=s2Step86FrontHead.f.wires := by decide +kernel
  have gEq : s2Step86Add0B=s2Step86FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step86Add1A=s2Step86FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step86Add1B=s2Step86FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step86EntryFBefore s2Step86FrontBank 226 56 ⟨226,224,57,57⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step86FrontLog s2Step86FrontPlan
  · exact s2Step86Front_entry
  · exact s2Step86EntryBank_checked
  · exact s2Step86Front_sigma
  · rfl
  · exact s2Step86Front_branch
  · rfl
  · simpa only [s2Step86FrontPlan,pairEq] using s2Step86HeadBank_checked
  · simpa only [s2Step86FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step86F4_checked
  · exact s2Step86Counter_checked
  · rfl
  · simpa only [s2Step86FrontPlan,headEq] using s2Step86ExitBank_checked

private theorem s2Step86Complete_explicit_checked : compileHmrEarlyStepLog s2Step86EntryFBefore s2Step86FrontBank 226 56 ⟨226,224,57,57⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 31 s2Step86CompleteLog=some s2Step86CompletePlan := by
  let Q := s2Step86EarlyControlPlan
  have hq := s2Step86EarlyControl_plan_checked
  have fv1 : s2Step86CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step86CompleteOut.fv.payload[2]?.getD s2Step86CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step86CompleteOut.fv.payload[3]?.getD s2Step86CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step86CompleteOut.fv.payload[4]?.getD s2Step86CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step86EntryFBefore s2Step86EarlyControlArena s2Step86FrontBank 226 56 ⟨226,224,57,57⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 31 s2Step86CompleteLog s2Step86FrontPlan Q
    s2Step86Front_checked s2Step86Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step86Complete_owned s2Step86Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step86EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 836 s2Step86CompleteOut.fv.second (s2Step86CompleteOut.fv.payload[2]?.getD s2Step86CompleteOut.fv.sign) (s2Step86CompleteOut.fv.payload[3]?.getD s2Step86CompleteOut.fv.sign) (s2Step86CompleteOut.fv.payload[4]?.getD s2Step86CompleteOut.fv.sign) 785 31 s2Step86EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep86Arena : Arena := s2Step86EntryFBefore
def s2PrivateStep86Bank : WindowBank := s2Step86FrontBank
def s2PrivateStep86Spec : HmrSourceWalkStepLog := ⟨226,56,⟨226,224,57,57⟩,31,.early s2Step86CompleteLog⟩
def s2PrivateStep86Plan : HmrSourceStepPlan := .early s2Step86CompletePlan
theorem s2PrivateStep86_source : s2PrivateStep86Spec=s2ObservedLogs80[6] := rfl
theorem s2PrivateStep86_checked : compileHmrSourceStepLog s2PrivateStep86Arena s2PrivateStep86Bank
    s2PrivateStep86Spec.fgWidth s2PrivateStep86Spec.vWidth s2PrivateStep86Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875]
    6 498 86 s2PrivateStep86Spec.need none s2PrivateStep86Spec.log=some s2PrivateStep86Plan := by
  change compileHmrSourceStepLog s2Step86EntryFBefore s2Step86FrontBank 226 56 ⟨226,224,57,57⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 6 498 86 31 none (.early s2Step86CompleteLog)=some (.early s2Step86CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 86<498)]
  rw [s2Step86Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
