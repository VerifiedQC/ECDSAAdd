import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep87
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

private def s2Step89CompleteMoves : List (Wire × Wire) := [(786,223)]

private def s2Step89EarlyControlLog : HmrEarlyControlLog := ⟨[786, 844, 816, 781, 836],[785],[839],[846, 847, 849, 851, 867, 873],[874]⟩

private def s2Step89FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [789]],[[836], [781], [844], [816]],[[], [], [], []]⟩,[793],[779],[785],[839],[846, 847, 849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927],[785, 839, 846, 847]⟩

private def s2Step89CompleteLog : HmrEarlyStepLog := ⟨s2Step89FrontLog,s2Step89CompleteMoves,s2Step89EarlyControlLog⟩

private def s2Step89ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735],768⟩

private def s2Step89ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step89ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222],769⟩

private def s2Step89ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789],771⟩

private def s2Step89FrontOut : WindowBank := ⟨s2Step89ExitFOut,s2Step89ExitGOut,s2Step89ExitFvOut,s2Step89ExitGvOut⟩

private def s2Step89CompleteOut : WindowBank := s2Step89FrontOut.repacked s2Step89CompleteMoves

private def s2Step89EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step89EarlyControlPositiveArena,[785],s2Step89EarlyControlEqualityArena,[839],⟨⟨793,false⟩,[⟨⟨785,false⟩,839⟩]⟩⟩

private def s2Step89EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<874) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,786⟩,⟨⟨774,false⟩,844⟩,⟨⟨775,false⟩,816⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,836⟩]⟩

private def s2Step89EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step89EarlyControlZeroArena,s2Step89EarlyControlZeroPlan,s2Step89EarlyControlClassPlan,s2Step89EarlyControlFlagArena,s2Step89EarlyControlFittedArena,s2Step89EarlyControlHistoryArena,s2Step89EarlyControlSigmaArena,s2Step89EarlyControlOutputArena,s2Step89EarlyControlLog⟩

private def s2Step89CounterWork : List Wire := [785, 839, 846, 847]

private theorem s2Step89Counter_bounded : s2Step89CounterWork.toFinset⊆arenaWires := by norm_num [s2Step89CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step89HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89CounterDuring : Arena := ⟨s2Step89HeadFvAfter.live∪s2Step89CounterWork.toFinset,Finset.union_subset s2Step89HeadFvAfter.bounded s2Step89Counter_bounded⟩

private def s2Step89EntryFFresh : List Wire := []

private def s2Step89EntryFvFresh : List Wire := []

private def s2Step89EntryGFresh : List Wire := []

private def s2Step89EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89EntryGvFresh : List Wire := [789]

private def s2Step89ExitFExtra : List Wire := [781]

private def s2Step89ExitFvExtra : List Wire := [816]

private def s2Step89ExitGExtra : List Wire := [223, 836]

private def s2Step89ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<223) ∨ (224≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89ExitGvExtra : List Wire := [844]

private def s2Step89Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89Add0Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step89Add0_bounded : s2Step89Add0Work.toFinset⊆arenaWires := by
  have h : s2Step89Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step89Add0During : Arena := ⟨s2Step89Add0Arena.live∪s2Step89Add0Work.toFinset,Finset.union_subset s2Step89Add0Arena.bounded s2Step89Add0_bounded⟩

private def s2Step89Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89Add1Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927]

private theorem s2Step89Add1_bounded : s2Step89Add1Work.toFinset⊆arenaWires := by
  have h : s2Step89Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step89Add1During : Arena := ⟨s2Step89Add1Arena.live∪s2Step89Add1Work.toFinset,Finset.union_subset s2Step89Add1Arena.bounded s2Step89Add1_bounded⟩

private def s2Step89F4FlagArena : Arena := ⟨s2Step89HeadFvAfter.live∪{785},Finset.union_subset s2Step89HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step89F4Plan : HmrHybridF4Plan := ⟨s2Step89F4FlagArena,[785],s2Step89Add0Arena,[839],s2Step89Add0During,s2Step89Add0Work,s2Step89Add1During,s2Step89Add1Work⟩

private def s2Step89HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 781],768⟩

private def s2Step89HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩

private def s2Step89HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 836],769⟩

private def s2Step89HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 844],771⟩

private def s2Step89FrontHead : WindowBank := ⟨s2Step89HeadFOut,s2Step89HeadGOut,s2Step89HeadFvOut,s2Step89HeadGvOut⟩

private def s2Step89EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735],768⟩

private def s2Step89EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step89EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223],769⟩

private def s2Step89EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789],771⟩

private def s2Step89FrontPair : WindowBank := ⟨s2Step89EntryFOut,s2Step89EntryGOut,s2Step89EntryFvOut,s2Step89EntryGvOut⟩

private def s2Step89FrontSigmaArena : Arena := ⟨s2Step89EntryGvAfter.live∪{793},Finset.union_subset s2Step89EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step89HeadFFresh : List Wire := [781]

private def s2Step89HeadFvFresh : List Wire := [816]

private def s2Step89HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89HeadGFresh : List Wire := [836]

private def s2Step89HeadGvFresh : List Wire := [844]

private def s2Step89FrontPlan : HmrSourceFront := ⟨s2Step89EntryGvAfter,s2Step89FrontPair,(growRow 768 s2Step89EntryFFresh ++ (growRow 769 s2Step89EntryGFresh ++ (growRow 770 s2Step89EntryFvFresh ++ (growRow 771 s2Step89EntryGvFresh ++ [])))),s2Step89FrontSigmaArena,[793],s2Step89HeadGBefore,[779],
  s2Step89HeadFvAfter,s2Step89FrontHead,(growRow 769 s2Step89HeadGFresh ++ (growRow 768 s2Step89HeadFFresh ++ (growRow 771 s2Step89HeadGvFresh ++ (growRow 770 s2Step89HeadFvFresh ++ [])))),s2Step89F4Plan,s2Step89CounterDuring,s2Step89CounterWork,s2Step89ExitGvAfter,s2Step89FrontOut,(shrinkRow 769 s2Step89ExitGExtra ++ (shrinkRow 768 s2Step89ExitFExtra ++ (shrinkRow 770 s2Step89ExitFvExtra ++ (shrinkRow 771 s2Step89ExitGvExtra ++ []))))⟩

private def s2Step89CompletePlan : HmrEarlyStepPlan := ⟨s2Step89FrontPlan,s2Step89EarlyControlArena,s2Step89EarlyControlPlan,s2Step89CompleteMoves⟩

private theorem s2Step89Complete_apart : List.Disjoint (s2Step89CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [793, 779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] := by
  have nd : ((s2Step89CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[793, 779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step89Complete_owned : (s2Step89CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step89EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step89EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private def s2Step89CompleteMoveArena : Arena := ⟨s2Step89ExitGvAfter.live∪{223},Finset.union_subset s2Step89ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step89Complete_repack : s2Step89ExitGvAfter.checkRepack s2Step89CompleteMoves=some s2Step89EarlyControlArena := by
  have owned : 786∈s2Step89ExitGvAfter.live := by norm_num [s2Step89ExitGvAfter,arenaWires]
  have reserve : s2Step89ExitGvAfter.reserve {223}=some s2Step89CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step89ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step89CompleteMoveArena.retireSet {786}=s2Step89EarlyControlArena := by
    unfold Arena.retireSet s2Step89EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step89CompleteMoveArena,s2Step89ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step89CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step89CompleteMoveArena.retireSet {786}).checkRepack []=some s2Step89EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step89EarlyControl_branchOwned : ([779] : List Wire).toFinset⊆s2Step89EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step89EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89EarlyControl_branch : compileHmrBranchRetirement s2Step89EarlyControlSigmaArena 779=some s2Step89EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step89EarlyControl_branchOwned
  · ext q
    simp [s2Step89EarlyControlOutputArena,s2Step89EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step89EarlyControl_classEqualityBorrow : s2Step89EarlyControlPositiveArena.checkBorrow (([793, 785] : List Wire).length-1) s2Step89EarlyControlLog.classWork=some s2Step89EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step89EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step89EarlyControlPositiveArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step89EarlyControlEqualityArena,s2Step89EarlyControlPositiveArena,s2Step89EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step89EarlyControl_classEqualityOwned : ([793, 785] : List Wire).toFinset⊆s2Step89EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step89EarlyControlPositiveArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89EarlyControl_classEquality : compileHmrEqualityLog s2Step89EarlyControlPositiveArena [793, 785] 0 s2Step89EarlyControlLog.classWork=some (s2Step89EarlyControlEqualityArena,s2Step89EarlyControlLog.classWork,s2Step89EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step89EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step89EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step89EarlyControl_classOwned : ([777, 836, 793] : List Wire).toFinset⊆s2Step89EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step89EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89EarlyControl_positiveBorrow : s2Step89EarlyControlZeroArena.checkBorrow (1) s2Step89EarlyControlLog.positiveWork=some s2Step89EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step89EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step89EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step89EarlyControlPositiveArena,s2Step89EarlyControlZeroArena,s2Step89EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step89EarlyControl_class : compileHmrSourceClassLog s2Step89EarlyControlZeroArena false 777 s2Step89EarlyControlZeroPlan.top 0 793 s2Step89EarlyControlLog.positiveWork s2Step89EarlyControlLog.classWork=some s2Step89EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step89EarlyControlClassPlan s2Step89EarlyControlZeroArena false 777 s2Step89EarlyControlZeroPlan.top 0 793
  constructor
  · decide +kernel
  · exact s2Step89EarlyControl_classOwned
  · exact s2Step89EarlyControl_positiveBorrow
  · exact s2Step89EarlyControl_classEquality

private theorem s2Step89EarlyControl_entryRecordOwned : ([779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).toFinset⊆s2Step89EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step89EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89EarlyControl_entrySigmaOwned : ([793, 254] : List Wire).toFinset⊆s2Step89EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step89EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89EarlyControl_fitBorrow : s2Step89EarlyControlFlagArena.checkBorrow ((32-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).length)) s2Step89EarlyControlLog.recordFresh=some s2Step89EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step89EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step89EarlyControlFlagArena (fun q => (0≤q ∧ q<874) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step89EarlyControlFittedArena,s2Step89EarlyControlFlagArena,s2Step89EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step89EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).toFinset⊆s2Step89EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step89EarlyControlFlagArena (fun q => (0≤q ∧ q<874) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89EarlyControl_fit : compileHmrRecordGrowLog s2Step89EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 32 s2Step89EarlyControlLog.recordFresh=some s2Step89EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step89EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step89EarlyControl_fitBorrow

private theorem s2Step89EarlyControl_flagsBorrow : s2Step89EarlyControlEqualityArena.checkBorrow (6) s2Step89EarlyControlLog.flagWork=some s2Step89EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step89EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step89EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step89EarlyControlFlagArena,s2Step89EarlyControlEqualityArena,s2Step89EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step89EarlyControl_flagsOwned : ([839, 253, 252, 251] : List Wire).toFinset⊆s2Step89EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step89EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89EarlyControl_flags : compileHmrFlagsLog s2Step89EarlyControlClassPlan.equalityArena s2Step89EarlyControlClassPlan.equality.top 253 252 251 s2Step89EarlyControlLog.flagWork=some s2Step89EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step89EarlyControl_flagsOwned⟩
  · exact s2Step89EarlyControl_flagsBorrow

private theorem s2Step89EarlyControl_historyBorrow : s2Step89EarlyControlArena.checkBorrow ((32-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).length)) s2Step89EarlyControlLog.recordFresh=some s2Step89EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step89EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step89EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step89EarlyControlHistoryArena,s2Step89EarlyControlArena,s2Step89EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step89EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).toFinset⊆s2Step89EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step89EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89EarlyControl_history : compileHmrRecordGrowLog s2Step89EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 32 s2Step89EarlyControlLog.recordFresh=some s2Step89EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step89EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step89EarlyControl_historyBorrow

private theorem s2Step89EarlyControl_sigmaOwned : ([254, 793] : List Wire).toFinset⊆s2Step89EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step89EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89EarlyControl_sigmaReleaseOwned : ([793] : List Wire).toFinset⊆s2Step89EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step89EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89EarlyControl_sigmaRelease : s2Step89EarlyControlHistoryArena.release {793} (fun _ => false)=some s2Step89EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step89EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step89EarlyControlSigmaArena,s2Step89EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step89EarlyControl_sigma : compileHmrSigmaDropLog s2Step89EarlyControlHistoryArena false 0 0 254 793 []=some s2Step89EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step89EarlyControl_sigmaOwned⟩
  · exact s2Step89EarlyControl_sigmaRelease

private theorem s2Step89EarlyControl_zeroBorrow : s2Step89EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step89EarlyControlLog.zeroWork=some s2Step89EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step89EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step89EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step89EarlyControlZeroArena,s2Step89EarlyControlArena,s2Step89EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step89EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step89EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step89EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89EarlyControl_zero : compileHmrEqualityLog s2Step89EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step89EarlyControlLog.zeroWork=some (s2Step89EarlyControlZeroArena,s2Step89EarlyControlLog.zeroWork,s2Step89EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step89EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step89EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step89EarlyControl_logged : s2Step89EarlyControlPlan.Logged s2Step89EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 793 254 253 252 251 779 32 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step89EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step89EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step89EarlyControl_zero
  · exact s2Step89EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step89EarlyControl_flags
  · exact s2Step89EarlyControl_fit
  · exact s2Step89EarlyControl_history
  · exact s2Step89EarlyControl_sigma
  · exact s2Step89EarlyControl_branch

private theorem s2Step89EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step89EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 793 254 253 252 251 779 32 s2Step89EarlyControlLog=some s2Step89EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step89EarlyControlPlan s2Step89EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 793 254 253 252 251 779 32 s2Step89EarlyControl_logged

private def s2Step89EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735],768⟩

private def s2Step89EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step89EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223],769⟩

private def s2Step89EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩

private def s2Step89FrontBank : WindowBank := ⟨s2Step89EntryFRow,s2Step89EntryGRow,s2Step89EntryFvRow,s2Step89EntryGvRow⟩

private def s2Step89Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 781, 768]

private def s2Step89Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 836, 769]

private def s2Step89Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 770]

private def s2Step89Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 844, 771]

private theorem s2Step89Counter_apart : Disjoint s2Step89HeadFvAfter.live s2Step89CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step89HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89Counter_borrowed : s2Step89HeadFvAfter.checkBorrow 4 s2Step89CounterWork=some s2Step89CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step89HeadFvAfter s2Step89CounterDuring s2Step89CounterWork.toFinset s2Step89Counter_bounded s2Step89Counter_apart rfl

private theorem s2Step89Counter_owned : (793::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step89HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step89HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89Counter_checked : compileHmrCounterStepLog s2Step89HeadFvAfter true 793 [772, 773, 774, 775, 776, 777] s2Step89CounterWork=some s2Step89CounterDuring := by
  have owned : ∀q∈793::[772, 773, 774, 775, 776, 777],q∈s2Step89HeadFvAfter.live := fun q hq => s2Step89Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step89Counter_borrowed

private def s2Step89EntryFAfter : Arena := s2Step89EntryFBefore

private theorem s2Step89EntryBank_incomingDistinct : ([s2Step89EntryFRow,s2Step89EntryGRow,s2Step89EntryFvRow,s2Step89EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89EntryF_Incoming : rowsOwned s2Step89EntryFBefore [s2Step89EntryFRow,s2Step89EntryGRow,s2Step89EntryFvRow,s2Step89EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step89EntryFRow,s2Step89EntryGRow,s2Step89EntryFvRow,s2Step89EntryGvRow] 0 s2Step89EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step89EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step89EntryBank_outgoingOwned : rowsOwned s2Step89EntryGvAfter [s2Step89EntryFOut,s2Step89EntryGOut,s2Step89EntryFvOut,s2Step89EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step89EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step89EntryF_Outgoing : rowsOwned s2Step89EntryGvAfter [s2Step89EntryFOut,s2Step89EntryGOut,s2Step89EntryFvOut,s2Step89EntryGvOut] :=
  hmrRows_owned_drop s2Step89EntryGvAfter [s2Step89EntryFOut,s2Step89EntryGOut,s2Step89EntryFvOut,s2Step89EntryGvOut] 0 s2Step89EntryBank_outgoingOwned

private theorem s2Step89EntryF_distinct : (s2Step89EntryFRow.sign::s2Step89EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89EntryF_owned : (s2Step89EntryFRow.sign::s2Step89EntryFRow.payload).toFinset⊆s2Step89EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step89EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89EntryF_reserved : s2Step89EntryFBefore.reserve s2Step89EntryFFresh.toFinset=some s2Step89EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step89EntryFFresh,arenaWires]
  · norm_num [s2Step89EntryFBefore,s2Step89EntryFFresh,arenaWires]
  · simp only [s2Step89EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step89EntryF_checked : planRowResizeLog s2Step89EntryFBefore s2Step89EntryFRow 224 s2Step89EntryFFresh=
    some (s2Step89EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735],768⟩,growRow 768 s2Step89EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step89EntryFBefore s2Step89EntryFAfter s2Step89EntryFRow 224 s2Step89EntryFFresh
    s2Step89EntryF_distinct s2Step89EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step89EntryF_reserved
  have rowEq : WindowRow.mk (s2Step89EntryFRow.payload++s2Step89EntryFFresh) s2Step89EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step89EntryFvAfter : Arena := s2Step89EntryFBefore

private def s2Step89EntryFvBefore : Arena := s2Step89EntryFBefore

private theorem s2Step89EntryFv_Incoming : rowsOwned s2Step89EntryFvBefore [s2Step89EntryFvRow,s2Step89EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step89EntryFRow,s2Step89EntryGRow,s2Step89EntryFvRow,s2Step89EntryGvRow] 2 s2Step89EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step89EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step89EntryFv_Outgoing : rowsOwned s2Step89EntryGvAfter [s2Step89EntryFvOut,s2Step89EntryGvOut] :=
  hmrRows_owned_drop s2Step89EntryGvAfter [s2Step89EntryFOut,s2Step89EntryGOut,s2Step89EntryFvOut,s2Step89EntryGvOut] 2 s2Step89EntryBank_outgoingOwned

private theorem s2Step89EntryFv_distinct : (s2Step89EntryFvRow.sign::s2Step89EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89EntryFv_owned : (s2Step89EntryFvRow.sign::s2Step89EntryFvRow.payload).toFinset⊆s2Step89EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step89EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89EntryFv_reserved : s2Step89EntryFvBefore.reserve s2Step89EntryFvFresh.toFinset=some s2Step89EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step89EntryFvFresh,arenaWires]
  · norm_num [s2Step89EntryFvBefore,s2Step89EntryFBefore,s2Step89EntryFvFresh,arenaWires]
  · simp only [s2Step89EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step89EntryFv_checked : planRowResizeLog s2Step89EntryFvBefore s2Step89EntryFvRow 58 s2Step89EntryFvFresh=
    some (s2Step89EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩,growRow 770 s2Step89EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step89EntryFvBefore s2Step89EntryFvAfter s2Step89EntryFvRow 58 s2Step89EntryFvFresh
    s2Step89EntryFv_distinct s2Step89EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step89EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step89EntryFvRow.payload++s2Step89EntryFvFresh) s2Step89EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step89EntryGAfter : Arena := s2Step89EntryFBefore

private def s2Step89EntryGBefore : Arena := s2Step89EntryFBefore

private theorem s2Step89EntryG_Incoming : rowsOwned s2Step89EntryGBefore [s2Step89EntryGRow,s2Step89EntryFvRow,s2Step89EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step89EntryFRow,s2Step89EntryGRow,s2Step89EntryFvRow,s2Step89EntryGvRow] 1 s2Step89EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step89EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step89EntryG_Outgoing : rowsOwned s2Step89EntryGvAfter [s2Step89EntryGOut,s2Step89EntryFvOut,s2Step89EntryGvOut] :=
  hmrRows_owned_drop s2Step89EntryGvAfter [s2Step89EntryFOut,s2Step89EntryGOut,s2Step89EntryFvOut,s2Step89EntryGvOut] 1 s2Step89EntryBank_outgoingOwned

private theorem s2Step89EntryG_distinct : (s2Step89EntryGRow.sign::s2Step89EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89EntryG_owned : (s2Step89EntryGRow.sign::s2Step89EntryGRow.payload).toFinset⊆s2Step89EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step89EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89EntryG_reserved : s2Step89EntryGBefore.reserve s2Step89EntryGFresh.toFinset=some s2Step89EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step89EntryGFresh,arenaWires]
  · norm_num [s2Step89EntryGBefore,s2Step89EntryFBefore,s2Step89EntryGFresh,arenaWires]
  · simp only [s2Step89EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step89EntryG_checked : planRowResizeLog s2Step89EntryGBefore s2Step89EntryGRow 224 s2Step89EntryGFresh=
    some (s2Step89EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223],769⟩,growRow 769 s2Step89EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step89EntryGBefore s2Step89EntryGAfter s2Step89EntryGRow 224 s2Step89EntryGFresh
    s2Step89EntryG_distinct s2Step89EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step89EntryG_reserved
  have rowEq : WindowRow.mk (s2Step89EntryGRow.payload++s2Step89EntryGFresh) s2Step89EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step89EntryGvBefore : Arena := s2Step89EntryFBefore

private theorem s2Step89EntryGv_Incoming : rowsOwned s2Step89EntryGvBefore [s2Step89EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step89EntryFRow,s2Step89EntryGRow,s2Step89EntryFvRow,s2Step89EntryGvRow] 3 s2Step89EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step89EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step89EntryGv_Outgoing : rowsOwned s2Step89EntryGvAfter [s2Step89EntryGvOut] :=
  hmrRows_owned_drop s2Step89EntryGvAfter [s2Step89EntryFOut,s2Step89EntryGOut,s2Step89EntryFvOut,s2Step89EntryGvOut] 3 s2Step89EntryBank_outgoingOwned

private theorem s2Step89EntryGv_distinct : (s2Step89EntryGvRow.sign::s2Step89EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89EntryGv_owned : (s2Step89EntryGvRow.sign::s2Step89EntryGvRow.payload).toFinset⊆s2Step89EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step89EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89EntryGv_reserved : s2Step89EntryGvBefore.reserve s2Step89EntryGvFresh.toFinset=some s2Step89EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step89EntryGvFresh,arenaWires]
  · norm_num [s2Step89EntryGvBefore,s2Step89EntryFBefore,s2Step89EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step89EntryGvAfter,s2Step89EntryGvBefore,s2Step89EntryFBefore,s2Step89EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step89EntryGv_checked : planRowResizeLog s2Step89EntryGvBefore s2Step89EntryGvRow 58 s2Step89EntryGvFresh=
    some (s2Step89EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789],771⟩,growRow 771 s2Step89EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step89EntryGvBefore s2Step89EntryGvAfter s2Step89EntryGvRow 58 s2Step89EntryGvFresh
    s2Step89EntryGv_distinct s2Step89EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step89EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step89EntryGvRow.payload++s2Step89EntryGvFresh) s2Step89EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step89EntryBank_rows : planWindowRowsLog s2Step89EntryFBefore [(s2Step89EntryFRow,224),(s2Step89EntryGRow,224),(s2Step89EntryFvRow,58),(s2Step89EntryGvRow,58)] [s2Step89EntryFFresh,s2Step89EntryGFresh,s2Step89EntryFvFresh,s2Step89EntryGvFresh]=
    some (s2Step89EntryGvAfter,[s2Step89EntryFOut,s2Step89EntryGOut,s2Step89EntryFvOut,s2Step89EntryGvOut],(growRow 768 s2Step89EntryFFresh ++ (growRow 769 s2Step89EntryGFresh ++ (growRow 770 s2Step89EntryFvFresh ++ (growRow 771 s2Step89EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step89EntryGvAfter [] []=some (s2Step89EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step89EntryGvBefore s2Step89EntryGvAfter s2Step89EntryGvAfter
    s2Step89EntryGvRow s2Step89EntryGvOut 58 s2Step89EntryGvFresh [] [] []
    (growRow 771 s2Step89EntryGvFresh) ([]) s2Step89EntryGv_Incoming s2Step89EntryGv_checked h4 s2Step89EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step89EntryFvBefore s2Step89EntryFvAfter s2Step89EntryGvAfter
    s2Step89EntryFvRow s2Step89EntryFvOut 58 s2Step89EntryFvFresh [(s2Step89EntryGvRow,58)] [s2Step89EntryGvFresh] [s2Step89EntryGvOut]
    (growRow 770 s2Step89EntryFvFresh) ((growRow 771 s2Step89EntryGvFresh ++ [])) s2Step89EntryFv_Incoming s2Step89EntryFv_checked h3 s2Step89EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step89EntryGBefore s2Step89EntryGAfter s2Step89EntryGvAfter
    s2Step89EntryGRow s2Step89EntryGOut 224 s2Step89EntryGFresh [(s2Step89EntryFvRow,58),(s2Step89EntryGvRow,58)] [s2Step89EntryFvFresh,s2Step89EntryGvFresh] [s2Step89EntryFvOut,s2Step89EntryGvOut]
    (growRow 769 s2Step89EntryGFresh) ((growRow 770 s2Step89EntryFvFresh ++ (growRow 771 s2Step89EntryGvFresh ++ []))) s2Step89EntryG_Incoming s2Step89EntryG_checked h2 s2Step89EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step89EntryFBefore s2Step89EntryFAfter s2Step89EntryGvAfter
    s2Step89EntryFRow s2Step89EntryFOut 224 s2Step89EntryFFresh [(s2Step89EntryGRow,224),(s2Step89EntryFvRow,58),(s2Step89EntryGvRow,58)] [s2Step89EntryGFresh,s2Step89EntryFvFresh,s2Step89EntryGvFresh] [s2Step89EntryGOut,s2Step89EntryFvOut,s2Step89EntryGvOut]
    (growRow 768 s2Step89EntryFFresh) ((growRow 769 s2Step89EntryGFresh ++ (growRow 770 s2Step89EntryFvFresh ++ (growRow 771 s2Step89EntryGvFresh ++ [])))) s2Step89EntryF_Incoming s2Step89EntryF_checked h1 s2Step89EntryF_Outgoing
  exact h0

private theorem s2Step89EntryBank_checked : compileHmrBankResizeLog .entry s2Step89EntryFBefore ⟨s2Step89EntryFRow,s2Step89EntryGRow,s2Step89EntryFvRow,s2Step89EntryGvRow⟩ ⟨224,224,58,58⟩ [s2Step89EntryFFresh,s2Step89EntryGFresh,s2Step89EntryFvFresh,s2Step89EntryGvFresh]=
    some (s2Step89EntryGvAfter,⟨s2Step89EntryFOut,s2Step89EntryGOut,s2Step89EntryFvOut,s2Step89EntryGvOut⟩,(growRow 768 s2Step89EntryFFresh ++ (growRow 769 s2Step89EntryGFresh ++ (growRow 770 s2Step89EntryFvFresh ++ (growRow 771 s2Step89EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step89EntryBank_rows]
  rfl

private def s2Step89ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<223) ∨ (224≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<223) ∨ (224≤q ∧ q<785) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89ExitFBefore : Arena := s2Step89ExitGAfter

private def s2Step89ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 781],768⟩

private def s2Step89ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩

private def s2Step89ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 836],769⟩

private def s2Step89ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 844],771⟩

private theorem s2Step89ExitBank_incomingDistinct : ([s2Step89ExitGRow,s2Step89ExitFRow,s2Step89ExitFvRow,s2Step89ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89ExitF_Incoming : rowsOwned s2Step89ExitFBefore [s2Step89ExitFRow,s2Step89ExitFvRow,s2Step89ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step89ExitGRow,s2Step89ExitFRow,s2Step89ExitFvRow,s2Step89ExitGvRow] 1 s2Step89ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step89ExitFBefore (fun q => (0≤q ∧ q<223) ∨ (224≤q ∧ q<785) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step89ExitBank_outgoingOwned : rowsOwned s2Step89ExitGvAfter [s2Step89ExitGOut,s2Step89ExitFOut,s2Step89ExitFvOut,s2Step89ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step89ExitGvAfter (fun q => (0≤q ∧ q<223) ∨ (224≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step89ExitF_Outgoing : rowsOwned s2Step89ExitGvAfter [s2Step89ExitFOut,s2Step89ExitFvOut,s2Step89ExitGvOut] :=
  hmrRows_owned_drop s2Step89ExitGvAfter [s2Step89ExitGOut,s2Step89ExitFOut,s2Step89ExitFvOut,s2Step89ExitGvOut] 1 s2Step89ExitBank_outgoingOwned

private theorem s2Step89ExitF_distinct : (s2Step89ExitFRow.sign::s2Step89ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89ExitF_owned : (s2Step89ExitFRow.sign::s2Step89ExitFRow.payload).toFinset⊆s2Step89ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step89ExitFBefore (fun q => (0≤q ∧ q<223) ∨ (224≤q ∧ q<785) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89ExitF_retired : s2Step89ExitFBefore.retireSet s2Step89ExitFExtra.toFinset=s2Step89ExitFAfter := by
  unfold Arena.retireSet s2Step89ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step89ExitFBefore,s2Step89ExitGAfter,s2Step89ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step89ExitF_checked : planRowResizeLog s2Step89ExitFBefore s2Step89ExitFRow 224 []=
    some (s2Step89ExitFAfter,s2Step89ExitFOut,shrinkRow 768 s2Step89ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step89ExitFBefore s2Step89ExitFRow 224 s2Step89ExitF_distinct s2Step89ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step89ExitFRow.payload.take 224) s2Step89ExitFRow.sign=s2Step89ExitFOut := by decide +kernel
  have hi : s2Step89ExitFRow.payload.drop 224=s2Step89ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step89ExitF_retired] at result
  exact result

private def s2Step89ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<223) ∨ (224≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89ExitFvBefore : Arena := s2Step89ExitFAfter

private theorem s2Step89ExitFv_Incoming : rowsOwned s2Step89ExitFvBefore [s2Step89ExitFvRow,s2Step89ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step89ExitGRow,s2Step89ExitFRow,s2Step89ExitFvRow,s2Step89ExitGvRow] 2 s2Step89ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step89ExitFvBefore (fun q => (0≤q ∧ q<223) ∨ (224≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step89ExitFv_Outgoing : rowsOwned s2Step89ExitGvAfter [s2Step89ExitFvOut,s2Step89ExitGvOut] :=
  hmrRows_owned_drop s2Step89ExitGvAfter [s2Step89ExitGOut,s2Step89ExitFOut,s2Step89ExitFvOut,s2Step89ExitGvOut] 2 s2Step89ExitBank_outgoingOwned

private theorem s2Step89ExitFv_distinct : (s2Step89ExitFvRow.sign::s2Step89ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89ExitFv_owned : (s2Step89ExitFvRow.sign::s2Step89ExitFvRow.payload).toFinset⊆s2Step89ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step89ExitFvBefore (fun q => (0≤q ∧ q<223) ∨ (224≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89ExitFv_retired : s2Step89ExitFvBefore.retireSet s2Step89ExitFvExtra.toFinset=s2Step89ExitFvAfter := by
  unfold Arena.retireSet s2Step89ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step89ExitFvBefore,s2Step89ExitFAfter,s2Step89ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step89ExitFv_checked : planRowResizeLog s2Step89ExitFvBefore s2Step89ExitFvRow 58 []=
    some (s2Step89ExitFvAfter,s2Step89ExitFvOut,shrinkRow 770 s2Step89ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step89ExitFvBefore s2Step89ExitFvRow 58 s2Step89ExitFv_distinct s2Step89ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step89ExitFvRow.payload.take 58) s2Step89ExitFvRow.sign=s2Step89ExitFvOut := by decide +kernel
  have hi : s2Step89ExitFvRow.payload.drop 58=s2Step89ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step89ExitFv_retired] at result
  exact result

private def s2Step89ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private theorem s2Step89ExitG_Incoming : rowsOwned s2Step89ExitGBefore [s2Step89ExitGRow,s2Step89ExitFRow,s2Step89ExitFvRow,s2Step89ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step89ExitGRow,s2Step89ExitFRow,s2Step89ExitFvRow,s2Step89ExitGvRow] 0 s2Step89ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step89ExitGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step89ExitG_Outgoing : rowsOwned s2Step89ExitGvAfter [s2Step89ExitGOut,s2Step89ExitFOut,s2Step89ExitFvOut,s2Step89ExitGvOut] :=
  hmrRows_owned_drop s2Step89ExitGvAfter [s2Step89ExitGOut,s2Step89ExitFOut,s2Step89ExitFvOut,s2Step89ExitGvOut] 0 s2Step89ExitBank_outgoingOwned

private theorem s2Step89ExitG_distinct : (s2Step89ExitGRow.sign::s2Step89ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89ExitG_owned : (s2Step89ExitGRow.sign::s2Step89ExitGRow.payload).toFinset⊆s2Step89ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step89ExitGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89ExitG_retired : s2Step89ExitGBefore.retireSet s2Step89ExitGExtra.toFinset=s2Step89ExitGAfter := by
  unfold Arena.retireSet s2Step89ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step89ExitGBefore,s2Step89ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step89ExitG_checked : planRowResizeLog s2Step89ExitGBefore s2Step89ExitGRow 223 []=
    some (s2Step89ExitGAfter,s2Step89ExitGOut,shrinkRow 769 s2Step89ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step89ExitGBefore s2Step89ExitGRow 223 s2Step89ExitG_distinct s2Step89ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step89ExitGRow.payload.take 223) s2Step89ExitGRow.sign=s2Step89ExitGOut := by decide +kernel
  have hi : s2Step89ExitGRow.payload.drop 223=s2Step89ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step89ExitG_retired] at result
  exact result

private def s2Step89ExitGvBefore : Arena := s2Step89ExitFvAfter

private theorem s2Step89ExitGv_Incoming : rowsOwned s2Step89ExitGvBefore [s2Step89ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step89ExitGRow,s2Step89ExitFRow,s2Step89ExitFvRow,s2Step89ExitGvRow] 3 s2Step89ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step89ExitGvBefore (fun q => (0≤q ∧ q<223) ∨ (224≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step89ExitGv_Outgoing : rowsOwned s2Step89ExitGvAfter [s2Step89ExitGvOut] :=
  hmrRows_owned_drop s2Step89ExitGvAfter [s2Step89ExitGOut,s2Step89ExitFOut,s2Step89ExitFvOut,s2Step89ExitGvOut] 3 s2Step89ExitBank_outgoingOwned

private theorem s2Step89ExitGv_distinct : (s2Step89ExitGvRow.sign::s2Step89ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89ExitGv_owned : (s2Step89ExitGvRow.sign::s2Step89ExitGvRow.payload).toFinset⊆s2Step89ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step89ExitGvBefore (fun q => (0≤q ∧ q<223) ∨ (224≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89ExitGv_retired : s2Step89ExitGvBefore.retireSet s2Step89ExitGvExtra.toFinset=s2Step89ExitGvAfter := by
  unfold Arena.retireSet s2Step89ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step89ExitGvBefore,s2Step89ExitFvAfter,s2Step89ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step89ExitGv_checked : planRowResizeLog s2Step89ExitGvBefore s2Step89ExitGvRow 58 []=
    some (s2Step89ExitGvAfter,s2Step89ExitGvOut,shrinkRow 771 s2Step89ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step89ExitGvBefore s2Step89ExitGvRow 58 s2Step89ExitGv_distinct s2Step89ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step89ExitGvRow.payload.take 58) s2Step89ExitGvRow.sign=s2Step89ExitGvOut := by decide +kernel
  have hi : s2Step89ExitGvRow.payload.drop 58=s2Step89ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step89ExitGv_retired] at result
  exact result

private theorem s2Step89ExitBank_rows : planWindowRowsLog s2Step89ExitGBefore [(s2Step89ExitGRow,223),(s2Step89ExitFRow,224),(s2Step89ExitFvRow,58),(s2Step89ExitGvRow,58)] [[],[],[],[]]=
    some (s2Step89ExitGvAfter,[s2Step89ExitGOut,s2Step89ExitFOut,s2Step89ExitFvOut,s2Step89ExitGvOut],(shrinkRow 769 s2Step89ExitGExtra ++ (shrinkRow 768 s2Step89ExitFExtra ++ (shrinkRow 770 s2Step89ExitFvExtra ++ (shrinkRow 771 s2Step89ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step89ExitGvAfter [] []=some (s2Step89ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step89ExitGvBefore s2Step89ExitGvAfter s2Step89ExitGvAfter
    s2Step89ExitGvRow s2Step89ExitGvOut 58 [] [] [] []
    (shrinkRow 771 s2Step89ExitGvExtra) ([]) s2Step89ExitGv_Incoming s2Step89ExitGv_checked h4 s2Step89ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step89ExitFvBefore s2Step89ExitFvAfter s2Step89ExitGvAfter
    s2Step89ExitFvRow s2Step89ExitFvOut 58 [] [(s2Step89ExitGvRow,58)] [[]] [s2Step89ExitGvOut]
    (shrinkRow 770 s2Step89ExitFvExtra) ((shrinkRow 771 s2Step89ExitGvExtra ++ [])) s2Step89ExitFv_Incoming s2Step89ExitFv_checked h3 s2Step89ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step89ExitFBefore s2Step89ExitFAfter s2Step89ExitGvAfter
    s2Step89ExitFRow s2Step89ExitFOut 224 [] [(s2Step89ExitFvRow,58),(s2Step89ExitGvRow,58)] [[],[]] [s2Step89ExitFvOut,s2Step89ExitGvOut]
    (shrinkRow 768 s2Step89ExitFExtra) ((shrinkRow 770 s2Step89ExitFvExtra ++ (shrinkRow 771 s2Step89ExitGvExtra ++ []))) s2Step89ExitF_Incoming s2Step89ExitF_checked h2 s2Step89ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step89ExitGBefore s2Step89ExitGAfter s2Step89ExitGvAfter
    s2Step89ExitGRow s2Step89ExitGOut 223 [] [(s2Step89ExitFRow,224),(s2Step89ExitFvRow,58),(s2Step89ExitGvRow,58)] [[],[],[]] [s2Step89ExitFOut,s2Step89ExitFvOut,s2Step89ExitGvOut]
    (shrinkRow 769 s2Step89ExitGExtra) ((shrinkRow 768 s2Step89ExitFExtra ++ (shrinkRow 770 s2Step89ExitFvExtra ++ (shrinkRow 771 s2Step89ExitGvExtra ++ [])))) s2Step89ExitG_Incoming s2Step89ExitG_checked h1 s2Step89ExitG_Outgoing
  exact h0

private theorem s2Step89ExitBank_checked : compileHmrBankResizeLog .exit s2Step89ExitGBefore ⟨s2Step89ExitFRow,s2Step89ExitGRow,s2Step89ExitFvRow,s2Step89ExitGvRow⟩ ⟨224,223,58,58⟩ [[],[],[],[]]=
    some (s2Step89ExitGvAfter,⟨s2Step89ExitFOut,s2Step89ExitGOut,s2Step89ExitFvOut,s2Step89ExitGvOut⟩,(shrinkRow 769 s2Step89ExitGExtra ++ (shrinkRow 768 s2Step89ExitFExtra ++ (shrinkRow 770 s2Step89ExitFvExtra ++ (shrinkRow 771 s2Step89ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step89ExitBank_rows]
  rfl

private theorem s2Step89Add0_apart : Disjoint s2Step89Add0Arena.live s2Step89Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step89Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89Add0_card : s2Step89Add0Arena.live.card=869 := by
  decide +kernel

private theorem s2Step89Add0_borrowed : s2Step89Add0Arena.checkBorrow (hmrHybridCount s2Step89Add0Arena s2Step89Add0B.length) s2Step89Add0Work=some s2Step89Add0During := by
  have len : s2Step89Add0Work.length=hmrHybridCount s2Step89Add0Arena s2Step89Add0B.length := by
    rw [hmrHybridCount,s2Step89Add0_card]
    decide +kernel
  have nd : s2Step89Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step89Add0Arena s2Step89Add0During s2Step89Add0Work.toFinset s2Step89Add0_bounded s2Step89Add0_apart rfl

private theorem s2Step89Add0_distinct : (785::779::839::(s2Step89Add0A++s2Step89Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89Add0_owned : (785::779::839::(s2Step89Add0A++s2Step89Add0B)).toFinset⊆s2Step89Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step89Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89Add0_checked : compileHmrHybridCinLog s2Step89Add0Arena 779 785 839 s2Step89Add0A s2Step89Add0B s2Step89Add0Work=some s2Step89Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step89Add0Arena s2Step89Add0During 779 785 839 s2Step89Add0A s2Step89Add0B s2Step89Add0Work
    (by decide +kernel) (by decide +kernel) s2Step89Add0_distinct
    (fun q hq => s2Step89Add0_owned (List.mem_toFinset.mpr hq)) s2Step89Add0_borrowed

private theorem s2Step89Add1_apart : Disjoint s2Step89Add1Arena.live s2Step89Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step89Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89Add1_card : s2Step89Add1Arena.live.card=869 := by
  decide +kernel

private theorem s2Step89Add1_borrowed : s2Step89Add1Arena.checkBorrow (hmrHybridCount s2Step89Add1Arena s2Step89Add1B.length) s2Step89Add1Work=some s2Step89Add1During := by
  have len : s2Step89Add1Work.length=hmrHybridCount s2Step89Add1Arena s2Step89Add1B.length := by
    rw [hmrHybridCount,s2Step89Add1_card]
    decide +kernel
  have nd : s2Step89Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step89Add1Arena s2Step89Add1During s2Step89Add1Work.toFinset s2Step89Add1_bounded s2Step89Add1_apart rfl

private theorem s2Step89Add1_distinct : (785::779::839::(s2Step89Add1A++s2Step89Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89Add1_owned : (785::779::839::(s2Step89Add1A++s2Step89Add1B)).toFinset⊆s2Step89Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step89Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89Add1_checked : compileHmrHybridCinLog s2Step89Add1Arena 779 785 839 s2Step89Add1A s2Step89Add1B s2Step89Add1Work=some s2Step89Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step89Add1Arena s2Step89Add1During 779 785 839 s2Step89Add1A s2Step89Add1B s2Step89Add1Work
    (by decide +kernel) (by decide +kernel) s2Step89Add1_distinct
    (fun q hq => s2Step89Add1_owned (List.mem_toFinset.mpr hq)) s2Step89Add1_borrowed

private theorem s2Step89F4_apart : Disjoint (s2Step89Add0A++s2Step89Add0B).toFinset (s2Step89Add1A++s2Step89Add1B).toFinset := by
  have nd : ((s2Step89Add0A++s2Step89Add0B)++(s2Step89Add1A++s2Step89Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step89F4_carry : s2Step89F4FlagArena.checkBorrow 1 [839]=some s2Step89Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step89F4FlagArena,s2Step89HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step89F4FlagArena,s2Step89HeadFvAfter,s2Step89Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step89F4_distinct : (793::779::785::839::((s2Step89Add0A++s2Step89Add1A)++(s2Step89Add0B++s2Step89Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89F4_flag : s2Step89HeadFvAfter.checkBorrow 1 [785]=some s2Step89F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step89HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step89F4_owned : (793::779::((s2Step89Add0A++s2Step89Add1A)++(s2Step89Add0B++s2Step89Add1B))).toFinset⊆s2Step89HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step89HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89F4_checked : compileHmrHybridF4Log s2Step89HeadFvAfter 793 779 s2Step89Add0A s2Step89Add0B s2Step89Add1A s2Step89Add1B [785] [839] s2Step89Add0Work s2Step89Add1Work=some s2Step89F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step89HeadFvAfter s2Step89F4FlagArena s2Step89Add0Arena s2Step89Add0During s2Step89Add1During 793 779
    s2Step89Add0A s2Step89Add0B s2Step89Add1A s2Step89Add1B [785] [839] s2Step89Add0Work s2Step89Add1Work
    (fun q hq => s2Step89F4_owned (List.mem_toFinset.mpr hq)) s2Step89F4_flag s2Step89F4_carry
    s2Step89F4_distinct s2Step89F4_apart s2Step89Add0_checked s2Step89Add1_checked

private theorem s2Step89Front_branch : s2Step89FrontSigmaArena.checkBorrow 1 [779]=some s2Step89HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step89FrontSigmaArena,s2Step89EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step89FrontSigmaArena,s2Step89EntryGvAfter,s2Step89HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step89Front_entry : HmrFrontEntryValid s2Step89EntryFBefore s2Step89FrontBank 224 58 ⟨224,223,58,58⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step89FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step89EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step89EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step89FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step89Front_sigma : s2Step89EntryGvAfter.checkBorrow 1 [793]=some s2Step89FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step89EntryGvAfter,arenaWires]
  · rfl

private def s2Step89HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89HeadFBefore : Arena := s2Step89HeadGAfter

private def s2Step89HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735],768⟩

private def s2Step89HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step89HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223],769⟩

private def s2Step89HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789],771⟩

private theorem s2Step89HeadBank_incomingDistinct : ([s2Step89HeadGRow,s2Step89HeadFRow,s2Step89HeadGvRow,s2Step89HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89HeadF_Incoming : rowsOwned s2Step89HeadFBefore [s2Step89HeadFRow,s2Step89HeadGvRow,s2Step89HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step89HeadGRow,s2Step89HeadFRow,s2Step89HeadGvRow,s2Step89HeadFvRow] 1 s2Step89HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step89HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step89HeadBank_outgoingOwned : rowsOwned s2Step89HeadFvAfter [s2Step89HeadGOut,s2Step89HeadFOut,s2Step89HeadGvOut,s2Step89HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step89HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step89HeadF_Outgoing : rowsOwned s2Step89HeadFvAfter [s2Step89HeadFOut,s2Step89HeadGvOut,s2Step89HeadFvOut] :=
  hmrRows_owned_drop s2Step89HeadFvAfter [s2Step89HeadGOut,s2Step89HeadFOut,s2Step89HeadGvOut,s2Step89HeadFvOut] 1 s2Step89HeadBank_outgoingOwned

private theorem s2Step89HeadF_distinct : (s2Step89HeadFRow.sign::s2Step89HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89HeadF_owned : (s2Step89HeadFRow.sign::s2Step89HeadFRow.payload).toFinset⊆s2Step89HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step89HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89HeadF_reserved : s2Step89HeadFBefore.reserve s2Step89HeadFFresh.toFinset=some s2Step89HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step89HeadFFresh,arenaWires]
  · norm_num [s2Step89HeadFBefore,s2Step89HeadGAfter,s2Step89HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step89HeadFAfter,s2Step89HeadFBefore,s2Step89HeadGAfter,s2Step89HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step89HeadF_checked : planRowResizeLog s2Step89HeadFBefore s2Step89HeadFRow 225 s2Step89HeadFFresh=
    some (s2Step89HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 781],768⟩,growRow 768 s2Step89HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step89HeadFBefore s2Step89HeadFAfter s2Step89HeadFRow 225 s2Step89HeadFFresh
    s2Step89HeadF_distinct s2Step89HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step89HeadF_reserved
  have rowEq : WindowRow.mk (s2Step89HeadFRow.payload++s2Step89HeadFFresh) s2Step89HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step89HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step89HeadFvBefore : Arena := s2Step89HeadGvAfter

private theorem s2Step89HeadFv_Incoming : rowsOwned s2Step89HeadFvBefore [s2Step89HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step89HeadGRow,s2Step89HeadFRow,s2Step89HeadGvRow,s2Step89HeadFvRow] 3 s2Step89HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step89HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step89HeadFv_Outgoing : rowsOwned s2Step89HeadFvAfter [s2Step89HeadFvOut] :=
  hmrRows_owned_drop s2Step89HeadFvAfter [s2Step89HeadGOut,s2Step89HeadFOut,s2Step89HeadGvOut,s2Step89HeadFvOut] 3 s2Step89HeadBank_outgoingOwned

private theorem s2Step89HeadFv_distinct : (s2Step89HeadFvRow.sign::s2Step89HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89HeadFv_owned : (s2Step89HeadFvRow.sign::s2Step89HeadFvRow.payload).toFinset⊆s2Step89HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step89HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89HeadFv_reserved : s2Step89HeadFvBefore.reserve s2Step89HeadFvFresh.toFinset=some s2Step89HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step89HeadFvFresh,arenaWires]
  · norm_num [s2Step89HeadFvBefore,s2Step89HeadGvAfter,s2Step89HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step89HeadFvAfter,s2Step89HeadFvBefore,s2Step89HeadGvAfter,s2Step89HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step89HeadFv_checked : planRowResizeLog s2Step89HeadFvBefore s2Step89HeadFvRow 59 s2Step89HeadFvFresh=
    some (s2Step89HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩,growRow 770 s2Step89HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step89HeadFvBefore s2Step89HeadFvAfter s2Step89HeadFvRow 59 s2Step89HeadFvFresh
    s2Step89HeadFv_distinct s2Step89HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step89HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step89HeadFvRow.payload++s2Step89HeadFvFresh) s2Step89HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step89HeadG_Incoming : rowsOwned s2Step89HeadGBefore [s2Step89HeadGRow,s2Step89HeadFRow,s2Step89HeadGvRow,s2Step89HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step89HeadGRow,s2Step89HeadFRow,s2Step89HeadGvRow,s2Step89HeadFvRow] 0 s2Step89HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step89HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step89HeadG_Outgoing : rowsOwned s2Step89HeadFvAfter [s2Step89HeadGOut,s2Step89HeadFOut,s2Step89HeadGvOut,s2Step89HeadFvOut] :=
  hmrRows_owned_drop s2Step89HeadFvAfter [s2Step89HeadGOut,s2Step89HeadFOut,s2Step89HeadGvOut,s2Step89HeadFvOut] 0 s2Step89HeadBank_outgoingOwned

private theorem s2Step89HeadG_distinct : (s2Step89HeadGRow.sign::s2Step89HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89HeadG_owned : (s2Step89HeadGRow.sign::s2Step89HeadGRow.payload).toFinset⊆s2Step89HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step89HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89HeadG_reserved : s2Step89HeadGBefore.reserve s2Step89HeadGFresh.toFinset=some s2Step89HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step89HeadGFresh,arenaWires]
  · norm_num [s2Step89HeadGBefore,s2Step89HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step89HeadGAfter,s2Step89HeadGBefore,s2Step89HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step89HeadG_checked : planRowResizeLog s2Step89HeadGBefore s2Step89HeadGRow 225 s2Step89HeadGFresh=
    some (s2Step89HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 836],769⟩,growRow 769 s2Step89HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step89HeadGBefore s2Step89HeadGAfter s2Step89HeadGRow 225 s2Step89HeadGFresh
    s2Step89HeadG_distinct s2Step89HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step89HeadG_reserved
  have rowEq : WindowRow.mk (s2Step89HeadGRow.payload++s2Step89HeadGFresh) s2Step89HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 836],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step89HeadGvBefore : Arena := s2Step89HeadFAfter

private theorem s2Step89HeadGv_Incoming : rowsOwned s2Step89HeadGvBefore [s2Step89HeadGvRow,s2Step89HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step89HeadGRow,s2Step89HeadFRow,s2Step89HeadGvRow,s2Step89HeadFvRow] 2 s2Step89HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step89HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step89HeadGv_Outgoing : rowsOwned s2Step89HeadFvAfter [s2Step89HeadGvOut,s2Step89HeadFvOut] :=
  hmrRows_owned_drop s2Step89HeadFvAfter [s2Step89HeadGOut,s2Step89HeadFOut,s2Step89HeadGvOut,s2Step89HeadFvOut] 2 s2Step89HeadBank_outgoingOwned

private theorem s2Step89HeadGv_distinct : (s2Step89HeadGvRow.sign::s2Step89HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step89HeadGv_owned : (s2Step89HeadGvRow.sign::s2Step89HeadGvRow.payload).toFinset⊆s2Step89HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step89HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step89HeadGv_reserved : s2Step89HeadGvBefore.reserve s2Step89HeadGvFresh.toFinset=some s2Step89HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step89HeadGvFresh,arenaWires]
  · norm_num [s2Step89HeadGvBefore,s2Step89HeadFAfter,s2Step89HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step89HeadGvAfter,s2Step89HeadGvBefore,s2Step89HeadFAfter,s2Step89HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step89HeadGv_checked : planRowResizeLog s2Step89HeadGvBefore s2Step89HeadGvRow 59 s2Step89HeadGvFresh=
    some (s2Step89HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 844],771⟩,growRow 771 s2Step89HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step89HeadGvBefore s2Step89HeadGvAfter s2Step89HeadGvRow 59 s2Step89HeadGvFresh
    s2Step89HeadGv_distinct s2Step89HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step89HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step89HeadGvRow.payload++s2Step89HeadGvFresh) s2Step89HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 844],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step89HeadBank_rows : planWindowRowsLog s2Step89HeadGBefore [(s2Step89HeadGRow,225),(s2Step89HeadFRow,225),(s2Step89HeadGvRow,59),(s2Step89HeadFvRow,59)] [s2Step89HeadGFresh,s2Step89HeadFFresh,s2Step89HeadGvFresh,s2Step89HeadFvFresh]=
    some (s2Step89HeadFvAfter,[s2Step89HeadGOut,s2Step89HeadFOut,s2Step89HeadGvOut,s2Step89HeadFvOut],(growRow 769 s2Step89HeadGFresh ++ (growRow 768 s2Step89HeadFFresh ++ (growRow 771 s2Step89HeadGvFresh ++ (growRow 770 s2Step89HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step89HeadFvAfter [] []=some (s2Step89HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step89HeadFvBefore s2Step89HeadFvAfter s2Step89HeadFvAfter
    s2Step89HeadFvRow s2Step89HeadFvOut 59 s2Step89HeadFvFresh [] [] []
    (growRow 770 s2Step89HeadFvFresh) ([]) s2Step89HeadFv_Incoming s2Step89HeadFv_checked h4 s2Step89HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step89HeadGvBefore s2Step89HeadGvAfter s2Step89HeadFvAfter
    s2Step89HeadGvRow s2Step89HeadGvOut 59 s2Step89HeadGvFresh [(s2Step89HeadFvRow,59)] [s2Step89HeadFvFresh] [s2Step89HeadFvOut]
    (growRow 771 s2Step89HeadGvFresh) ((growRow 770 s2Step89HeadFvFresh ++ [])) s2Step89HeadGv_Incoming s2Step89HeadGv_checked h3 s2Step89HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step89HeadFBefore s2Step89HeadFAfter s2Step89HeadFvAfter
    s2Step89HeadFRow s2Step89HeadFOut 225 s2Step89HeadFFresh [(s2Step89HeadGvRow,59),(s2Step89HeadFvRow,59)] [s2Step89HeadGvFresh,s2Step89HeadFvFresh] [s2Step89HeadGvOut,s2Step89HeadFvOut]
    (growRow 768 s2Step89HeadFFresh) ((growRow 771 s2Step89HeadGvFresh ++ (growRow 770 s2Step89HeadFvFresh ++ []))) s2Step89HeadF_Incoming s2Step89HeadF_checked h2 s2Step89HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step89HeadGBefore s2Step89HeadGAfter s2Step89HeadFvAfter
    s2Step89HeadGRow s2Step89HeadGOut 225 s2Step89HeadGFresh [(s2Step89HeadFRow,225),(s2Step89HeadGvRow,59),(s2Step89HeadFvRow,59)] [s2Step89HeadFFresh,s2Step89HeadGvFresh,s2Step89HeadFvFresh] [s2Step89HeadFOut,s2Step89HeadGvOut,s2Step89HeadFvOut]
    (growRow 769 s2Step89HeadGFresh) ((growRow 768 s2Step89HeadFFresh ++ (growRow 771 s2Step89HeadGvFresh ++ (growRow 770 s2Step89HeadFvFresh ++ [])))) s2Step89HeadG_Incoming s2Step89HeadG_checked h1 s2Step89HeadG_Outgoing
  exact h0

private theorem s2Step89HeadBank_checked : compileHmrBankResizeLog .headroom s2Step89HeadGBefore ⟨s2Step89HeadFRow,s2Step89HeadGRow,s2Step89HeadFvRow,s2Step89HeadGvRow⟩ ⟨225,225,59,59⟩ [s2Step89HeadGFresh,s2Step89HeadFFresh,s2Step89HeadGvFresh,s2Step89HeadFvFresh]=
    some (s2Step89HeadFvAfter,⟨s2Step89HeadFOut,s2Step89HeadGOut,s2Step89HeadFvOut,s2Step89HeadGvOut⟩,(growRow 769 s2Step89HeadGFresh ++ (growRow 768 s2Step89HeadFFresh ++ (growRow 771 s2Step89HeadGvFresh ++ (growRow 770 s2Step89HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step89HeadBank_rows]
  rfl

private theorem s2Step89Front_checked : compileHmrSourceFrontLog s2Step89EntryFBefore s2Step89FrontBank 224 58 ⟨224,223,58,58⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step89FrontLog=some s2Step89FrontPlan := by
  have pairEq : s2Step89FrontPair=⟨s2Step89HeadFRow,s2Step89HeadGRow,s2Step89HeadFvRow,s2Step89HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step89FrontHead=⟨s2Step89ExitFRow,s2Step89ExitGRow,s2Step89ExitFvRow,s2Step89ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step89Add0A=s2Step89FrontHead.f.wires := by decide +kernel
  have gEq : s2Step89Add0B=s2Step89FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step89Add1A=s2Step89FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step89Add1B=s2Step89FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step89EntryFBefore s2Step89FrontBank 224 58 ⟨224,223,58,58⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step89FrontLog s2Step89FrontPlan
  · exact s2Step89Front_entry
  · exact s2Step89EntryBank_checked
  · exact s2Step89Front_sigma
  · rfl
  · exact s2Step89Front_branch
  · rfl
  · simpa only [s2Step89FrontPlan,pairEq] using s2Step89HeadBank_checked
  · simpa only [s2Step89FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step89F4_checked
  · exact s2Step89Counter_checked
  · rfl
  · simpa only [s2Step89FrontPlan,headEq] using s2Step89ExitBank_checked

private theorem s2Step89Complete_explicit_checked : compileHmrEarlyStepLog s2Step89EntryFBefore s2Step89FrontBank 224 58 ⟨224,223,58,58⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 32 s2Step89CompleteLog=some s2Step89CompletePlan := by
  let Q := s2Step89EarlyControlPlan
  have hq := s2Step89EarlyControl_plan_checked
  have fv1 : s2Step89CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step89CompleteOut.fv.payload[2]?.getD s2Step89CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step89CompleteOut.fv.payload[3]?.getD s2Step89CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step89CompleteOut.fv.payload[4]?.getD s2Step89CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step89EntryFBefore s2Step89EarlyControlArena s2Step89FrontBank 224 58 ⟨224,223,58,58⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 32 s2Step89CompleteLog s2Step89FrontPlan Q
    s2Step89Front_checked s2Step89Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step89Complete_owned s2Step89Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step89EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 793 s2Step89CompleteOut.fv.second (s2Step89CompleteOut.fv.payload[2]?.getD s2Step89CompleteOut.fv.sign) (s2Step89CompleteOut.fv.payload[3]?.getD s2Step89CompleteOut.fv.sign) (s2Step89CompleteOut.fv.payload[4]?.getD s2Step89CompleteOut.fv.sign) 779 32 s2Step89EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep89Arena : Arena := s2Step89EntryFBefore
def s2PrivateStep89Bank : WindowBank := s2Step89FrontBank
def s2PrivateStep89Spec : HmrSourceWalkStepLog := ⟨224,58,⟨224,223,58,58⟩,32,.early s2Step89CompleteLog⟩
def s2PrivateStep89Plan : HmrSourceStepPlan := .early s2Step89CompletePlan
theorem s2PrivateStep89_source : s2PrivateStep89Spec=s2ObservedLogs80[9] := rfl
theorem s2PrivateStep89_checked : compileHmrSourceStepLog s2PrivateStep89Arena s2PrivateStep89Bank
    s2PrivateStep89Spec.fgWidth s2PrivateStep89Spec.vWidth s2PrivateStep89Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875]
    6 498 89 s2PrivateStep89Spec.need none s2PrivateStep89Spec.log=some s2PrivateStep89Plan := by
  change compileHmrSourceStepLog s2Step89EntryFBefore s2Step89FrontBank 224 58 ⟨224,223,58,58⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 6 498 89 32 none (.early s2Step89CompleteLog)=some (.early s2Step89CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 89<498)]
  rw [s2Step89Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
