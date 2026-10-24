import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep82
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

private def s2Step84CompleteMoves : List (Wire × Wire) := [(788,738)]

private def s2Step84EarlyControlLog : HmrEarlyControlLog := ⟨[788, 842, 816, 844, 839],[845],[846],[847, 849, 851, 867, 873, 874],[875]⟩

private def s2Step84FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [839], [], [841]],[[845], [844], [842], [816]],[[], [], [], []]⟩,[781],[836],[846],[847],[849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926],[846, 847, 849, 851]⟩

private def s2Step84CompleteLog : HmrEarlyStepLog := ⟨s2Step84FrontLog,s2Step84CompleteMoves,s2Step84EarlyControlLog⟩

private def s2Step84ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩

private def s2Step84ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩

private def s2Step84ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225],769⟩

private def s2Step84ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841],771⟩

private def s2Step84FrontOut : WindowBank := ⟨s2Step84ExitFOut,s2Step84ExitGOut,s2Step84ExitFvOut,s2Step84ExitGvOut⟩

private def s2Step84CompleteOut : WindowBank := s2Step84FrontOut.repacked s2Step84CompleteMoves

private def s2Step84EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step84EarlyControlPositiveArena,[845],s2Step84EarlyControlEqualityArena,[846],⟨⟨781,false⟩,[⟨⟨845,false⟩,846⟩]⟩⟩

private def s2Step84EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step84EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<875)),Finset.filter_subset _ _⟩

private def s2Step84EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step84EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step84EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step84EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,788⟩,⟨⟨774,false⟩,842⟩,⟨⟨775,false⟩,816⟩,⟨⟨776,false⟩,844⟩,⟨⟨777,false⟩,839⟩]⟩

private def s2Step84EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step84EarlyControlZeroArena,s2Step84EarlyControlZeroPlan,s2Step84EarlyControlClassPlan,s2Step84EarlyControlFlagArena,s2Step84EarlyControlFittedArena,s2Step84EarlyControlHistoryArena,s2Step84EarlyControlSigmaArena,s2Step84EarlyControlOutputArena,s2Step84EarlyControlLog⟩

private def s2Step84CounterWork : List Wire := [846, 847, 849, 851]

private theorem s2Step84Counter_bounded : s2Step84CounterWork.toFinset⊆arenaWires := by norm_num [s2Step84CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step84HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84CounterDuring : Arena := ⟨s2Step84HeadFvAfter.live∪s2Step84CounterWork.toFinset,Finset.union_subset s2Step84HeadFvAfter.bounded s2Step84Counter_bounded⟩

private def s2Step84EntryFFresh : List Wire := []

private def s2Step84EntryFvFresh : List Wire := []

private def s2Step84EntryGFresh : List Wire := [839]

private def s2Step84EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84EntryGvFresh : List Wire := [841]

private def s2Step84ExitFExtra : List Wire := [738, 844]

private def s2Step84ExitFvExtra : List Wire := [816]

private def s2Step84ExitGExtra : List Wire := [839, 845]

private def s2Step84ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<738) ∨ (739≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84ExitGvExtra : List Wire := [842]

private def s2Step84Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84Add0Work : List Wire := [849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step84Add0_bounded : s2Step84Add0Work.toFinset⊆arenaWires := by
  have h : s2Step84Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step84Add0During : Arena := ⟨s2Step84Add0Arena.live∪s2Step84Add0Work.toFinset,Finset.union_subset s2Step84Add0Arena.bounded s2Step84Add0_bounded⟩

private def s2Step84Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84Add1Work : List Wire := [849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926]

private theorem s2Step84Add1_bounded : s2Step84Add1Work.toFinset⊆arenaWires := by
  have h : s2Step84Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step84Add1During : Arena := ⟨s2Step84Add1Arena.live∪s2Step84Add1Work.toFinset,Finset.union_subset s2Step84Add1Arena.bounded s2Step84Add1_bounded⟩

private def s2Step84F4FlagArena : Arena := ⟨s2Step84HeadFvAfter.live∪{846},Finset.union_subset s2Step84HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step84F4Plan : HmrHybridF4Plan := ⟨s2Step84F4FlagArena,[846],s2Step84Add0Arena,[847],s2Step84Add0During,s2Step84Add0Work,s2Step84Add1During,s2Step84Add1Work⟩

private def s2Step84HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 844],768⟩

private def s2Step84HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 816],770⟩

private def s2Step84HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 839, 845],769⟩

private def s2Step84HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩

private def s2Step84FrontHead : WindowBank := ⟨s2Step84HeadFOut,s2Step84HeadGOut,s2Step84HeadFvOut,s2Step84HeadGvOut⟩

private def s2Step84EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738],768⟩

private def s2Step84EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩

private def s2Step84EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 839],769⟩

private def s2Step84EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841],771⟩

private def s2Step84FrontPair : WindowBank := ⟨s2Step84EntryFOut,s2Step84EntryGOut,s2Step84EntryFvOut,s2Step84EntryGvOut⟩

private def s2Step84FrontSigmaArena : Arena := ⟨s2Step84EntryGvAfter.live∪{781},Finset.union_subset s2Step84EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step84HeadFFresh : List Wire := [844]

private def s2Step84HeadFvFresh : List Wire := [816]

private def s2Step84HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84HeadGFresh : List Wire := [845]

private def s2Step84HeadGvFresh : List Wire := [842]

private def s2Step84FrontPlan : HmrSourceFront := ⟨s2Step84EntryGvAfter,s2Step84FrontPair,(growRow 768 s2Step84EntryFFresh ++ (growRow 769 s2Step84EntryGFresh ++ (growRow 770 s2Step84EntryFvFresh ++ (growRow 771 s2Step84EntryGvFresh ++ [])))),s2Step84FrontSigmaArena,[781],s2Step84HeadGBefore,[836],
  s2Step84HeadFvAfter,s2Step84FrontHead,(growRow 769 s2Step84HeadGFresh ++ (growRow 768 s2Step84HeadFFresh ++ (growRow 771 s2Step84HeadGvFresh ++ (growRow 770 s2Step84HeadFvFresh ++ [])))),s2Step84F4Plan,s2Step84CounterDuring,s2Step84CounterWork,s2Step84ExitGvAfter,s2Step84FrontOut,(shrinkRow 769 s2Step84ExitGExtra ++ (shrinkRow 768 s2Step84ExitFExtra ++ (shrinkRow 770 s2Step84ExitFvExtra ++ (shrinkRow 771 s2Step84ExitGvExtra ++ []))))⟩

private def s2Step84CompletePlan : HmrEarlyStepPlan := ⟨s2Step84FrontPlan,s2Step84EarlyControlArena,s2Step84EarlyControlPlan,s2Step84CompleteMoves⟩

private theorem s2Step84Complete_apart : List.Disjoint (s2Step84CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [781, 836, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  have nd : ((s2Step84CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[781, 836, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step84Complete_owned : (s2Step84CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step84EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step84EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private def s2Step84CompleteMoveArena : Arena := ⟨s2Step84ExitGvAfter.live∪{738},Finset.union_subset s2Step84ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step84Complete_repack : s2Step84ExitGvAfter.checkRepack s2Step84CompleteMoves=some s2Step84EarlyControlArena := by
  have owned : 788∈s2Step84ExitGvAfter.live := by norm_num [s2Step84ExitGvAfter,arenaWires]
  have reserve : s2Step84ExitGvAfter.reserve {738}=some s2Step84CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step84ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step84CompleteMoveArena.retireSet {788}=s2Step84EarlyControlArena := by
    unfold Arena.retireSet s2Step84EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step84CompleteMoveArena,s2Step84ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step84CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step84CompleteMoveArena.retireSet {788}).checkRepack []=some s2Step84EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step84EarlyControl_branchOwned : ([836] : List Wire).toFinset⊆s2Step84EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step84EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step84EarlyControl_branch : compileHmrBranchRetirement s2Step84EarlyControlSigmaArena 836=some s2Step84EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step84EarlyControl_branchOwned
  · ext q
    simp [s2Step84EarlyControlOutputArena,s2Step84EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step84EarlyControl_classEqualityBorrow : s2Step84EarlyControlPositiveArena.checkBorrow (([781, 845] : List Wire).length-1) s2Step84EarlyControlLog.classWork=some s2Step84EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step84EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step84EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step84EarlyControlEqualityArena,s2Step84EarlyControlPositiveArena,s2Step84EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step84EarlyControl_classEqualityOwned : ([781, 845] : List Wire).toFinset⊆s2Step84EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step84EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84EarlyControl_classEquality : compileHmrEqualityLog s2Step84EarlyControlPositiveArena [781, 845] 0 s2Step84EarlyControlLog.classWork=some (s2Step84EarlyControlEqualityArena,s2Step84EarlyControlLog.classWork,s2Step84EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step84EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step84EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step84EarlyControl_classOwned : ([777, 839, 781] : List Wire).toFinset⊆s2Step84EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step84EarlyControlZeroArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84EarlyControl_positiveBorrow : s2Step84EarlyControlZeroArena.checkBorrow (1) s2Step84EarlyControlLog.positiveWork=some s2Step84EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step84EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step84EarlyControlZeroArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step84EarlyControlPositiveArena,s2Step84EarlyControlZeroArena,s2Step84EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step84EarlyControl_class : compileHmrSourceClassLog s2Step84EarlyControlZeroArena false 777 s2Step84EarlyControlZeroPlan.top 0 781 s2Step84EarlyControlLog.positiveWork s2Step84EarlyControlLog.classWork=some s2Step84EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step84EarlyControlClassPlan s2Step84EarlyControlZeroArena false 777 s2Step84EarlyControlZeroPlan.top 0 781
  constructor
  · decide +kernel
  · exact s2Step84EarlyControl_classOwned
  · exact s2Step84EarlyControl_positiveBorrow
  · exact s2Step84EarlyControl_classEquality

private theorem s2Step84EarlyControl_entryRecordOwned : ([836, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step84EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step84EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84EarlyControl_entrySigmaOwned : ([781, 254] : List Wire).toFinset⊆s2Step84EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step84EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84EarlyControl_fitBorrow : s2Step84EarlyControlFlagArena.checkBorrow ((31-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step84EarlyControlLog.recordFresh=some s2Step84EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step84EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step84EarlyControlFlagArena (fun q => (0≤q ∧ q<875)) rfl
      decide +kernel
    · ext q
      simp [s2Step84EarlyControlFittedArena,s2Step84EarlyControlFlagArena,s2Step84EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step84EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step84EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step84EarlyControlFlagArena (fun q => (0≤q ∧ q<875)) rfl
  decide +kernel

private theorem s2Step84EarlyControl_fit : compileHmrRecordGrowLog s2Step84EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 31 s2Step84EarlyControlLog.recordFresh=some s2Step84EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step84EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step84EarlyControl_fitBorrow

private theorem s2Step84EarlyControl_flagsBorrow : s2Step84EarlyControlEqualityArena.checkBorrow (6) s2Step84EarlyControlLog.flagWork=some s2Step84EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step84EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step84EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step84EarlyControlFlagArena,s2Step84EarlyControlEqualityArena,s2Step84EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step84EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step84EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step84EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84EarlyControl_flags : compileHmrFlagsLog s2Step84EarlyControlClassPlan.equalityArena s2Step84EarlyControlClassPlan.equality.top 253 252 251 s2Step84EarlyControlLog.flagWork=some s2Step84EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step84EarlyControl_flagsOwned⟩
  · exact s2Step84EarlyControl_flagsBorrow

private theorem s2Step84EarlyControl_historyBorrow : s2Step84EarlyControlArena.checkBorrow ((31-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step84EarlyControlLog.recordFresh=some s2Step84EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step84EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step84EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step84EarlyControlHistoryArena,s2Step84EarlyControlArena,s2Step84EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step84EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step84EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step84EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84EarlyControl_history : compileHmrRecordGrowLog s2Step84EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 31 s2Step84EarlyControlLog.recordFresh=some s2Step84EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step84EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step84EarlyControl_historyBorrow

private theorem s2Step84EarlyControl_sigmaOwned : ([254, 781] : List Wire).toFinset⊆s2Step84EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step84EarlyControlHistoryArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step84EarlyControl_sigmaReleaseOwned : ([781] : List Wire).toFinset⊆s2Step84EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step84EarlyControlHistoryArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step84EarlyControl_sigmaRelease : s2Step84EarlyControlHistoryArena.release {781} (fun _ => false)=some s2Step84EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step84EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step84EarlyControlSigmaArena,s2Step84EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step84EarlyControl_sigma : compileHmrSigmaDropLog s2Step84EarlyControlHistoryArena false 0 0 254 781 []=some s2Step84EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step84EarlyControl_sigmaOwned⟩
  · exact s2Step84EarlyControl_sigmaRelease

private theorem s2Step84EarlyControl_zeroBorrow : s2Step84EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step84EarlyControlLog.zeroWork=some s2Step84EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step84EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step84EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step84EarlyControlZeroArena,s2Step84EarlyControlArena,s2Step84EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step84EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step84EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step84EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84EarlyControl_zero : compileHmrEqualityLog s2Step84EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step84EarlyControlLog.zeroWork=some (s2Step84EarlyControlZeroArena,s2Step84EarlyControlLog.zeroWork,s2Step84EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step84EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step84EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step84EarlyControl_logged : s2Step84EarlyControlPlan.Logged s2Step84EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 781 254 253 252 251 836 31 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step84EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step84EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step84EarlyControl_zero
  · exact s2Step84EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step84EarlyControl_flags
  · exact s2Step84EarlyControl_fit
  · exact s2Step84EarlyControl_history
  · exact s2Step84EarlyControl_sigma
  · exact s2Step84EarlyControl_branch

private theorem s2Step84EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step84EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 781 254 253 252 251 836 31 s2Step84EarlyControlLog=some s2Step84EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step84EarlyControlPlan s2Step84EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 781 254 253 252 251 836 31 s2Step84EarlyControl_logged

private def s2Step84EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738],768⟩

private def s2Step84EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩

private def s2Step84EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225],769⟩

private def s2Step84EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778],771⟩

private def s2Step84FrontBank : WindowBank := ⟨s2Step84EntryFRow,s2Step84EntryGRow,s2Step84EntryFvRow,s2Step84EntryGvRow⟩

private def s2Step84Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 844, 768]

private def s2Step84Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 839, 845, 769]

private def s2Step84Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 816, 770]

private def s2Step84Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 771]

private theorem s2Step84Counter_apart : Disjoint s2Step84HeadFvAfter.live s2Step84CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step84HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84Counter_borrowed : s2Step84HeadFvAfter.checkBorrow 4 s2Step84CounterWork=some s2Step84CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step84HeadFvAfter s2Step84CounterDuring s2Step84CounterWork.toFinset s2Step84Counter_bounded s2Step84Counter_apart rfl

private theorem s2Step84Counter_owned : (781::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step84HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step84HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84Counter_checked : compileHmrCounterStepLog s2Step84HeadFvAfter true 781 [772, 773, 774, 775, 776, 777] s2Step84CounterWork=some s2Step84CounterDuring := by
  have owned : ∀q∈781::[772, 773, 774, 775, 776, 777],q∈s2Step84HeadFvAfter.live := fun q hq => s2Step84Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step84Counter_borrowed

private def s2Step84EntryFAfter : Arena := s2Step84EntryFBefore

private theorem s2Step84EntryBank_incomingDistinct : ([s2Step84EntryFRow,s2Step84EntryGRow,s2Step84EntryFvRow,s2Step84EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84EntryF_Incoming : rowsOwned s2Step84EntryFBefore [s2Step84EntryFRow,s2Step84EntryGRow,s2Step84EntryFvRow,s2Step84EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step84EntryFRow,s2Step84EntryGRow,s2Step84EntryFvRow,s2Step84EntryGvRow] 0 s2Step84EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step84EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step84EntryBank_outgoingOwned : rowsOwned s2Step84EntryGvAfter [s2Step84EntryFOut,s2Step84EntryGOut,s2Step84EntryFvOut,s2Step84EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step84EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step84EntryF_Outgoing : rowsOwned s2Step84EntryGvAfter [s2Step84EntryFOut,s2Step84EntryGOut,s2Step84EntryFvOut,s2Step84EntryGvOut] :=
  hmrRows_owned_drop s2Step84EntryGvAfter [s2Step84EntryFOut,s2Step84EntryGOut,s2Step84EntryFvOut,s2Step84EntryGvOut] 0 s2Step84EntryBank_outgoingOwned

private theorem s2Step84EntryF_distinct : (s2Step84EntryFRow.sign::s2Step84EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84EntryF_owned : (s2Step84EntryFRow.sign::s2Step84EntryFRow.payload).toFinset⊆s2Step84EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step84EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84EntryF_reserved : s2Step84EntryFBefore.reserve s2Step84EntryFFresh.toFinset=some s2Step84EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step84EntryFFresh,arenaWires]
  · norm_num [s2Step84EntryFBefore,s2Step84EntryFFresh,arenaWires]
  · simp only [s2Step84EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step84EntryF_checked : planRowResizeLog s2Step84EntryFBefore s2Step84EntryFRow 227 s2Step84EntryFFresh=
    some (s2Step84EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738],768⟩,growRow 768 s2Step84EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step84EntryFBefore s2Step84EntryFAfter s2Step84EntryFRow 227 s2Step84EntryFFresh
    s2Step84EntryF_distinct s2Step84EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step84EntryF_reserved
  have rowEq : WindowRow.mk (s2Step84EntryFRow.payload++s2Step84EntryFFresh) s2Step84EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step84EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84EntryFvAfter : Arena := s2Step84EntryGAfter

private def s2Step84EntryFvBefore : Arena := s2Step84EntryGAfter

private theorem s2Step84EntryFv_Incoming : rowsOwned s2Step84EntryFvBefore [s2Step84EntryFvRow,s2Step84EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step84EntryFRow,s2Step84EntryGRow,s2Step84EntryFvRow,s2Step84EntryGvRow] 2 s2Step84EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step84EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step84EntryFv_Outgoing : rowsOwned s2Step84EntryGvAfter [s2Step84EntryFvOut,s2Step84EntryGvOut] :=
  hmrRows_owned_drop s2Step84EntryGvAfter [s2Step84EntryFOut,s2Step84EntryGOut,s2Step84EntryFvOut,s2Step84EntryGvOut] 2 s2Step84EntryBank_outgoingOwned

private theorem s2Step84EntryFv_distinct : (s2Step84EntryFvRow.sign::s2Step84EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84EntryFv_owned : (s2Step84EntryFvRow.sign::s2Step84EntryFvRow.payload).toFinset⊆s2Step84EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step84EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84EntryFv_reserved : s2Step84EntryFvBefore.reserve s2Step84EntryFvFresh.toFinset=some s2Step84EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step84EntryFvFresh,arenaWires]
  · norm_num [s2Step84EntryFvBefore,s2Step84EntryGAfter,s2Step84EntryFvFresh,arenaWires]
  · simp only [s2Step84EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step84EntryFv_checked : planRowResizeLog s2Step84EntryFvBefore s2Step84EntryFvRow 56 s2Step84EntryFvFresh=
    some (s2Step84EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩,growRow 770 s2Step84EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step84EntryFvBefore s2Step84EntryFvAfter s2Step84EntryFvRow 56 s2Step84EntryFvFresh
    s2Step84EntryFv_distinct s2Step84EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step84EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step84EntryFvRow.payload++s2Step84EntryFvFresh) s2Step84EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step84EntryGBefore : Arena := s2Step84EntryFBefore

private theorem s2Step84EntryG_Incoming : rowsOwned s2Step84EntryGBefore [s2Step84EntryGRow,s2Step84EntryFvRow,s2Step84EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step84EntryFRow,s2Step84EntryGRow,s2Step84EntryFvRow,s2Step84EntryGvRow] 1 s2Step84EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step84EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step84EntryG_Outgoing : rowsOwned s2Step84EntryGvAfter [s2Step84EntryGOut,s2Step84EntryFvOut,s2Step84EntryGvOut] :=
  hmrRows_owned_drop s2Step84EntryGvAfter [s2Step84EntryFOut,s2Step84EntryGOut,s2Step84EntryFvOut,s2Step84EntryGvOut] 1 s2Step84EntryBank_outgoingOwned

private theorem s2Step84EntryG_distinct : (s2Step84EntryGRow.sign::s2Step84EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84EntryG_owned : (s2Step84EntryGRow.sign::s2Step84EntryGRow.payload).toFinset⊆s2Step84EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step84EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84EntryG_reserved : s2Step84EntryGBefore.reserve s2Step84EntryGFresh.toFinset=some s2Step84EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step84EntryGFresh,arenaWires]
  · norm_num [s2Step84EntryGBefore,s2Step84EntryFBefore,s2Step84EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step84EntryGAfter,s2Step84EntryGBefore,s2Step84EntryFBefore,s2Step84EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step84EntryG_checked : planRowResizeLog s2Step84EntryGBefore s2Step84EntryGRow 227 s2Step84EntryGFresh=
    some (s2Step84EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 839],769⟩,growRow 769 s2Step84EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step84EntryGBefore s2Step84EntryGAfter s2Step84EntryGRow 227 s2Step84EntryGFresh
    s2Step84EntryG_distinct s2Step84EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step84EntryG_reserved
  have rowEq : WindowRow.mk (s2Step84EntryGRow.payload++s2Step84EntryGFresh) s2Step84EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 839],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step84EntryGvBefore : Arena := s2Step84EntryGAfter

private theorem s2Step84EntryGv_Incoming : rowsOwned s2Step84EntryGvBefore [s2Step84EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step84EntryFRow,s2Step84EntryGRow,s2Step84EntryFvRow,s2Step84EntryGvRow] 3 s2Step84EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step84EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step84EntryGv_Outgoing : rowsOwned s2Step84EntryGvAfter [s2Step84EntryGvOut] :=
  hmrRows_owned_drop s2Step84EntryGvAfter [s2Step84EntryFOut,s2Step84EntryGOut,s2Step84EntryFvOut,s2Step84EntryGvOut] 3 s2Step84EntryBank_outgoingOwned

private theorem s2Step84EntryGv_distinct : (s2Step84EntryGvRow.sign::s2Step84EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84EntryGv_owned : (s2Step84EntryGvRow.sign::s2Step84EntryGvRow.payload).toFinset⊆s2Step84EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step84EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84EntryGv_reserved : s2Step84EntryGvBefore.reserve s2Step84EntryGvFresh.toFinset=some s2Step84EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step84EntryGvFresh,arenaWires]
  · norm_num [s2Step84EntryGvBefore,s2Step84EntryGAfter,s2Step84EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step84EntryGvAfter,s2Step84EntryGvBefore,s2Step84EntryGAfter,s2Step84EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step84EntryGv_checked : planRowResizeLog s2Step84EntryGvBefore s2Step84EntryGvRow 56 s2Step84EntryGvFresh=
    some (s2Step84EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841],771⟩,growRow 771 s2Step84EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step84EntryGvBefore s2Step84EntryGvAfter s2Step84EntryGvRow 56 s2Step84EntryGvFresh
    s2Step84EntryGv_distinct s2Step84EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step84EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step84EntryGvRow.payload++s2Step84EntryGvFresh) s2Step84EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step84EntryBank_rows : planWindowRowsLog s2Step84EntryFBefore [(s2Step84EntryFRow,227),(s2Step84EntryGRow,227),(s2Step84EntryFvRow,56),(s2Step84EntryGvRow,56)] [s2Step84EntryFFresh,s2Step84EntryGFresh,s2Step84EntryFvFresh,s2Step84EntryGvFresh]=
    some (s2Step84EntryGvAfter,[s2Step84EntryFOut,s2Step84EntryGOut,s2Step84EntryFvOut,s2Step84EntryGvOut],(growRow 768 s2Step84EntryFFresh ++ (growRow 769 s2Step84EntryGFresh ++ (growRow 770 s2Step84EntryFvFresh ++ (growRow 771 s2Step84EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step84EntryGvAfter [] []=some (s2Step84EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step84EntryGvBefore s2Step84EntryGvAfter s2Step84EntryGvAfter
    s2Step84EntryGvRow s2Step84EntryGvOut 56 s2Step84EntryGvFresh [] [] []
    (growRow 771 s2Step84EntryGvFresh) ([]) s2Step84EntryGv_Incoming s2Step84EntryGv_checked h4 s2Step84EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step84EntryFvBefore s2Step84EntryFvAfter s2Step84EntryGvAfter
    s2Step84EntryFvRow s2Step84EntryFvOut 56 s2Step84EntryFvFresh [(s2Step84EntryGvRow,56)] [s2Step84EntryGvFresh] [s2Step84EntryGvOut]
    (growRow 770 s2Step84EntryFvFresh) ((growRow 771 s2Step84EntryGvFresh ++ [])) s2Step84EntryFv_Incoming s2Step84EntryFv_checked h3 s2Step84EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step84EntryGBefore s2Step84EntryGAfter s2Step84EntryGvAfter
    s2Step84EntryGRow s2Step84EntryGOut 227 s2Step84EntryGFresh [(s2Step84EntryFvRow,56),(s2Step84EntryGvRow,56)] [s2Step84EntryFvFresh,s2Step84EntryGvFresh] [s2Step84EntryFvOut,s2Step84EntryGvOut]
    (growRow 769 s2Step84EntryGFresh) ((growRow 770 s2Step84EntryFvFresh ++ (growRow 771 s2Step84EntryGvFresh ++ []))) s2Step84EntryG_Incoming s2Step84EntryG_checked h2 s2Step84EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step84EntryFBefore s2Step84EntryFAfter s2Step84EntryGvAfter
    s2Step84EntryFRow s2Step84EntryFOut 227 s2Step84EntryFFresh [(s2Step84EntryGRow,227),(s2Step84EntryFvRow,56),(s2Step84EntryGvRow,56)] [s2Step84EntryGFresh,s2Step84EntryFvFresh,s2Step84EntryGvFresh] [s2Step84EntryGOut,s2Step84EntryFvOut,s2Step84EntryGvOut]
    (growRow 768 s2Step84EntryFFresh) ((growRow 769 s2Step84EntryGFresh ++ (growRow 770 s2Step84EntryFvFresh ++ (growRow 771 s2Step84EntryGvFresh ++ [])))) s2Step84EntryF_Incoming s2Step84EntryF_checked h1 s2Step84EntryF_Outgoing
  exact h0

private theorem s2Step84EntryBank_checked : compileHmrBankResizeLog .entry s2Step84EntryFBefore ⟨s2Step84EntryFRow,s2Step84EntryGRow,s2Step84EntryFvRow,s2Step84EntryGvRow⟩ ⟨227,227,56,56⟩ [s2Step84EntryFFresh,s2Step84EntryGFresh,s2Step84EntryFvFresh,s2Step84EntryGvFresh]=
    some (s2Step84EntryGvAfter,⟨s2Step84EntryFOut,s2Step84EntryGOut,s2Step84EntryFvOut,s2Step84EntryGvOut⟩,(growRow 768 s2Step84EntryFFresh ++ (growRow 769 s2Step84EntryGFresh ++ (growRow 770 s2Step84EntryFvFresh ++ (growRow 771 s2Step84EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step84EntryBank_rows]
  rfl

private def s2Step84ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<738) ∨ (739≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84ExitFBefore : Arena := s2Step84ExitGAfter

private def s2Step84ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 844],768⟩

private def s2Step84ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 816],770⟩

private def s2Step84ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 839, 845],769⟩

private def s2Step84ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩

private theorem s2Step84ExitBank_incomingDistinct : ([s2Step84ExitGRow,s2Step84ExitFRow,s2Step84ExitFvRow,s2Step84ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84ExitF_Incoming : rowsOwned s2Step84ExitFBefore [s2Step84ExitFRow,s2Step84ExitFvRow,s2Step84ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step84ExitGRow,s2Step84ExitFRow,s2Step84ExitFvRow,s2Step84ExitGvRow] 1 s2Step84ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step84ExitFBefore (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step84ExitBank_outgoingOwned : rowsOwned s2Step84ExitGvAfter [s2Step84ExitGOut,s2Step84ExitFOut,s2Step84ExitFvOut,s2Step84ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step84ExitGvAfter (fun q => (0≤q ∧ q<738) ∨ (739≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step84ExitF_Outgoing : rowsOwned s2Step84ExitGvAfter [s2Step84ExitFOut,s2Step84ExitFvOut,s2Step84ExitGvOut] :=
  hmrRows_owned_drop s2Step84ExitGvAfter [s2Step84ExitGOut,s2Step84ExitFOut,s2Step84ExitFvOut,s2Step84ExitGvOut] 1 s2Step84ExitBank_outgoingOwned

private theorem s2Step84ExitF_distinct : (s2Step84ExitFRow.sign::s2Step84ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84ExitF_owned : (s2Step84ExitFRow.sign::s2Step84ExitFRow.payload).toFinset⊆s2Step84ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step84ExitFBefore (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84ExitF_retired : s2Step84ExitFBefore.retireSet s2Step84ExitFExtra.toFinset=s2Step84ExitFAfter := by
  unfold Arena.retireSet s2Step84ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step84ExitFBefore,s2Step84ExitGAfter,s2Step84ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step84ExitF_checked : planRowResizeLog s2Step84ExitFBefore s2Step84ExitFRow 226 []=
    some (s2Step84ExitFAfter,s2Step84ExitFOut,shrinkRow 768 s2Step84ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step84ExitFBefore s2Step84ExitFRow 226 s2Step84ExitF_distinct s2Step84ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step84ExitFRow.payload.take 226) s2Step84ExitFRow.sign=s2Step84ExitFOut := by decide +kernel
  have hi : s2Step84ExitFRow.payload.drop 226=s2Step84ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step84ExitF_retired] at result
  exact result

private def s2Step84ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<738) ∨ (739≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84ExitFvBefore : Arena := s2Step84ExitFAfter

private theorem s2Step84ExitFv_Incoming : rowsOwned s2Step84ExitFvBefore [s2Step84ExitFvRow,s2Step84ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step84ExitGRow,s2Step84ExitFRow,s2Step84ExitFvRow,s2Step84ExitGvRow] 2 s2Step84ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step84ExitFvBefore (fun q => (0≤q ∧ q<738) ∨ (739≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step84ExitFv_Outgoing : rowsOwned s2Step84ExitGvAfter [s2Step84ExitFvOut,s2Step84ExitGvOut] :=
  hmrRows_owned_drop s2Step84ExitGvAfter [s2Step84ExitGOut,s2Step84ExitFOut,s2Step84ExitFvOut,s2Step84ExitGvOut] 2 s2Step84ExitBank_outgoingOwned

private theorem s2Step84ExitFv_distinct : (s2Step84ExitFvRow.sign::s2Step84ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84ExitFv_owned : (s2Step84ExitFvRow.sign::s2Step84ExitFvRow.payload).toFinset⊆s2Step84ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step84ExitFvBefore (fun q => (0≤q ∧ q<738) ∨ (739≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84ExitFv_retired : s2Step84ExitFvBefore.retireSet s2Step84ExitFvExtra.toFinset=s2Step84ExitFvAfter := by
  unfold Arena.retireSet s2Step84ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step84ExitFvBefore,s2Step84ExitFAfter,s2Step84ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step84ExitFv_checked : planRowResizeLog s2Step84ExitFvBefore s2Step84ExitFvRow 56 []=
    some (s2Step84ExitFvAfter,s2Step84ExitFvOut,shrinkRow 770 s2Step84ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step84ExitFvBefore s2Step84ExitFvRow 56 s2Step84ExitFv_distinct s2Step84ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step84ExitFvRow.payload.take 56) s2Step84ExitFvRow.sign=s2Step84ExitFvOut := by decide +kernel
  have hi : s2Step84ExitFvRow.payload.drop 56=s2Step84ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step84ExitFv_retired] at result
  exact result

private def s2Step84ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step84ExitG_Incoming : rowsOwned s2Step84ExitGBefore [s2Step84ExitGRow,s2Step84ExitFRow,s2Step84ExitFvRow,s2Step84ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step84ExitGRow,s2Step84ExitFRow,s2Step84ExitFvRow,s2Step84ExitGvRow] 0 s2Step84ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step84ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step84ExitG_Outgoing : rowsOwned s2Step84ExitGvAfter [s2Step84ExitGOut,s2Step84ExitFOut,s2Step84ExitFvOut,s2Step84ExitGvOut] :=
  hmrRows_owned_drop s2Step84ExitGvAfter [s2Step84ExitGOut,s2Step84ExitFOut,s2Step84ExitFvOut,s2Step84ExitGvOut] 0 s2Step84ExitBank_outgoingOwned

private theorem s2Step84ExitG_distinct : (s2Step84ExitGRow.sign::s2Step84ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84ExitG_owned : (s2Step84ExitGRow.sign::s2Step84ExitGRow.payload).toFinset⊆s2Step84ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step84ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84ExitG_retired : s2Step84ExitGBefore.retireSet s2Step84ExitGExtra.toFinset=s2Step84ExitGAfter := by
  unfold Arena.retireSet s2Step84ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step84ExitGBefore,s2Step84ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step84ExitG_checked : planRowResizeLog s2Step84ExitGBefore s2Step84ExitGRow 226 []=
    some (s2Step84ExitGAfter,s2Step84ExitGOut,shrinkRow 769 s2Step84ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step84ExitGBefore s2Step84ExitGRow 226 s2Step84ExitG_distinct s2Step84ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step84ExitGRow.payload.take 226) s2Step84ExitGRow.sign=s2Step84ExitGOut := by decide +kernel
  have hi : s2Step84ExitGRow.payload.drop 226=s2Step84ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step84ExitG_retired] at result
  exact result

private def s2Step84ExitGvBefore : Arena := s2Step84ExitFvAfter

private theorem s2Step84ExitGv_Incoming : rowsOwned s2Step84ExitGvBefore [s2Step84ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step84ExitGRow,s2Step84ExitFRow,s2Step84ExitFvRow,s2Step84ExitGvRow] 3 s2Step84ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step84ExitGvBefore (fun q => (0≤q ∧ q<738) ∨ (739≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step84ExitGv_Outgoing : rowsOwned s2Step84ExitGvAfter [s2Step84ExitGvOut] :=
  hmrRows_owned_drop s2Step84ExitGvAfter [s2Step84ExitGOut,s2Step84ExitFOut,s2Step84ExitFvOut,s2Step84ExitGvOut] 3 s2Step84ExitBank_outgoingOwned

private theorem s2Step84ExitGv_distinct : (s2Step84ExitGvRow.sign::s2Step84ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84ExitGv_owned : (s2Step84ExitGvRow.sign::s2Step84ExitGvRow.payload).toFinset⊆s2Step84ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step84ExitGvBefore (fun q => (0≤q ∧ q<738) ∨ (739≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84ExitGv_retired : s2Step84ExitGvBefore.retireSet s2Step84ExitGvExtra.toFinset=s2Step84ExitGvAfter := by
  unfold Arena.retireSet s2Step84ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step84ExitGvBefore,s2Step84ExitFvAfter,s2Step84ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step84ExitGv_checked : planRowResizeLog s2Step84ExitGvBefore s2Step84ExitGvRow 56 []=
    some (s2Step84ExitGvAfter,s2Step84ExitGvOut,shrinkRow 771 s2Step84ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step84ExitGvBefore s2Step84ExitGvRow 56 s2Step84ExitGv_distinct s2Step84ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step84ExitGvRow.payload.take 56) s2Step84ExitGvRow.sign=s2Step84ExitGvOut := by decide +kernel
  have hi : s2Step84ExitGvRow.payload.drop 56=s2Step84ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step84ExitGv_retired] at result
  exact result

private theorem s2Step84ExitBank_rows : planWindowRowsLog s2Step84ExitGBefore [(s2Step84ExitGRow,226),(s2Step84ExitFRow,226),(s2Step84ExitFvRow,56),(s2Step84ExitGvRow,56)] [[],[],[],[]]=
    some (s2Step84ExitGvAfter,[s2Step84ExitGOut,s2Step84ExitFOut,s2Step84ExitFvOut,s2Step84ExitGvOut],(shrinkRow 769 s2Step84ExitGExtra ++ (shrinkRow 768 s2Step84ExitFExtra ++ (shrinkRow 770 s2Step84ExitFvExtra ++ (shrinkRow 771 s2Step84ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step84ExitGvAfter [] []=some (s2Step84ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step84ExitGvBefore s2Step84ExitGvAfter s2Step84ExitGvAfter
    s2Step84ExitGvRow s2Step84ExitGvOut 56 [] [] [] []
    (shrinkRow 771 s2Step84ExitGvExtra) ([]) s2Step84ExitGv_Incoming s2Step84ExitGv_checked h4 s2Step84ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step84ExitFvBefore s2Step84ExitFvAfter s2Step84ExitGvAfter
    s2Step84ExitFvRow s2Step84ExitFvOut 56 [] [(s2Step84ExitGvRow,56)] [[]] [s2Step84ExitGvOut]
    (shrinkRow 770 s2Step84ExitFvExtra) ((shrinkRow 771 s2Step84ExitGvExtra ++ [])) s2Step84ExitFv_Incoming s2Step84ExitFv_checked h3 s2Step84ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step84ExitFBefore s2Step84ExitFAfter s2Step84ExitGvAfter
    s2Step84ExitFRow s2Step84ExitFOut 226 [] [(s2Step84ExitFvRow,56),(s2Step84ExitGvRow,56)] [[],[]] [s2Step84ExitFvOut,s2Step84ExitGvOut]
    (shrinkRow 768 s2Step84ExitFExtra) ((shrinkRow 770 s2Step84ExitFvExtra ++ (shrinkRow 771 s2Step84ExitGvExtra ++ []))) s2Step84ExitF_Incoming s2Step84ExitF_checked h2 s2Step84ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step84ExitGBefore s2Step84ExitGAfter s2Step84ExitGvAfter
    s2Step84ExitGRow s2Step84ExitGOut 226 [] [(s2Step84ExitFRow,226),(s2Step84ExitFvRow,56),(s2Step84ExitGvRow,56)] [[],[],[]] [s2Step84ExitFOut,s2Step84ExitFvOut,s2Step84ExitGvOut]
    (shrinkRow 769 s2Step84ExitGExtra) ((shrinkRow 768 s2Step84ExitFExtra ++ (shrinkRow 770 s2Step84ExitFvExtra ++ (shrinkRow 771 s2Step84ExitGvExtra ++ [])))) s2Step84ExitG_Incoming s2Step84ExitG_checked h1 s2Step84ExitG_Outgoing
  exact h0

private theorem s2Step84ExitBank_checked : compileHmrBankResizeLog .exit s2Step84ExitGBefore ⟨s2Step84ExitFRow,s2Step84ExitGRow,s2Step84ExitFvRow,s2Step84ExitGvRow⟩ ⟨226,226,56,56⟩ [[],[],[],[]]=
    some (s2Step84ExitGvAfter,⟨s2Step84ExitFOut,s2Step84ExitGOut,s2Step84ExitFvOut,s2Step84ExitGvOut⟩,(shrinkRow 769 s2Step84ExitGExtra ++ (shrinkRow 768 s2Step84ExitFExtra ++ (shrinkRow 770 s2Step84ExitFvExtra ++ (shrinkRow 771 s2Step84ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step84ExitBank_rows]
  rfl

private theorem s2Step84Add0_apart : Disjoint s2Step84Add0Arena.live s2Step84Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step84Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84Add0_card : s2Step84Add0Arena.live.card=870 := by
  decide +kernel

private theorem s2Step84Add0_borrowed : s2Step84Add0Arena.checkBorrow (hmrHybridCount s2Step84Add0Arena s2Step84Add0B.length) s2Step84Add0Work=some s2Step84Add0During := by
  have len : s2Step84Add0Work.length=hmrHybridCount s2Step84Add0Arena s2Step84Add0B.length := by
    rw [hmrHybridCount,s2Step84Add0_card]
    decide +kernel
  have nd : s2Step84Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step84Add0Arena s2Step84Add0During s2Step84Add0Work.toFinset s2Step84Add0_bounded s2Step84Add0_apart rfl

private theorem s2Step84Add0_distinct : (846::836::847::(s2Step84Add0A++s2Step84Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84Add0_owned : (846::836::847::(s2Step84Add0A++s2Step84Add0B)).toFinset⊆s2Step84Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step84Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84Add0_checked : compileHmrHybridCinLog s2Step84Add0Arena 836 846 847 s2Step84Add0A s2Step84Add0B s2Step84Add0Work=some s2Step84Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step84Add0Arena s2Step84Add0During 836 846 847 s2Step84Add0A s2Step84Add0B s2Step84Add0Work
    (by decide +kernel) (by decide +kernel) s2Step84Add0_distinct
    (fun q hq => s2Step84Add0_owned (List.mem_toFinset.mpr hq)) s2Step84Add0_borrowed

private theorem s2Step84Add1_apart : Disjoint s2Step84Add1Arena.live s2Step84Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step84Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84Add1_card : s2Step84Add1Arena.live.card=870 := by
  decide +kernel

private theorem s2Step84Add1_borrowed : s2Step84Add1Arena.checkBorrow (hmrHybridCount s2Step84Add1Arena s2Step84Add1B.length) s2Step84Add1Work=some s2Step84Add1During := by
  have len : s2Step84Add1Work.length=hmrHybridCount s2Step84Add1Arena s2Step84Add1B.length := by
    rw [hmrHybridCount,s2Step84Add1_card]
    decide +kernel
  have nd : s2Step84Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step84Add1Arena s2Step84Add1During s2Step84Add1Work.toFinset s2Step84Add1_bounded s2Step84Add1_apart rfl

private theorem s2Step84Add1_distinct : (846::836::847::(s2Step84Add1A++s2Step84Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84Add1_owned : (846::836::847::(s2Step84Add1A++s2Step84Add1B)).toFinset⊆s2Step84Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step84Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84Add1_checked : compileHmrHybridCinLog s2Step84Add1Arena 836 846 847 s2Step84Add1A s2Step84Add1B s2Step84Add1Work=some s2Step84Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step84Add1Arena s2Step84Add1During 836 846 847 s2Step84Add1A s2Step84Add1B s2Step84Add1Work
    (by decide +kernel) (by decide +kernel) s2Step84Add1_distinct
    (fun q hq => s2Step84Add1_owned (List.mem_toFinset.mpr hq)) s2Step84Add1_borrowed

private theorem s2Step84F4_apart : Disjoint (s2Step84Add0A++s2Step84Add0B).toFinset (s2Step84Add1A++s2Step84Add1B).toFinset := by
  have nd : ((s2Step84Add0A++s2Step84Add0B)++(s2Step84Add1A++s2Step84Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step84F4_carry : s2Step84F4FlagArena.checkBorrow 1 [847]=some s2Step84Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step84F4FlagArena,s2Step84HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step84F4FlagArena,s2Step84HeadFvAfter,s2Step84Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step84F4_distinct : (781::836::846::847::((s2Step84Add0A++s2Step84Add1A)++(s2Step84Add0B++s2Step84Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84F4_flag : s2Step84HeadFvAfter.checkBorrow 1 [846]=some s2Step84F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step84HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step84F4_owned : (781::836::((s2Step84Add0A++s2Step84Add1A)++(s2Step84Add0B++s2Step84Add1B))).toFinset⊆s2Step84HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step84HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84F4_checked : compileHmrHybridF4Log s2Step84HeadFvAfter 781 836 s2Step84Add0A s2Step84Add0B s2Step84Add1A s2Step84Add1B [846] [847] s2Step84Add0Work s2Step84Add1Work=some s2Step84F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step84HeadFvAfter s2Step84F4FlagArena s2Step84Add0Arena s2Step84Add0During s2Step84Add1During 781 836
    s2Step84Add0A s2Step84Add0B s2Step84Add1A s2Step84Add1B [846] [847] s2Step84Add0Work s2Step84Add1Work
    (fun q hq => s2Step84F4_owned (List.mem_toFinset.mpr hq)) s2Step84F4_flag s2Step84F4_carry
    s2Step84F4_distinct s2Step84F4_apart s2Step84Add0_checked s2Step84Add1_checked

private theorem s2Step84Front_branch : s2Step84FrontSigmaArena.checkBorrow 1 [836]=some s2Step84HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step84FrontSigmaArena,s2Step84EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step84FrontSigmaArena,s2Step84EntryGvAfter,s2Step84HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step84Front_entry : HmrFrontEntryValid s2Step84EntryFBefore s2Step84FrontBank 227 56 ⟨226,226,56,56⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step84FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step84EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step84EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step84FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step84Front_sigma : s2Step84EntryGvAfter.checkBorrow 1 [781]=some s2Step84FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step84EntryGvAfter,arenaWires]
  · rfl

private def s2Step84HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84HeadFBefore : Arena := s2Step84HeadGAfter

private def s2Step84HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738],768⟩

private def s2Step84HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩

private def s2Step84HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 839],769⟩

private def s2Step84HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841],771⟩

private theorem s2Step84HeadBank_incomingDistinct : ([s2Step84HeadGRow,s2Step84HeadFRow,s2Step84HeadGvRow,s2Step84HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84HeadF_Incoming : rowsOwned s2Step84HeadFBefore [s2Step84HeadFRow,s2Step84HeadGvRow,s2Step84HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step84HeadGRow,s2Step84HeadFRow,s2Step84HeadGvRow,s2Step84HeadFvRow] 1 s2Step84HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step84HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step84HeadBank_outgoingOwned : rowsOwned s2Step84HeadFvAfter [s2Step84HeadGOut,s2Step84HeadFOut,s2Step84HeadGvOut,s2Step84HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step84HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step84HeadF_Outgoing : rowsOwned s2Step84HeadFvAfter [s2Step84HeadFOut,s2Step84HeadGvOut,s2Step84HeadFvOut] :=
  hmrRows_owned_drop s2Step84HeadFvAfter [s2Step84HeadGOut,s2Step84HeadFOut,s2Step84HeadGvOut,s2Step84HeadFvOut] 1 s2Step84HeadBank_outgoingOwned

private theorem s2Step84HeadF_distinct : (s2Step84HeadFRow.sign::s2Step84HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84HeadF_owned : (s2Step84HeadFRow.sign::s2Step84HeadFRow.payload).toFinset⊆s2Step84HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step84HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84HeadF_reserved : s2Step84HeadFBefore.reserve s2Step84HeadFFresh.toFinset=some s2Step84HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step84HeadFFresh,arenaWires]
  · norm_num [s2Step84HeadFBefore,s2Step84HeadGAfter,s2Step84HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step84HeadFAfter,s2Step84HeadFBefore,s2Step84HeadGAfter,s2Step84HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step84HeadF_checked : planRowResizeLog s2Step84HeadFBefore s2Step84HeadFRow 228 s2Step84HeadFFresh=
    some (s2Step84HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 844],768⟩,growRow 768 s2Step84HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step84HeadFBefore s2Step84HeadFAfter s2Step84HeadFRow 228 s2Step84HeadFFresh
    s2Step84HeadF_distinct s2Step84HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step84HeadF_reserved
  have rowEq : WindowRow.mk (s2Step84HeadFRow.payload++s2Step84HeadFFresh) s2Step84HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 844],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step84HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step84HeadFvBefore : Arena := s2Step84HeadGvAfter

private theorem s2Step84HeadFv_Incoming : rowsOwned s2Step84HeadFvBefore [s2Step84HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step84HeadGRow,s2Step84HeadFRow,s2Step84HeadGvRow,s2Step84HeadFvRow] 3 s2Step84HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step84HeadFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step84HeadFv_Outgoing : rowsOwned s2Step84HeadFvAfter [s2Step84HeadFvOut] :=
  hmrRows_owned_drop s2Step84HeadFvAfter [s2Step84HeadGOut,s2Step84HeadFOut,s2Step84HeadGvOut,s2Step84HeadFvOut] 3 s2Step84HeadBank_outgoingOwned

private theorem s2Step84HeadFv_distinct : (s2Step84HeadFvRow.sign::s2Step84HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84HeadFv_owned : (s2Step84HeadFvRow.sign::s2Step84HeadFvRow.payload).toFinset⊆s2Step84HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step84HeadFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84HeadFv_reserved : s2Step84HeadFvBefore.reserve s2Step84HeadFvFresh.toFinset=some s2Step84HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step84HeadFvFresh,arenaWires]
  · norm_num [s2Step84HeadFvBefore,s2Step84HeadGvAfter,s2Step84HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step84HeadFvAfter,s2Step84HeadFvBefore,s2Step84HeadGvAfter,s2Step84HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step84HeadFv_checked : planRowResizeLog s2Step84HeadFvBefore s2Step84HeadFvRow 57 s2Step84HeadFvFresh=
    some (s2Step84HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 816],770⟩,growRow 770 s2Step84HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step84HeadFvBefore s2Step84HeadFvAfter s2Step84HeadFvRow 57 s2Step84HeadFvFresh
    s2Step84HeadFv_distinct s2Step84HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step84HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step84HeadFvRow.payload++s2Step84HeadFvFresh) s2Step84HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 816],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step84HeadG_Incoming : rowsOwned s2Step84HeadGBefore [s2Step84HeadGRow,s2Step84HeadFRow,s2Step84HeadGvRow,s2Step84HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step84HeadGRow,s2Step84HeadFRow,s2Step84HeadGvRow,s2Step84HeadFvRow] 0 s2Step84HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step84HeadGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step84HeadG_Outgoing : rowsOwned s2Step84HeadFvAfter [s2Step84HeadGOut,s2Step84HeadFOut,s2Step84HeadGvOut,s2Step84HeadFvOut] :=
  hmrRows_owned_drop s2Step84HeadFvAfter [s2Step84HeadGOut,s2Step84HeadFOut,s2Step84HeadGvOut,s2Step84HeadFvOut] 0 s2Step84HeadBank_outgoingOwned

private theorem s2Step84HeadG_distinct : (s2Step84HeadGRow.sign::s2Step84HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84HeadG_owned : (s2Step84HeadGRow.sign::s2Step84HeadGRow.payload).toFinset⊆s2Step84HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step84HeadGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84HeadG_reserved : s2Step84HeadGBefore.reserve s2Step84HeadGFresh.toFinset=some s2Step84HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step84HeadGFresh,arenaWires]
  · norm_num [s2Step84HeadGBefore,s2Step84HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step84HeadGAfter,s2Step84HeadGBefore,s2Step84HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step84HeadG_checked : planRowResizeLog s2Step84HeadGBefore s2Step84HeadGRow 228 s2Step84HeadGFresh=
    some (s2Step84HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 839, 845],769⟩,growRow 769 s2Step84HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step84HeadGBefore s2Step84HeadGAfter s2Step84HeadGRow 228 s2Step84HeadGFresh
    s2Step84HeadG_distinct s2Step84HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step84HeadG_reserved
  have rowEq : WindowRow.mk (s2Step84HeadGRow.payload++s2Step84HeadGFresh) s2Step84HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 839, 845],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step84HeadGvBefore : Arena := s2Step84HeadFAfter

private theorem s2Step84HeadGv_Incoming : rowsOwned s2Step84HeadGvBefore [s2Step84HeadGvRow,s2Step84HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step84HeadGRow,s2Step84HeadFRow,s2Step84HeadGvRow,s2Step84HeadFvRow] 2 s2Step84HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step84HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step84HeadGv_Outgoing : rowsOwned s2Step84HeadFvAfter [s2Step84HeadGvOut,s2Step84HeadFvOut] :=
  hmrRows_owned_drop s2Step84HeadFvAfter [s2Step84HeadGOut,s2Step84HeadFOut,s2Step84HeadGvOut,s2Step84HeadFvOut] 2 s2Step84HeadBank_outgoingOwned

private theorem s2Step84HeadGv_distinct : (s2Step84HeadGvRow.sign::s2Step84HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step84HeadGv_owned : (s2Step84HeadGvRow.sign::s2Step84HeadGvRow.payload).toFinset⊆s2Step84HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step84HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step84HeadGv_reserved : s2Step84HeadGvBefore.reserve s2Step84HeadGvFresh.toFinset=some s2Step84HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step84HeadGvFresh,arenaWires]
  · norm_num [s2Step84HeadGvBefore,s2Step84HeadFAfter,s2Step84HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step84HeadGvAfter,s2Step84HeadGvBefore,s2Step84HeadFAfter,s2Step84HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step84HeadGv_checked : planRowResizeLog s2Step84HeadGvBefore s2Step84HeadGvRow 57 s2Step84HeadGvFresh=
    some (s2Step84HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩,growRow 771 s2Step84HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step84HeadGvBefore s2Step84HeadGvAfter s2Step84HeadGvRow 57 s2Step84HeadGvFresh
    s2Step84HeadGv_distinct s2Step84HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step84HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step84HeadGvRow.payload++s2Step84HeadGvFresh) s2Step84HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step84HeadBank_rows : planWindowRowsLog s2Step84HeadGBefore [(s2Step84HeadGRow,228),(s2Step84HeadFRow,228),(s2Step84HeadGvRow,57),(s2Step84HeadFvRow,57)] [s2Step84HeadGFresh,s2Step84HeadFFresh,s2Step84HeadGvFresh,s2Step84HeadFvFresh]=
    some (s2Step84HeadFvAfter,[s2Step84HeadGOut,s2Step84HeadFOut,s2Step84HeadGvOut,s2Step84HeadFvOut],(growRow 769 s2Step84HeadGFresh ++ (growRow 768 s2Step84HeadFFresh ++ (growRow 771 s2Step84HeadGvFresh ++ (growRow 770 s2Step84HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step84HeadFvAfter [] []=some (s2Step84HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step84HeadFvBefore s2Step84HeadFvAfter s2Step84HeadFvAfter
    s2Step84HeadFvRow s2Step84HeadFvOut 57 s2Step84HeadFvFresh [] [] []
    (growRow 770 s2Step84HeadFvFresh) ([]) s2Step84HeadFv_Incoming s2Step84HeadFv_checked h4 s2Step84HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step84HeadGvBefore s2Step84HeadGvAfter s2Step84HeadFvAfter
    s2Step84HeadGvRow s2Step84HeadGvOut 57 s2Step84HeadGvFresh [(s2Step84HeadFvRow,57)] [s2Step84HeadFvFresh] [s2Step84HeadFvOut]
    (growRow 771 s2Step84HeadGvFresh) ((growRow 770 s2Step84HeadFvFresh ++ [])) s2Step84HeadGv_Incoming s2Step84HeadGv_checked h3 s2Step84HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step84HeadFBefore s2Step84HeadFAfter s2Step84HeadFvAfter
    s2Step84HeadFRow s2Step84HeadFOut 228 s2Step84HeadFFresh [(s2Step84HeadGvRow,57),(s2Step84HeadFvRow,57)] [s2Step84HeadGvFresh,s2Step84HeadFvFresh] [s2Step84HeadGvOut,s2Step84HeadFvOut]
    (growRow 768 s2Step84HeadFFresh) ((growRow 771 s2Step84HeadGvFresh ++ (growRow 770 s2Step84HeadFvFresh ++ []))) s2Step84HeadF_Incoming s2Step84HeadF_checked h2 s2Step84HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step84HeadGBefore s2Step84HeadGAfter s2Step84HeadFvAfter
    s2Step84HeadGRow s2Step84HeadGOut 228 s2Step84HeadGFresh [(s2Step84HeadFRow,228),(s2Step84HeadGvRow,57),(s2Step84HeadFvRow,57)] [s2Step84HeadFFresh,s2Step84HeadGvFresh,s2Step84HeadFvFresh] [s2Step84HeadFOut,s2Step84HeadGvOut,s2Step84HeadFvOut]
    (growRow 769 s2Step84HeadGFresh) ((growRow 768 s2Step84HeadFFresh ++ (growRow 771 s2Step84HeadGvFresh ++ (growRow 770 s2Step84HeadFvFresh ++ [])))) s2Step84HeadG_Incoming s2Step84HeadG_checked h1 s2Step84HeadG_Outgoing
  exact h0

private theorem s2Step84HeadBank_checked : compileHmrBankResizeLog .headroom s2Step84HeadGBefore ⟨s2Step84HeadFRow,s2Step84HeadGRow,s2Step84HeadFvRow,s2Step84HeadGvRow⟩ ⟨228,228,57,57⟩ [s2Step84HeadGFresh,s2Step84HeadFFresh,s2Step84HeadGvFresh,s2Step84HeadFvFresh]=
    some (s2Step84HeadFvAfter,⟨s2Step84HeadFOut,s2Step84HeadGOut,s2Step84HeadFvOut,s2Step84HeadGvOut⟩,(growRow 769 s2Step84HeadGFresh ++ (growRow 768 s2Step84HeadFFresh ++ (growRow 771 s2Step84HeadGvFresh ++ (growRow 770 s2Step84HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step84HeadBank_rows]
  rfl

private theorem s2Step84Front_checked : compileHmrSourceFrontLog s2Step84EntryFBefore s2Step84FrontBank 227 56 ⟨226,226,56,56⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step84FrontLog=some s2Step84FrontPlan := by
  have pairEq : s2Step84FrontPair=⟨s2Step84HeadFRow,s2Step84HeadGRow,s2Step84HeadFvRow,s2Step84HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step84FrontHead=⟨s2Step84ExitFRow,s2Step84ExitGRow,s2Step84ExitFvRow,s2Step84ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step84Add0A=s2Step84FrontHead.f.wires := by decide +kernel
  have gEq : s2Step84Add0B=s2Step84FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step84Add1A=s2Step84FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step84Add1B=s2Step84FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step84EntryFBefore s2Step84FrontBank 227 56 ⟨226,226,56,56⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step84FrontLog s2Step84FrontPlan
  · exact s2Step84Front_entry
  · exact s2Step84EntryBank_checked
  · exact s2Step84Front_sigma
  · rfl
  · exact s2Step84Front_branch
  · rfl
  · simpa only [s2Step84FrontPlan,pairEq] using s2Step84HeadBank_checked
  · simpa only [s2Step84FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step84F4_checked
  · exact s2Step84Counter_checked
  · rfl
  · simpa only [s2Step84FrontPlan,headEq] using s2Step84ExitBank_checked

private theorem s2Step84Complete_explicit_checked : compileHmrEarlyStepLog s2Step84EntryFBefore s2Step84FrontBank 227 56 ⟨226,226,56,56⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 31 s2Step84CompleteLog=some s2Step84CompletePlan := by
  let Q := s2Step84EarlyControlPlan
  have hq := s2Step84EarlyControl_plan_checked
  have fv1 : s2Step84CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step84CompleteOut.fv.payload[2]?.getD s2Step84CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step84CompleteOut.fv.payload[3]?.getD s2Step84CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step84CompleteOut.fv.payload[4]?.getD s2Step84CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step84EntryFBefore s2Step84EarlyControlArena s2Step84FrontBank 227 56 ⟨226,226,56,56⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 31 s2Step84CompleteLog s2Step84FrontPlan Q
    s2Step84Front_checked s2Step84Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step84Complete_owned s2Step84Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step84EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 781 s2Step84CompleteOut.fv.second (s2Step84CompleteOut.fv.payload[2]?.getD s2Step84CompleteOut.fv.sign) (s2Step84CompleteOut.fv.payload[3]?.getD s2Step84CompleteOut.fv.sign) (s2Step84CompleteOut.fv.payload[4]?.getD s2Step84CompleteOut.fv.sign) 836 31 s2Step84EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep84Arena : Arena := s2Step84EntryFBefore
def s2PrivateStep84Bank : WindowBank := s2Step84FrontBank
def s2PrivateStep84Spec : HmrSourceWalkStepLog := ⟨227,56,⟨226,226,56,56⟩,31,.early s2Step84CompleteLog⟩
def s2PrivateStep84Plan : HmrSourceStepPlan := .early s2Step84CompletePlan
theorem s2PrivateStep84_source : s2PrivateStep84Spec=s2ObservedLogs80[4] := rfl
theorem s2PrivateStep84_checked : compileHmrSourceStepLog s2PrivateStep84Arena s2PrivateStep84Bank
    s2PrivateStep84Spec.fgWidth s2PrivateStep84Spec.vWidth s2PrivateStep84Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]
    6 498 84 s2PrivateStep84Spec.need none s2PrivateStep84Spec.log=some s2PrivateStep84Plan := by
  change compileHmrSourceStepLog s2Step84EntryFBefore s2Step84FrontBank 227 56 ⟨226,226,56,56⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 6 498 84 31 none (.early s2Step84CompleteLog)=some (.early s2Step84CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 84<498)]
  rw [s2Step84Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
