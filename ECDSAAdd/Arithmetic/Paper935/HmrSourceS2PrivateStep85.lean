import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep83
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

private def s2Step85CompleteMoves : List (Wire × Wire) := [(785,225)]

private def s2Step85EarlyControlLog : HmrEarlyControlLog := ⟨[785, 816, 844, 842, 788],[839],[845],[846, 847, 849, 851, 867, 873],[]⟩

private def s2Step85FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[788], [842], [816], [844]],[[], [], [], []]⟩,[836],[781],[839],[845],[846, 847, 849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925],[839, 845, 846, 847]⟩

private def s2Step85CompleteLog : HmrEarlyStepLog := ⟨s2Step85FrontLog,s2Step85CompleteMoves,s2Step85EarlyControlLog⟩

private def s2Step85ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩

private def s2Step85ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩

private def s2Step85ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224],769⟩

private def s2Step85ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841],771⟩

private def s2Step85FrontOut : WindowBank := ⟨s2Step85ExitFOut,s2Step85ExitGOut,s2Step85ExitFvOut,s2Step85ExitGvOut⟩

private def s2Step85CompleteOut : WindowBank := s2Step85FrontOut.repacked s2Step85CompleteMoves

private def s2Step85EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step85EarlyControlPositiveArena,[839],s2Step85EarlyControlEqualityArena,[845],⟨⟨836,false⟩,[⟨⟨839,false⟩,845⟩]⟩⟩

private def s2Step85EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<874) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<874) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,785⟩,⟨⟨774,false⟩,816⟩,⟨⟨775,false⟩,844⟩,⟨⟨776,false⟩,842⟩,⟨⟨777,false⟩,788⟩]⟩

private def s2Step85EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step85EarlyControlZeroArena,s2Step85EarlyControlZeroPlan,s2Step85EarlyControlClassPlan,s2Step85EarlyControlFlagArena,s2Step85EarlyControlFittedArena,s2Step85EarlyControlHistoryArena,s2Step85EarlyControlSigmaArena,s2Step85EarlyControlOutputArena,s2Step85EarlyControlLog⟩

private def s2Step85CounterWork : List Wire := [839, 845, 846, 847]

private theorem s2Step85Counter_bounded : s2Step85CounterWork.toFinset⊆arenaWires := by norm_num [s2Step85CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step85HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85CounterDuring : Arena := ⟨s2Step85HeadFvAfter.live∪s2Step85CounterWork.toFinset,Finset.union_subset s2Step85HeadFvAfter.bounded s2Step85Counter_bounded⟩

private def s2Step85EntryFFresh : List Wire := []

private def s2Step85EntryFvFresh : List Wire := []

private def s2Step85EntryGFresh : List Wire := []

private def s2Step85EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85EntryGvAfter : Arena := s2Step85EntryFBefore

private def s2Step85EntryGvFresh : List Wire := []

private def s2Step85ExitFExtra : List Wire := [842]

private def s2Step85ExitFvExtra : List Wire := [844]

private def s2Step85ExitGExtra : List Wire := [225, 788]

private def s2Step85ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<225) ∨ (226≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85ExitGvExtra : List Wire := [816]

private def s2Step85Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85Add0Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step85Add0_bounded : s2Step85Add0Work.toFinset⊆arenaWires := by
  have h : s2Step85Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step85Add0During : Arena := ⟨s2Step85Add0Arena.live∪s2Step85Add0Work.toFinset,Finset.union_subset s2Step85Add0Arena.bounded s2Step85Add0_bounded⟩

private def s2Step85Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85Add1Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925]

private theorem s2Step85Add1_bounded : s2Step85Add1Work.toFinset⊆arenaWires := by
  have h : s2Step85Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step85Add1During : Arena := ⟨s2Step85Add1Arena.live∪s2Step85Add1Work.toFinset,Finset.union_subset s2Step85Add1Arena.bounded s2Step85Add1_bounded⟩

private def s2Step85F4FlagArena : Arena := ⟨s2Step85HeadFvAfter.live∪{839},Finset.union_subset s2Step85HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step85F4Plan : HmrHybridF4Plan := ⟨s2Step85F4FlagArena,[839],s2Step85Add0Arena,[845],s2Step85Add0During,s2Step85Add0Work,s2Step85Add1During,s2Step85Add1Work⟩

private def s2Step85HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 842],768⟩

private def s2Step85HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 844],770⟩

private def s2Step85HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 788],769⟩

private def s2Step85HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 816],771⟩

private def s2Step85FrontHead : WindowBank := ⟨s2Step85HeadFOut,s2Step85HeadGOut,s2Step85HeadFvOut,s2Step85HeadGvOut⟩

private def s2Step85EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩

private def s2Step85EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩

private def s2Step85EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225],769⟩

private def s2Step85EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841],771⟩

private def s2Step85FrontPair : WindowBank := ⟨s2Step85EntryFOut,s2Step85EntryGOut,s2Step85EntryFvOut,s2Step85EntryGvOut⟩

private def s2Step85FrontSigmaArena : Arena := ⟨s2Step85EntryGvAfter.live∪{836},Finset.union_subset s2Step85EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step85HeadFFresh : List Wire := [842]

private def s2Step85HeadFvFresh : List Wire := [844]

private def s2Step85HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85HeadGFresh : List Wire := [788]

private def s2Step85HeadGvFresh : List Wire := [816]

private def s2Step85FrontPlan : HmrSourceFront := ⟨s2Step85EntryGvAfter,s2Step85FrontPair,(growRow 768 s2Step85EntryFFresh ++ (growRow 769 s2Step85EntryGFresh ++ (growRow 770 s2Step85EntryFvFresh ++ (growRow 771 s2Step85EntryGvFresh ++ [])))),s2Step85FrontSigmaArena,[836],s2Step85HeadGBefore,[781],
  s2Step85HeadFvAfter,s2Step85FrontHead,(growRow 769 s2Step85HeadGFresh ++ (growRow 768 s2Step85HeadFFresh ++ (growRow 771 s2Step85HeadGvFresh ++ (growRow 770 s2Step85HeadFvFresh ++ [])))),s2Step85F4Plan,s2Step85CounterDuring,s2Step85CounterWork,s2Step85ExitGvAfter,s2Step85FrontOut,(shrinkRow 769 s2Step85ExitGExtra ++ (shrinkRow 768 s2Step85ExitFExtra ++ (shrinkRow 770 s2Step85ExitFvExtra ++ (shrinkRow 771 s2Step85ExitGvExtra ++ []))))⟩

private def s2Step85CompletePlan : HmrEarlyStepPlan := ⟨s2Step85FrontPlan,s2Step85EarlyControlArena,s2Step85EarlyControlPlan,s2Step85CompleteMoves⟩

private theorem s2Step85Complete_apart : List.Disjoint (s2Step85CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [836, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] := by
  have nd : ((s2Step85CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[836, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step85Complete_owned : (s2Step85CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step85EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step85EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private def s2Step85CompleteMoveArena : Arena := ⟨s2Step85ExitGvAfter.live∪{225},Finset.union_subset s2Step85ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step85Complete_repack : s2Step85ExitGvAfter.checkRepack s2Step85CompleteMoves=some s2Step85EarlyControlArena := by
  have owned : 785∈s2Step85ExitGvAfter.live := by norm_num [s2Step85ExitGvAfter,arenaWires]
  have reserve : s2Step85ExitGvAfter.reserve {225}=some s2Step85CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step85ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step85CompleteMoveArena.retireSet {785}=s2Step85EarlyControlArena := by
    unfold Arena.retireSet s2Step85EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step85CompleteMoveArena,s2Step85ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step85CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step85CompleteMoveArena.retireSet {785}).checkRepack []=some s2Step85EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step85EarlyControl_branchOwned : ([781] : List Wire).toFinset⊆s2Step85EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step85EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85EarlyControl_branch : compileHmrBranchRetirement s2Step85EarlyControlSigmaArena 781=some s2Step85EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step85EarlyControl_branchOwned
  · ext q
    simp [s2Step85EarlyControlOutputArena,s2Step85EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step85EarlyControl_classEqualityBorrow : s2Step85EarlyControlPositiveArena.checkBorrow (([836, 839] : List Wire).length-1) s2Step85EarlyControlLog.classWork=some s2Step85EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step85EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step85EarlyControlPositiveArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step85EarlyControlEqualityArena,s2Step85EarlyControlPositiveArena,s2Step85EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step85EarlyControl_classEqualityOwned : ([836, 839] : List Wire).toFinset⊆s2Step85EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step85EarlyControlPositiveArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85EarlyControl_classEquality : compileHmrEqualityLog s2Step85EarlyControlPositiveArena [836, 839] 0 s2Step85EarlyControlLog.classWork=some (s2Step85EarlyControlEqualityArena,s2Step85EarlyControlLog.classWork,s2Step85EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step85EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step85EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step85EarlyControl_classOwned : ([777, 788, 836] : List Wire).toFinset⊆s2Step85EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step85EarlyControlZeroArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85EarlyControl_positiveBorrow : s2Step85EarlyControlZeroArena.checkBorrow (1) s2Step85EarlyControlLog.positiveWork=some s2Step85EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step85EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step85EarlyControlZeroArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step85EarlyControlPositiveArena,s2Step85EarlyControlZeroArena,s2Step85EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step85EarlyControl_class : compileHmrSourceClassLog s2Step85EarlyControlZeroArena false 777 s2Step85EarlyControlZeroPlan.top 0 836 s2Step85EarlyControlLog.positiveWork s2Step85EarlyControlLog.classWork=some s2Step85EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step85EarlyControlClassPlan s2Step85EarlyControlZeroArena false 777 s2Step85EarlyControlZeroPlan.top 0 836
  constructor
  · decide +kernel
  · exact s2Step85EarlyControl_classOwned
  · exact s2Step85EarlyControl_positiveBorrow
  · exact s2Step85EarlyControl_classEquality

private theorem s2Step85EarlyControl_entryRecordOwned : ([781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).toFinset⊆s2Step85EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step85EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85EarlyControl_entrySigmaOwned : ([836, 254] : List Wire).toFinset⊆s2Step85EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step85EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85EarlyControl_fitBorrow : s2Step85EarlyControlFlagArena.checkBorrow ((31-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).length)) s2Step85EarlyControlLog.recordFresh=some s2Step85EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step85EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step85EarlyControlFlagArena (fun q => (0≤q ∧ q<874) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step85EarlyControlFittedArena,s2Step85EarlyControlFlagArena,s2Step85EarlyControlLog,arenaWires]

private theorem s2Step85EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).toFinset⊆s2Step85EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step85EarlyControlFlagArena (fun q => (0≤q ∧ q<874) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85EarlyControl_fit : compileHmrRecordGrowLog s2Step85EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 31 s2Step85EarlyControlLog.recordFresh=some s2Step85EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step85EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step85EarlyControl_fitBorrow

private theorem s2Step85EarlyControl_flagsBorrow : s2Step85EarlyControlEqualityArena.checkBorrow (6) s2Step85EarlyControlLog.flagWork=some s2Step85EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step85EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step85EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step85EarlyControlFlagArena,s2Step85EarlyControlEqualityArena,s2Step85EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step85EarlyControl_flagsOwned : ([845, 253, 252, 251] : List Wire).toFinset⊆s2Step85EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step85EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85EarlyControl_flags : compileHmrFlagsLog s2Step85EarlyControlClassPlan.equalityArena s2Step85EarlyControlClassPlan.equality.top 253 252 251 s2Step85EarlyControlLog.flagWork=some s2Step85EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step85EarlyControl_flagsOwned⟩
  · exact s2Step85EarlyControl_flagsBorrow

private theorem s2Step85EarlyControl_historyBorrow : s2Step85EarlyControlArena.checkBorrow ((31-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).length)) s2Step85EarlyControlLog.recordFresh=some s2Step85EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step85EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step85EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step85EarlyControlHistoryArena,s2Step85EarlyControlArena,s2Step85EarlyControlLog,arenaWires]

private theorem s2Step85EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).toFinset⊆s2Step85EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step85EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85EarlyControl_history : compileHmrRecordGrowLog s2Step85EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 31 s2Step85EarlyControlLog.recordFresh=some s2Step85EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step85EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step85EarlyControl_historyBorrow

private theorem s2Step85EarlyControl_sigmaOwned : ([254, 836] : List Wire).toFinset⊆s2Step85EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step85EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85EarlyControl_sigmaReleaseOwned : ([836] : List Wire).toFinset⊆s2Step85EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step85EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85EarlyControl_sigmaRelease : s2Step85EarlyControlHistoryArena.release {836} (fun _ => false)=some s2Step85EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step85EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step85EarlyControlSigmaArena,s2Step85EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step85EarlyControl_sigma : compileHmrSigmaDropLog s2Step85EarlyControlHistoryArena false 0 0 254 836 []=some s2Step85EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step85EarlyControl_sigmaOwned⟩
  · exact s2Step85EarlyControl_sigmaRelease

private theorem s2Step85EarlyControl_zeroBorrow : s2Step85EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step85EarlyControlLog.zeroWork=some s2Step85EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step85EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step85EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step85EarlyControlZeroArena,s2Step85EarlyControlArena,s2Step85EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step85EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step85EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step85EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85EarlyControl_zero : compileHmrEqualityLog s2Step85EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step85EarlyControlLog.zeroWork=some (s2Step85EarlyControlZeroArena,s2Step85EarlyControlLog.zeroWork,s2Step85EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step85EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step85EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step85EarlyControl_logged : s2Step85EarlyControlPlan.Logged s2Step85EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 836 254 253 252 251 781 31 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step85EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step85EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step85EarlyControl_zero
  · exact s2Step85EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step85EarlyControl_flags
  · exact s2Step85EarlyControl_fit
  · exact s2Step85EarlyControl_history
  · exact s2Step85EarlyControl_sigma
  · exact s2Step85EarlyControl_branch

private theorem s2Step85EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step85EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 836 254 253 252 251 781 31 s2Step85EarlyControlLog=some s2Step85EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step85EarlyControlPlan s2Step85EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 836 254 253 252 251 781 31 s2Step85EarlyControl_logged

private def s2Step85EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩

private def s2Step85EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩

private def s2Step85EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225],769⟩

private def s2Step85EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841],771⟩

private def s2Step85FrontBank : WindowBank := ⟨s2Step85EntryFRow,s2Step85EntryGRow,s2Step85EntryFvRow,s2Step85EntryGvRow⟩

private def s2Step85Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 842, 768]

private def s2Step85Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 788, 769]

private def s2Step85Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 844, 770]

private def s2Step85Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 816, 771]

private theorem s2Step85Counter_apart : Disjoint s2Step85HeadFvAfter.live s2Step85CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step85HeadFvAfter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85Counter_borrowed : s2Step85HeadFvAfter.checkBorrow 4 s2Step85CounterWork=some s2Step85CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step85HeadFvAfter s2Step85CounterDuring s2Step85CounterWork.toFinset s2Step85Counter_bounded s2Step85Counter_apart rfl

private theorem s2Step85Counter_owned : (836::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step85HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step85HeadFvAfter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85Counter_checked : compileHmrCounterStepLog s2Step85HeadFvAfter true 836 [772, 773, 774, 775, 776, 777] s2Step85CounterWork=some s2Step85CounterDuring := by
  have owned : ∀q∈836::[772, 773, 774, 775, 776, 777],q∈s2Step85HeadFvAfter.live := fun q hq => s2Step85Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step85Counter_borrowed

private def s2Step85EntryFAfter : Arena := s2Step85EntryFBefore

private theorem s2Step85EntryBank_incomingDistinct : ([s2Step85EntryFRow,s2Step85EntryGRow,s2Step85EntryFvRow,s2Step85EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85EntryF_Incoming : rowsOwned s2Step85EntryFBefore [s2Step85EntryFRow,s2Step85EntryGRow,s2Step85EntryFvRow,s2Step85EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step85EntryFRow,s2Step85EntryGRow,s2Step85EntryFvRow,s2Step85EntryGvRow] 0 s2Step85EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step85EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step85EntryBank_outgoingOwned : rowsOwned s2Step85EntryGvAfter [s2Step85EntryFOut,s2Step85EntryGOut,s2Step85EntryFvOut,s2Step85EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step85EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step85EntryF_Outgoing : rowsOwned s2Step85EntryGvAfter [s2Step85EntryFOut,s2Step85EntryGOut,s2Step85EntryFvOut,s2Step85EntryGvOut] :=
  hmrRows_owned_drop s2Step85EntryGvAfter [s2Step85EntryFOut,s2Step85EntryGOut,s2Step85EntryFvOut,s2Step85EntryGvOut] 0 s2Step85EntryBank_outgoingOwned

private theorem s2Step85EntryF_distinct : (s2Step85EntryFRow.sign::s2Step85EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85EntryF_owned : (s2Step85EntryFRow.sign::s2Step85EntryFRow.payload).toFinset⊆s2Step85EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step85EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85EntryF_reserved : s2Step85EntryFBefore.reserve s2Step85EntryFFresh.toFinset=some s2Step85EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step85EntryFFresh,arenaWires]
  · norm_num [s2Step85EntryFBefore,s2Step85EntryFFresh,arenaWires]
  · simp only [s2Step85EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step85EntryF_checked : planRowResizeLog s2Step85EntryFBefore s2Step85EntryFRow 226 s2Step85EntryFFresh=
    some (s2Step85EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩,growRow 768 s2Step85EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step85EntryFBefore s2Step85EntryFAfter s2Step85EntryFRow 226 s2Step85EntryFFresh
    s2Step85EntryF_distinct s2Step85EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step85EntryF_reserved
  have rowEq : WindowRow.mk (s2Step85EntryFRow.payload++s2Step85EntryFFresh) s2Step85EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step85EntryFvAfter : Arena := s2Step85EntryFBefore

private def s2Step85EntryFvBefore : Arena := s2Step85EntryFBefore

private theorem s2Step85EntryFv_Incoming : rowsOwned s2Step85EntryFvBefore [s2Step85EntryFvRow,s2Step85EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step85EntryFRow,s2Step85EntryGRow,s2Step85EntryFvRow,s2Step85EntryGvRow] 2 s2Step85EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step85EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step85EntryFv_Outgoing : rowsOwned s2Step85EntryGvAfter [s2Step85EntryFvOut,s2Step85EntryGvOut] :=
  hmrRows_owned_drop s2Step85EntryGvAfter [s2Step85EntryFOut,s2Step85EntryGOut,s2Step85EntryFvOut,s2Step85EntryGvOut] 2 s2Step85EntryBank_outgoingOwned

private theorem s2Step85EntryFv_distinct : (s2Step85EntryFvRow.sign::s2Step85EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85EntryFv_owned : (s2Step85EntryFvRow.sign::s2Step85EntryFvRow.payload).toFinset⊆s2Step85EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step85EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85EntryFv_reserved : s2Step85EntryFvBefore.reserve s2Step85EntryFvFresh.toFinset=some s2Step85EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step85EntryFvFresh,arenaWires]
  · norm_num [s2Step85EntryFvBefore,s2Step85EntryFBefore,s2Step85EntryFvFresh,arenaWires]
  · simp only [s2Step85EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step85EntryFv_checked : planRowResizeLog s2Step85EntryFvBefore s2Step85EntryFvRow 56 s2Step85EntryFvFresh=
    some (s2Step85EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩,growRow 770 s2Step85EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step85EntryFvBefore s2Step85EntryFvAfter s2Step85EntryFvRow 56 s2Step85EntryFvFresh
    s2Step85EntryFv_distinct s2Step85EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step85EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step85EntryFvRow.payload++s2Step85EntryFvFresh) s2Step85EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step85EntryGAfter : Arena := s2Step85EntryFBefore

private def s2Step85EntryGBefore : Arena := s2Step85EntryFBefore

private theorem s2Step85EntryG_Incoming : rowsOwned s2Step85EntryGBefore [s2Step85EntryGRow,s2Step85EntryFvRow,s2Step85EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step85EntryFRow,s2Step85EntryGRow,s2Step85EntryFvRow,s2Step85EntryGvRow] 1 s2Step85EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step85EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step85EntryG_Outgoing : rowsOwned s2Step85EntryGvAfter [s2Step85EntryGOut,s2Step85EntryFvOut,s2Step85EntryGvOut] :=
  hmrRows_owned_drop s2Step85EntryGvAfter [s2Step85EntryFOut,s2Step85EntryGOut,s2Step85EntryFvOut,s2Step85EntryGvOut] 1 s2Step85EntryBank_outgoingOwned

private theorem s2Step85EntryG_distinct : (s2Step85EntryGRow.sign::s2Step85EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85EntryG_owned : (s2Step85EntryGRow.sign::s2Step85EntryGRow.payload).toFinset⊆s2Step85EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step85EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85EntryG_reserved : s2Step85EntryGBefore.reserve s2Step85EntryGFresh.toFinset=some s2Step85EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step85EntryGFresh,arenaWires]
  · norm_num [s2Step85EntryGBefore,s2Step85EntryFBefore,s2Step85EntryGFresh,arenaWires]
  · simp only [s2Step85EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step85EntryG_checked : planRowResizeLog s2Step85EntryGBefore s2Step85EntryGRow 226 s2Step85EntryGFresh=
    some (s2Step85EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225],769⟩,growRow 769 s2Step85EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step85EntryGBefore s2Step85EntryGAfter s2Step85EntryGRow 226 s2Step85EntryGFresh
    s2Step85EntryG_distinct s2Step85EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step85EntryG_reserved
  have rowEq : WindowRow.mk (s2Step85EntryGRow.payload++s2Step85EntryGFresh) s2Step85EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step85EntryGvBefore : Arena := s2Step85EntryFBefore

private theorem s2Step85EntryGv_Incoming : rowsOwned s2Step85EntryGvBefore [s2Step85EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step85EntryFRow,s2Step85EntryGRow,s2Step85EntryFvRow,s2Step85EntryGvRow] 3 s2Step85EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step85EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step85EntryGv_Outgoing : rowsOwned s2Step85EntryGvAfter [s2Step85EntryGvOut] :=
  hmrRows_owned_drop s2Step85EntryGvAfter [s2Step85EntryFOut,s2Step85EntryGOut,s2Step85EntryFvOut,s2Step85EntryGvOut] 3 s2Step85EntryBank_outgoingOwned

private theorem s2Step85EntryGv_distinct : (s2Step85EntryGvRow.sign::s2Step85EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85EntryGv_owned : (s2Step85EntryGvRow.sign::s2Step85EntryGvRow.payload).toFinset⊆s2Step85EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step85EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85EntryGv_reserved : s2Step85EntryGvBefore.reserve s2Step85EntryGvFresh.toFinset=some s2Step85EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step85EntryGvFresh,arenaWires]
  · norm_num [s2Step85EntryGvBefore,s2Step85EntryFBefore,s2Step85EntryGvFresh,arenaWires]
  · simp only [s2Step85EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step85EntryGv_checked : planRowResizeLog s2Step85EntryGvBefore s2Step85EntryGvRow 56 s2Step85EntryGvFresh=
    some (s2Step85EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841],771⟩,growRow 771 s2Step85EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step85EntryGvBefore s2Step85EntryGvAfter s2Step85EntryGvRow 56 s2Step85EntryGvFresh
    s2Step85EntryGv_distinct s2Step85EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step85EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step85EntryGvRow.payload++s2Step85EntryGvFresh) s2Step85EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step85EntryBank_rows : planWindowRowsLog s2Step85EntryFBefore [(s2Step85EntryFRow,226),(s2Step85EntryGRow,226),(s2Step85EntryFvRow,56),(s2Step85EntryGvRow,56)] [s2Step85EntryFFresh,s2Step85EntryGFresh,s2Step85EntryFvFresh,s2Step85EntryGvFresh]=
    some (s2Step85EntryGvAfter,[s2Step85EntryFOut,s2Step85EntryGOut,s2Step85EntryFvOut,s2Step85EntryGvOut],(growRow 768 s2Step85EntryFFresh ++ (growRow 769 s2Step85EntryGFresh ++ (growRow 770 s2Step85EntryFvFresh ++ (growRow 771 s2Step85EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step85EntryGvAfter [] []=some (s2Step85EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step85EntryGvBefore s2Step85EntryGvAfter s2Step85EntryGvAfter
    s2Step85EntryGvRow s2Step85EntryGvOut 56 s2Step85EntryGvFresh [] [] []
    (growRow 771 s2Step85EntryGvFresh) ([]) s2Step85EntryGv_Incoming s2Step85EntryGv_checked h4 s2Step85EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step85EntryFvBefore s2Step85EntryFvAfter s2Step85EntryGvAfter
    s2Step85EntryFvRow s2Step85EntryFvOut 56 s2Step85EntryFvFresh [(s2Step85EntryGvRow,56)] [s2Step85EntryGvFresh] [s2Step85EntryGvOut]
    (growRow 770 s2Step85EntryFvFresh) ((growRow 771 s2Step85EntryGvFresh ++ [])) s2Step85EntryFv_Incoming s2Step85EntryFv_checked h3 s2Step85EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step85EntryGBefore s2Step85EntryGAfter s2Step85EntryGvAfter
    s2Step85EntryGRow s2Step85EntryGOut 226 s2Step85EntryGFresh [(s2Step85EntryFvRow,56),(s2Step85EntryGvRow,56)] [s2Step85EntryFvFresh,s2Step85EntryGvFresh] [s2Step85EntryFvOut,s2Step85EntryGvOut]
    (growRow 769 s2Step85EntryGFresh) ((growRow 770 s2Step85EntryFvFresh ++ (growRow 771 s2Step85EntryGvFresh ++ []))) s2Step85EntryG_Incoming s2Step85EntryG_checked h2 s2Step85EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step85EntryFBefore s2Step85EntryFAfter s2Step85EntryGvAfter
    s2Step85EntryFRow s2Step85EntryFOut 226 s2Step85EntryFFresh [(s2Step85EntryGRow,226),(s2Step85EntryFvRow,56),(s2Step85EntryGvRow,56)] [s2Step85EntryGFresh,s2Step85EntryFvFresh,s2Step85EntryGvFresh] [s2Step85EntryGOut,s2Step85EntryFvOut,s2Step85EntryGvOut]
    (growRow 768 s2Step85EntryFFresh) ((growRow 769 s2Step85EntryGFresh ++ (growRow 770 s2Step85EntryFvFresh ++ (growRow 771 s2Step85EntryGvFresh ++ [])))) s2Step85EntryF_Incoming s2Step85EntryF_checked h1 s2Step85EntryF_Outgoing
  exact h0

private theorem s2Step85EntryBank_checked : compileHmrBankResizeLog .entry s2Step85EntryFBefore ⟨s2Step85EntryFRow,s2Step85EntryGRow,s2Step85EntryFvRow,s2Step85EntryGvRow⟩ ⟨226,226,56,56⟩ [s2Step85EntryFFresh,s2Step85EntryGFresh,s2Step85EntryFvFresh,s2Step85EntryGvFresh]=
    some (s2Step85EntryGvAfter,⟨s2Step85EntryFOut,s2Step85EntryGOut,s2Step85EntryFvOut,s2Step85EntryGvOut⟩,(growRow 768 s2Step85EntryFFresh ++ (growRow 769 s2Step85EntryGFresh ++ (growRow 770 s2Step85EntryFvFresh ++ (growRow 771 s2Step85EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step85EntryBank_rows]
  rfl

private def s2Step85ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<225) ∨ (226≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<225) ∨ (226≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85ExitFBefore : Arena := s2Step85ExitGAfter

private def s2Step85ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 842],768⟩

private def s2Step85ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 844],770⟩

private def s2Step85ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 788],769⟩

private def s2Step85ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 816],771⟩

private theorem s2Step85ExitBank_incomingDistinct : ([s2Step85ExitGRow,s2Step85ExitFRow,s2Step85ExitFvRow,s2Step85ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85ExitF_Incoming : rowsOwned s2Step85ExitFBefore [s2Step85ExitFRow,s2Step85ExitFvRow,s2Step85ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step85ExitGRow,s2Step85ExitFRow,s2Step85ExitFvRow,s2Step85ExitGvRow] 1 s2Step85ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step85ExitFBefore (fun q => (0≤q ∧ q<225) ∨ (226≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step85ExitBank_outgoingOwned : rowsOwned s2Step85ExitGvAfter [s2Step85ExitGOut,s2Step85ExitFOut,s2Step85ExitFvOut,s2Step85ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step85ExitGvAfter (fun q => (0≤q ∧ q<225) ∨ (226≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step85ExitF_Outgoing : rowsOwned s2Step85ExitGvAfter [s2Step85ExitFOut,s2Step85ExitFvOut,s2Step85ExitGvOut] :=
  hmrRows_owned_drop s2Step85ExitGvAfter [s2Step85ExitGOut,s2Step85ExitFOut,s2Step85ExitFvOut,s2Step85ExitGvOut] 1 s2Step85ExitBank_outgoingOwned

private theorem s2Step85ExitF_distinct : (s2Step85ExitFRow.sign::s2Step85ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85ExitF_owned : (s2Step85ExitFRow.sign::s2Step85ExitFRow.payload).toFinset⊆s2Step85ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step85ExitFBefore (fun q => (0≤q ∧ q<225) ∨ (226≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85ExitF_retired : s2Step85ExitFBefore.retireSet s2Step85ExitFExtra.toFinset=s2Step85ExitFAfter := by
  unfold Arena.retireSet s2Step85ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step85ExitFBefore,s2Step85ExitGAfter,s2Step85ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step85ExitF_checked : planRowResizeLog s2Step85ExitFBefore s2Step85ExitFRow 226 []=
    some (s2Step85ExitFAfter,s2Step85ExitFOut,shrinkRow 768 s2Step85ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step85ExitFBefore s2Step85ExitFRow 226 s2Step85ExitF_distinct s2Step85ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step85ExitFRow.payload.take 226) s2Step85ExitFRow.sign=s2Step85ExitFOut := by decide +kernel
  have hi : s2Step85ExitFRow.payload.drop 226=s2Step85ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step85ExitF_retired] at result
  exact result

private def s2Step85ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<225) ∨ (226≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85ExitFvBefore : Arena := s2Step85ExitFAfter

private theorem s2Step85ExitFv_Incoming : rowsOwned s2Step85ExitFvBefore [s2Step85ExitFvRow,s2Step85ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step85ExitGRow,s2Step85ExitFRow,s2Step85ExitFvRow,s2Step85ExitGvRow] 2 s2Step85ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step85ExitFvBefore (fun q => (0≤q ∧ q<225) ∨ (226≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step85ExitFv_Outgoing : rowsOwned s2Step85ExitGvAfter [s2Step85ExitFvOut,s2Step85ExitGvOut] :=
  hmrRows_owned_drop s2Step85ExitGvAfter [s2Step85ExitGOut,s2Step85ExitFOut,s2Step85ExitFvOut,s2Step85ExitGvOut] 2 s2Step85ExitBank_outgoingOwned

private theorem s2Step85ExitFv_distinct : (s2Step85ExitFvRow.sign::s2Step85ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85ExitFv_owned : (s2Step85ExitFvRow.sign::s2Step85ExitFvRow.payload).toFinset⊆s2Step85ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step85ExitFvBefore (fun q => (0≤q ∧ q<225) ∨ (226≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85ExitFv_retired : s2Step85ExitFvBefore.retireSet s2Step85ExitFvExtra.toFinset=s2Step85ExitFvAfter := by
  unfold Arena.retireSet s2Step85ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step85ExitFvBefore,s2Step85ExitFAfter,s2Step85ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step85ExitFv_checked : planRowResizeLog s2Step85ExitFvBefore s2Step85ExitFvRow 56 []=
    some (s2Step85ExitFvAfter,s2Step85ExitFvOut,shrinkRow 770 s2Step85ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step85ExitFvBefore s2Step85ExitFvRow 56 s2Step85ExitFv_distinct s2Step85ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step85ExitFvRow.payload.take 56) s2Step85ExitFvRow.sign=s2Step85ExitFvOut := by decide +kernel
  have hi : s2Step85ExitFvRow.payload.drop 56=s2Step85ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step85ExitFv_retired] at result
  exact result

private def s2Step85ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private theorem s2Step85ExitG_Incoming : rowsOwned s2Step85ExitGBefore [s2Step85ExitGRow,s2Step85ExitFRow,s2Step85ExitFvRow,s2Step85ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step85ExitGRow,s2Step85ExitFRow,s2Step85ExitFvRow,s2Step85ExitGvRow] 0 s2Step85ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step85ExitGBefore (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step85ExitG_Outgoing : rowsOwned s2Step85ExitGvAfter [s2Step85ExitGOut,s2Step85ExitFOut,s2Step85ExitFvOut,s2Step85ExitGvOut] :=
  hmrRows_owned_drop s2Step85ExitGvAfter [s2Step85ExitGOut,s2Step85ExitFOut,s2Step85ExitFvOut,s2Step85ExitGvOut] 0 s2Step85ExitBank_outgoingOwned

private theorem s2Step85ExitG_distinct : (s2Step85ExitGRow.sign::s2Step85ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85ExitG_owned : (s2Step85ExitGRow.sign::s2Step85ExitGRow.payload).toFinset⊆s2Step85ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step85ExitGBefore (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85ExitG_retired : s2Step85ExitGBefore.retireSet s2Step85ExitGExtra.toFinset=s2Step85ExitGAfter := by
  unfold Arena.retireSet s2Step85ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step85ExitGBefore,s2Step85ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step85ExitG_checked : planRowResizeLog s2Step85ExitGBefore s2Step85ExitGRow 225 []=
    some (s2Step85ExitGAfter,s2Step85ExitGOut,shrinkRow 769 s2Step85ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step85ExitGBefore s2Step85ExitGRow 225 s2Step85ExitG_distinct s2Step85ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step85ExitGRow.payload.take 225) s2Step85ExitGRow.sign=s2Step85ExitGOut := by decide +kernel
  have hi : s2Step85ExitGRow.payload.drop 225=s2Step85ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step85ExitG_retired] at result
  exact result

private def s2Step85ExitGvBefore : Arena := s2Step85ExitFvAfter

private theorem s2Step85ExitGv_Incoming : rowsOwned s2Step85ExitGvBefore [s2Step85ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step85ExitGRow,s2Step85ExitFRow,s2Step85ExitFvRow,s2Step85ExitGvRow] 3 s2Step85ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step85ExitGvBefore (fun q => (0≤q ∧ q<225) ∨ (226≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step85ExitGv_Outgoing : rowsOwned s2Step85ExitGvAfter [s2Step85ExitGvOut] :=
  hmrRows_owned_drop s2Step85ExitGvAfter [s2Step85ExitGOut,s2Step85ExitFOut,s2Step85ExitFvOut,s2Step85ExitGvOut] 3 s2Step85ExitBank_outgoingOwned

private theorem s2Step85ExitGv_distinct : (s2Step85ExitGvRow.sign::s2Step85ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85ExitGv_owned : (s2Step85ExitGvRow.sign::s2Step85ExitGvRow.payload).toFinset⊆s2Step85ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step85ExitGvBefore (fun q => (0≤q ∧ q<225) ∨ (226≤q ∧ q<788) ∨ (789≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85ExitGv_retired : s2Step85ExitGvBefore.retireSet s2Step85ExitGvExtra.toFinset=s2Step85ExitGvAfter := by
  unfold Arena.retireSet s2Step85ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step85ExitGvBefore,s2Step85ExitFvAfter,s2Step85ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step85ExitGv_checked : planRowResizeLog s2Step85ExitGvBefore s2Step85ExitGvRow 56 []=
    some (s2Step85ExitGvAfter,s2Step85ExitGvOut,shrinkRow 771 s2Step85ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step85ExitGvBefore s2Step85ExitGvRow 56 s2Step85ExitGv_distinct s2Step85ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step85ExitGvRow.payload.take 56) s2Step85ExitGvRow.sign=s2Step85ExitGvOut := by decide +kernel
  have hi : s2Step85ExitGvRow.payload.drop 56=s2Step85ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step85ExitGv_retired] at result
  exact result

private theorem s2Step85ExitBank_rows : planWindowRowsLog s2Step85ExitGBefore [(s2Step85ExitGRow,225),(s2Step85ExitFRow,226),(s2Step85ExitFvRow,56),(s2Step85ExitGvRow,56)] [[],[],[],[]]=
    some (s2Step85ExitGvAfter,[s2Step85ExitGOut,s2Step85ExitFOut,s2Step85ExitFvOut,s2Step85ExitGvOut],(shrinkRow 769 s2Step85ExitGExtra ++ (shrinkRow 768 s2Step85ExitFExtra ++ (shrinkRow 770 s2Step85ExitFvExtra ++ (shrinkRow 771 s2Step85ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step85ExitGvAfter [] []=some (s2Step85ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step85ExitGvBefore s2Step85ExitGvAfter s2Step85ExitGvAfter
    s2Step85ExitGvRow s2Step85ExitGvOut 56 [] [] [] []
    (shrinkRow 771 s2Step85ExitGvExtra) ([]) s2Step85ExitGv_Incoming s2Step85ExitGv_checked h4 s2Step85ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step85ExitFvBefore s2Step85ExitFvAfter s2Step85ExitGvAfter
    s2Step85ExitFvRow s2Step85ExitFvOut 56 [] [(s2Step85ExitGvRow,56)] [[]] [s2Step85ExitGvOut]
    (shrinkRow 770 s2Step85ExitFvExtra) ((shrinkRow 771 s2Step85ExitGvExtra ++ [])) s2Step85ExitFv_Incoming s2Step85ExitFv_checked h3 s2Step85ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step85ExitFBefore s2Step85ExitFAfter s2Step85ExitGvAfter
    s2Step85ExitFRow s2Step85ExitFOut 226 [] [(s2Step85ExitFvRow,56),(s2Step85ExitGvRow,56)] [[],[]] [s2Step85ExitFvOut,s2Step85ExitGvOut]
    (shrinkRow 768 s2Step85ExitFExtra) ((shrinkRow 770 s2Step85ExitFvExtra ++ (shrinkRow 771 s2Step85ExitGvExtra ++ []))) s2Step85ExitF_Incoming s2Step85ExitF_checked h2 s2Step85ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step85ExitGBefore s2Step85ExitGAfter s2Step85ExitGvAfter
    s2Step85ExitGRow s2Step85ExitGOut 225 [] [(s2Step85ExitFRow,226),(s2Step85ExitFvRow,56),(s2Step85ExitGvRow,56)] [[],[],[]] [s2Step85ExitFOut,s2Step85ExitFvOut,s2Step85ExitGvOut]
    (shrinkRow 769 s2Step85ExitGExtra) ((shrinkRow 768 s2Step85ExitFExtra ++ (shrinkRow 770 s2Step85ExitFvExtra ++ (shrinkRow 771 s2Step85ExitGvExtra ++ [])))) s2Step85ExitG_Incoming s2Step85ExitG_checked h1 s2Step85ExitG_Outgoing
  exact h0

private theorem s2Step85ExitBank_checked : compileHmrBankResizeLog .exit s2Step85ExitGBefore ⟨s2Step85ExitFRow,s2Step85ExitGRow,s2Step85ExitFvRow,s2Step85ExitGvRow⟩ ⟨226,225,56,56⟩ [[],[],[],[]]=
    some (s2Step85ExitGvAfter,⟨s2Step85ExitFOut,s2Step85ExitGOut,s2Step85ExitFvOut,s2Step85ExitGvOut⟩,(shrinkRow 769 s2Step85ExitGExtra ++ (shrinkRow 768 s2Step85ExitFExtra ++ (shrinkRow 770 s2Step85ExitFvExtra ++ (shrinkRow 771 s2Step85ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step85ExitBank_rows]
  rfl

private theorem s2Step85Add0_apart : Disjoint s2Step85Add0Arena.live s2Step85Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step85Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85Add0_card : s2Step85Add0Arena.live.card=869 := by
  decide +kernel

private theorem s2Step85Add0_borrowed : s2Step85Add0Arena.checkBorrow (hmrHybridCount s2Step85Add0Arena s2Step85Add0B.length) s2Step85Add0Work=some s2Step85Add0During := by
  have len : s2Step85Add0Work.length=hmrHybridCount s2Step85Add0Arena s2Step85Add0B.length := by
    rw [hmrHybridCount,s2Step85Add0_card]
    decide +kernel
  have nd : s2Step85Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step85Add0Arena s2Step85Add0During s2Step85Add0Work.toFinset s2Step85Add0_bounded s2Step85Add0_apart rfl

private theorem s2Step85Add0_distinct : (839::781::845::(s2Step85Add0A++s2Step85Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85Add0_owned : (839::781::845::(s2Step85Add0A++s2Step85Add0B)).toFinset⊆s2Step85Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step85Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85Add0_checked : compileHmrHybridCinLog s2Step85Add0Arena 781 839 845 s2Step85Add0A s2Step85Add0B s2Step85Add0Work=some s2Step85Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step85Add0Arena s2Step85Add0During 781 839 845 s2Step85Add0A s2Step85Add0B s2Step85Add0Work
    (by decide +kernel) (by decide +kernel) s2Step85Add0_distinct
    (fun q hq => s2Step85Add0_owned (List.mem_toFinset.mpr hq)) s2Step85Add0_borrowed

private theorem s2Step85Add1_apart : Disjoint s2Step85Add1Arena.live s2Step85Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step85Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85Add1_card : s2Step85Add1Arena.live.card=869 := by
  decide +kernel

private theorem s2Step85Add1_borrowed : s2Step85Add1Arena.checkBorrow (hmrHybridCount s2Step85Add1Arena s2Step85Add1B.length) s2Step85Add1Work=some s2Step85Add1During := by
  have len : s2Step85Add1Work.length=hmrHybridCount s2Step85Add1Arena s2Step85Add1B.length := by
    rw [hmrHybridCount,s2Step85Add1_card]
    decide +kernel
  have nd : s2Step85Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step85Add1Arena s2Step85Add1During s2Step85Add1Work.toFinset s2Step85Add1_bounded s2Step85Add1_apart rfl

private theorem s2Step85Add1_distinct : (839::781::845::(s2Step85Add1A++s2Step85Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85Add1_owned : (839::781::845::(s2Step85Add1A++s2Step85Add1B)).toFinset⊆s2Step85Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step85Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85Add1_checked : compileHmrHybridCinLog s2Step85Add1Arena 781 839 845 s2Step85Add1A s2Step85Add1B s2Step85Add1Work=some s2Step85Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step85Add1Arena s2Step85Add1During 781 839 845 s2Step85Add1A s2Step85Add1B s2Step85Add1Work
    (by decide +kernel) (by decide +kernel) s2Step85Add1_distinct
    (fun q hq => s2Step85Add1_owned (List.mem_toFinset.mpr hq)) s2Step85Add1_borrowed

private theorem s2Step85F4_apart : Disjoint (s2Step85Add0A++s2Step85Add0B).toFinset (s2Step85Add1A++s2Step85Add1B).toFinset := by
  have nd : ((s2Step85Add0A++s2Step85Add0B)++(s2Step85Add1A++s2Step85Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step85F4_carry : s2Step85F4FlagArena.checkBorrow 1 [845]=some s2Step85Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step85F4FlagArena,s2Step85HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step85F4FlagArena,s2Step85HeadFvAfter,s2Step85Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step85F4_distinct : (836::781::839::845::((s2Step85Add0A++s2Step85Add1A)++(s2Step85Add0B++s2Step85Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85F4_flag : s2Step85HeadFvAfter.checkBorrow 1 [839]=some s2Step85F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step85HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step85F4_owned : (836::781::((s2Step85Add0A++s2Step85Add1A)++(s2Step85Add0B++s2Step85Add1B))).toFinset⊆s2Step85HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step85HeadFvAfter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85F4_checked : compileHmrHybridF4Log s2Step85HeadFvAfter 836 781 s2Step85Add0A s2Step85Add0B s2Step85Add1A s2Step85Add1B [839] [845] s2Step85Add0Work s2Step85Add1Work=some s2Step85F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step85HeadFvAfter s2Step85F4FlagArena s2Step85Add0Arena s2Step85Add0During s2Step85Add1During 836 781
    s2Step85Add0A s2Step85Add0B s2Step85Add1A s2Step85Add1B [839] [845] s2Step85Add0Work s2Step85Add1Work
    (fun q hq => s2Step85F4_owned (List.mem_toFinset.mpr hq)) s2Step85F4_flag s2Step85F4_carry
    s2Step85F4_distinct s2Step85F4_apart s2Step85Add0_checked s2Step85Add1_checked

private theorem s2Step85Front_branch : s2Step85FrontSigmaArena.checkBorrow 1 [781]=some s2Step85HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step85FrontSigmaArena,s2Step85EntryGvAfter,s2Step85EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step85FrontSigmaArena,s2Step85EntryGvAfter,s2Step85EntryFBefore,s2Step85HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step85Front_entry : HmrFrontEntryValid s2Step85EntryFBefore s2Step85FrontBank 226 56 ⟨226,225,56,56⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step85FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step85EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step85EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step85FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step85Front_sigma : s2Step85EntryGvAfter.checkBorrow 1 [836]=some s2Step85FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step85EntryGvAfter,s2Step85EntryFBefore,arenaWires]
  · rfl

private def s2Step85HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85HeadFBefore : Arena := s2Step85HeadGAfter

private def s2Step85HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩

private def s2Step85HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩

private def s2Step85HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225],769⟩

private def s2Step85HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841],771⟩

private theorem s2Step85HeadBank_incomingDistinct : ([s2Step85HeadGRow,s2Step85HeadFRow,s2Step85HeadGvRow,s2Step85HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85HeadF_Incoming : rowsOwned s2Step85HeadFBefore [s2Step85HeadFRow,s2Step85HeadGvRow,s2Step85HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step85HeadGRow,s2Step85HeadFRow,s2Step85HeadGvRow,s2Step85HeadFvRow] 1 s2Step85HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step85HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step85HeadBank_outgoingOwned : rowsOwned s2Step85HeadFvAfter [s2Step85HeadGOut,s2Step85HeadFOut,s2Step85HeadGvOut,s2Step85HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step85HeadFvAfter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step85HeadF_Outgoing : rowsOwned s2Step85HeadFvAfter [s2Step85HeadFOut,s2Step85HeadGvOut,s2Step85HeadFvOut] :=
  hmrRows_owned_drop s2Step85HeadFvAfter [s2Step85HeadGOut,s2Step85HeadFOut,s2Step85HeadGvOut,s2Step85HeadFvOut] 1 s2Step85HeadBank_outgoingOwned

private theorem s2Step85HeadF_distinct : (s2Step85HeadFRow.sign::s2Step85HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85HeadF_owned : (s2Step85HeadFRow.sign::s2Step85HeadFRow.payload).toFinset⊆s2Step85HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step85HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85HeadF_reserved : s2Step85HeadFBefore.reserve s2Step85HeadFFresh.toFinset=some s2Step85HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step85HeadFFresh,arenaWires]
  · norm_num [s2Step85HeadFBefore,s2Step85HeadGAfter,s2Step85HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step85HeadFAfter,s2Step85HeadFBefore,s2Step85HeadGAfter,s2Step85HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step85HeadF_checked : planRowResizeLog s2Step85HeadFBefore s2Step85HeadFRow 227 s2Step85HeadFFresh=
    some (s2Step85HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 842],768⟩,growRow 768 s2Step85HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step85HeadFBefore s2Step85HeadFAfter s2Step85HeadFRow 227 s2Step85HeadFFresh
    s2Step85HeadF_distinct s2Step85HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step85HeadF_reserved
  have rowEq : WindowRow.mk (s2Step85HeadFRow.payload++s2Step85HeadFFresh) s2Step85HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 842],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step85HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step85HeadFvBefore : Arena := s2Step85HeadGvAfter

private theorem s2Step85HeadFv_Incoming : rowsOwned s2Step85HeadFvBefore [s2Step85HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step85HeadGRow,s2Step85HeadFRow,s2Step85HeadGvRow,s2Step85HeadFvRow] 3 s2Step85HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step85HeadFvBefore (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step85HeadFv_Outgoing : rowsOwned s2Step85HeadFvAfter [s2Step85HeadFvOut] :=
  hmrRows_owned_drop s2Step85HeadFvAfter [s2Step85HeadGOut,s2Step85HeadFOut,s2Step85HeadGvOut,s2Step85HeadFvOut] 3 s2Step85HeadBank_outgoingOwned

private theorem s2Step85HeadFv_distinct : (s2Step85HeadFvRow.sign::s2Step85HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85HeadFv_owned : (s2Step85HeadFvRow.sign::s2Step85HeadFvRow.payload).toFinset⊆s2Step85HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step85HeadFvBefore (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85HeadFv_reserved : s2Step85HeadFvBefore.reserve s2Step85HeadFvFresh.toFinset=some s2Step85HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step85HeadFvFresh,arenaWires]
  · norm_num [s2Step85HeadFvBefore,s2Step85HeadGvAfter,s2Step85HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step85HeadFvAfter,s2Step85HeadFvBefore,s2Step85HeadGvAfter,s2Step85HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step85HeadFv_checked : planRowResizeLog s2Step85HeadFvBefore s2Step85HeadFvRow 57 s2Step85HeadFvFresh=
    some (s2Step85HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 844],770⟩,growRow 770 s2Step85HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step85HeadFvBefore s2Step85HeadFvAfter s2Step85HeadFvRow 57 s2Step85HeadFvFresh
    s2Step85HeadFv_distinct s2Step85HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step85HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step85HeadFvRow.payload++s2Step85HeadFvFresh) s2Step85HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 844],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step85HeadG_Incoming : rowsOwned s2Step85HeadGBefore [s2Step85HeadGRow,s2Step85HeadFRow,s2Step85HeadGvRow,s2Step85HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step85HeadGRow,s2Step85HeadFRow,s2Step85HeadGvRow,s2Step85HeadFvRow] 0 s2Step85HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step85HeadGBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step85HeadG_Outgoing : rowsOwned s2Step85HeadFvAfter [s2Step85HeadGOut,s2Step85HeadFOut,s2Step85HeadGvOut,s2Step85HeadFvOut] :=
  hmrRows_owned_drop s2Step85HeadFvAfter [s2Step85HeadGOut,s2Step85HeadFOut,s2Step85HeadGvOut,s2Step85HeadFvOut] 0 s2Step85HeadBank_outgoingOwned

private theorem s2Step85HeadG_distinct : (s2Step85HeadGRow.sign::s2Step85HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85HeadG_owned : (s2Step85HeadGRow.sign::s2Step85HeadGRow.payload).toFinset⊆s2Step85HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step85HeadGBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85HeadG_reserved : s2Step85HeadGBefore.reserve s2Step85HeadGFresh.toFinset=some s2Step85HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step85HeadGFresh,arenaWires]
  · norm_num [s2Step85HeadGBefore,s2Step85HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step85HeadGAfter,s2Step85HeadGBefore,s2Step85HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step85HeadG_checked : planRowResizeLog s2Step85HeadGBefore s2Step85HeadGRow 227 s2Step85HeadGFresh=
    some (s2Step85HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 788],769⟩,growRow 769 s2Step85HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step85HeadGBefore s2Step85HeadGAfter s2Step85HeadGRow 227 s2Step85HeadGFresh
    s2Step85HeadG_distinct s2Step85HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step85HeadG_reserved
  have rowEq : WindowRow.mk (s2Step85HeadGRow.payload++s2Step85HeadGFresh) s2Step85HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 788],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step85HeadGvBefore : Arena := s2Step85HeadFAfter

private theorem s2Step85HeadGv_Incoming : rowsOwned s2Step85HeadGvBefore [s2Step85HeadGvRow,s2Step85HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step85HeadGRow,s2Step85HeadFRow,s2Step85HeadGvRow,s2Step85HeadFvRow] 2 s2Step85HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step85HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step85HeadGv_Outgoing : rowsOwned s2Step85HeadFvAfter [s2Step85HeadGvOut,s2Step85HeadFvOut] :=
  hmrRows_owned_drop s2Step85HeadFvAfter [s2Step85HeadGOut,s2Step85HeadFOut,s2Step85HeadGvOut,s2Step85HeadFvOut] 2 s2Step85HeadBank_outgoingOwned

private theorem s2Step85HeadGv_distinct : (s2Step85HeadGvRow.sign::s2Step85HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step85HeadGv_owned : (s2Step85HeadGvRow.sign::s2Step85HeadGvRow.payload).toFinset⊆s2Step85HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step85HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step85HeadGv_reserved : s2Step85HeadGvBefore.reserve s2Step85HeadGvFresh.toFinset=some s2Step85HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step85HeadGvFresh,arenaWires]
  · norm_num [s2Step85HeadGvBefore,s2Step85HeadFAfter,s2Step85HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step85HeadGvAfter,s2Step85HeadGvBefore,s2Step85HeadFAfter,s2Step85HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step85HeadGv_checked : planRowResizeLog s2Step85HeadGvBefore s2Step85HeadGvRow 57 s2Step85HeadGvFresh=
    some (s2Step85HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 816],771⟩,growRow 771 s2Step85HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step85HeadGvBefore s2Step85HeadGvAfter s2Step85HeadGvRow 57 s2Step85HeadGvFresh
    s2Step85HeadGv_distinct s2Step85HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step85HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step85HeadGvRow.payload++s2Step85HeadGvFresh) s2Step85HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 816],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step85HeadBank_rows : planWindowRowsLog s2Step85HeadGBefore [(s2Step85HeadGRow,227),(s2Step85HeadFRow,227),(s2Step85HeadGvRow,57),(s2Step85HeadFvRow,57)] [s2Step85HeadGFresh,s2Step85HeadFFresh,s2Step85HeadGvFresh,s2Step85HeadFvFresh]=
    some (s2Step85HeadFvAfter,[s2Step85HeadGOut,s2Step85HeadFOut,s2Step85HeadGvOut,s2Step85HeadFvOut],(growRow 769 s2Step85HeadGFresh ++ (growRow 768 s2Step85HeadFFresh ++ (growRow 771 s2Step85HeadGvFresh ++ (growRow 770 s2Step85HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step85HeadFvAfter [] []=some (s2Step85HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step85HeadFvBefore s2Step85HeadFvAfter s2Step85HeadFvAfter
    s2Step85HeadFvRow s2Step85HeadFvOut 57 s2Step85HeadFvFresh [] [] []
    (growRow 770 s2Step85HeadFvFresh) ([]) s2Step85HeadFv_Incoming s2Step85HeadFv_checked h4 s2Step85HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step85HeadGvBefore s2Step85HeadGvAfter s2Step85HeadFvAfter
    s2Step85HeadGvRow s2Step85HeadGvOut 57 s2Step85HeadGvFresh [(s2Step85HeadFvRow,57)] [s2Step85HeadFvFresh] [s2Step85HeadFvOut]
    (growRow 771 s2Step85HeadGvFresh) ((growRow 770 s2Step85HeadFvFresh ++ [])) s2Step85HeadGv_Incoming s2Step85HeadGv_checked h3 s2Step85HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step85HeadFBefore s2Step85HeadFAfter s2Step85HeadFvAfter
    s2Step85HeadFRow s2Step85HeadFOut 227 s2Step85HeadFFresh [(s2Step85HeadGvRow,57),(s2Step85HeadFvRow,57)] [s2Step85HeadGvFresh,s2Step85HeadFvFresh] [s2Step85HeadGvOut,s2Step85HeadFvOut]
    (growRow 768 s2Step85HeadFFresh) ((growRow 771 s2Step85HeadGvFresh ++ (growRow 770 s2Step85HeadFvFresh ++ []))) s2Step85HeadF_Incoming s2Step85HeadF_checked h2 s2Step85HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step85HeadGBefore s2Step85HeadGAfter s2Step85HeadFvAfter
    s2Step85HeadGRow s2Step85HeadGOut 227 s2Step85HeadGFresh [(s2Step85HeadFRow,227),(s2Step85HeadGvRow,57),(s2Step85HeadFvRow,57)] [s2Step85HeadFFresh,s2Step85HeadGvFresh,s2Step85HeadFvFresh] [s2Step85HeadFOut,s2Step85HeadGvOut,s2Step85HeadFvOut]
    (growRow 769 s2Step85HeadGFresh) ((growRow 768 s2Step85HeadFFresh ++ (growRow 771 s2Step85HeadGvFresh ++ (growRow 770 s2Step85HeadFvFresh ++ [])))) s2Step85HeadG_Incoming s2Step85HeadG_checked h1 s2Step85HeadG_Outgoing
  exact h0

private theorem s2Step85HeadBank_checked : compileHmrBankResizeLog .headroom s2Step85HeadGBefore ⟨s2Step85HeadFRow,s2Step85HeadGRow,s2Step85HeadFvRow,s2Step85HeadGvRow⟩ ⟨227,227,57,57⟩ [s2Step85HeadGFresh,s2Step85HeadFFresh,s2Step85HeadGvFresh,s2Step85HeadFvFresh]=
    some (s2Step85HeadFvAfter,⟨s2Step85HeadFOut,s2Step85HeadGOut,s2Step85HeadFvOut,s2Step85HeadGvOut⟩,(growRow 769 s2Step85HeadGFresh ++ (growRow 768 s2Step85HeadFFresh ++ (growRow 771 s2Step85HeadGvFresh ++ (growRow 770 s2Step85HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step85HeadBank_rows]
  rfl

private theorem s2Step85Front_checked : compileHmrSourceFrontLog s2Step85EntryFBefore s2Step85FrontBank 226 56 ⟨226,225,56,56⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step85FrontLog=some s2Step85FrontPlan := by
  have pairEq : s2Step85FrontPair=⟨s2Step85HeadFRow,s2Step85HeadGRow,s2Step85HeadFvRow,s2Step85HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step85FrontHead=⟨s2Step85ExitFRow,s2Step85ExitGRow,s2Step85ExitFvRow,s2Step85ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step85Add0A=s2Step85FrontHead.f.wires := by decide +kernel
  have gEq : s2Step85Add0B=s2Step85FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step85Add1A=s2Step85FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step85Add1B=s2Step85FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step85EntryFBefore s2Step85FrontBank 226 56 ⟨226,225,56,56⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step85FrontLog s2Step85FrontPlan
  · exact s2Step85Front_entry
  · exact s2Step85EntryBank_checked
  · exact s2Step85Front_sigma
  · rfl
  · exact s2Step85Front_branch
  · rfl
  · simpa only [s2Step85FrontPlan,pairEq] using s2Step85HeadBank_checked
  · simpa only [s2Step85FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step85F4_checked
  · exact s2Step85Counter_checked
  · rfl
  · simpa only [s2Step85FrontPlan,headEq] using s2Step85ExitBank_checked

private theorem s2Step85Complete_explicit_checked : compileHmrEarlyStepLog s2Step85EntryFBefore s2Step85FrontBank 226 56 ⟨226,225,56,56⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 31 s2Step85CompleteLog=some s2Step85CompletePlan := by
  let Q := s2Step85EarlyControlPlan
  have hq := s2Step85EarlyControl_plan_checked
  have fv1 : s2Step85CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step85CompleteOut.fv.payload[2]?.getD s2Step85CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step85CompleteOut.fv.payload[3]?.getD s2Step85CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step85CompleteOut.fv.payload[4]?.getD s2Step85CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step85EntryFBefore s2Step85EarlyControlArena s2Step85FrontBank 226 56 ⟨226,225,56,56⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 31 s2Step85CompleteLog s2Step85FrontPlan Q
    s2Step85Front_checked s2Step85Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step85Complete_owned s2Step85Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step85EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 836 s2Step85CompleteOut.fv.second (s2Step85CompleteOut.fv.payload[2]?.getD s2Step85CompleteOut.fv.sign) (s2Step85CompleteOut.fv.payload[3]?.getD s2Step85CompleteOut.fv.sign) (s2Step85CompleteOut.fv.payload[4]?.getD s2Step85CompleteOut.fv.sign) 781 31 s2Step85EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep85Arena : Arena := s2Step85EntryFBefore
def s2PrivateStep85Bank : WindowBank := s2Step85FrontBank
def s2PrivateStep85Spec : HmrSourceWalkStepLog := ⟨226,56,⟨226,225,56,56⟩,31,.early s2Step85CompleteLog⟩
def s2PrivateStep85Plan : HmrSourceStepPlan := .early s2Step85CompletePlan
theorem s2PrivateStep85_source : s2PrivateStep85Spec=s2ObservedLogs80[5] := rfl
theorem s2PrivateStep85_checked : compileHmrSourceStepLog s2PrivateStep85Arena s2PrivateStep85Bank
    s2PrivateStep85Spec.fgWidth s2PrivateStep85Spec.vWidth s2PrivateStep85Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875]
    6 498 85 s2PrivateStep85Spec.need none s2PrivateStep85Spec.log=some s2PrivateStep85Plan := by
  change compileHmrSourceStepLog s2Step85EntryFBefore s2Step85FrontBank 226 56 ⟨226,225,56,56⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 6 498 85 31 none (.early s2Step85CompleteLog)=some (.early s2Step85CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 85<498)]
  rw [s2Step85Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
