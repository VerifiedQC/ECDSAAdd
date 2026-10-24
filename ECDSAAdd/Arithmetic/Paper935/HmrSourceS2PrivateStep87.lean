import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep85
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

private def s2Step87CompleteMoves : List (Wire × Wire) := [(789,736),(793,737)]

private def s2Step87EarlyControlLog : HmrEarlyControlLog := ⟨[793, 789, 839, 816, 836],[781],[846],[847, 849, 851, 867, 873, 874],[]⟩

private def s2Step87FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [785, 836], [], []],[[781], [816], [839], [845]],[[], [], [], []]⟩,[779],[844],[846],[847],[849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928],[846, 847, 849, 851]⟩

private def s2Step87CompleteLog : HmrEarlyStepLog := ⟨s2Step87FrontLog,s2Step87CompleteMoves,s2Step87EarlyControlLog⟩

private def s2Step87ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735],768⟩

private def s2Step87ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step87ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785],769⟩

private def s2Step87ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩

private def s2Step87FrontOut : WindowBank := ⟨s2Step87ExitFOut,s2Step87ExitGOut,s2Step87ExitFvOut,s2Step87ExitGvOut⟩

private def s2Step87CompleteOut : WindowBank := s2Step87FrontOut.repacked s2Step87CompleteMoves

private def s2Step87EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step87EarlyControlPositiveArena,[781],s2Step87EarlyControlEqualityArena,[846],⟨⟨779,false⟩,[⟨⟨781,false⟩,846⟩]⟩⟩

private def s2Step87EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,793⟩,⟨⟨774,false⟩,789⟩,⟨⟨775,false⟩,839⟩,⟨⟨776,false⟩,816⟩,⟨⟨777,false⟩,836⟩]⟩

private def s2Step87EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step87EarlyControlZeroArena,s2Step87EarlyControlZeroPlan,s2Step87EarlyControlClassPlan,s2Step87EarlyControlFlagArena,s2Step87EarlyControlFittedArena,s2Step87EarlyControlHistoryArena,s2Step87EarlyControlSigmaArena,s2Step87EarlyControlOutputArena,s2Step87EarlyControlLog⟩

private def s2Step87CounterWork : List Wire := [846, 847, 849, 851]

private theorem s2Step87Counter_bounded : s2Step87CounterWork.toFinset⊆arenaWires := by norm_num [s2Step87CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step87HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87CounterDuring : Arena := ⟨s2Step87HeadFvAfter.live∪s2Step87CounterWork.toFinset,Finset.union_subset s2Step87HeadFvAfter.bounded s2Step87Counter_bounded⟩

private def s2Step87EntryFFresh : List Wire := []

private def s2Step87EntryFvFresh : List Wire := []

private def s2Step87EntryGFresh : List Wire := [785, 836]

private def s2Step87EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87EntryGvAfter : Arena := s2Step87EntryGAfter

private def s2Step87EntryGvFresh : List Wire := []

private def s2Step87ExitFExtra : List Wire := [736, 737, 816]

private def s2Step87ExitGExtra : List Wire := [836, 781]

private def s2Step87ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<736) ∨ (738≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87ExitGvExtra : List Wire := [839]

private def s2Step87Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87Add0Work : List Wire := [849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step87Add0_bounded : s2Step87Add0Work.toFinset⊆arenaWires := by
  have h : s2Step87Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step87Add0During : Arena := ⟨s2Step87Add0Arena.live∪s2Step87Add0Work.toFinset,Finset.union_subset s2Step87Add0Arena.bounded s2Step87Add0_bounded⟩

private def s2Step87Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87Add1Work : List Wire := [849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928]

private theorem s2Step87Add1_bounded : s2Step87Add1Work.toFinset⊆arenaWires := by
  have h : s2Step87Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step87Add1During : Arena := ⟨s2Step87Add1Arena.live∪s2Step87Add1Work.toFinset,Finset.union_subset s2Step87Add1Arena.bounded s2Step87Add1_bounded⟩

private def s2Step87F4FlagArena : Arena := ⟨s2Step87HeadFvAfter.live∪{846},Finset.union_subset s2Step87HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step87F4Plan : HmrHybridF4Plan := ⟨s2Step87F4FlagArena,[846],s2Step87Add0Arena,[847],s2Step87Add0During,s2Step87Add0Work,s2Step87Add1During,s2Step87Add1Work⟩

private def s2Step87HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 816],768⟩

private def s2Step87HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step87HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785, 836, 781],769⟩

private def s2Step87HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 839],771⟩

private def s2Step87FrontHead : WindowBank := ⟨s2Step87HeadFOut,s2Step87HeadGOut,s2Step87HeadFvOut,s2Step87HeadGvOut⟩

private def s2Step87EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩

private def s2Step87EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788],770⟩

private def s2Step87EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785, 836],769⟩

private def s2Step87EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩

private def s2Step87FrontPair : WindowBank := ⟨s2Step87EntryFOut,s2Step87EntryGOut,s2Step87EntryFvOut,s2Step87EntryGvOut⟩

private def s2Step87FrontSigmaArena : Arena := ⟨s2Step87EntryGvAfter.live∪{779},Finset.union_subset s2Step87EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step87HeadFFresh : List Wire := [816]

private def s2Step87HeadFvFresh : List Wire := [845]

private def s2Step87HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87HeadGFresh : List Wire := [781]

private def s2Step87HeadGvFresh : List Wire := [839]

private def s2Step87FrontPlan : HmrSourceFront := ⟨s2Step87EntryGvAfter,s2Step87FrontPair,(growRow 768 s2Step87EntryFFresh ++ (growRow 769 s2Step87EntryGFresh ++ (growRow 770 s2Step87EntryFvFresh ++ (growRow 771 s2Step87EntryGvFresh ++ [])))),s2Step87FrontSigmaArena,[779],s2Step87HeadGBefore,[844],
  s2Step87HeadFvAfter,s2Step87FrontHead,(growRow 769 s2Step87HeadGFresh ++ (growRow 768 s2Step87HeadFFresh ++ (growRow 771 s2Step87HeadGvFresh ++ (growRow 770 s2Step87HeadFvFresh ++ [])))),s2Step87F4Plan,s2Step87CounterDuring,s2Step87CounterWork,s2Step87ExitGvAfter,s2Step87FrontOut,(shrinkRow 769 s2Step87ExitGExtra ++ (shrinkRow 768 s2Step87ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step87ExitGvExtra ++ []))))⟩

private def s2Step87CompletePlan : HmrEarlyStepPlan := ⟨s2Step87FrontPlan,s2Step87EarlyControlArena,s2Step87EarlyControlPlan,s2Step87CompleteMoves⟩

private theorem s2Step87Complete_apart : List.Disjoint (s2Step87CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [779, 844, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] := by
  have nd : ((s2Step87CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[779, 844, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step87Complete_owned : (s2Step87CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step87EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step87EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private def s2Step87CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,737),(738,781),(782,789),(790,816),(817,836),(837,839),(840,846),(848,849),(850,851),(852,867),(868,873),(875,876)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step87CompleteRelocationMove0Borrowed : Arena := ⟨s2Step87ExitGvAfter.live∪{736},Finset.union_subset s2Step87ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step87CompleteRelocationMove1Borrowed : Arena := ⟨s2Step87CompleteRelocationMove0After.live∪{737},Finset.union_subset s2Step87CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step87CompleteRelocation_move0_owned : 789∈s2Step87ExitGvAfter.live := by norm_num [s2Step87ExitGvAfter,arenaWires]

private theorem s2Step87CompleteRelocation_move0_reserve : s2Step87ExitGvAfter.reserve {736}=some s2Step87CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step87ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step87CompleteRelocation_move0_retire : s2Step87CompleteRelocationMove0Borrowed.retireSet {789}=s2Step87CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step87CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step87CompleteRelocationMove0Borrowed,s2Step87ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step87CompleteRelocation_move1_owned : 793∈s2Step87CompleteRelocationMove0After.live := by norm_num [s2Step87CompleteRelocationMove0After,arenaWires]

private theorem s2Step87CompleteRelocation_move1_reserve : s2Step87CompleteRelocationMove0After.reserve {737}=some s2Step87CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step87CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step87CompleteRelocation_move1_retire : s2Step87CompleteRelocationMove1Borrowed.retireSet {793}=s2Step87EarlyControlArena := by
  unfold Arena.retireSet s2Step87EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step87CompleteRelocationMove1Borrowed,s2Step87CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step87CompleteRelocation_checked : s2Step87ExitGvAfter.checkRepack [(789,736),(793,737)]=some s2Step87EarlyControlArena := by
  have tail2 : s2Step87EarlyControlArena.checkRepack []=some s2Step87EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step87CompleteRelocationMove0After s2Step87CompleteRelocationMove1Borrowed s2Step87EarlyControlArena s2Step87EarlyControlArena 793 737 []
    s2Step87CompleteRelocation_move1_owned s2Step87CompleteRelocation_move1_reserve s2Step87CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step87ExitGvAfter s2Step87CompleteRelocationMove0Borrowed s2Step87CompleteRelocationMove0After s2Step87EarlyControlArena 789 736 [(793,737)]
    s2Step87CompleteRelocation_move0_owned s2Step87CompleteRelocation_move0_reserve s2Step87CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step87Complete_repack : s2Step87ExitGvAfter.checkRepack s2Step87CompleteMoves=some s2Step87EarlyControlArena := by
  simpa only [s2Step87CompleteMoves] using s2Step87CompleteRelocation_checked

private theorem s2Step87EarlyControl_branchOwned : ([844] : List Wire).toFinset⊆s2Step87EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step87EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87EarlyControl_branch : compileHmrBranchRetirement s2Step87EarlyControlSigmaArena 844=some s2Step87EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step87EarlyControl_branchOwned
  · ext q
    simp [s2Step87EarlyControlOutputArena,s2Step87EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step87EarlyControl_classEqualityBorrow : s2Step87EarlyControlPositiveArena.checkBorrow (([779, 781] : List Wire).length-1) s2Step87EarlyControlLog.classWork=some s2Step87EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step87EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step87EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step87EarlyControlEqualityArena,s2Step87EarlyControlPositiveArena,s2Step87EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step87EarlyControl_classEqualityOwned : ([779, 781] : List Wire).toFinset⊆s2Step87EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step87EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87EarlyControl_classEquality : compileHmrEqualityLog s2Step87EarlyControlPositiveArena [779, 781] 0 s2Step87EarlyControlLog.classWork=some (s2Step87EarlyControlEqualityArena,s2Step87EarlyControlLog.classWork,s2Step87EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step87EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step87EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step87EarlyControl_classOwned : ([777, 836, 779] : List Wire).toFinset⊆s2Step87EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step87EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87EarlyControl_positiveBorrow : s2Step87EarlyControlZeroArena.checkBorrow (1) s2Step87EarlyControlLog.positiveWork=some s2Step87EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step87EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step87EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step87EarlyControlPositiveArena,s2Step87EarlyControlZeroArena,s2Step87EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step87EarlyControl_class : compileHmrSourceClassLog s2Step87EarlyControlZeroArena false 777 s2Step87EarlyControlZeroPlan.top 0 779 s2Step87EarlyControlLog.positiveWork s2Step87EarlyControlLog.classWork=some s2Step87EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step87EarlyControlClassPlan s2Step87EarlyControlZeroArena false 777 s2Step87EarlyControlZeroPlan.top 0 779
  constructor
  · decide +kernel
  · exact s2Step87EarlyControl_classOwned
  · exact s2Step87EarlyControl_positiveBorrow
  · exact s2Step87EarlyControl_classEquality

private theorem s2Step87EarlyControl_entryRecordOwned : ([844, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).toFinset⊆s2Step87EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step87EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87EarlyControl_entrySigmaOwned : ([779, 254] : List Wire).toFinset⊆s2Step87EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step87EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87EarlyControl_fitBorrow : s2Step87EarlyControlFlagArena.checkBorrow ((31-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).length)) s2Step87EarlyControlLog.recordFresh=some s2Step87EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step87EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step87EarlyControlFlagArena (fun q => (0≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step87EarlyControlFittedArena,s2Step87EarlyControlFlagArena,s2Step87EarlyControlLog,arenaWires]

private theorem s2Step87EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).toFinset⊆s2Step87EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step87EarlyControlFlagArena (fun q => (0≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87EarlyControl_fit : compileHmrRecordGrowLog s2Step87EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 31 s2Step87EarlyControlLog.recordFresh=some s2Step87EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step87EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step87EarlyControl_fitBorrow

private theorem s2Step87EarlyControl_flagsBorrow : s2Step87EarlyControlEqualityArena.checkBorrow (6) s2Step87EarlyControlLog.flagWork=some s2Step87EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step87EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step87EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step87EarlyControlFlagArena,s2Step87EarlyControlEqualityArena,s2Step87EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step87EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step87EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step87EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87EarlyControl_flags : compileHmrFlagsLog s2Step87EarlyControlClassPlan.equalityArena s2Step87EarlyControlClassPlan.equality.top 253 252 251 s2Step87EarlyControlLog.flagWork=some s2Step87EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step87EarlyControl_flagsOwned⟩
  · exact s2Step87EarlyControl_flagsBorrow

private theorem s2Step87EarlyControl_historyBorrow : s2Step87EarlyControlArena.checkBorrow ((31-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).length)) s2Step87EarlyControlLog.recordFresh=some s2Step87EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step87EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step87EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step87EarlyControlHistoryArena,s2Step87EarlyControlArena,s2Step87EarlyControlLog,arenaWires]

private theorem s2Step87EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).toFinset⊆s2Step87EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step87EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87EarlyControl_history : compileHmrRecordGrowLog s2Step87EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 31 s2Step87EarlyControlLog.recordFresh=some s2Step87EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step87EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step87EarlyControl_historyBorrow

private theorem s2Step87EarlyControl_sigmaOwned : ([254, 779] : List Wire).toFinset⊆s2Step87EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step87EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87EarlyControl_sigmaReleaseOwned : ([779] : List Wire).toFinset⊆s2Step87EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step87EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87EarlyControl_sigmaRelease : s2Step87EarlyControlHistoryArena.release {779} (fun _ => false)=some s2Step87EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step87EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step87EarlyControlSigmaArena,s2Step87EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step87EarlyControl_sigma : compileHmrSigmaDropLog s2Step87EarlyControlHistoryArena false 0 0 254 779 []=some s2Step87EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step87EarlyControl_sigmaOwned⟩
  · exact s2Step87EarlyControl_sigmaRelease

private theorem s2Step87EarlyControl_zeroBorrow : s2Step87EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step87EarlyControlLog.zeroWork=some s2Step87EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step87EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step87EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step87EarlyControlZeroArena,s2Step87EarlyControlArena,s2Step87EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step87EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step87EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step87EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87EarlyControl_zero : compileHmrEqualityLog s2Step87EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step87EarlyControlLog.zeroWork=some (s2Step87EarlyControlZeroArena,s2Step87EarlyControlLog.zeroWork,s2Step87EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step87EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step87EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step87EarlyControl_logged : s2Step87EarlyControlPlan.Logged s2Step87EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 779 254 253 252 251 844 31 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step87EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step87EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step87EarlyControl_zero
  · exact s2Step87EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step87EarlyControl_flags
  · exact s2Step87EarlyControl_fit
  · exact s2Step87EarlyControl_history
  · exact s2Step87EarlyControl_sigma
  · exact s2Step87EarlyControl_branch

private theorem s2Step87EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step87EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 779 254 253 252 251 844 31 s2Step87EarlyControlLog=some s2Step87EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step87EarlyControlPlan s2Step87EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 779 254 253 252 251 844 31 s2Step87EarlyControl_logged

private def s2Step87EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩

private def s2Step87EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788],770⟩

private def s2Step87EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223],769⟩

private def s2Step87EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩

private def s2Step87FrontBank : WindowBank := ⟨s2Step87EntryFRow,s2Step87EntryGRow,s2Step87EntryFvRow,s2Step87EntryGvRow⟩

private def s2Step87Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 816, 768]

private def s2Step87Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785, 836, 781, 769]

private def s2Step87Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 770]

private def s2Step87Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 839, 771]

private theorem s2Step87Counter_apart : Disjoint s2Step87HeadFvAfter.live s2Step87CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step87HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87Counter_borrowed : s2Step87HeadFvAfter.checkBorrow 4 s2Step87CounterWork=some s2Step87CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step87HeadFvAfter s2Step87CounterDuring s2Step87CounterWork.toFinset s2Step87Counter_bounded s2Step87Counter_apart rfl

private theorem s2Step87Counter_owned : (779::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step87HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step87HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87Counter_checked : compileHmrCounterStepLog s2Step87HeadFvAfter true 779 [772, 773, 774, 775, 776, 777] s2Step87CounterWork=some s2Step87CounterDuring := by
  have owned : ∀q∈779::[772, 773, 774, 775, 776, 777],q∈s2Step87HeadFvAfter.live := fun q hq => s2Step87Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step87Counter_borrowed

private def s2Step87EntryFAfter : Arena := s2Step87EntryFBefore

private theorem s2Step87EntryBank_incomingDistinct : ([s2Step87EntryFRow,s2Step87EntryGRow,s2Step87EntryFvRow,s2Step87EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87EntryF_Incoming : rowsOwned s2Step87EntryFBefore [s2Step87EntryFRow,s2Step87EntryGRow,s2Step87EntryFvRow,s2Step87EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step87EntryFRow,s2Step87EntryGRow,s2Step87EntryFvRow,s2Step87EntryGvRow] 0 s2Step87EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step87EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step87EntryBank_outgoingOwned : rowsOwned s2Step87EntryGvAfter [s2Step87EntryFOut,s2Step87EntryGOut,s2Step87EntryFvOut,s2Step87EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step87EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step87EntryF_Outgoing : rowsOwned s2Step87EntryGvAfter [s2Step87EntryFOut,s2Step87EntryGOut,s2Step87EntryFvOut,s2Step87EntryGvOut] :=
  hmrRows_owned_drop s2Step87EntryGvAfter [s2Step87EntryFOut,s2Step87EntryGOut,s2Step87EntryFvOut,s2Step87EntryGvOut] 0 s2Step87EntryBank_outgoingOwned

private theorem s2Step87EntryF_distinct : (s2Step87EntryFRow.sign::s2Step87EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87EntryF_owned : (s2Step87EntryFRow.sign::s2Step87EntryFRow.payload).toFinset⊆s2Step87EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step87EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87EntryF_reserved : s2Step87EntryFBefore.reserve s2Step87EntryFFresh.toFinset=some s2Step87EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step87EntryFFresh,arenaWires]
  · norm_num [s2Step87EntryFBefore,s2Step87EntryFFresh,arenaWires]
  · simp only [s2Step87EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step87EntryF_checked : planRowResizeLog s2Step87EntryFBefore s2Step87EntryFRow 226 s2Step87EntryFFresh=
    some (s2Step87EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩,growRow 768 s2Step87EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step87EntryFBefore s2Step87EntryFAfter s2Step87EntryFRow 226 s2Step87EntryFFresh
    s2Step87EntryF_distinct s2Step87EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step87EntryF_reserved
  have rowEq : WindowRow.mk (s2Step87EntryFRow.payload++s2Step87EntryFFresh) s2Step87EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step87EntryFvAfter : Arena := s2Step87EntryGAfter

private def s2Step87EntryFvBefore : Arena := s2Step87EntryGAfter

private theorem s2Step87EntryFv_Incoming : rowsOwned s2Step87EntryFvBefore [s2Step87EntryFvRow,s2Step87EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step87EntryFRow,s2Step87EntryGRow,s2Step87EntryFvRow,s2Step87EntryGvRow] 2 s2Step87EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step87EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step87EntryFv_Outgoing : rowsOwned s2Step87EntryGvAfter [s2Step87EntryFvOut,s2Step87EntryGvOut] :=
  hmrRows_owned_drop s2Step87EntryGvAfter [s2Step87EntryFOut,s2Step87EntryGOut,s2Step87EntryFvOut,s2Step87EntryGvOut] 2 s2Step87EntryBank_outgoingOwned

private theorem s2Step87EntryFv_distinct : (s2Step87EntryFvRow.sign::s2Step87EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87EntryFv_owned : (s2Step87EntryFvRow.sign::s2Step87EntryFvRow.payload).toFinset⊆s2Step87EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step87EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87EntryFv_reserved : s2Step87EntryFvBefore.reserve s2Step87EntryFvFresh.toFinset=some s2Step87EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step87EntryFvFresh,arenaWires]
  · norm_num [s2Step87EntryFvBefore,s2Step87EntryGAfter,s2Step87EntryFvFresh,arenaWires]
  · simp only [s2Step87EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step87EntryFv_checked : planRowResizeLog s2Step87EntryFvBefore s2Step87EntryFvRow 57 s2Step87EntryFvFresh=
    some (s2Step87EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788],770⟩,growRow 770 s2Step87EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step87EntryFvBefore s2Step87EntryFvAfter s2Step87EntryFvRow 57 s2Step87EntryFvFresh
    s2Step87EntryFv_distinct s2Step87EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step87EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step87EntryFvRow.payload++s2Step87EntryFvFresh) s2Step87EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step87EntryGBefore : Arena := s2Step87EntryFBefore

private theorem s2Step87EntryG_Incoming : rowsOwned s2Step87EntryGBefore [s2Step87EntryGRow,s2Step87EntryFvRow,s2Step87EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step87EntryFRow,s2Step87EntryGRow,s2Step87EntryFvRow,s2Step87EntryGvRow] 1 s2Step87EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step87EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step87EntryG_Outgoing : rowsOwned s2Step87EntryGvAfter [s2Step87EntryGOut,s2Step87EntryFvOut,s2Step87EntryGvOut] :=
  hmrRows_owned_drop s2Step87EntryGvAfter [s2Step87EntryFOut,s2Step87EntryGOut,s2Step87EntryFvOut,s2Step87EntryGvOut] 1 s2Step87EntryBank_outgoingOwned

private theorem s2Step87EntryG_distinct : (s2Step87EntryGRow.sign::s2Step87EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87EntryG_owned : (s2Step87EntryGRow.sign::s2Step87EntryGRow.payload).toFinset⊆s2Step87EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step87EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87EntryG_reserved : s2Step87EntryGBefore.reserve s2Step87EntryGFresh.toFinset=some s2Step87EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step87EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step87EntryGBefore,s2Step87EntryFBefore,s2Step87EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step87EntryGAfter,s2Step87EntryGBefore,s2Step87EntryFBefore,s2Step87EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step87EntryG_checked : planRowResizeLog s2Step87EntryGBefore s2Step87EntryGRow 226 s2Step87EntryGFresh=
    some (s2Step87EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785, 836],769⟩,growRow 769 s2Step87EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step87EntryGBefore s2Step87EntryGAfter s2Step87EntryGRow 226 s2Step87EntryGFresh
    s2Step87EntryG_distinct s2Step87EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step87EntryG_reserved
  have rowEq : WindowRow.mk (s2Step87EntryGRow.payload++s2Step87EntryGFresh) s2Step87EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785, 836],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step87EntryGvBefore : Arena := s2Step87EntryGAfter

private theorem s2Step87EntryGv_Incoming : rowsOwned s2Step87EntryGvBefore [s2Step87EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step87EntryFRow,s2Step87EntryGRow,s2Step87EntryFvRow,s2Step87EntryGvRow] 3 s2Step87EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step87EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step87EntryGv_Outgoing : rowsOwned s2Step87EntryGvAfter [s2Step87EntryGvOut] :=
  hmrRows_owned_drop s2Step87EntryGvAfter [s2Step87EntryFOut,s2Step87EntryGOut,s2Step87EntryFvOut,s2Step87EntryGvOut] 3 s2Step87EntryBank_outgoingOwned

private theorem s2Step87EntryGv_distinct : (s2Step87EntryGvRow.sign::s2Step87EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87EntryGv_owned : (s2Step87EntryGvRow.sign::s2Step87EntryGvRow.payload).toFinset⊆s2Step87EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step87EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87EntryGv_reserved : s2Step87EntryGvBefore.reserve s2Step87EntryGvFresh.toFinset=some s2Step87EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step87EntryGvFresh,arenaWires]
  · norm_num [s2Step87EntryGvBefore,s2Step87EntryGAfter,s2Step87EntryGvFresh,arenaWires]
  · simp only [s2Step87EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step87EntryGv_checked : planRowResizeLog s2Step87EntryGvBefore s2Step87EntryGvRow 57 s2Step87EntryGvFresh=
    some (s2Step87EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩,growRow 771 s2Step87EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step87EntryGvBefore s2Step87EntryGvAfter s2Step87EntryGvRow 57 s2Step87EntryGvFresh
    s2Step87EntryGv_distinct s2Step87EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step87EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step87EntryGvRow.payload++s2Step87EntryGvFresh) s2Step87EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step87EntryBank_rows : planWindowRowsLog s2Step87EntryFBefore [(s2Step87EntryFRow,226),(s2Step87EntryGRow,226),(s2Step87EntryFvRow,57),(s2Step87EntryGvRow,57)] [s2Step87EntryFFresh,s2Step87EntryGFresh,s2Step87EntryFvFresh,s2Step87EntryGvFresh]=
    some (s2Step87EntryGvAfter,[s2Step87EntryFOut,s2Step87EntryGOut,s2Step87EntryFvOut,s2Step87EntryGvOut],(growRow 768 s2Step87EntryFFresh ++ (growRow 769 s2Step87EntryGFresh ++ (growRow 770 s2Step87EntryFvFresh ++ (growRow 771 s2Step87EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step87EntryGvAfter [] []=some (s2Step87EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step87EntryGvBefore s2Step87EntryGvAfter s2Step87EntryGvAfter
    s2Step87EntryGvRow s2Step87EntryGvOut 57 s2Step87EntryGvFresh [] [] []
    (growRow 771 s2Step87EntryGvFresh) ([]) s2Step87EntryGv_Incoming s2Step87EntryGv_checked h4 s2Step87EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step87EntryFvBefore s2Step87EntryFvAfter s2Step87EntryGvAfter
    s2Step87EntryFvRow s2Step87EntryFvOut 57 s2Step87EntryFvFresh [(s2Step87EntryGvRow,57)] [s2Step87EntryGvFresh] [s2Step87EntryGvOut]
    (growRow 770 s2Step87EntryFvFresh) ((growRow 771 s2Step87EntryGvFresh ++ [])) s2Step87EntryFv_Incoming s2Step87EntryFv_checked h3 s2Step87EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step87EntryGBefore s2Step87EntryGAfter s2Step87EntryGvAfter
    s2Step87EntryGRow s2Step87EntryGOut 226 s2Step87EntryGFresh [(s2Step87EntryFvRow,57),(s2Step87EntryGvRow,57)] [s2Step87EntryFvFresh,s2Step87EntryGvFresh] [s2Step87EntryFvOut,s2Step87EntryGvOut]
    (growRow 769 s2Step87EntryGFresh) ((growRow 770 s2Step87EntryFvFresh ++ (growRow 771 s2Step87EntryGvFresh ++ []))) s2Step87EntryG_Incoming s2Step87EntryG_checked h2 s2Step87EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step87EntryFBefore s2Step87EntryFAfter s2Step87EntryGvAfter
    s2Step87EntryFRow s2Step87EntryFOut 226 s2Step87EntryFFresh [(s2Step87EntryGRow,226),(s2Step87EntryFvRow,57),(s2Step87EntryGvRow,57)] [s2Step87EntryGFresh,s2Step87EntryFvFresh,s2Step87EntryGvFresh] [s2Step87EntryGOut,s2Step87EntryFvOut,s2Step87EntryGvOut]
    (growRow 768 s2Step87EntryFFresh) ((growRow 769 s2Step87EntryGFresh ++ (growRow 770 s2Step87EntryFvFresh ++ (growRow 771 s2Step87EntryGvFresh ++ [])))) s2Step87EntryF_Incoming s2Step87EntryF_checked h1 s2Step87EntryF_Outgoing
  exact h0

private theorem s2Step87EntryBank_checked : compileHmrBankResizeLog .entry s2Step87EntryFBefore ⟨s2Step87EntryFRow,s2Step87EntryGRow,s2Step87EntryFvRow,s2Step87EntryGvRow⟩ ⟨226,226,57,57⟩ [s2Step87EntryFFresh,s2Step87EntryGFresh,s2Step87EntryFvFresh,s2Step87EntryGvFresh]=
    some (s2Step87EntryGvAfter,⟨s2Step87EntryFOut,s2Step87EntryGOut,s2Step87EntryFvOut,s2Step87EntryGvOut⟩,(growRow 768 s2Step87EntryFFresh ++ (growRow 769 s2Step87EntryGFresh ++ (growRow 770 s2Step87EntryFvFresh ++ (growRow 771 s2Step87EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step87EntryBank_rows]
  rfl

private def s2Step87ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<736) ∨ (738≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87ExitFBefore : Arena := s2Step87ExitGAfter

private def s2Step87ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 816],768⟩

private def s2Step87ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step87ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785, 836, 781],769⟩

private def s2Step87ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 839],771⟩

private theorem s2Step87ExitBank_incomingDistinct : ([s2Step87ExitGRow,s2Step87ExitFRow,s2Step87ExitFvRow,s2Step87ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87ExitF_Incoming : rowsOwned s2Step87ExitFBefore [s2Step87ExitFRow,s2Step87ExitFvRow,s2Step87ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step87ExitGRow,s2Step87ExitFRow,s2Step87ExitFvRow,s2Step87ExitGvRow] 1 s2Step87ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step87ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step87ExitBank_outgoingOwned : rowsOwned s2Step87ExitGvAfter [s2Step87ExitGOut,s2Step87ExitFOut,s2Step87ExitFvOut,s2Step87ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step87ExitGvAfter (fun q => (0≤q ∧ q<736) ∨ (738≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step87ExitF_Outgoing : rowsOwned s2Step87ExitGvAfter [s2Step87ExitFOut,s2Step87ExitFvOut,s2Step87ExitGvOut] :=
  hmrRows_owned_drop s2Step87ExitGvAfter [s2Step87ExitGOut,s2Step87ExitFOut,s2Step87ExitFvOut,s2Step87ExitGvOut] 1 s2Step87ExitBank_outgoingOwned

private theorem s2Step87ExitF_distinct : (s2Step87ExitFRow.sign::s2Step87ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87ExitF_owned : (s2Step87ExitFRow.sign::s2Step87ExitFRow.payload).toFinset⊆s2Step87ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step87ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87ExitF_retired : s2Step87ExitFBefore.retireSet s2Step87ExitFExtra.toFinset=s2Step87ExitFAfter := by
  unfold Arena.retireSet s2Step87ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step87ExitFBefore,s2Step87ExitGAfter,s2Step87ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step87ExitF_checked : planRowResizeLog s2Step87ExitFBefore s2Step87ExitFRow 224 []=
    some (s2Step87ExitFAfter,s2Step87ExitFOut,shrinkRow 768 s2Step87ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step87ExitFBefore s2Step87ExitFRow 224 s2Step87ExitF_distinct s2Step87ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step87ExitFRow.payload.take 224) s2Step87ExitFRow.sign=s2Step87ExitFOut := by decide +kernel
  have hi : s2Step87ExitFRow.payload.drop 224=s2Step87ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step87ExitF_retired] at result
  exact result

private def s2Step87ExitFvAfter : Arena := s2Step87ExitFAfter

private def s2Step87ExitFvBefore : Arena := s2Step87ExitFAfter

private theorem s2Step87ExitFv_Incoming : rowsOwned s2Step87ExitFvBefore [s2Step87ExitFvRow,s2Step87ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step87ExitGRow,s2Step87ExitFRow,s2Step87ExitFvRow,s2Step87ExitGvRow] 2 s2Step87ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step87ExitFvBefore (fun q => (0≤q ∧ q<736) ∨ (738≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step87ExitFv_Outgoing : rowsOwned s2Step87ExitGvAfter [s2Step87ExitFvOut,s2Step87ExitGvOut] :=
  hmrRows_owned_drop s2Step87ExitGvAfter [s2Step87ExitGOut,s2Step87ExitFOut,s2Step87ExitFvOut,s2Step87ExitGvOut] 2 s2Step87ExitBank_outgoingOwned

private theorem s2Step87ExitFv_distinct : (s2Step87ExitFvRow.sign::s2Step87ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87ExitFv_owned : (s2Step87ExitFvRow.sign::s2Step87ExitFvRow.payload).toFinset⊆s2Step87ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step87ExitFvBefore (fun q => (0≤q ∧ q<736) ∨ (738≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87ExitFv_reserved : s2Step87ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step87ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step87ExitFv_checked : planRowResizeLog s2Step87ExitFvBefore s2Step87ExitFvRow 58 []=
    some (s2Step87ExitFvAfter,s2Step87ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step87ExitFvBefore s2Step87ExitFvAfter s2Step87ExitFvRow 58 []
    s2Step87ExitFv_distinct s2Step87ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step87ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step87ExitFvRow.payload++[]) s2Step87ExitFvRow.sign=s2Step87ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step87ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private theorem s2Step87ExitG_Incoming : rowsOwned s2Step87ExitGBefore [s2Step87ExitGRow,s2Step87ExitFRow,s2Step87ExitFvRow,s2Step87ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step87ExitGRow,s2Step87ExitFRow,s2Step87ExitFvRow,s2Step87ExitGvRow] 0 s2Step87ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step87ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step87ExitG_Outgoing : rowsOwned s2Step87ExitGvAfter [s2Step87ExitGOut,s2Step87ExitFOut,s2Step87ExitFvOut,s2Step87ExitGvOut] :=
  hmrRows_owned_drop s2Step87ExitGvAfter [s2Step87ExitGOut,s2Step87ExitFOut,s2Step87ExitFvOut,s2Step87ExitGvOut] 0 s2Step87ExitBank_outgoingOwned

private theorem s2Step87ExitG_distinct : (s2Step87ExitGRow.sign::s2Step87ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87ExitG_owned : (s2Step87ExitGRow.sign::s2Step87ExitGRow.payload).toFinset⊆s2Step87ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step87ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87ExitG_retired : s2Step87ExitGBefore.retireSet s2Step87ExitGExtra.toFinset=s2Step87ExitGAfter := by
  unfold Arena.retireSet s2Step87ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step87ExitGBefore,s2Step87ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step87ExitG_checked : planRowResizeLog s2Step87ExitGBefore s2Step87ExitGRow 225 []=
    some (s2Step87ExitGAfter,s2Step87ExitGOut,shrinkRow 769 s2Step87ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step87ExitGBefore s2Step87ExitGRow 225 s2Step87ExitG_distinct s2Step87ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step87ExitGRow.payload.take 225) s2Step87ExitGRow.sign=s2Step87ExitGOut := by decide +kernel
  have hi : s2Step87ExitGRow.payload.drop 225=s2Step87ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step87ExitG_retired] at result
  exact result

private def s2Step87ExitGvBefore : Arena := s2Step87ExitFAfter

private theorem s2Step87ExitGv_Incoming : rowsOwned s2Step87ExitGvBefore [s2Step87ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step87ExitGRow,s2Step87ExitFRow,s2Step87ExitFvRow,s2Step87ExitGvRow] 3 s2Step87ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step87ExitGvBefore (fun q => (0≤q ∧ q<736) ∨ (738≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step87ExitGv_Outgoing : rowsOwned s2Step87ExitGvAfter [s2Step87ExitGvOut] :=
  hmrRows_owned_drop s2Step87ExitGvAfter [s2Step87ExitGOut,s2Step87ExitFOut,s2Step87ExitFvOut,s2Step87ExitGvOut] 3 s2Step87ExitBank_outgoingOwned

private theorem s2Step87ExitGv_distinct : (s2Step87ExitGvRow.sign::s2Step87ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87ExitGv_owned : (s2Step87ExitGvRow.sign::s2Step87ExitGvRow.payload).toFinset⊆s2Step87ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step87ExitGvBefore (fun q => (0≤q ∧ q<736) ∨ (738≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87ExitGv_retired : s2Step87ExitGvBefore.retireSet s2Step87ExitGvExtra.toFinset=s2Step87ExitGvAfter := by
  unfold Arena.retireSet s2Step87ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step87ExitGvBefore,s2Step87ExitFAfter,s2Step87ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step87ExitGv_checked : planRowResizeLog s2Step87ExitGvBefore s2Step87ExitGvRow 57 []=
    some (s2Step87ExitGvAfter,s2Step87ExitGvOut,shrinkRow 771 s2Step87ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step87ExitGvBefore s2Step87ExitGvRow 57 s2Step87ExitGv_distinct s2Step87ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step87ExitGvRow.payload.take 57) s2Step87ExitGvRow.sign=s2Step87ExitGvOut := by decide +kernel
  have hi : s2Step87ExitGvRow.payload.drop 57=s2Step87ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step87ExitGv_retired] at result
  exact result

private theorem s2Step87ExitBank_rows : planWindowRowsLog s2Step87ExitGBefore [(s2Step87ExitGRow,225),(s2Step87ExitFRow,224),(s2Step87ExitFvRow,58),(s2Step87ExitGvRow,57)] [[],[],[],[]]=
    some (s2Step87ExitGvAfter,[s2Step87ExitGOut,s2Step87ExitFOut,s2Step87ExitFvOut,s2Step87ExitGvOut],(shrinkRow 769 s2Step87ExitGExtra ++ (shrinkRow 768 s2Step87ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step87ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step87ExitGvAfter [] []=some (s2Step87ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step87ExitGvBefore s2Step87ExitGvAfter s2Step87ExitGvAfter
    s2Step87ExitGvRow s2Step87ExitGvOut 57 [] [] [] []
    (shrinkRow 771 s2Step87ExitGvExtra) ([]) s2Step87ExitGv_Incoming s2Step87ExitGv_checked h4 s2Step87ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step87ExitFvBefore s2Step87ExitFvAfter s2Step87ExitGvAfter
    s2Step87ExitFvRow s2Step87ExitFvOut 58 [] [(s2Step87ExitGvRow,57)] [[]] [s2Step87ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step87ExitGvExtra ++ [])) s2Step87ExitFv_Incoming s2Step87ExitFv_checked h3 s2Step87ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step87ExitFBefore s2Step87ExitFAfter s2Step87ExitGvAfter
    s2Step87ExitFRow s2Step87ExitFOut 224 [] [(s2Step87ExitFvRow,58),(s2Step87ExitGvRow,57)] [[],[]] [s2Step87ExitFvOut,s2Step87ExitGvOut]
    (shrinkRow 768 s2Step87ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step87ExitGvExtra ++ []))) s2Step87ExitF_Incoming s2Step87ExitF_checked h2 s2Step87ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step87ExitGBefore s2Step87ExitGAfter s2Step87ExitGvAfter
    s2Step87ExitGRow s2Step87ExitGOut 225 [] [(s2Step87ExitFRow,224),(s2Step87ExitFvRow,58),(s2Step87ExitGvRow,57)] [[],[],[]] [s2Step87ExitFOut,s2Step87ExitFvOut,s2Step87ExitGvOut]
    (shrinkRow 769 s2Step87ExitGExtra) ((shrinkRow 768 s2Step87ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step87ExitGvExtra ++ [])))) s2Step87ExitG_Incoming s2Step87ExitG_checked h1 s2Step87ExitG_Outgoing
  exact h0

private theorem s2Step87ExitBank_checked : compileHmrBankResizeLog .exit s2Step87ExitGBefore ⟨s2Step87ExitFRow,s2Step87ExitGRow,s2Step87ExitFvRow,s2Step87ExitGvRow⟩ ⟨224,225,58,57⟩ [[],[],[],[]]=
    some (s2Step87ExitGvAfter,⟨s2Step87ExitFOut,s2Step87ExitGOut,s2Step87ExitFvOut,s2Step87ExitGvOut⟩,(shrinkRow 769 s2Step87ExitGExtra ++ (shrinkRow 768 s2Step87ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step87ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step87ExitBank_rows]
  rfl

private theorem s2Step87Add0_apart : Disjoint s2Step87Add0Arena.live s2Step87Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step87Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87Add0_card : s2Step87Add0Arena.live.card=871 := by
  decide +kernel

private theorem s2Step87Add0_borrowed : s2Step87Add0Arena.checkBorrow (hmrHybridCount s2Step87Add0Arena s2Step87Add0B.length) s2Step87Add0Work=some s2Step87Add0During := by
  have len : s2Step87Add0Work.length=hmrHybridCount s2Step87Add0Arena s2Step87Add0B.length := by
    rw [hmrHybridCount,s2Step87Add0_card]
    decide +kernel
  have nd : s2Step87Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step87Add0Arena s2Step87Add0During s2Step87Add0Work.toFinset s2Step87Add0_bounded s2Step87Add0_apart rfl

private theorem s2Step87Add0_distinct : (846::844::847::(s2Step87Add0A++s2Step87Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87Add0_owned : (846::844::847::(s2Step87Add0A++s2Step87Add0B)).toFinset⊆s2Step87Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step87Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87Add0_checked : compileHmrHybridCinLog s2Step87Add0Arena 844 846 847 s2Step87Add0A s2Step87Add0B s2Step87Add0Work=some s2Step87Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step87Add0Arena s2Step87Add0During 844 846 847 s2Step87Add0A s2Step87Add0B s2Step87Add0Work
    (by decide +kernel) (by decide +kernel) s2Step87Add0_distinct
    (fun q hq => s2Step87Add0_owned (List.mem_toFinset.mpr hq)) s2Step87Add0_borrowed

private theorem s2Step87Add1_apart : Disjoint s2Step87Add1Arena.live s2Step87Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step87Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87Add1_card : s2Step87Add1Arena.live.card=871 := by
  decide +kernel

private theorem s2Step87Add1_borrowed : s2Step87Add1Arena.checkBorrow (hmrHybridCount s2Step87Add1Arena s2Step87Add1B.length) s2Step87Add1Work=some s2Step87Add1During := by
  have len : s2Step87Add1Work.length=hmrHybridCount s2Step87Add1Arena s2Step87Add1B.length := by
    rw [hmrHybridCount,s2Step87Add1_card]
    decide +kernel
  have nd : s2Step87Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step87Add1Arena s2Step87Add1During s2Step87Add1Work.toFinset s2Step87Add1_bounded s2Step87Add1_apart rfl

private theorem s2Step87Add1_distinct : (846::844::847::(s2Step87Add1A++s2Step87Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87Add1_owned : (846::844::847::(s2Step87Add1A++s2Step87Add1B)).toFinset⊆s2Step87Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step87Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87Add1_checked : compileHmrHybridCinLog s2Step87Add1Arena 844 846 847 s2Step87Add1A s2Step87Add1B s2Step87Add1Work=some s2Step87Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step87Add1Arena s2Step87Add1During 844 846 847 s2Step87Add1A s2Step87Add1B s2Step87Add1Work
    (by decide +kernel) (by decide +kernel) s2Step87Add1_distinct
    (fun q hq => s2Step87Add1_owned (List.mem_toFinset.mpr hq)) s2Step87Add1_borrowed

private theorem s2Step87F4_apart : Disjoint (s2Step87Add0A++s2Step87Add0B).toFinset (s2Step87Add1A++s2Step87Add1B).toFinset := by
  have nd : ((s2Step87Add0A++s2Step87Add0B)++(s2Step87Add1A++s2Step87Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step87F4_carry : s2Step87F4FlagArena.checkBorrow 1 [847]=some s2Step87Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step87F4FlagArena,s2Step87HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step87F4FlagArena,s2Step87HeadFvAfter,s2Step87Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step87F4_distinct : (779::844::846::847::((s2Step87Add0A++s2Step87Add1A)++(s2Step87Add0B++s2Step87Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87F4_flag : s2Step87HeadFvAfter.checkBorrow 1 [846]=some s2Step87F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step87HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step87F4_owned : (779::844::((s2Step87Add0A++s2Step87Add1A)++(s2Step87Add0B++s2Step87Add1B))).toFinset⊆s2Step87HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step87HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87F4_checked : compileHmrHybridF4Log s2Step87HeadFvAfter 779 844 s2Step87Add0A s2Step87Add0B s2Step87Add1A s2Step87Add1B [846] [847] s2Step87Add0Work s2Step87Add1Work=some s2Step87F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step87HeadFvAfter s2Step87F4FlagArena s2Step87Add0Arena s2Step87Add0During s2Step87Add1During 779 844
    s2Step87Add0A s2Step87Add0B s2Step87Add1A s2Step87Add1B [846] [847] s2Step87Add0Work s2Step87Add1Work
    (fun q hq => s2Step87F4_owned (List.mem_toFinset.mpr hq)) s2Step87F4_flag s2Step87F4_carry
    s2Step87F4_distinct s2Step87F4_apart s2Step87Add0_checked s2Step87Add1_checked

private theorem s2Step87Front_branch : s2Step87FrontSigmaArena.checkBorrow 1 [844]=some s2Step87HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step87FrontSigmaArena,s2Step87EntryGvAfter,s2Step87EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step87FrontSigmaArena,s2Step87EntryGvAfter,s2Step87EntryGAfter,s2Step87HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step87Front_entry : HmrFrontEntryValid s2Step87EntryFBefore s2Step87FrontBank 226 57 ⟨224,225,58,57⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step87FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step87EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step87EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step87FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step87Front_sigma : s2Step87EntryGvAfter.checkBorrow 1 [779]=some s2Step87FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step87EntryGvAfter,s2Step87EntryGAfter,arenaWires]
  · rfl

private def s2Step87HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87HeadFBefore : Arena := s2Step87HeadGAfter

private def s2Step87HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737],768⟩

private def s2Step87HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788],770⟩

private def s2Step87HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785, 836],769⟩

private def s2Step87HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩

private theorem s2Step87HeadBank_incomingDistinct : ([s2Step87HeadGRow,s2Step87HeadFRow,s2Step87HeadGvRow,s2Step87HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87HeadF_Incoming : rowsOwned s2Step87HeadFBefore [s2Step87HeadFRow,s2Step87HeadGvRow,s2Step87HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step87HeadGRow,s2Step87HeadFRow,s2Step87HeadGvRow,s2Step87HeadFvRow] 1 s2Step87HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step87HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step87HeadBank_outgoingOwned : rowsOwned s2Step87HeadFvAfter [s2Step87HeadGOut,s2Step87HeadFOut,s2Step87HeadGvOut,s2Step87HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step87HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step87HeadF_Outgoing : rowsOwned s2Step87HeadFvAfter [s2Step87HeadFOut,s2Step87HeadGvOut,s2Step87HeadFvOut] :=
  hmrRows_owned_drop s2Step87HeadFvAfter [s2Step87HeadGOut,s2Step87HeadFOut,s2Step87HeadGvOut,s2Step87HeadFvOut] 1 s2Step87HeadBank_outgoingOwned

private theorem s2Step87HeadF_distinct : (s2Step87HeadFRow.sign::s2Step87HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87HeadF_owned : (s2Step87HeadFRow.sign::s2Step87HeadFRow.payload).toFinset⊆s2Step87HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step87HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87HeadF_reserved : s2Step87HeadFBefore.reserve s2Step87HeadFFresh.toFinset=some s2Step87HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step87HeadFFresh,arenaWires]
  · norm_num [s2Step87HeadFBefore,s2Step87HeadGAfter,s2Step87HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step87HeadFAfter,s2Step87HeadFBefore,s2Step87HeadGAfter,s2Step87HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step87HeadF_checked : planRowResizeLog s2Step87HeadFBefore s2Step87HeadFRow 227 s2Step87HeadFFresh=
    some (s2Step87HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 816],768⟩,growRow 768 s2Step87HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step87HeadFBefore s2Step87HeadFAfter s2Step87HeadFRow 227 s2Step87HeadFFresh
    s2Step87HeadF_distinct s2Step87HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step87HeadF_reserved
  have rowEq : WindowRow.mk (s2Step87HeadFRow.payload++s2Step87HeadFFresh) s2Step87HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 816],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step87HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step87HeadFvBefore : Arena := s2Step87HeadGvAfter

private theorem s2Step87HeadFv_Incoming : rowsOwned s2Step87HeadFvBefore [s2Step87HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step87HeadGRow,s2Step87HeadFRow,s2Step87HeadGvRow,s2Step87HeadFvRow] 3 s2Step87HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step87HeadFvBefore (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step87HeadFv_Outgoing : rowsOwned s2Step87HeadFvAfter [s2Step87HeadFvOut] :=
  hmrRows_owned_drop s2Step87HeadFvAfter [s2Step87HeadGOut,s2Step87HeadFOut,s2Step87HeadGvOut,s2Step87HeadFvOut] 3 s2Step87HeadBank_outgoingOwned

private theorem s2Step87HeadFv_distinct : (s2Step87HeadFvRow.sign::s2Step87HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87HeadFv_owned : (s2Step87HeadFvRow.sign::s2Step87HeadFvRow.payload).toFinset⊆s2Step87HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step87HeadFvBefore (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87HeadFv_reserved : s2Step87HeadFvBefore.reserve s2Step87HeadFvFresh.toFinset=some s2Step87HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step87HeadFvFresh,arenaWires]
  · norm_num [s2Step87HeadFvBefore,s2Step87HeadGvAfter,s2Step87HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step87HeadFvAfter,s2Step87HeadFvBefore,s2Step87HeadGvAfter,s2Step87HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step87HeadFv_checked : planRowResizeLog s2Step87HeadFvBefore s2Step87HeadFvRow 58 s2Step87HeadFvFresh=
    some (s2Step87HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩,growRow 770 s2Step87HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step87HeadFvBefore s2Step87HeadFvAfter s2Step87HeadFvRow 58 s2Step87HeadFvFresh
    s2Step87HeadFv_distinct s2Step87HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step87HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step87HeadFvRow.payload++s2Step87HeadFvFresh) s2Step87HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step87HeadG_Incoming : rowsOwned s2Step87HeadGBefore [s2Step87HeadGRow,s2Step87HeadFRow,s2Step87HeadGvRow,s2Step87HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step87HeadGRow,s2Step87HeadFRow,s2Step87HeadGvRow,s2Step87HeadFvRow] 0 s2Step87HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step87HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step87HeadG_Outgoing : rowsOwned s2Step87HeadFvAfter [s2Step87HeadGOut,s2Step87HeadFOut,s2Step87HeadGvOut,s2Step87HeadFvOut] :=
  hmrRows_owned_drop s2Step87HeadFvAfter [s2Step87HeadGOut,s2Step87HeadFOut,s2Step87HeadGvOut,s2Step87HeadFvOut] 0 s2Step87HeadBank_outgoingOwned

private theorem s2Step87HeadG_distinct : (s2Step87HeadGRow.sign::s2Step87HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87HeadG_owned : (s2Step87HeadGRow.sign::s2Step87HeadGRow.payload).toFinset⊆s2Step87HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step87HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87HeadG_reserved : s2Step87HeadGBefore.reserve s2Step87HeadGFresh.toFinset=some s2Step87HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step87HeadGFresh,arenaWires]
  · norm_num [s2Step87HeadGBefore,s2Step87HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step87HeadGAfter,s2Step87HeadGBefore,s2Step87HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step87HeadG_checked : planRowResizeLog s2Step87HeadGBefore s2Step87HeadGRow 227 s2Step87HeadGFresh=
    some (s2Step87HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785, 836, 781],769⟩,growRow 769 s2Step87HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step87HeadGBefore s2Step87HeadGAfter s2Step87HeadGRow 227 s2Step87HeadGFresh
    s2Step87HeadG_distinct s2Step87HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step87HeadG_reserved
  have rowEq : WindowRow.mk (s2Step87HeadGRow.payload++s2Step87HeadGFresh) s2Step87HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785, 836, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step87HeadGvBefore : Arena := s2Step87HeadFAfter

private theorem s2Step87HeadGv_Incoming : rowsOwned s2Step87HeadGvBefore [s2Step87HeadGvRow,s2Step87HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step87HeadGRow,s2Step87HeadFRow,s2Step87HeadGvRow,s2Step87HeadFvRow] 2 s2Step87HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step87HeadGvBefore (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step87HeadGv_Outgoing : rowsOwned s2Step87HeadFvAfter [s2Step87HeadGvOut,s2Step87HeadFvOut] :=
  hmrRows_owned_drop s2Step87HeadFvAfter [s2Step87HeadGOut,s2Step87HeadFOut,s2Step87HeadGvOut,s2Step87HeadFvOut] 2 s2Step87HeadBank_outgoingOwned

private theorem s2Step87HeadGv_distinct : (s2Step87HeadGvRow.sign::s2Step87HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step87HeadGv_owned : (s2Step87HeadGvRow.sign::s2Step87HeadGvRow.payload).toFinset⊆s2Step87HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step87HeadGvBefore (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step87HeadGv_reserved : s2Step87HeadGvBefore.reserve s2Step87HeadGvFresh.toFinset=some s2Step87HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step87HeadGvFresh,arenaWires]
  · norm_num [s2Step87HeadGvBefore,s2Step87HeadFAfter,s2Step87HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step87HeadGvAfter,s2Step87HeadGvBefore,s2Step87HeadFAfter,s2Step87HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step87HeadGv_checked : planRowResizeLog s2Step87HeadGvBefore s2Step87HeadGvRow 58 s2Step87HeadGvFresh=
    some (s2Step87HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 839],771⟩,growRow 771 s2Step87HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step87HeadGvBefore s2Step87HeadGvAfter s2Step87HeadGvRow 58 s2Step87HeadGvFresh
    s2Step87HeadGv_distinct s2Step87HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step87HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step87HeadGvRow.payload++s2Step87HeadGvFresh) s2Step87HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 839],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step87HeadBank_rows : planWindowRowsLog s2Step87HeadGBefore [(s2Step87HeadGRow,227),(s2Step87HeadFRow,227),(s2Step87HeadGvRow,58),(s2Step87HeadFvRow,58)] [s2Step87HeadGFresh,s2Step87HeadFFresh,s2Step87HeadGvFresh,s2Step87HeadFvFresh]=
    some (s2Step87HeadFvAfter,[s2Step87HeadGOut,s2Step87HeadFOut,s2Step87HeadGvOut,s2Step87HeadFvOut],(growRow 769 s2Step87HeadGFresh ++ (growRow 768 s2Step87HeadFFresh ++ (growRow 771 s2Step87HeadGvFresh ++ (growRow 770 s2Step87HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step87HeadFvAfter [] []=some (s2Step87HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step87HeadFvBefore s2Step87HeadFvAfter s2Step87HeadFvAfter
    s2Step87HeadFvRow s2Step87HeadFvOut 58 s2Step87HeadFvFresh [] [] []
    (growRow 770 s2Step87HeadFvFresh) ([]) s2Step87HeadFv_Incoming s2Step87HeadFv_checked h4 s2Step87HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step87HeadGvBefore s2Step87HeadGvAfter s2Step87HeadFvAfter
    s2Step87HeadGvRow s2Step87HeadGvOut 58 s2Step87HeadGvFresh [(s2Step87HeadFvRow,58)] [s2Step87HeadFvFresh] [s2Step87HeadFvOut]
    (growRow 771 s2Step87HeadGvFresh) ((growRow 770 s2Step87HeadFvFresh ++ [])) s2Step87HeadGv_Incoming s2Step87HeadGv_checked h3 s2Step87HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step87HeadFBefore s2Step87HeadFAfter s2Step87HeadFvAfter
    s2Step87HeadFRow s2Step87HeadFOut 227 s2Step87HeadFFresh [(s2Step87HeadGvRow,58),(s2Step87HeadFvRow,58)] [s2Step87HeadGvFresh,s2Step87HeadFvFresh] [s2Step87HeadGvOut,s2Step87HeadFvOut]
    (growRow 768 s2Step87HeadFFresh) ((growRow 771 s2Step87HeadGvFresh ++ (growRow 770 s2Step87HeadFvFresh ++ []))) s2Step87HeadF_Incoming s2Step87HeadF_checked h2 s2Step87HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step87HeadGBefore s2Step87HeadGAfter s2Step87HeadFvAfter
    s2Step87HeadGRow s2Step87HeadGOut 227 s2Step87HeadGFresh [(s2Step87HeadFRow,227),(s2Step87HeadGvRow,58),(s2Step87HeadFvRow,58)] [s2Step87HeadFFresh,s2Step87HeadGvFresh,s2Step87HeadFvFresh] [s2Step87HeadFOut,s2Step87HeadGvOut,s2Step87HeadFvOut]
    (growRow 769 s2Step87HeadGFresh) ((growRow 768 s2Step87HeadFFresh ++ (growRow 771 s2Step87HeadGvFresh ++ (growRow 770 s2Step87HeadFvFresh ++ [])))) s2Step87HeadG_Incoming s2Step87HeadG_checked h1 s2Step87HeadG_Outgoing
  exact h0

private theorem s2Step87HeadBank_checked : compileHmrBankResizeLog .headroom s2Step87HeadGBefore ⟨s2Step87HeadFRow,s2Step87HeadGRow,s2Step87HeadFvRow,s2Step87HeadGvRow⟩ ⟨227,227,58,58⟩ [s2Step87HeadGFresh,s2Step87HeadFFresh,s2Step87HeadGvFresh,s2Step87HeadFvFresh]=
    some (s2Step87HeadFvAfter,⟨s2Step87HeadFOut,s2Step87HeadGOut,s2Step87HeadFvOut,s2Step87HeadGvOut⟩,(growRow 769 s2Step87HeadGFresh ++ (growRow 768 s2Step87HeadFFresh ++ (growRow 771 s2Step87HeadGvFresh ++ (growRow 770 s2Step87HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step87HeadBank_rows]
  rfl

private theorem s2Step87Front_checked : compileHmrSourceFrontLog s2Step87EntryFBefore s2Step87FrontBank 226 57 ⟨224,225,58,57⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step87FrontLog=some s2Step87FrontPlan := by
  have pairEq : s2Step87FrontPair=⟨s2Step87HeadFRow,s2Step87HeadGRow,s2Step87HeadFvRow,s2Step87HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step87FrontHead=⟨s2Step87ExitFRow,s2Step87ExitGRow,s2Step87ExitFvRow,s2Step87ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step87Add0A=s2Step87FrontHead.f.wires := by decide +kernel
  have gEq : s2Step87Add0B=s2Step87FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step87Add1A=s2Step87FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step87Add1B=s2Step87FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step87EntryFBefore s2Step87FrontBank 226 57 ⟨224,225,58,57⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step87FrontLog s2Step87FrontPlan
  · exact s2Step87Front_entry
  · exact s2Step87EntryBank_checked
  · exact s2Step87Front_sigma
  · rfl
  · exact s2Step87Front_branch
  · rfl
  · simpa only [s2Step87FrontPlan,pairEq] using s2Step87HeadBank_checked
  · simpa only [s2Step87FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step87F4_checked
  · exact s2Step87Counter_checked
  · rfl
  · simpa only [s2Step87FrontPlan,headEq] using s2Step87ExitBank_checked

private theorem s2Step87Complete_explicit_checked : compileHmrEarlyStepLog s2Step87EntryFBefore s2Step87FrontBank 226 57 ⟨224,225,58,57⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 31 s2Step87CompleteLog=some s2Step87CompletePlan := by
  let Q := s2Step87EarlyControlPlan
  have hq := s2Step87EarlyControl_plan_checked
  have fv1 : s2Step87CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step87CompleteOut.fv.payload[2]?.getD s2Step87CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step87CompleteOut.fv.payload[3]?.getD s2Step87CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step87CompleteOut.fv.payload[4]?.getD s2Step87CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step87EntryFBefore s2Step87EarlyControlArena s2Step87FrontBank 226 57 ⟨224,225,58,57⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 31 s2Step87CompleteLog s2Step87FrontPlan Q
    s2Step87Front_checked s2Step87Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step87Complete_owned s2Step87Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step87EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 779 s2Step87CompleteOut.fv.second (s2Step87CompleteOut.fv.payload[2]?.getD s2Step87CompleteOut.fv.sign) (s2Step87CompleteOut.fv.payload[3]?.getD s2Step87CompleteOut.fv.sign) (s2Step87CompleteOut.fv.payload[4]?.getD s2Step87CompleteOut.fv.sign) 844 31 s2Step87EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep87Arena : Arena := s2Step87EntryFBefore
def s2PrivateStep87Bank : WindowBank := s2Step87FrontBank
def s2PrivateStep87Spec : HmrSourceWalkStepLog := ⟨226,57,⟨224,225,58,57⟩,31,.early s2Step87CompleteLog⟩
def s2PrivateStep87Plan : HmrSourceStepPlan := .early s2Step87CompletePlan
theorem s2PrivateStep87_source : s2PrivateStep87Spec=s2ObservedLogs80[7] := rfl
theorem s2PrivateStep87_checked : compileHmrSourceStepLog s2PrivateStep87Arena s2PrivateStep87Bank
    s2PrivateStep87Spec.fgWidth s2PrivateStep87Spec.vWidth s2PrivateStep87Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875]
    6 498 87 s2PrivateStep87Spec.need none s2PrivateStep87Spec.log=some s2PrivateStep87Plan := by
  change compileHmrSourceStepLog s2Step87EntryFBefore s2Step87FrontBank 226 57 ⟨224,225,58,57⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 6 498 87 31 none (.early s2Step87CompleteLog)=some (.early s2Step87CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 87<498)]
  rw [s2Step87Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
