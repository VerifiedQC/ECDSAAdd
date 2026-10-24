import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep81
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

private def s2Step83CompleteMoves : List (Wire × Wire) := [(781,226)]

private def s2Step83EarlyControlLog : HmrEarlyControlLog := ⟨[781, 836, 845, 844, 842],[816],[846],[847, 849, 851, 867, 873, 874],[]⟩

private def s2Step83FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [778]],[[844], [845], [836], [784]],[[], [], [], []]⟩,[841],[839],[842],[816],[846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923],[842, 816, 846, 847]⟩

private def s2Step83CompleteLog : HmrEarlyStepLog := ⟨s2Step83FrontLog,s2Step83CompleteMoves,s2Step83EarlyControlLog⟩

private def s2Step83ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738],768⟩

private def s2Step83ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩

private def s2Step83ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225],769⟩

private def s2Step83ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778],771⟩

private def s2Step83FrontOut : WindowBank := ⟨s2Step83ExitFOut,s2Step83ExitGOut,s2Step83ExitFvOut,s2Step83ExitGvOut⟩

private def s2Step83CompleteOut : WindowBank := s2Step83FrontOut.repacked s2Step83CompleteMoves

private def s2Step83EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step83EarlyControlPositiveArena,[816],s2Step83EarlyControlEqualityArena,[846],⟨⟨841,false⟩,[⟨⟨816,false⟩,846⟩]⟩⟩

private def s2Step83EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<875)),Finset.filter_subset _ _⟩

private def s2Step83EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<875)),Finset.filter_subset _ _⟩

private def s2Step83EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,781⟩,⟨⟨774,false⟩,836⟩,⟨⟨775,false⟩,845⟩,⟨⟨776,false⟩,844⟩,⟨⟨777,false⟩,842⟩]⟩

private def s2Step83EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step83EarlyControlZeroArena,s2Step83EarlyControlZeroPlan,s2Step83EarlyControlClassPlan,s2Step83EarlyControlFlagArena,s2Step83EarlyControlFittedArena,s2Step83EarlyControlHistoryArena,s2Step83EarlyControlSigmaArena,s2Step83EarlyControlOutputArena,s2Step83EarlyControlLog⟩

private def s2Step83CounterWork : List Wire := [842, 816, 846, 847]

private theorem s2Step83Counter_bounded : s2Step83CounterWork.toFinset⊆arenaWires := by norm_num [s2Step83CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step83HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83CounterDuring : Arena := ⟨s2Step83HeadFvAfter.live∪s2Step83CounterWork.toFinset,Finset.union_subset s2Step83HeadFvAfter.bounded s2Step83Counter_bounded⟩

private def s2Step83EntryFFresh : List Wire := []

private def s2Step83EntryFvFresh : List Wire := []

private def s2Step83EntryGFresh : List Wire := []

private def s2Step83EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83EntryGvFresh : List Wire := [778]

private def s2Step83ExitFExtra : List Wire := [845]

private def s2Step83ExitGExtra : List Wire := [226, 844]

private def s2Step83ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<226) ∨ (227≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83ExitGvExtra : List Wire := [836]

private def s2Step83Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83Add0Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step83Add0_bounded : s2Step83Add0Work.toFinset⊆arenaWires := by
  have h : s2Step83Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step83Add0During : Arena := ⟨s2Step83Add0Arena.live∪s2Step83Add0Work.toFinset,Finset.union_subset s2Step83Add0Arena.bounded s2Step83Add0_bounded⟩

private def s2Step83Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83Add1Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923]

private theorem s2Step83Add1_bounded : s2Step83Add1Work.toFinset⊆arenaWires := by
  have h : s2Step83Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step83Add1During : Arena := ⟨s2Step83Add1Arena.live∪s2Step83Add1Work.toFinset,Finset.union_subset s2Step83Add1Arena.bounded s2Step83Add1_bounded⟩

private def s2Step83F4FlagArena : Arena := ⟨s2Step83HeadFvAfter.live∪{842},Finset.union_subset s2Step83HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step83F4Plan : HmrHybridF4Plan := ⟨s2Step83F4FlagArena,[842],s2Step83Add0Arena,[816],s2Step83Add0During,s2Step83Add0Work,s2Step83Add1During,s2Step83Add1Work⟩

private def s2Step83HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 845],768⟩

private def s2Step83HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩

private def s2Step83HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 844],769⟩

private def s2Step83HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 836],771⟩

private def s2Step83FrontHead : WindowBank := ⟨s2Step83HeadFOut,s2Step83HeadGOut,s2Step83HeadFvOut,s2Step83HeadGvOut⟩

private def s2Step83EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738],768⟩

private def s2Step83EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782],770⟩

private def s2Step83EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],769⟩

private def s2Step83EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778],771⟩

private def s2Step83FrontPair : WindowBank := ⟨s2Step83EntryFOut,s2Step83EntryGOut,s2Step83EntryFvOut,s2Step83EntryGvOut⟩

private def s2Step83FrontSigmaArena : Arena := ⟨s2Step83EntryGvAfter.live∪{841},Finset.union_subset s2Step83EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step83HeadFFresh : List Wire := [845]

private def s2Step83HeadFvFresh : List Wire := [784]

private def s2Step83HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83HeadGFresh : List Wire := [844]

private def s2Step83HeadGvFresh : List Wire := [836]

private def s2Step83FrontPlan : HmrSourceFront := ⟨s2Step83EntryGvAfter,s2Step83FrontPair,(growRow 768 s2Step83EntryFFresh ++ (growRow 769 s2Step83EntryGFresh ++ (growRow 770 s2Step83EntryFvFresh ++ (growRow 771 s2Step83EntryGvFresh ++ [])))),s2Step83FrontSigmaArena,[841],s2Step83HeadGBefore,[839],
  s2Step83HeadFvAfter,s2Step83FrontHead,(growRow 769 s2Step83HeadGFresh ++ (growRow 768 s2Step83HeadFFresh ++ (growRow 771 s2Step83HeadGvFresh ++ (growRow 770 s2Step83HeadFvFresh ++ [])))),s2Step83F4Plan,s2Step83CounterDuring,s2Step83CounterWork,s2Step83ExitGvAfter,s2Step83FrontOut,(shrinkRow 769 s2Step83ExitGExtra ++ (shrinkRow 768 s2Step83ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step83ExitGvExtra ++ []))))⟩

private def s2Step83CompletePlan : HmrEarlyStepPlan := ⟨s2Step83FrontPlan,s2Step83EarlyControlArena,s2Step83EarlyControlPlan,s2Step83CompleteMoves⟩

private theorem s2Step83Complete_apart : List.Disjoint (s2Step83CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [841, 839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  have nd : ((s2Step83CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[841, 839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step83Complete_owned : (s2Step83CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step83EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step83EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private def s2Step83CompleteMoveArena : Arena := ⟨s2Step83ExitGvAfter.live∪{226},Finset.union_subset s2Step83ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step83Complete_repack : s2Step83ExitGvAfter.checkRepack s2Step83CompleteMoves=some s2Step83EarlyControlArena := by
  have owned : 781∈s2Step83ExitGvAfter.live := by norm_num [s2Step83ExitGvAfter,arenaWires]
  have reserve : s2Step83ExitGvAfter.reserve {226}=some s2Step83CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step83ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step83CompleteMoveArena.retireSet {781}=s2Step83EarlyControlArena := by
    unfold Arena.retireSet s2Step83EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step83CompleteMoveArena,s2Step83ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step83CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step83CompleteMoveArena.retireSet {781}).checkRepack []=some s2Step83EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step83EarlyControl_branchOwned : ([839] : List Wire).toFinset⊆s2Step83EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step83EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83EarlyControl_branch : compileHmrBranchRetirement s2Step83EarlyControlSigmaArena 839=some s2Step83EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step83EarlyControl_branchOwned
  · ext q
    simp [s2Step83EarlyControlOutputArena,s2Step83EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step83EarlyControl_classEqualityBorrow : s2Step83EarlyControlPositiveArena.checkBorrow (([841, 816] : List Wire).length-1) s2Step83EarlyControlLog.classWork=some s2Step83EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step83EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step83EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step83EarlyControlEqualityArena,s2Step83EarlyControlPositiveArena,s2Step83EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step83EarlyControl_classEqualityOwned : ([841, 816] : List Wire).toFinset⊆s2Step83EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step83EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83EarlyControl_classEquality : compileHmrEqualityLog s2Step83EarlyControlPositiveArena [841, 816] 0 s2Step83EarlyControlLog.classWork=some (s2Step83EarlyControlEqualityArena,s2Step83EarlyControlLog.classWork,s2Step83EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step83EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step83EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step83EarlyControl_classOwned : ([777, 842, 841] : List Wire).toFinset⊆s2Step83EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step83EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83EarlyControl_positiveBorrow : s2Step83EarlyControlZeroArena.checkBorrow (1) s2Step83EarlyControlLog.positiveWork=some s2Step83EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step83EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step83EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step83EarlyControlPositiveArena,s2Step83EarlyControlZeroArena,s2Step83EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step83EarlyControl_class : compileHmrSourceClassLog s2Step83EarlyControlZeroArena false 777 s2Step83EarlyControlZeroPlan.top 0 841 s2Step83EarlyControlLog.positiveWork s2Step83EarlyControlLog.classWork=some s2Step83EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step83EarlyControlClassPlan s2Step83EarlyControlZeroArena false 777 s2Step83EarlyControlZeroPlan.top 0 841
  constructor
  · decide +kernel
  · exact s2Step83EarlyControl_classOwned
  · exact s2Step83EarlyControl_positiveBorrow
  · exact s2Step83EarlyControl_classEquality

private theorem s2Step83EarlyControl_entryRecordOwned : ([839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step83EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step83EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83EarlyControl_entrySigmaOwned : ([841, 254] : List Wire).toFinset⊆s2Step83EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step83EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83EarlyControl_fitBorrow : s2Step83EarlyControlFlagArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step83EarlyControlLog.recordFresh=some s2Step83EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step83EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step83EarlyControlFlagArena (fun q => (0≤q ∧ q<875)) rfl
      decide +kernel
    · ext q
      simp [s2Step83EarlyControlFittedArena,s2Step83EarlyControlFlagArena,s2Step83EarlyControlLog,arenaWires]

private theorem s2Step83EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step83EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step83EarlyControlFlagArena (fun q => (0≤q ∧ q<875)) rfl
  decide +kernel

private theorem s2Step83EarlyControl_fit : compileHmrRecordGrowLog s2Step83EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step83EarlyControlLog.recordFresh=some s2Step83EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step83EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step83EarlyControl_fitBorrow

private theorem s2Step83EarlyControl_flagsBorrow : s2Step83EarlyControlEqualityArena.checkBorrow (6) s2Step83EarlyControlLog.flagWork=some s2Step83EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step83EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step83EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step83EarlyControlFlagArena,s2Step83EarlyControlEqualityArena,s2Step83EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step83EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step83EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step83EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83EarlyControl_flags : compileHmrFlagsLog s2Step83EarlyControlClassPlan.equalityArena s2Step83EarlyControlClassPlan.equality.top 253 252 251 s2Step83EarlyControlLog.flagWork=some s2Step83EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step83EarlyControl_flagsOwned⟩
  · exact s2Step83EarlyControl_flagsBorrow

private theorem s2Step83EarlyControl_historyBorrow : s2Step83EarlyControlArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step83EarlyControlLog.recordFresh=some s2Step83EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step83EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step83EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step83EarlyControlHistoryArena,s2Step83EarlyControlArena,s2Step83EarlyControlLog,arenaWires]

private theorem s2Step83EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step83EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step83EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83EarlyControl_history : compileHmrRecordGrowLog s2Step83EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step83EarlyControlLog.recordFresh=some s2Step83EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step83EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step83EarlyControl_historyBorrow

private theorem s2Step83EarlyControl_sigmaOwned : ([254, 841] : List Wire).toFinset⊆s2Step83EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step83EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83EarlyControl_sigmaReleaseOwned : ([841] : List Wire).toFinset⊆s2Step83EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step83EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83EarlyControl_sigmaRelease : s2Step83EarlyControlHistoryArena.release {841} (fun _ => false)=some s2Step83EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step83EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step83EarlyControlSigmaArena,s2Step83EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step83EarlyControl_sigma : compileHmrSigmaDropLog s2Step83EarlyControlHistoryArena false 0 0 254 841 []=some s2Step83EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step83EarlyControl_sigmaOwned⟩
  · exact s2Step83EarlyControl_sigmaRelease

private theorem s2Step83EarlyControl_zeroBorrow : s2Step83EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step83EarlyControlLog.zeroWork=some s2Step83EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step83EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step83EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step83EarlyControlZeroArena,s2Step83EarlyControlArena,s2Step83EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step83EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step83EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step83EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83EarlyControl_zero : compileHmrEqualityLog s2Step83EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step83EarlyControlLog.zeroWork=some (s2Step83EarlyControlZeroArena,s2Step83EarlyControlLog.zeroWork,s2Step83EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step83EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step83EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step83EarlyControl_logged : s2Step83EarlyControlPlan.Logged s2Step83EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 841 254 253 252 251 839 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step83EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step83EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step83EarlyControl_zero
  · exact s2Step83EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step83EarlyControl_flags
  · exact s2Step83EarlyControl_fit
  · exact s2Step83EarlyControl_history
  · exact s2Step83EarlyControl_sigma
  · exact s2Step83EarlyControl_branch

private theorem s2Step83EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step83EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 841 254 253 252 251 839 30 s2Step83EarlyControlLog=some s2Step83EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step83EarlyControlPlan s2Step83EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 841 254 253 252 251 839 30 s2Step83EarlyControl_logged

private def s2Step83EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738],768⟩

private def s2Step83EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782],770⟩

private def s2Step83EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],769⟩

private def s2Step83EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩

private def s2Step83FrontBank : WindowBank := ⟨s2Step83EntryFRow,s2Step83EntryGRow,s2Step83EntryFvRow,s2Step83EntryGvRow⟩

private def s2Step83Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 845, 768]

private def s2Step83Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 844, 769]

private def s2Step83Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 770]

private def s2Step83Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 836, 771]

private theorem s2Step83Counter_apart : Disjoint s2Step83HeadFvAfter.live s2Step83CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step83HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83Counter_borrowed : s2Step83HeadFvAfter.checkBorrow 4 s2Step83CounterWork=some s2Step83CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step83HeadFvAfter s2Step83CounterDuring s2Step83CounterWork.toFinset s2Step83Counter_bounded s2Step83Counter_apart rfl

private theorem s2Step83Counter_owned : (841::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step83HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step83HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83Counter_checked : compileHmrCounterStepLog s2Step83HeadFvAfter true 841 [772, 773, 774, 775, 776, 777] s2Step83CounterWork=some s2Step83CounterDuring := by
  have owned : ∀q∈841::[772, 773, 774, 775, 776, 777],q∈s2Step83HeadFvAfter.live := fun q hq => s2Step83Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step83Counter_borrowed

private def s2Step83EntryFAfter : Arena := s2Step83EntryFBefore

private theorem s2Step83EntryBank_incomingDistinct : ([s2Step83EntryFRow,s2Step83EntryGRow,s2Step83EntryFvRow,s2Step83EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83EntryF_Incoming : rowsOwned s2Step83EntryFBefore [s2Step83EntryFRow,s2Step83EntryGRow,s2Step83EntryFvRow,s2Step83EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step83EntryFRow,s2Step83EntryGRow,s2Step83EntryFvRow,s2Step83EntryGvRow] 0 s2Step83EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step83EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step83EntryBank_outgoingOwned : rowsOwned s2Step83EntryGvAfter [s2Step83EntryFOut,s2Step83EntryGOut,s2Step83EntryFvOut,s2Step83EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step83EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step83EntryF_Outgoing : rowsOwned s2Step83EntryGvAfter [s2Step83EntryFOut,s2Step83EntryGOut,s2Step83EntryFvOut,s2Step83EntryGvOut] :=
  hmrRows_owned_drop s2Step83EntryGvAfter [s2Step83EntryFOut,s2Step83EntryGOut,s2Step83EntryFvOut,s2Step83EntryGvOut] 0 s2Step83EntryBank_outgoingOwned

private theorem s2Step83EntryF_distinct : (s2Step83EntryFRow.sign::s2Step83EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83EntryF_owned : (s2Step83EntryFRow.sign::s2Step83EntryFRow.payload).toFinset⊆s2Step83EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step83EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83EntryF_reserved : s2Step83EntryFBefore.reserve s2Step83EntryFFresh.toFinset=some s2Step83EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step83EntryFFresh,arenaWires]
  · norm_num [s2Step83EntryFBefore,s2Step83EntryFFresh,arenaWires]
  · simp only [s2Step83EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step83EntryF_checked : planRowResizeLog s2Step83EntryFBefore s2Step83EntryFRow 227 s2Step83EntryFFresh=
    some (s2Step83EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738],768⟩,growRow 768 s2Step83EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step83EntryFBefore s2Step83EntryFAfter s2Step83EntryFRow 227 s2Step83EntryFFresh
    s2Step83EntryF_distinct s2Step83EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step83EntryF_reserved
  have rowEq : WindowRow.mk (s2Step83EntryFRow.payload++s2Step83EntryFFresh) s2Step83EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step83EntryFvAfter : Arena := s2Step83EntryFBefore

private def s2Step83EntryFvBefore : Arena := s2Step83EntryFBefore

private theorem s2Step83EntryFv_Incoming : rowsOwned s2Step83EntryFvBefore [s2Step83EntryFvRow,s2Step83EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step83EntryFRow,s2Step83EntryGRow,s2Step83EntryFvRow,s2Step83EntryGvRow] 2 s2Step83EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step83EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step83EntryFv_Outgoing : rowsOwned s2Step83EntryGvAfter [s2Step83EntryFvOut,s2Step83EntryGvOut] :=
  hmrRows_owned_drop s2Step83EntryGvAfter [s2Step83EntryFOut,s2Step83EntryGOut,s2Step83EntryFvOut,s2Step83EntryGvOut] 2 s2Step83EntryBank_outgoingOwned

private theorem s2Step83EntryFv_distinct : (s2Step83EntryFvRow.sign::s2Step83EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83EntryFv_owned : (s2Step83EntryFvRow.sign::s2Step83EntryFvRow.payload).toFinset⊆s2Step83EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step83EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83EntryFv_reserved : s2Step83EntryFvBefore.reserve s2Step83EntryFvFresh.toFinset=some s2Step83EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step83EntryFvFresh,arenaWires]
  · norm_num [s2Step83EntryFvBefore,s2Step83EntryFBefore,s2Step83EntryFvFresh,arenaWires]
  · simp only [s2Step83EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step83EntryFv_checked : planRowResizeLog s2Step83EntryFvBefore s2Step83EntryFvRow 55 s2Step83EntryFvFresh=
    some (s2Step83EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782],770⟩,growRow 770 s2Step83EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step83EntryFvBefore s2Step83EntryFvAfter s2Step83EntryFvRow 55 s2Step83EntryFvFresh
    s2Step83EntryFv_distinct s2Step83EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step83EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step83EntryFvRow.payload++s2Step83EntryFvFresh) s2Step83EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step83EntryGAfter : Arena := s2Step83EntryFBefore

private def s2Step83EntryGBefore : Arena := s2Step83EntryFBefore

private theorem s2Step83EntryG_Incoming : rowsOwned s2Step83EntryGBefore [s2Step83EntryGRow,s2Step83EntryFvRow,s2Step83EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step83EntryFRow,s2Step83EntryGRow,s2Step83EntryFvRow,s2Step83EntryGvRow] 1 s2Step83EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step83EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step83EntryG_Outgoing : rowsOwned s2Step83EntryGvAfter [s2Step83EntryGOut,s2Step83EntryFvOut,s2Step83EntryGvOut] :=
  hmrRows_owned_drop s2Step83EntryGvAfter [s2Step83EntryFOut,s2Step83EntryGOut,s2Step83EntryFvOut,s2Step83EntryGvOut] 1 s2Step83EntryBank_outgoingOwned

private theorem s2Step83EntryG_distinct : (s2Step83EntryGRow.sign::s2Step83EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83EntryG_owned : (s2Step83EntryGRow.sign::s2Step83EntryGRow.payload).toFinset⊆s2Step83EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step83EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83EntryG_reserved : s2Step83EntryGBefore.reserve s2Step83EntryGFresh.toFinset=some s2Step83EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step83EntryGFresh,arenaWires]
  · norm_num [s2Step83EntryGBefore,s2Step83EntryFBefore,s2Step83EntryGFresh,arenaWires]
  · simp only [s2Step83EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step83EntryG_checked : planRowResizeLog s2Step83EntryGBefore s2Step83EntryGRow 227 s2Step83EntryGFresh=
    some (s2Step83EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],769⟩,growRow 769 s2Step83EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step83EntryGBefore s2Step83EntryGAfter s2Step83EntryGRow 227 s2Step83EntryGFresh
    s2Step83EntryG_distinct s2Step83EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step83EntryG_reserved
  have rowEq : WindowRow.mk (s2Step83EntryGRow.payload++s2Step83EntryGFresh) s2Step83EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step83EntryGvBefore : Arena := s2Step83EntryFBefore

private theorem s2Step83EntryGv_Incoming : rowsOwned s2Step83EntryGvBefore [s2Step83EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step83EntryFRow,s2Step83EntryGRow,s2Step83EntryFvRow,s2Step83EntryGvRow] 3 s2Step83EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step83EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step83EntryGv_Outgoing : rowsOwned s2Step83EntryGvAfter [s2Step83EntryGvOut] :=
  hmrRows_owned_drop s2Step83EntryGvAfter [s2Step83EntryFOut,s2Step83EntryGOut,s2Step83EntryFvOut,s2Step83EntryGvOut] 3 s2Step83EntryBank_outgoingOwned

private theorem s2Step83EntryGv_distinct : (s2Step83EntryGvRow.sign::s2Step83EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83EntryGv_owned : (s2Step83EntryGvRow.sign::s2Step83EntryGvRow.payload).toFinset⊆s2Step83EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step83EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83EntryGv_reserved : s2Step83EntryGvBefore.reserve s2Step83EntryGvFresh.toFinset=some s2Step83EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step83EntryGvFresh,arenaWires]
  · norm_num [s2Step83EntryGvBefore,s2Step83EntryFBefore,s2Step83EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step83EntryGvAfter,s2Step83EntryGvBefore,s2Step83EntryFBefore,s2Step83EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step83EntryGv_checked : planRowResizeLog s2Step83EntryGvBefore s2Step83EntryGvRow 55 s2Step83EntryGvFresh=
    some (s2Step83EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778],771⟩,growRow 771 s2Step83EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step83EntryGvBefore s2Step83EntryGvAfter s2Step83EntryGvRow 55 s2Step83EntryGvFresh
    s2Step83EntryGv_distinct s2Step83EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step83EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step83EntryGvRow.payload++s2Step83EntryGvFresh) s2Step83EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step83EntryBank_rows : planWindowRowsLog s2Step83EntryFBefore [(s2Step83EntryFRow,227),(s2Step83EntryGRow,227),(s2Step83EntryFvRow,55),(s2Step83EntryGvRow,55)] [s2Step83EntryFFresh,s2Step83EntryGFresh,s2Step83EntryFvFresh,s2Step83EntryGvFresh]=
    some (s2Step83EntryGvAfter,[s2Step83EntryFOut,s2Step83EntryGOut,s2Step83EntryFvOut,s2Step83EntryGvOut],(growRow 768 s2Step83EntryFFresh ++ (growRow 769 s2Step83EntryGFresh ++ (growRow 770 s2Step83EntryFvFresh ++ (growRow 771 s2Step83EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step83EntryGvAfter [] []=some (s2Step83EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step83EntryGvBefore s2Step83EntryGvAfter s2Step83EntryGvAfter
    s2Step83EntryGvRow s2Step83EntryGvOut 55 s2Step83EntryGvFresh [] [] []
    (growRow 771 s2Step83EntryGvFresh) ([]) s2Step83EntryGv_Incoming s2Step83EntryGv_checked h4 s2Step83EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step83EntryFvBefore s2Step83EntryFvAfter s2Step83EntryGvAfter
    s2Step83EntryFvRow s2Step83EntryFvOut 55 s2Step83EntryFvFresh [(s2Step83EntryGvRow,55)] [s2Step83EntryGvFresh] [s2Step83EntryGvOut]
    (growRow 770 s2Step83EntryFvFresh) ((growRow 771 s2Step83EntryGvFresh ++ [])) s2Step83EntryFv_Incoming s2Step83EntryFv_checked h3 s2Step83EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step83EntryGBefore s2Step83EntryGAfter s2Step83EntryGvAfter
    s2Step83EntryGRow s2Step83EntryGOut 227 s2Step83EntryGFresh [(s2Step83EntryFvRow,55),(s2Step83EntryGvRow,55)] [s2Step83EntryFvFresh,s2Step83EntryGvFresh] [s2Step83EntryFvOut,s2Step83EntryGvOut]
    (growRow 769 s2Step83EntryGFresh) ((growRow 770 s2Step83EntryFvFresh ++ (growRow 771 s2Step83EntryGvFresh ++ []))) s2Step83EntryG_Incoming s2Step83EntryG_checked h2 s2Step83EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step83EntryFBefore s2Step83EntryFAfter s2Step83EntryGvAfter
    s2Step83EntryFRow s2Step83EntryFOut 227 s2Step83EntryFFresh [(s2Step83EntryGRow,227),(s2Step83EntryFvRow,55),(s2Step83EntryGvRow,55)] [s2Step83EntryGFresh,s2Step83EntryFvFresh,s2Step83EntryGvFresh] [s2Step83EntryGOut,s2Step83EntryFvOut,s2Step83EntryGvOut]
    (growRow 768 s2Step83EntryFFresh) ((growRow 769 s2Step83EntryGFresh ++ (growRow 770 s2Step83EntryFvFresh ++ (growRow 771 s2Step83EntryGvFresh ++ [])))) s2Step83EntryF_Incoming s2Step83EntryF_checked h1 s2Step83EntryF_Outgoing
  exact h0

private theorem s2Step83EntryBank_checked : compileHmrBankResizeLog .entry s2Step83EntryFBefore ⟨s2Step83EntryFRow,s2Step83EntryGRow,s2Step83EntryFvRow,s2Step83EntryGvRow⟩ ⟨227,227,55,55⟩ [s2Step83EntryFFresh,s2Step83EntryGFresh,s2Step83EntryFvFresh,s2Step83EntryGvFresh]=
    some (s2Step83EntryGvAfter,⟨s2Step83EntryFOut,s2Step83EntryGOut,s2Step83EntryFvOut,s2Step83EntryGvOut⟩,(growRow 768 s2Step83EntryFFresh ++ (growRow 769 s2Step83EntryGFresh ++ (growRow 770 s2Step83EntryFvFresh ++ (growRow 771 s2Step83EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step83EntryBank_rows]
  rfl

private def s2Step83ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<226) ∨ (227≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<226) ∨ (227≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83ExitFBefore : Arena := s2Step83ExitGAfter

private def s2Step83ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 845],768⟩

private def s2Step83ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩

private def s2Step83ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 844],769⟩

private def s2Step83ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 836],771⟩

private theorem s2Step83ExitBank_incomingDistinct : ([s2Step83ExitGRow,s2Step83ExitFRow,s2Step83ExitFvRow,s2Step83ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83ExitF_Incoming : rowsOwned s2Step83ExitFBefore [s2Step83ExitFRow,s2Step83ExitFvRow,s2Step83ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step83ExitGRow,s2Step83ExitFRow,s2Step83ExitFvRow,s2Step83ExitGvRow] 1 s2Step83ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step83ExitFBefore (fun q => (0≤q ∧ q<226) ∨ (227≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step83ExitBank_outgoingOwned : rowsOwned s2Step83ExitGvAfter [s2Step83ExitGOut,s2Step83ExitFOut,s2Step83ExitFvOut,s2Step83ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step83ExitGvAfter (fun q => (0≤q ∧ q<226) ∨ (227≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step83ExitF_Outgoing : rowsOwned s2Step83ExitGvAfter [s2Step83ExitFOut,s2Step83ExitFvOut,s2Step83ExitGvOut] :=
  hmrRows_owned_drop s2Step83ExitGvAfter [s2Step83ExitGOut,s2Step83ExitFOut,s2Step83ExitFvOut,s2Step83ExitGvOut] 1 s2Step83ExitBank_outgoingOwned

private theorem s2Step83ExitF_distinct : (s2Step83ExitFRow.sign::s2Step83ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83ExitF_owned : (s2Step83ExitFRow.sign::s2Step83ExitFRow.payload).toFinset⊆s2Step83ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step83ExitFBefore (fun q => (0≤q ∧ q<226) ∨ (227≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83ExitF_retired : s2Step83ExitFBefore.retireSet s2Step83ExitFExtra.toFinset=s2Step83ExitFAfter := by
  unfold Arena.retireSet s2Step83ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step83ExitFBefore,s2Step83ExitGAfter,s2Step83ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step83ExitF_checked : planRowResizeLog s2Step83ExitFBefore s2Step83ExitFRow 227 []=
    some (s2Step83ExitFAfter,s2Step83ExitFOut,shrinkRow 768 s2Step83ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step83ExitFBefore s2Step83ExitFRow 227 s2Step83ExitF_distinct s2Step83ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step83ExitFRow.payload.take 227) s2Step83ExitFRow.sign=s2Step83ExitFOut := by decide +kernel
  have hi : s2Step83ExitFRow.payload.drop 227=s2Step83ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step83ExitF_retired] at result
  exact result

private def s2Step83ExitFvAfter : Arena := s2Step83ExitFAfter

private def s2Step83ExitFvBefore : Arena := s2Step83ExitFAfter

private theorem s2Step83ExitFv_Incoming : rowsOwned s2Step83ExitFvBefore [s2Step83ExitFvRow,s2Step83ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step83ExitGRow,s2Step83ExitFRow,s2Step83ExitFvRow,s2Step83ExitGvRow] 2 s2Step83ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step83ExitFvBefore (fun q => (0≤q ∧ q<226) ∨ (227≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step83ExitFv_Outgoing : rowsOwned s2Step83ExitGvAfter [s2Step83ExitFvOut,s2Step83ExitGvOut] :=
  hmrRows_owned_drop s2Step83ExitGvAfter [s2Step83ExitGOut,s2Step83ExitFOut,s2Step83ExitFvOut,s2Step83ExitGvOut] 2 s2Step83ExitBank_outgoingOwned

private theorem s2Step83ExitFv_distinct : (s2Step83ExitFvRow.sign::s2Step83ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83ExitFv_owned : (s2Step83ExitFvRow.sign::s2Step83ExitFvRow.payload).toFinset⊆s2Step83ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step83ExitFvBefore (fun q => (0≤q ∧ q<226) ∨ (227≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83ExitFv_reserved : s2Step83ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step83ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step83ExitFv_checked : planRowResizeLog s2Step83ExitFvBefore s2Step83ExitFvRow 56 []=
    some (s2Step83ExitFvAfter,s2Step83ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step83ExitFvBefore s2Step83ExitFvAfter s2Step83ExitFvRow 56 []
    s2Step83ExitFv_distinct s2Step83ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step83ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step83ExitFvRow.payload++[]) s2Step83ExitFvRow.sign=s2Step83ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step83ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step83ExitG_Incoming : rowsOwned s2Step83ExitGBefore [s2Step83ExitGRow,s2Step83ExitFRow,s2Step83ExitFvRow,s2Step83ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step83ExitGRow,s2Step83ExitFRow,s2Step83ExitFvRow,s2Step83ExitGvRow] 0 s2Step83ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step83ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step83ExitG_Outgoing : rowsOwned s2Step83ExitGvAfter [s2Step83ExitGOut,s2Step83ExitFOut,s2Step83ExitFvOut,s2Step83ExitGvOut] :=
  hmrRows_owned_drop s2Step83ExitGvAfter [s2Step83ExitGOut,s2Step83ExitFOut,s2Step83ExitFvOut,s2Step83ExitGvOut] 0 s2Step83ExitBank_outgoingOwned

private theorem s2Step83ExitG_distinct : (s2Step83ExitGRow.sign::s2Step83ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83ExitG_owned : (s2Step83ExitGRow.sign::s2Step83ExitGRow.payload).toFinset⊆s2Step83ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step83ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83ExitG_retired : s2Step83ExitGBefore.retireSet s2Step83ExitGExtra.toFinset=s2Step83ExitGAfter := by
  unfold Arena.retireSet s2Step83ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step83ExitGBefore,s2Step83ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step83ExitG_checked : planRowResizeLog s2Step83ExitGBefore s2Step83ExitGRow 226 []=
    some (s2Step83ExitGAfter,s2Step83ExitGOut,shrinkRow 769 s2Step83ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step83ExitGBefore s2Step83ExitGRow 226 s2Step83ExitG_distinct s2Step83ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step83ExitGRow.payload.take 226) s2Step83ExitGRow.sign=s2Step83ExitGOut := by decide +kernel
  have hi : s2Step83ExitGRow.payload.drop 226=s2Step83ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step83ExitG_retired] at result
  exact result

private def s2Step83ExitGvBefore : Arena := s2Step83ExitFAfter

private theorem s2Step83ExitGv_Incoming : rowsOwned s2Step83ExitGvBefore [s2Step83ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step83ExitGRow,s2Step83ExitFRow,s2Step83ExitFvRow,s2Step83ExitGvRow] 3 s2Step83ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step83ExitGvBefore (fun q => (0≤q ∧ q<226) ∨ (227≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step83ExitGv_Outgoing : rowsOwned s2Step83ExitGvAfter [s2Step83ExitGvOut] :=
  hmrRows_owned_drop s2Step83ExitGvAfter [s2Step83ExitGOut,s2Step83ExitFOut,s2Step83ExitFvOut,s2Step83ExitGvOut] 3 s2Step83ExitBank_outgoingOwned

private theorem s2Step83ExitGv_distinct : (s2Step83ExitGvRow.sign::s2Step83ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83ExitGv_owned : (s2Step83ExitGvRow.sign::s2Step83ExitGvRow.payload).toFinset⊆s2Step83ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step83ExitGvBefore (fun q => (0≤q ∧ q<226) ∨ (227≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83ExitGv_retired : s2Step83ExitGvBefore.retireSet s2Step83ExitGvExtra.toFinset=s2Step83ExitGvAfter := by
  unfold Arena.retireSet s2Step83ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step83ExitGvBefore,s2Step83ExitFAfter,s2Step83ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step83ExitGv_checked : planRowResizeLog s2Step83ExitGvBefore s2Step83ExitGvRow 55 []=
    some (s2Step83ExitGvAfter,s2Step83ExitGvOut,shrinkRow 771 s2Step83ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step83ExitGvBefore s2Step83ExitGvRow 55 s2Step83ExitGv_distinct s2Step83ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step83ExitGvRow.payload.take 55) s2Step83ExitGvRow.sign=s2Step83ExitGvOut := by decide +kernel
  have hi : s2Step83ExitGvRow.payload.drop 55=s2Step83ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step83ExitGv_retired] at result
  exact result

private theorem s2Step83ExitBank_rows : planWindowRowsLog s2Step83ExitGBefore [(s2Step83ExitGRow,226),(s2Step83ExitFRow,227),(s2Step83ExitFvRow,56),(s2Step83ExitGvRow,55)] [[],[],[],[]]=
    some (s2Step83ExitGvAfter,[s2Step83ExitGOut,s2Step83ExitFOut,s2Step83ExitFvOut,s2Step83ExitGvOut],(shrinkRow 769 s2Step83ExitGExtra ++ (shrinkRow 768 s2Step83ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step83ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step83ExitGvAfter [] []=some (s2Step83ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step83ExitGvBefore s2Step83ExitGvAfter s2Step83ExitGvAfter
    s2Step83ExitGvRow s2Step83ExitGvOut 55 [] [] [] []
    (shrinkRow 771 s2Step83ExitGvExtra) ([]) s2Step83ExitGv_Incoming s2Step83ExitGv_checked h4 s2Step83ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step83ExitFvBefore s2Step83ExitFvAfter s2Step83ExitGvAfter
    s2Step83ExitFvRow s2Step83ExitFvOut 56 [] [(s2Step83ExitGvRow,55)] [[]] [s2Step83ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step83ExitGvExtra ++ [])) s2Step83ExitFv_Incoming s2Step83ExitFv_checked h3 s2Step83ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step83ExitFBefore s2Step83ExitFAfter s2Step83ExitGvAfter
    s2Step83ExitFRow s2Step83ExitFOut 227 [] [(s2Step83ExitFvRow,56),(s2Step83ExitGvRow,55)] [[],[]] [s2Step83ExitFvOut,s2Step83ExitGvOut]
    (shrinkRow 768 s2Step83ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step83ExitGvExtra ++ []))) s2Step83ExitF_Incoming s2Step83ExitF_checked h2 s2Step83ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step83ExitGBefore s2Step83ExitGAfter s2Step83ExitGvAfter
    s2Step83ExitGRow s2Step83ExitGOut 226 [] [(s2Step83ExitFRow,227),(s2Step83ExitFvRow,56),(s2Step83ExitGvRow,55)] [[],[],[]] [s2Step83ExitFOut,s2Step83ExitFvOut,s2Step83ExitGvOut]
    (shrinkRow 769 s2Step83ExitGExtra) ((shrinkRow 768 s2Step83ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step83ExitGvExtra ++ [])))) s2Step83ExitG_Incoming s2Step83ExitG_checked h1 s2Step83ExitG_Outgoing
  exact h0

private theorem s2Step83ExitBank_checked : compileHmrBankResizeLog .exit s2Step83ExitGBefore ⟨s2Step83ExitFRow,s2Step83ExitGRow,s2Step83ExitFvRow,s2Step83ExitGvRow⟩ ⟨227,226,56,55⟩ [[],[],[],[]]=
    some (s2Step83ExitGvAfter,⟨s2Step83ExitFOut,s2Step83ExitGOut,s2Step83ExitFvOut,s2Step83ExitGvOut⟩,(shrinkRow 769 s2Step83ExitGExtra ++ (shrinkRow 768 s2Step83ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step83ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step83ExitBank_rows]
  rfl

private theorem s2Step83Add0_apart : Disjoint s2Step83Add0Arena.live s2Step83Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step83Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83Add0_card : s2Step83Add0Arena.live.card=868 := by
  decide +kernel

private theorem s2Step83Add0_borrowed : s2Step83Add0Arena.checkBorrow (hmrHybridCount s2Step83Add0Arena s2Step83Add0B.length) s2Step83Add0Work=some s2Step83Add0During := by
  have len : s2Step83Add0Work.length=hmrHybridCount s2Step83Add0Arena s2Step83Add0B.length := by
    rw [hmrHybridCount,s2Step83Add0_card]
    decide +kernel
  have nd : s2Step83Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step83Add0Arena s2Step83Add0During s2Step83Add0Work.toFinset s2Step83Add0_bounded s2Step83Add0_apart rfl

private theorem s2Step83Add0_distinct : (842::839::816::(s2Step83Add0A++s2Step83Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83Add0_owned : (842::839::816::(s2Step83Add0A++s2Step83Add0B)).toFinset⊆s2Step83Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step83Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83Add0_checked : compileHmrHybridCinLog s2Step83Add0Arena 839 842 816 s2Step83Add0A s2Step83Add0B s2Step83Add0Work=some s2Step83Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step83Add0Arena s2Step83Add0During 839 842 816 s2Step83Add0A s2Step83Add0B s2Step83Add0Work
    (by decide +kernel) (by decide +kernel) s2Step83Add0_distinct
    (fun q hq => s2Step83Add0_owned (List.mem_toFinset.mpr hq)) s2Step83Add0_borrowed

private theorem s2Step83Add1_apart : Disjoint s2Step83Add1Arena.live s2Step83Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step83Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83Add1_card : s2Step83Add1Arena.live.card=868 := by
  decide +kernel

private theorem s2Step83Add1_borrowed : s2Step83Add1Arena.checkBorrow (hmrHybridCount s2Step83Add1Arena s2Step83Add1B.length) s2Step83Add1Work=some s2Step83Add1During := by
  have len : s2Step83Add1Work.length=hmrHybridCount s2Step83Add1Arena s2Step83Add1B.length := by
    rw [hmrHybridCount,s2Step83Add1_card]
    decide +kernel
  have nd : s2Step83Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step83Add1Arena s2Step83Add1During s2Step83Add1Work.toFinset s2Step83Add1_bounded s2Step83Add1_apart rfl

private theorem s2Step83Add1_distinct : (842::839::816::(s2Step83Add1A++s2Step83Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83Add1_owned : (842::839::816::(s2Step83Add1A++s2Step83Add1B)).toFinset⊆s2Step83Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step83Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83Add1_checked : compileHmrHybridCinLog s2Step83Add1Arena 839 842 816 s2Step83Add1A s2Step83Add1B s2Step83Add1Work=some s2Step83Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step83Add1Arena s2Step83Add1During 839 842 816 s2Step83Add1A s2Step83Add1B s2Step83Add1Work
    (by decide +kernel) (by decide +kernel) s2Step83Add1_distinct
    (fun q hq => s2Step83Add1_owned (List.mem_toFinset.mpr hq)) s2Step83Add1_borrowed

private theorem s2Step83F4_apart : Disjoint (s2Step83Add0A++s2Step83Add0B).toFinset (s2Step83Add1A++s2Step83Add1B).toFinset := by
  have nd : ((s2Step83Add0A++s2Step83Add0B)++(s2Step83Add1A++s2Step83Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step83F4_carry : s2Step83F4FlagArena.checkBorrow 1 [816]=some s2Step83Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step83F4FlagArena,s2Step83HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step83F4FlagArena,s2Step83HeadFvAfter,s2Step83Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step83F4_distinct : (841::839::842::816::((s2Step83Add0A++s2Step83Add1A)++(s2Step83Add0B++s2Step83Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83F4_flag : s2Step83HeadFvAfter.checkBorrow 1 [842]=some s2Step83F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step83HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step83F4_owned : (841::839::((s2Step83Add0A++s2Step83Add1A)++(s2Step83Add0B++s2Step83Add1B))).toFinset⊆s2Step83HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step83HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83F4_checked : compileHmrHybridF4Log s2Step83HeadFvAfter 841 839 s2Step83Add0A s2Step83Add0B s2Step83Add1A s2Step83Add1B [842] [816] s2Step83Add0Work s2Step83Add1Work=some s2Step83F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step83HeadFvAfter s2Step83F4FlagArena s2Step83Add0Arena s2Step83Add0During s2Step83Add1During 841 839
    s2Step83Add0A s2Step83Add0B s2Step83Add1A s2Step83Add1B [842] [816] s2Step83Add0Work s2Step83Add1Work
    (fun q hq => s2Step83F4_owned (List.mem_toFinset.mpr hq)) s2Step83F4_flag s2Step83F4_carry
    s2Step83F4_distinct s2Step83F4_apart s2Step83Add0_checked s2Step83Add1_checked

private theorem s2Step83Front_branch : s2Step83FrontSigmaArena.checkBorrow 1 [839]=some s2Step83HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step83FrontSigmaArena,s2Step83EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step83FrontSigmaArena,s2Step83EntryGvAfter,s2Step83HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step83Front_entry : HmrFrontEntryValid s2Step83EntryFBefore s2Step83FrontBank 227 55 ⟨227,226,56,55⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step83FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step83EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step83EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step83FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step83Front_sigma : s2Step83EntryGvAfter.checkBorrow 1 [841]=some s2Step83FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step83EntryGvAfter,arenaWires]
  · rfl

private def s2Step83HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83HeadFBefore : Arena := s2Step83HeadGAfter

private def s2Step83HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738],768⟩

private def s2Step83HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782],770⟩

private def s2Step83HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],769⟩

private def s2Step83HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778],771⟩

private theorem s2Step83HeadBank_incomingDistinct : ([s2Step83HeadGRow,s2Step83HeadFRow,s2Step83HeadGvRow,s2Step83HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83HeadF_Incoming : rowsOwned s2Step83HeadFBefore [s2Step83HeadFRow,s2Step83HeadGvRow,s2Step83HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step83HeadGRow,s2Step83HeadFRow,s2Step83HeadGvRow,s2Step83HeadFvRow] 1 s2Step83HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step83HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step83HeadBank_outgoingOwned : rowsOwned s2Step83HeadFvAfter [s2Step83HeadGOut,s2Step83HeadFOut,s2Step83HeadGvOut,s2Step83HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step83HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step83HeadF_Outgoing : rowsOwned s2Step83HeadFvAfter [s2Step83HeadFOut,s2Step83HeadGvOut,s2Step83HeadFvOut] :=
  hmrRows_owned_drop s2Step83HeadFvAfter [s2Step83HeadGOut,s2Step83HeadFOut,s2Step83HeadGvOut,s2Step83HeadFvOut] 1 s2Step83HeadBank_outgoingOwned

private theorem s2Step83HeadF_distinct : (s2Step83HeadFRow.sign::s2Step83HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83HeadF_owned : (s2Step83HeadFRow.sign::s2Step83HeadFRow.payload).toFinset⊆s2Step83HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step83HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83HeadF_reserved : s2Step83HeadFBefore.reserve s2Step83HeadFFresh.toFinset=some s2Step83HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step83HeadFFresh,arenaWires]
  · norm_num [s2Step83HeadFBefore,s2Step83HeadGAfter,s2Step83HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step83HeadFAfter,s2Step83HeadFBefore,s2Step83HeadGAfter,s2Step83HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step83HeadF_checked : planRowResizeLog s2Step83HeadFBefore s2Step83HeadFRow 228 s2Step83HeadFFresh=
    some (s2Step83HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 845],768⟩,growRow 768 s2Step83HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step83HeadFBefore s2Step83HeadFAfter s2Step83HeadFRow 228 s2Step83HeadFFresh
    s2Step83HeadF_distinct s2Step83HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step83HeadF_reserved
  have rowEq : WindowRow.mk (s2Step83HeadFRow.payload++s2Step83HeadFFresh) s2Step83HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 845],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step83HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step83HeadFvBefore : Arena := s2Step83HeadGvAfter

private theorem s2Step83HeadFv_Incoming : rowsOwned s2Step83HeadFvBefore [s2Step83HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step83HeadGRow,s2Step83HeadFRow,s2Step83HeadGvRow,s2Step83HeadFvRow] 3 s2Step83HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step83HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step83HeadFv_Outgoing : rowsOwned s2Step83HeadFvAfter [s2Step83HeadFvOut] :=
  hmrRows_owned_drop s2Step83HeadFvAfter [s2Step83HeadGOut,s2Step83HeadFOut,s2Step83HeadGvOut,s2Step83HeadFvOut] 3 s2Step83HeadBank_outgoingOwned

private theorem s2Step83HeadFv_distinct : (s2Step83HeadFvRow.sign::s2Step83HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83HeadFv_owned : (s2Step83HeadFvRow.sign::s2Step83HeadFvRow.payload).toFinset⊆s2Step83HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step83HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83HeadFv_reserved : s2Step83HeadFvBefore.reserve s2Step83HeadFvFresh.toFinset=some s2Step83HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step83HeadFvFresh,arenaWires]
  · norm_num [s2Step83HeadFvBefore,s2Step83HeadGvAfter,s2Step83HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step83HeadFvAfter,s2Step83HeadFvBefore,s2Step83HeadGvAfter,s2Step83HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step83HeadFv_checked : planRowResizeLog s2Step83HeadFvBefore s2Step83HeadFvRow 56 s2Step83HeadFvFresh=
    some (s2Step83HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩,growRow 770 s2Step83HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step83HeadFvBefore s2Step83HeadFvAfter s2Step83HeadFvRow 56 s2Step83HeadFvFresh
    s2Step83HeadFv_distinct s2Step83HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step83HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step83HeadFvRow.payload++s2Step83HeadFvFresh) s2Step83HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step83HeadG_Incoming : rowsOwned s2Step83HeadGBefore [s2Step83HeadGRow,s2Step83HeadFRow,s2Step83HeadGvRow,s2Step83HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step83HeadGRow,s2Step83HeadFRow,s2Step83HeadGvRow,s2Step83HeadFvRow] 0 s2Step83HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step83HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step83HeadG_Outgoing : rowsOwned s2Step83HeadFvAfter [s2Step83HeadGOut,s2Step83HeadFOut,s2Step83HeadGvOut,s2Step83HeadFvOut] :=
  hmrRows_owned_drop s2Step83HeadFvAfter [s2Step83HeadGOut,s2Step83HeadFOut,s2Step83HeadGvOut,s2Step83HeadFvOut] 0 s2Step83HeadBank_outgoingOwned

private theorem s2Step83HeadG_distinct : (s2Step83HeadGRow.sign::s2Step83HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83HeadG_owned : (s2Step83HeadGRow.sign::s2Step83HeadGRow.payload).toFinset⊆s2Step83HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step83HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83HeadG_reserved : s2Step83HeadGBefore.reserve s2Step83HeadGFresh.toFinset=some s2Step83HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step83HeadGFresh,arenaWires]
  · norm_num [s2Step83HeadGBefore,s2Step83HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step83HeadGAfter,s2Step83HeadGBefore,s2Step83HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step83HeadG_checked : planRowResizeLog s2Step83HeadGBefore s2Step83HeadGRow 228 s2Step83HeadGFresh=
    some (s2Step83HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 844],769⟩,growRow 769 s2Step83HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step83HeadGBefore s2Step83HeadGAfter s2Step83HeadGRow 228 s2Step83HeadGFresh
    s2Step83HeadG_distinct s2Step83HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step83HeadG_reserved
  have rowEq : WindowRow.mk (s2Step83HeadGRow.payload++s2Step83HeadGFresh) s2Step83HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 844],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step83HeadGvBefore : Arena := s2Step83HeadFAfter

private theorem s2Step83HeadGv_Incoming : rowsOwned s2Step83HeadGvBefore [s2Step83HeadGvRow,s2Step83HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step83HeadGRow,s2Step83HeadFRow,s2Step83HeadGvRow,s2Step83HeadFvRow] 2 s2Step83HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step83HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step83HeadGv_Outgoing : rowsOwned s2Step83HeadFvAfter [s2Step83HeadGvOut,s2Step83HeadFvOut] :=
  hmrRows_owned_drop s2Step83HeadFvAfter [s2Step83HeadGOut,s2Step83HeadFOut,s2Step83HeadGvOut,s2Step83HeadFvOut] 2 s2Step83HeadBank_outgoingOwned

private theorem s2Step83HeadGv_distinct : (s2Step83HeadGvRow.sign::s2Step83HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step83HeadGv_owned : (s2Step83HeadGvRow.sign::s2Step83HeadGvRow.payload).toFinset⊆s2Step83HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step83HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step83HeadGv_reserved : s2Step83HeadGvBefore.reserve s2Step83HeadGvFresh.toFinset=some s2Step83HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step83HeadGvFresh,arenaWires]
  · norm_num [s2Step83HeadGvBefore,s2Step83HeadFAfter,s2Step83HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step83HeadGvAfter,s2Step83HeadGvBefore,s2Step83HeadFAfter,s2Step83HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step83HeadGv_checked : planRowResizeLog s2Step83HeadGvBefore s2Step83HeadGvRow 56 s2Step83HeadGvFresh=
    some (s2Step83HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 836],771⟩,growRow 771 s2Step83HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step83HeadGvBefore s2Step83HeadGvAfter s2Step83HeadGvRow 56 s2Step83HeadGvFresh
    s2Step83HeadGv_distinct s2Step83HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step83HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step83HeadGvRow.payload++s2Step83HeadGvFresh) s2Step83HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 836],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step83HeadBank_rows : planWindowRowsLog s2Step83HeadGBefore [(s2Step83HeadGRow,228),(s2Step83HeadFRow,228),(s2Step83HeadGvRow,56),(s2Step83HeadFvRow,56)] [s2Step83HeadGFresh,s2Step83HeadFFresh,s2Step83HeadGvFresh,s2Step83HeadFvFresh]=
    some (s2Step83HeadFvAfter,[s2Step83HeadGOut,s2Step83HeadFOut,s2Step83HeadGvOut,s2Step83HeadFvOut],(growRow 769 s2Step83HeadGFresh ++ (growRow 768 s2Step83HeadFFresh ++ (growRow 771 s2Step83HeadGvFresh ++ (growRow 770 s2Step83HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step83HeadFvAfter [] []=some (s2Step83HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step83HeadFvBefore s2Step83HeadFvAfter s2Step83HeadFvAfter
    s2Step83HeadFvRow s2Step83HeadFvOut 56 s2Step83HeadFvFresh [] [] []
    (growRow 770 s2Step83HeadFvFresh) ([]) s2Step83HeadFv_Incoming s2Step83HeadFv_checked h4 s2Step83HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step83HeadGvBefore s2Step83HeadGvAfter s2Step83HeadFvAfter
    s2Step83HeadGvRow s2Step83HeadGvOut 56 s2Step83HeadGvFresh [(s2Step83HeadFvRow,56)] [s2Step83HeadFvFresh] [s2Step83HeadFvOut]
    (growRow 771 s2Step83HeadGvFresh) ((growRow 770 s2Step83HeadFvFresh ++ [])) s2Step83HeadGv_Incoming s2Step83HeadGv_checked h3 s2Step83HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step83HeadFBefore s2Step83HeadFAfter s2Step83HeadFvAfter
    s2Step83HeadFRow s2Step83HeadFOut 228 s2Step83HeadFFresh [(s2Step83HeadGvRow,56),(s2Step83HeadFvRow,56)] [s2Step83HeadGvFresh,s2Step83HeadFvFresh] [s2Step83HeadGvOut,s2Step83HeadFvOut]
    (growRow 768 s2Step83HeadFFresh) ((growRow 771 s2Step83HeadGvFresh ++ (growRow 770 s2Step83HeadFvFresh ++ []))) s2Step83HeadF_Incoming s2Step83HeadF_checked h2 s2Step83HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step83HeadGBefore s2Step83HeadGAfter s2Step83HeadFvAfter
    s2Step83HeadGRow s2Step83HeadGOut 228 s2Step83HeadGFresh [(s2Step83HeadFRow,228),(s2Step83HeadGvRow,56),(s2Step83HeadFvRow,56)] [s2Step83HeadFFresh,s2Step83HeadGvFresh,s2Step83HeadFvFresh] [s2Step83HeadFOut,s2Step83HeadGvOut,s2Step83HeadFvOut]
    (growRow 769 s2Step83HeadGFresh) ((growRow 768 s2Step83HeadFFresh ++ (growRow 771 s2Step83HeadGvFresh ++ (growRow 770 s2Step83HeadFvFresh ++ [])))) s2Step83HeadG_Incoming s2Step83HeadG_checked h1 s2Step83HeadG_Outgoing
  exact h0

private theorem s2Step83HeadBank_checked : compileHmrBankResizeLog .headroom s2Step83HeadGBefore ⟨s2Step83HeadFRow,s2Step83HeadGRow,s2Step83HeadFvRow,s2Step83HeadGvRow⟩ ⟨228,228,56,56⟩ [s2Step83HeadGFresh,s2Step83HeadFFresh,s2Step83HeadGvFresh,s2Step83HeadFvFresh]=
    some (s2Step83HeadFvAfter,⟨s2Step83HeadFOut,s2Step83HeadGOut,s2Step83HeadFvOut,s2Step83HeadGvOut⟩,(growRow 769 s2Step83HeadGFresh ++ (growRow 768 s2Step83HeadFFresh ++ (growRow 771 s2Step83HeadGvFresh ++ (growRow 770 s2Step83HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step83HeadBank_rows]
  rfl

private theorem s2Step83Front_checked : compileHmrSourceFrontLog s2Step83EntryFBefore s2Step83FrontBank 227 55 ⟨227,226,56,55⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step83FrontLog=some s2Step83FrontPlan := by
  have pairEq : s2Step83FrontPair=⟨s2Step83HeadFRow,s2Step83HeadGRow,s2Step83HeadFvRow,s2Step83HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step83FrontHead=⟨s2Step83ExitFRow,s2Step83ExitGRow,s2Step83ExitFvRow,s2Step83ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step83Add0A=s2Step83FrontHead.f.wires := by decide +kernel
  have gEq : s2Step83Add0B=s2Step83FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step83Add1A=s2Step83FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step83Add1B=s2Step83FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step83EntryFBefore s2Step83FrontBank 227 55 ⟨227,226,56,55⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step83FrontLog s2Step83FrontPlan
  · exact s2Step83Front_entry
  · exact s2Step83EntryBank_checked
  · exact s2Step83Front_sigma
  · rfl
  · exact s2Step83Front_branch
  · rfl
  · simpa only [s2Step83FrontPlan,pairEq] using s2Step83HeadBank_checked
  · simpa only [s2Step83FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step83F4_checked
  · exact s2Step83Counter_checked
  · rfl
  · simpa only [s2Step83FrontPlan,headEq] using s2Step83ExitBank_checked

private theorem s2Step83Complete_explicit_checked : compileHmrEarlyStepLog s2Step83EntryFBefore s2Step83FrontBank 227 55 ⟨227,226,56,55⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step83CompleteLog=some s2Step83CompletePlan := by
  let Q := s2Step83EarlyControlPlan
  have hq := s2Step83EarlyControl_plan_checked
  have fv1 : s2Step83CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step83CompleteOut.fv.payload[2]?.getD s2Step83CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step83CompleteOut.fv.payload[3]?.getD s2Step83CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step83CompleteOut.fv.payload[4]?.getD s2Step83CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step83EntryFBefore s2Step83EarlyControlArena s2Step83FrontBank 227 55 ⟨227,226,56,55⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step83CompleteLog s2Step83FrontPlan Q
    s2Step83Front_checked s2Step83Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step83Complete_owned s2Step83Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step83EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 841 s2Step83CompleteOut.fv.second (s2Step83CompleteOut.fv.payload[2]?.getD s2Step83CompleteOut.fv.sign) (s2Step83CompleteOut.fv.payload[3]?.getD s2Step83CompleteOut.fv.sign) (s2Step83CompleteOut.fv.payload[4]?.getD s2Step83CompleteOut.fv.sign) 839 30 s2Step83EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep83Arena : Arena := s2Step83EntryFBefore
def s2PrivateStep83Bank : WindowBank := s2Step83FrontBank
def s2PrivateStep83Spec : HmrSourceWalkStepLog := ⟨227,55,⟨227,226,56,55⟩,30,.early s2Step83CompleteLog⟩
def s2PrivateStep83Plan : HmrSourceStepPlan := .early s2Step83CompletePlan
theorem s2PrivateStep83_source : s2PrivateStep83Spec=s2ObservedLogs80[3] := rfl
theorem s2PrivateStep83_checked : compileHmrSourceStepLog s2PrivateStep83Arena s2PrivateStep83Bank
    s2PrivateStep83Spec.fgWidth s2PrivateStep83Spec.vWidth s2PrivateStep83Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]
    6 498 83 s2PrivateStep83Spec.need none s2PrivateStep83Spec.log=some s2PrivateStep83Plan := by
  change compileHmrSourceStepLog s2Step83EntryFBefore s2Step83FrontBank 227 55 ⟨227,226,56,55⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 6 498 83 30 none (.early s2Step83CompleteLog)=some (.early s2Step83CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 83<498)]
  rw [s2Step83Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
