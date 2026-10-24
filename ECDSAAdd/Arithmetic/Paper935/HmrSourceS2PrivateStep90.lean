import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep88
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

private def s2Step90CompleteMoves : List (Wire × Wire) := [(796,735)]

private def s2Step90EarlyControlLog : HmrEarlyControlLog := ⟨[796, 781, 836, 816, 779],[844],[785],[839, 846, 847, 849, 851, 867],[873]⟩

private def s2Step90FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [779], [], []],[[844], [816], [781], [836]],[[], [], [], []]⟩,[793],[786],[785],[839],[846, 847, 849, 851, 867, 873, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 873, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928],[785, 839, 846, 847]⟩

private def s2Step90CompleteLog : HmrEarlyStepLog := ⟨s2Step90FrontLog,s2Step90CompleteMoves,s2Step90EarlyControlLog⟩

private def s2Step90ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734],768⟩

private def s2Step90ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step90ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222],769⟩

private def s2Step90ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789],771⟩

private def s2Step90FrontOut : WindowBank := ⟨s2Step90ExitFOut,s2Step90ExitGOut,s2Step90ExitFvOut,s2Step90ExitGvOut⟩

private def s2Step90CompleteOut : WindowBank := s2Step90FrontOut.repacked s2Step90CompleteMoves

private def s2Step90EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step90EarlyControlPositiveArena,[844],s2Step90EarlyControlEqualityArena,[785],⟨⟨793,false⟩,[⟨⟨844,false⟩,785⟩]⟩⟩

private def s2Step90EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,796⟩,⟨⟨774,false⟩,781⟩,⟨⟨775,false⟩,836⟩,⟨⟨776,false⟩,816⟩,⟨⟨777,false⟩,779⟩]⟩

private def s2Step90EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step90EarlyControlZeroArena,s2Step90EarlyControlZeroPlan,s2Step90EarlyControlClassPlan,s2Step90EarlyControlFlagArena,s2Step90EarlyControlFittedArena,s2Step90EarlyControlHistoryArena,s2Step90EarlyControlSigmaArena,s2Step90EarlyControlOutputArena,s2Step90EarlyControlLog⟩

private def s2Step90CounterWork : List Wire := [785, 839, 846, 847]

private theorem s2Step90Counter_bounded : s2Step90CounterWork.toFinset⊆arenaWires := by norm_num [s2Step90CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step90HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90CounterDuring : Arena := ⟨s2Step90HeadFvAfter.live∪s2Step90CounterWork.toFinset,Finset.union_subset s2Step90HeadFvAfter.bounded s2Step90Counter_bounded⟩

private def s2Step90EntryFFresh : List Wire := []

private def s2Step90EntryFvFresh : List Wire := []

private def s2Step90EntryGFresh : List Wire := [779]

private def s2Step90EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90EntryGvAfter : Arena := s2Step90EntryGAfter

private def s2Step90EntryGvFresh : List Wire := []

private def s2Step90ExitFExtra : List Wire := [735, 816]

private def s2Step90ExitFvExtra : List Wire := [836]

private def s2Step90ExitGExtra : List Wire := [779, 844]

private def s2Step90ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<735) ∨ (736≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90ExitGvExtra : List Wire := [781]

private def s2Step90Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90Add0Work : List Wire := [846, 847, 849, 851, 867, 873, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step90Add0_bounded : s2Step90Add0Work.toFinset⊆arenaWires := by
  have h : s2Step90Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step90Add0During : Arena := ⟨s2Step90Add0Arena.live∪s2Step90Add0Work.toFinset,Finset.union_subset s2Step90Add0Arena.bounded s2Step90Add0_bounded⟩

private def s2Step90Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90Add1Work : List Wire := [846, 847, 849, 851, 867, 873, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928]

private theorem s2Step90Add1_bounded : s2Step90Add1Work.toFinset⊆arenaWires := by
  have h : s2Step90Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step90Add1During : Arena := ⟨s2Step90Add1Arena.live∪s2Step90Add1Work.toFinset,Finset.union_subset s2Step90Add1Arena.bounded s2Step90Add1_bounded⟩

private def s2Step90F4FlagArena : Arena := ⟨s2Step90HeadFvAfter.live∪{785},Finset.union_subset s2Step90HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step90F4Plan : HmrHybridF4Plan := ⟨s2Step90F4FlagArena,[785],s2Step90Add0Arena,[839],s2Step90Add0During,s2Step90Add0Work,s2Step90Add1During,s2Step90Add1Work⟩

private def s2Step90HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 816],768⟩

private def s2Step90HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 836],770⟩

private def s2Step90HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 779, 844],769⟩

private def s2Step90HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 781],771⟩

private def s2Step90FrontHead : WindowBank := ⟨s2Step90HeadFOut,s2Step90HeadGOut,s2Step90HeadFvOut,s2Step90HeadGvOut⟩

private def s2Step90EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735],768⟩

private def s2Step90EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step90EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 779],769⟩

private def s2Step90EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789],771⟩

private def s2Step90FrontPair : WindowBank := ⟨s2Step90EntryFOut,s2Step90EntryGOut,s2Step90EntryFvOut,s2Step90EntryGvOut⟩

private def s2Step90FrontSigmaArena : Arena := ⟨s2Step90EntryGvAfter.live∪{793},Finset.union_subset s2Step90EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step90HeadFFresh : List Wire := [816]

private def s2Step90HeadFvFresh : List Wire := [836]

private def s2Step90HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90HeadGFresh : List Wire := [844]

private def s2Step90HeadGvFresh : List Wire := [781]

private def s2Step90FrontPlan : HmrSourceFront := ⟨s2Step90EntryGvAfter,s2Step90FrontPair,(growRow 768 s2Step90EntryFFresh ++ (growRow 769 s2Step90EntryGFresh ++ (growRow 770 s2Step90EntryFvFresh ++ (growRow 771 s2Step90EntryGvFresh ++ [])))),s2Step90FrontSigmaArena,[793],s2Step90HeadGBefore,[786],
  s2Step90HeadFvAfter,s2Step90FrontHead,(growRow 769 s2Step90HeadGFresh ++ (growRow 768 s2Step90HeadFFresh ++ (growRow 771 s2Step90HeadGvFresh ++ (growRow 770 s2Step90HeadFvFresh ++ [])))),s2Step90F4Plan,s2Step90CounterDuring,s2Step90CounterWork,s2Step90ExitGvAfter,s2Step90FrontOut,(shrinkRow 769 s2Step90ExitGExtra ++ (shrinkRow 768 s2Step90ExitFExtra ++ (shrinkRow 770 s2Step90ExitFvExtra ++ (shrinkRow 771 s2Step90ExitGvExtra ++ []))))⟩

private def s2Step90CompletePlan : HmrEarlyStepPlan := ⟨s2Step90FrontPlan,s2Step90EarlyControlArena,s2Step90EarlyControlPlan,s2Step90CompleteMoves⟩

private theorem s2Step90Complete_apart : List.Disjoint (s2Step90CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [793, 786, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874] := by
  have nd : ((s2Step90CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[793, 786, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step90Complete_owned : (s2Step90CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step90EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step90EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private def s2Step90CompleteMoveArena : Arena := ⟨s2Step90ExitGvAfter.live∪{735},Finset.union_subset s2Step90ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step90Complete_repack : s2Step90ExitGvAfter.checkRepack s2Step90CompleteMoves=some s2Step90EarlyControlArena := by
  have owned : 796∈s2Step90ExitGvAfter.live := by norm_num [s2Step90ExitGvAfter,arenaWires]
  have reserve : s2Step90ExitGvAfter.reserve {735}=some s2Step90CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step90ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step90CompleteMoveArena.retireSet {796}=s2Step90EarlyControlArena := by
    unfold Arena.retireSet s2Step90EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step90CompleteMoveArena,s2Step90ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step90CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step90CompleteMoveArena.retireSet {796}).checkRepack []=some s2Step90EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step90EarlyControl_branchOwned : ([786] : List Wire).toFinset⊆s2Step90EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step90EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90EarlyControl_branch : compileHmrBranchRetirement s2Step90EarlyControlSigmaArena 786=some s2Step90EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step90EarlyControl_branchOwned
  · ext q
    simp [s2Step90EarlyControlOutputArena,s2Step90EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step90EarlyControl_classEqualityBorrow : s2Step90EarlyControlPositiveArena.checkBorrow (([793, 844] : List Wire).length-1) s2Step90EarlyControlLog.classWork=some s2Step90EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step90EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step90EarlyControlPositiveArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step90EarlyControlEqualityArena,s2Step90EarlyControlPositiveArena,s2Step90EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step90EarlyControl_classEqualityOwned : ([793, 844] : List Wire).toFinset⊆s2Step90EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step90EarlyControlPositiveArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90EarlyControl_classEquality : compileHmrEqualityLog s2Step90EarlyControlPositiveArena [793, 844] 0 s2Step90EarlyControlLog.classWork=some (s2Step90EarlyControlEqualityArena,s2Step90EarlyControlLog.classWork,s2Step90EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step90EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step90EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step90EarlyControl_classOwned : ([777, 779, 793] : List Wire).toFinset⊆s2Step90EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step90EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90EarlyControl_positiveBorrow : s2Step90EarlyControlZeroArena.checkBorrow (1) s2Step90EarlyControlLog.positiveWork=some s2Step90EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step90EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step90EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step90EarlyControlPositiveArena,s2Step90EarlyControlZeroArena,s2Step90EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step90EarlyControl_class : compileHmrSourceClassLog s2Step90EarlyControlZeroArena false 777 s2Step90EarlyControlZeroPlan.top 0 793 s2Step90EarlyControlLog.positiveWork s2Step90EarlyControlLog.classWork=some s2Step90EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step90EarlyControlClassPlan s2Step90EarlyControlZeroArena false 777 s2Step90EarlyControlZeroPlan.top 0 793
  constructor
  · decide +kernel
  · exact s2Step90EarlyControl_classOwned
  · exact s2Step90EarlyControl_positiveBorrow
  · exact s2Step90EarlyControl_classEquality

private theorem s2Step90EarlyControl_entryRecordOwned : ([786, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874] : List Wire).toFinset⊆s2Step90EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step90EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90EarlyControl_entrySigmaOwned : ([793, 254] : List Wire).toFinset⊆s2Step90EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step90EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90EarlyControl_fitBorrow : s2Step90EarlyControlFlagArena.checkBorrow ((33-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874] : List Wire).length)) s2Step90EarlyControlLog.recordFresh=some s2Step90EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step90EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step90EarlyControlFlagArena (fun q => (0≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step90EarlyControlFittedArena,s2Step90EarlyControlFlagArena,s2Step90EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step90EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874] : List Wire).toFinset⊆s2Step90EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step90EarlyControlFlagArena (fun q => (0≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90EarlyControl_fit : compileHmrRecordGrowLog s2Step90EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874] 33 s2Step90EarlyControlLog.recordFresh=some s2Step90EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step90EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step90EarlyControl_fitBorrow

private theorem s2Step90EarlyControl_flagsBorrow : s2Step90EarlyControlEqualityArena.checkBorrow (6) s2Step90EarlyControlLog.flagWork=some s2Step90EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step90EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step90EarlyControlEqualityArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step90EarlyControlFlagArena,s2Step90EarlyControlEqualityArena,s2Step90EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step90EarlyControl_flagsOwned : ([785, 253, 252, 251] : List Wire).toFinset⊆s2Step90EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step90EarlyControlEqualityArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90EarlyControl_flags : compileHmrFlagsLog s2Step90EarlyControlClassPlan.equalityArena s2Step90EarlyControlClassPlan.equality.top 253 252 251 s2Step90EarlyControlLog.flagWork=some s2Step90EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step90EarlyControl_flagsOwned⟩
  · exact s2Step90EarlyControl_flagsBorrow

private theorem s2Step90EarlyControl_historyBorrow : s2Step90EarlyControlArena.checkBorrow ((33-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874] : List Wire).length)) s2Step90EarlyControlLog.recordFresh=some s2Step90EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step90EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step90EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step90EarlyControlHistoryArena,s2Step90EarlyControlArena,s2Step90EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step90EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874] : List Wire).toFinset⊆s2Step90EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step90EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90EarlyControl_history : compileHmrRecordGrowLog s2Step90EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874] 33 s2Step90EarlyControlLog.recordFresh=some s2Step90EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step90EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step90EarlyControl_historyBorrow

private theorem s2Step90EarlyControl_sigmaOwned : ([254, 793] : List Wire).toFinset⊆s2Step90EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step90EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90EarlyControl_sigmaReleaseOwned : ([793] : List Wire).toFinset⊆s2Step90EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step90EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90EarlyControl_sigmaRelease : s2Step90EarlyControlHistoryArena.release {793} (fun _ => false)=some s2Step90EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step90EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step90EarlyControlSigmaArena,s2Step90EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step90EarlyControl_sigma : compileHmrSigmaDropLog s2Step90EarlyControlHistoryArena false 0 0 254 793 []=some s2Step90EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step90EarlyControl_sigmaOwned⟩
  · exact s2Step90EarlyControl_sigmaRelease

private theorem s2Step90EarlyControl_zeroBorrow : s2Step90EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step90EarlyControlLog.zeroWork=some s2Step90EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step90EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step90EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step90EarlyControlZeroArena,s2Step90EarlyControlArena,s2Step90EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step90EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step90EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step90EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<796) ∨ (797≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90EarlyControl_zero : compileHmrEqualityLog s2Step90EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step90EarlyControlLog.zeroWork=some (s2Step90EarlyControlZeroArena,s2Step90EarlyControlLog.zeroWork,s2Step90EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step90EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step90EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step90EarlyControl_logged : s2Step90EarlyControlPlan.Logged s2Step90EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874] 777 793 254 253 252 251 786 33 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step90EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step90EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step90EarlyControl_zero
  · exact s2Step90EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step90EarlyControl_flags
  · exact s2Step90EarlyControl_fit
  · exact s2Step90EarlyControl_history
  · exact s2Step90EarlyControl_sigma
  · exact s2Step90EarlyControl_branch

private theorem s2Step90EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step90EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874] 777 793 254 253 252 251 786 33 s2Step90EarlyControlLog=some s2Step90EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step90EarlyControlPlan s2Step90EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874] 777 793 254 253 252 251 786 33 s2Step90EarlyControl_logged

private def s2Step90EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735],768⟩

private def s2Step90EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step90EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222],769⟩

private def s2Step90EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789],771⟩

private def s2Step90FrontBank : WindowBank := ⟨s2Step90EntryFRow,s2Step90EntryGRow,s2Step90EntryFvRow,s2Step90EntryGvRow⟩

private def s2Step90Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 816, 768]

private def s2Step90Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 779, 844, 769]

private def s2Step90Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 836, 770]

private def s2Step90Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 781, 771]

private theorem s2Step90Counter_apart : Disjoint s2Step90HeadFvAfter.live s2Step90CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step90HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90Counter_borrowed : s2Step90HeadFvAfter.checkBorrow 4 s2Step90CounterWork=some s2Step90CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step90HeadFvAfter s2Step90CounterDuring s2Step90CounterWork.toFinset s2Step90Counter_bounded s2Step90Counter_apart rfl

private theorem s2Step90Counter_owned : (793::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step90HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step90HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90Counter_checked : compileHmrCounterStepLog s2Step90HeadFvAfter true 793 [772, 773, 774, 775, 776, 777] s2Step90CounterWork=some s2Step90CounterDuring := by
  have owned : ∀q∈793::[772, 773, 774, 775, 776, 777],q∈s2Step90HeadFvAfter.live := fun q hq => s2Step90Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step90Counter_borrowed

private def s2Step90EntryFAfter : Arena := s2Step90EntryFBefore

private theorem s2Step90EntryBank_incomingDistinct : ([s2Step90EntryFRow,s2Step90EntryGRow,s2Step90EntryFvRow,s2Step90EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90EntryF_Incoming : rowsOwned s2Step90EntryFBefore [s2Step90EntryFRow,s2Step90EntryGRow,s2Step90EntryFvRow,s2Step90EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step90EntryFRow,s2Step90EntryGRow,s2Step90EntryFvRow,s2Step90EntryGvRow] 0 s2Step90EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step90EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step90EntryBank_outgoingOwned : rowsOwned s2Step90EntryGvAfter [s2Step90EntryFOut,s2Step90EntryGOut,s2Step90EntryFvOut,s2Step90EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step90EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step90EntryF_Outgoing : rowsOwned s2Step90EntryGvAfter [s2Step90EntryFOut,s2Step90EntryGOut,s2Step90EntryFvOut,s2Step90EntryGvOut] :=
  hmrRows_owned_drop s2Step90EntryGvAfter [s2Step90EntryFOut,s2Step90EntryGOut,s2Step90EntryFvOut,s2Step90EntryGvOut] 0 s2Step90EntryBank_outgoingOwned

private theorem s2Step90EntryF_distinct : (s2Step90EntryFRow.sign::s2Step90EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90EntryF_owned : (s2Step90EntryFRow.sign::s2Step90EntryFRow.payload).toFinset⊆s2Step90EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step90EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90EntryF_reserved : s2Step90EntryFBefore.reserve s2Step90EntryFFresh.toFinset=some s2Step90EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step90EntryFFresh,arenaWires]
  · norm_num [s2Step90EntryFBefore,s2Step90EntryFFresh,arenaWires]
  · simp only [s2Step90EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step90EntryF_checked : planRowResizeLog s2Step90EntryFBefore s2Step90EntryFRow 224 s2Step90EntryFFresh=
    some (s2Step90EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735],768⟩,growRow 768 s2Step90EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step90EntryFBefore s2Step90EntryFAfter s2Step90EntryFRow 224 s2Step90EntryFFresh
    s2Step90EntryF_distinct s2Step90EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step90EntryF_reserved
  have rowEq : WindowRow.mk (s2Step90EntryFRow.payload++s2Step90EntryFFresh) s2Step90EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step90EntryFvAfter : Arena := s2Step90EntryGAfter

private def s2Step90EntryFvBefore : Arena := s2Step90EntryGAfter

private theorem s2Step90EntryFv_Incoming : rowsOwned s2Step90EntryFvBefore [s2Step90EntryFvRow,s2Step90EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step90EntryFRow,s2Step90EntryGRow,s2Step90EntryFvRow,s2Step90EntryGvRow] 2 s2Step90EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step90EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step90EntryFv_Outgoing : rowsOwned s2Step90EntryGvAfter [s2Step90EntryFvOut,s2Step90EntryGvOut] :=
  hmrRows_owned_drop s2Step90EntryGvAfter [s2Step90EntryFOut,s2Step90EntryGOut,s2Step90EntryFvOut,s2Step90EntryGvOut] 2 s2Step90EntryBank_outgoingOwned

private theorem s2Step90EntryFv_distinct : (s2Step90EntryFvRow.sign::s2Step90EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90EntryFv_owned : (s2Step90EntryFvRow.sign::s2Step90EntryFvRow.payload).toFinset⊆s2Step90EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step90EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90EntryFv_reserved : s2Step90EntryFvBefore.reserve s2Step90EntryFvFresh.toFinset=some s2Step90EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step90EntryFvFresh,arenaWires]
  · norm_num [s2Step90EntryFvBefore,s2Step90EntryGAfter,s2Step90EntryFvFresh,arenaWires]
  · simp only [s2Step90EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step90EntryFv_checked : planRowResizeLog s2Step90EntryFvBefore s2Step90EntryFvRow 58 s2Step90EntryFvFresh=
    some (s2Step90EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩,growRow 770 s2Step90EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step90EntryFvBefore s2Step90EntryFvAfter s2Step90EntryFvRow 58 s2Step90EntryFvFresh
    s2Step90EntryFv_distinct s2Step90EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step90EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step90EntryFvRow.payload++s2Step90EntryFvFresh) s2Step90EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step90EntryGBefore : Arena := s2Step90EntryFBefore

private theorem s2Step90EntryG_Incoming : rowsOwned s2Step90EntryGBefore [s2Step90EntryGRow,s2Step90EntryFvRow,s2Step90EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step90EntryFRow,s2Step90EntryGRow,s2Step90EntryFvRow,s2Step90EntryGvRow] 1 s2Step90EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step90EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step90EntryG_Outgoing : rowsOwned s2Step90EntryGvAfter [s2Step90EntryGOut,s2Step90EntryFvOut,s2Step90EntryGvOut] :=
  hmrRows_owned_drop s2Step90EntryGvAfter [s2Step90EntryFOut,s2Step90EntryGOut,s2Step90EntryFvOut,s2Step90EntryGvOut] 1 s2Step90EntryBank_outgoingOwned

private theorem s2Step90EntryG_distinct : (s2Step90EntryGRow.sign::s2Step90EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90EntryG_owned : (s2Step90EntryGRow.sign::s2Step90EntryGRow.payload).toFinset⊆s2Step90EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step90EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90EntryG_reserved : s2Step90EntryGBefore.reserve s2Step90EntryGFresh.toFinset=some s2Step90EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step90EntryGFresh,arenaWires]
  · norm_num [s2Step90EntryGBefore,s2Step90EntryFBefore,s2Step90EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step90EntryGAfter,s2Step90EntryGBefore,s2Step90EntryFBefore,s2Step90EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step90EntryG_checked : planRowResizeLog s2Step90EntryGBefore s2Step90EntryGRow 224 s2Step90EntryGFresh=
    some (s2Step90EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 779],769⟩,growRow 769 s2Step90EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step90EntryGBefore s2Step90EntryGAfter s2Step90EntryGRow 224 s2Step90EntryGFresh
    s2Step90EntryG_distinct s2Step90EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step90EntryG_reserved
  have rowEq : WindowRow.mk (s2Step90EntryGRow.payload++s2Step90EntryGFresh) s2Step90EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 779],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step90EntryGvBefore : Arena := s2Step90EntryGAfter

private theorem s2Step90EntryGv_Incoming : rowsOwned s2Step90EntryGvBefore [s2Step90EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step90EntryFRow,s2Step90EntryGRow,s2Step90EntryFvRow,s2Step90EntryGvRow] 3 s2Step90EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step90EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step90EntryGv_Outgoing : rowsOwned s2Step90EntryGvAfter [s2Step90EntryGvOut] :=
  hmrRows_owned_drop s2Step90EntryGvAfter [s2Step90EntryFOut,s2Step90EntryGOut,s2Step90EntryFvOut,s2Step90EntryGvOut] 3 s2Step90EntryBank_outgoingOwned

private theorem s2Step90EntryGv_distinct : (s2Step90EntryGvRow.sign::s2Step90EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90EntryGv_owned : (s2Step90EntryGvRow.sign::s2Step90EntryGvRow.payload).toFinset⊆s2Step90EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step90EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90EntryGv_reserved : s2Step90EntryGvBefore.reserve s2Step90EntryGvFresh.toFinset=some s2Step90EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step90EntryGvFresh,arenaWires]
  · norm_num [s2Step90EntryGvBefore,s2Step90EntryGAfter,s2Step90EntryGvFresh,arenaWires]
  · simp only [s2Step90EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step90EntryGv_checked : planRowResizeLog s2Step90EntryGvBefore s2Step90EntryGvRow 58 s2Step90EntryGvFresh=
    some (s2Step90EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789],771⟩,growRow 771 s2Step90EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step90EntryGvBefore s2Step90EntryGvAfter s2Step90EntryGvRow 58 s2Step90EntryGvFresh
    s2Step90EntryGv_distinct s2Step90EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step90EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step90EntryGvRow.payload++s2Step90EntryGvFresh) s2Step90EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step90EntryBank_rows : planWindowRowsLog s2Step90EntryFBefore [(s2Step90EntryFRow,224),(s2Step90EntryGRow,224),(s2Step90EntryFvRow,58),(s2Step90EntryGvRow,58)] [s2Step90EntryFFresh,s2Step90EntryGFresh,s2Step90EntryFvFresh,s2Step90EntryGvFresh]=
    some (s2Step90EntryGvAfter,[s2Step90EntryFOut,s2Step90EntryGOut,s2Step90EntryFvOut,s2Step90EntryGvOut],(growRow 768 s2Step90EntryFFresh ++ (growRow 769 s2Step90EntryGFresh ++ (growRow 770 s2Step90EntryFvFresh ++ (growRow 771 s2Step90EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step90EntryGvAfter [] []=some (s2Step90EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step90EntryGvBefore s2Step90EntryGvAfter s2Step90EntryGvAfter
    s2Step90EntryGvRow s2Step90EntryGvOut 58 s2Step90EntryGvFresh [] [] []
    (growRow 771 s2Step90EntryGvFresh) ([]) s2Step90EntryGv_Incoming s2Step90EntryGv_checked h4 s2Step90EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step90EntryFvBefore s2Step90EntryFvAfter s2Step90EntryGvAfter
    s2Step90EntryFvRow s2Step90EntryFvOut 58 s2Step90EntryFvFresh [(s2Step90EntryGvRow,58)] [s2Step90EntryGvFresh] [s2Step90EntryGvOut]
    (growRow 770 s2Step90EntryFvFresh) ((growRow 771 s2Step90EntryGvFresh ++ [])) s2Step90EntryFv_Incoming s2Step90EntryFv_checked h3 s2Step90EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step90EntryGBefore s2Step90EntryGAfter s2Step90EntryGvAfter
    s2Step90EntryGRow s2Step90EntryGOut 224 s2Step90EntryGFresh [(s2Step90EntryFvRow,58),(s2Step90EntryGvRow,58)] [s2Step90EntryFvFresh,s2Step90EntryGvFresh] [s2Step90EntryFvOut,s2Step90EntryGvOut]
    (growRow 769 s2Step90EntryGFresh) ((growRow 770 s2Step90EntryFvFresh ++ (growRow 771 s2Step90EntryGvFresh ++ []))) s2Step90EntryG_Incoming s2Step90EntryG_checked h2 s2Step90EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step90EntryFBefore s2Step90EntryFAfter s2Step90EntryGvAfter
    s2Step90EntryFRow s2Step90EntryFOut 224 s2Step90EntryFFresh [(s2Step90EntryGRow,224),(s2Step90EntryFvRow,58),(s2Step90EntryGvRow,58)] [s2Step90EntryGFresh,s2Step90EntryFvFresh,s2Step90EntryGvFresh] [s2Step90EntryGOut,s2Step90EntryFvOut,s2Step90EntryGvOut]
    (growRow 768 s2Step90EntryFFresh) ((growRow 769 s2Step90EntryGFresh ++ (growRow 770 s2Step90EntryFvFresh ++ (growRow 771 s2Step90EntryGvFresh ++ [])))) s2Step90EntryF_Incoming s2Step90EntryF_checked h1 s2Step90EntryF_Outgoing
  exact h0

private theorem s2Step90EntryBank_checked : compileHmrBankResizeLog .entry s2Step90EntryFBefore ⟨s2Step90EntryFRow,s2Step90EntryGRow,s2Step90EntryFvRow,s2Step90EntryGvRow⟩ ⟨224,224,58,58⟩ [s2Step90EntryFFresh,s2Step90EntryGFresh,s2Step90EntryFvFresh,s2Step90EntryGvFresh]=
    some (s2Step90EntryGvAfter,⟨s2Step90EntryFOut,s2Step90EntryGOut,s2Step90EntryFvOut,s2Step90EntryGvOut⟩,(growRow 768 s2Step90EntryFFresh ++ (growRow 769 s2Step90EntryGFresh ++ (growRow 770 s2Step90EntryFvFresh ++ (growRow 771 s2Step90EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step90EntryBank_rows]
  rfl

private def s2Step90ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<735) ∨ (736≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90ExitFBefore : Arena := s2Step90ExitGAfter

private def s2Step90ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 816],768⟩

private def s2Step90ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 836],770⟩

private def s2Step90ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 779, 844],769⟩

private def s2Step90ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 781],771⟩

private theorem s2Step90ExitBank_incomingDistinct : ([s2Step90ExitGRow,s2Step90ExitFRow,s2Step90ExitFvRow,s2Step90ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90ExitF_Incoming : rowsOwned s2Step90ExitFBefore [s2Step90ExitFRow,s2Step90ExitFvRow,s2Step90ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step90ExitGRow,s2Step90ExitFRow,s2Step90ExitFvRow,s2Step90ExitGvRow] 1 s2Step90ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step90ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step90ExitBank_outgoingOwned : rowsOwned s2Step90ExitGvAfter [s2Step90ExitGOut,s2Step90ExitFOut,s2Step90ExitFvOut,s2Step90ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step90ExitGvAfter (fun q => (0≤q ∧ q<735) ∨ (736≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step90ExitF_Outgoing : rowsOwned s2Step90ExitGvAfter [s2Step90ExitFOut,s2Step90ExitFvOut,s2Step90ExitGvOut] :=
  hmrRows_owned_drop s2Step90ExitGvAfter [s2Step90ExitGOut,s2Step90ExitFOut,s2Step90ExitFvOut,s2Step90ExitGvOut] 1 s2Step90ExitBank_outgoingOwned

private theorem s2Step90ExitF_distinct : (s2Step90ExitFRow.sign::s2Step90ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90ExitF_owned : (s2Step90ExitFRow.sign::s2Step90ExitFRow.payload).toFinset⊆s2Step90ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step90ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90ExitF_retired : s2Step90ExitFBefore.retireSet s2Step90ExitFExtra.toFinset=s2Step90ExitFAfter := by
  unfold Arena.retireSet s2Step90ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step90ExitFBefore,s2Step90ExitGAfter,s2Step90ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step90ExitF_checked : planRowResizeLog s2Step90ExitFBefore s2Step90ExitFRow 223 []=
    some (s2Step90ExitFAfter,s2Step90ExitFOut,shrinkRow 768 s2Step90ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step90ExitFBefore s2Step90ExitFRow 223 s2Step90ExitF_distinct s2Step90ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step90ExitFRow.payload.take 223) s2Step90ExitFRow.sign=s2Step90ExitFOut := by decide +kernel
  have hi : s2Step90ExitFRow.payload.drop 223=s2Step90ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step90ExitF_retired] at result
  exact result

private def s2Step90ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<735) ∨ (736≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90ExitFvBefore : Arena := s2Step90ExitFAfter

private theorem s2Step90ExitFv_Incoming : rowsOwned s2Step90ExitFvBefore [s2Step90ExitFvRow,s2Step90ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step90ExitGRow,s2Step90ExitFRow,s2Step90ExitFvRow,s2Step90ExitGvRow] 2 s2Step90ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step90ExitFvBefore (fun q => (0≤q ∧ q<735) ∨ (736≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step90ExitFv_Outgoing : rowsOwned s2Step90ExitGvAfter [s2Step90ExitFvOut,s2Step90ExitGvOut] :=
  hmrRows_owned_drop s2Step90ExitGvAfter [s2Step90ExitGOut,s2Step90ExitFOut,s2Step90ExitFvOut,s2Step90ExitGvOut] 2 s2Step90ExitBank_outgoingOwned

private theorem s2Step90ExitFv_distinct : (s2Step90ExitFvRow.sign::s2Step90ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90ExitFv_owned : (s2Step90ExitFvRow.sign::s2Step90ExitFvRow.payload).toFinset⊆s2Step90ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step90ExitFvBefore (fun q => (0≤q ∧ q<735) ∨ (736≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90ExitFv_retired : s2Step90ExitFvBefore.retireSet s2Step90ExitFvExtra.toFinset=s2Step90ExitFvAfter := by
  unfold Arena.retireSet s2Step90ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step90ExitFvBefore,s2Step90ExitFAfter,s2Step90ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step90ExitFv_checked : planRowResizeLog s2Step90ExitFvBefore s2Step90ExitFvRow 58 []=
    some (s2Step90ExitFvAfter,s2Step90ExitFvOut,shrinkRow 770 s2Step90ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step90ExitFvBefore s2Step90ExitFvRow 58 s2Step90ExitFv_distinct s2Step90ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step90ExitFvRow.payload.take 58) s2Step90ExitFvRow.sign=s2Step90ExitFvOut := by decide +kernel
  have hi : s2Step90ExitFvRow.payload.drop 58=s2Step90ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step90ExitFv_retired] at result
  exact result

private def s2Step90ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private theorem s2Step90ExitG_Incoming : rowsOwned s2Step90ExitGBefore [s2Step90ExitGRow,s2Step90ExitFRow,s2Step90ExitFvRow,s2Step90ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step90ExitGRow,s2Step90ExitFRow,s2Step90ExitFvRow,s2Step90ExitGvRow] 0 s2Step90ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step90ExitGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step90ExitG_Outgoing : rowsOwned s2Step90ExitGvAfter [s2Step90ExitGOut,s2Step90ExitFOut,s2Step90ExitFvOut,s2Step90ExitGvOut] :=
  hmrRows_owned_drop s2Step90ExitGvAfter [s2Step90ExitGOut,s2Step90ExitFOut,s2Step90ExitFvOut,s2Step90ExitGvOut] 0 s2Step90ExitBank_outgoingOwned

private theorem s2Step90ExitG_distinct : (s2Step90ExitGRow.sign::s2Step90ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90ExitG_owned : (s2Step90ExitGRow.sign::s2Step90ExitGRow.payload).toFinset⊆s2Step90ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step90ExitGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90ExitG_retired : s2Step90ExitGBefore.retireSet s2Step90ExitGExtra.toFinset=s2Step90ExitGAfter := by
  unfold Arena.retireSet s2Step90ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step90ExitGBefore,s2Step90ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step90ExitG_checked : planRowResizeLog s2Step90ExitGBefore s2Step90ExitGRow 223 []=
    some (s2Step90ExitGAfter,s2Step90ExitGOut,shrinkRow 769 s2Step90ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step90ExitGBefore s2Step90ExitGRow 223 s2Step90ExitG_distinct s2Step90ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step90ExitGRow.payload.take 223) s2Step90ExitGRow.sign=s2Step90ExitGOut := by decide +kernel
  have hi : s2Step90ExitGRow.payload.drop 223=s2Step90ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step90ExitG_retired] at result
  exact result

private def s2Step90ExitGvBefore : Arena := s2Step90ExitFvAfter

private theorem s2Step90ExitGv_Incoming : rowsOwned s2Step90ExitGvBefore [s2Step90ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step90ExitGRow,s2Step90ExitFRow,s2Step90ExitFvRow,s2Step90ExitGvRow] 3 s2Step90ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step90ExitGvBefore (fun q => (0≤q ∧ q<735) ∨ (736≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step90ExitGv_Outgoing : rowsOwned s2Step90ExitGvAfter [s2Step90ExitGvOut] :=
  hmrRows_owned_drop s2Step90ExitGvAfter [s2Step90ExitGOut,s2Step90ExitFOut,s2Step90ExitFvOut,s2Step90ExitGvOut] 3 s2Step90ExitBank_outgoingOwned

private theorem s2Step90ExitGv_distinct : (s2Step90ExitGvRow.sign::s2Step90ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90ExitGv_owned : (s2Step90ExitGvRow.sign::s2Step90ExitGvRow.payload).toFinset⊆s2Step90ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step90ExitGvBefore (fun q => (0≤q ∧ q<735) ∨ (736≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90ExitGv_retired : s2Step90ExitGvBefore.retireSet s2Step90ExitGvExtra.toFinset=s2Step90ExitGvAfter := by
  unfold Arena.retireSet s2Step90ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step90ExitGvBefore,s2Step90ExitFvAfter,s2Step90ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step90ExitGv_checked : planRowResizeLog s2Step90ExitGvBefore s2Step90ExitGvRow 58 []=
    some (s2Step90ExitGvAfter,s2Step90ExitGvOut,shrinkRow 771 s2Step90ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step90ExitGvBefore s2Step90ExitGvRow 58 s2Step90ExitGv_distinct s2Step90ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step90ExitGvRow.payload.take 58) s2Step90ExitGvRow.sign=s2Step90ExitGvOut := by decide +kernel
  have hi : s2Step90ExitGvRow.payload.drop 58=s2Step90ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step90ExitGv_retired] at result
  exact result

private theorem s2Step90ExitBank_rows : planWindowRowsLog s2Step90ExitGBefore [(s2Step90ExitGRow,223),(s2Step90ExitFRow,223),(s2Step90ExitFvRow,58),(s2Step90ExitGvRow,58)] [[],[],[],[]]=
    some (s2Step90ExitGvAfter,[s2Step90ExitGOut,s2Step90ExitFOut,s2Step90ExitFvOut,s2Step90ExitGvOut],(shrinkRow 769 s2Step90ExitGExtra ++ (shrinkRow 768 s2Step90ExitFExtra ++ (shrinkRow 770 s2Step90ExitFvExtra ++ (shrinkRow 771 s2Step90ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step90ExitGvAfter [] []=some (s2Step90ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step90ExitGvBefore s2Step90ExitGvAfter s2Step90ExitGvAfter
    s2Step90ExitGvRow s2Step90ExitGvOut 58 [] [] [] []
    (shrinkRow 771 s2Step90ExitGvExtra) ([]) s2Step90ExitGv_Incoming s2Step90ExitGv_checked h4 s2Step90ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step90ExitFvBefore s2Step90ExitFvAfter s2Step90ExitGvAfter
    s2Step90ExitFvRow s2Step90ExitFvOut 58 [] [(s2Step90ExitGvRow,58)] [[]] [s2Step90ExitGvOut]
    (shrinkRow 770 s2Step90ExitFvExtra) ((shrinkRow 771 s2Step90ExitGvExtra ++ [])) s2Step90ExitFv_Incoming s2Step90ExitFv_checked h3 s2Step90ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step90ExitFBefore s2Step90ExitFAfter s2Step90ExitGvAfter
    s2Step90ExitFRow s2Step90ExitFOut 223 [] [(s2Step90ExitFvRow,58),(s2Step90ExitGvRow,58)] [[],[]] [s2Step90ExitFvOut,s2Step90ExitGvOut]
    (shrinkRow 768 s2Step90ExitFExtra) ((shrinkRow 770 s2Step90ExitFvExtra ++ (shrinkRow 771 s2Step90ExitGvExtra ++ []))) s2Step90ExitF_Incoming s2Step90ExitF_checked h2 s2Step90ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step90ExitGBefore s2Step90ExitGAfter s2Step90ExitGvAfter
    s2Step90ExitGRow s2Step90ExitGOut 223 [] [(s2Step90ExitFRow,223),(s2Step90ExitFvRow,58),(s2Step90ExitGvRow,58)] [[],[],[]] [s2Step90ExitFOut,s2Step90ExitFvOut,s2Step90ExitGvOut]
    (shrinkRow 769 s2Step90ExitGExtra) ((shrinkRow 768 s2Step90ExitFExtra ++ (shrinkRow 770 s2Step90ExitFvExtra ++ (shrinkRow 771 s2Step90ExitGvExtra ++ [])))) s2Step90ExitG_Incoming s2Step90ExitG_checked h1 s2Step90ExitG_Outgoing
  exact h0

private theorem s2Step90ExitBank_checked : compileHmrBankResizeLog .exit s2Step90ExitGBefore ⟨s2Step90ExitFRow,s2Step90ExitGRow,s2Step90ExitFvRow,s2Step90ExitGvRow⟩ ⟨223,223,58,58⟩ [[],[],[],[]]=
    some (s2Step90ExitGvAfter,⟨s2Step90ExitFOut,s2Step90ExitGOut,s2Step90ExitFvOut,s2Step90ExitGvOut⟩,(shrinkRow 769 s2Step90ExitGExtra ++ (shrinkRow 768 s2Step90ExitFExtra ++ (shrinkRow 770 s2Step90ExitFvExtra ++ (shrinkRow 771 s2Step90ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step90ExitBank_rows]
  rfl

private theorem s2Step90Add0_apart : Disjoint s2Step90Add0Arena.live s2Step90Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step90Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90Add0_card : s2Step90Add0Arena.live.card=870 := by
  decide +kernel

private theorem s2Step90Add0_borrowed : s2Step90Add0Arena.checkBorrow (hmrHybridCount s2Step90Add0Arena s2Step90Add0B.length) s2Step90Add0Work=some s2Step90Add0During := by
  have len : s2Step90Add0Work.length=hmrHybridCount s2Step90Add0Arena s2Step90Add0B.length := by
    rw [hmrHybridCount,s2Step90Add0_card]
    decide +kernel
  have nd : s2Step90Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step90Add0Arena s2Step90Add0During s2Step90Add0Work.toFinset s2Step90Add0_bounded s2Step90Add0_apart rfl

private theorem s2Step90Add0_distinct : (785::786::839::(s2Step90Add0A++s2Step90Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90Add0_owned : (785::786::839::(s2Step90Add0A++s2Step90Add0B)).toFinset⊆s2Step90Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step90Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90Add0_checked : compileHmrHybridCinLog s2Step90Add0Arena 786 785 839 s2Step90Add0A s2Step90Add0B s2Step90Add0Work=some s2Step90Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step90Add0Arena s2Step90Add0During 786 785 839 s2Step90Add0A s2Step90Add0B s2Step90Add0Work
    (by decide +kernel) (by decide +kernel) s2Step90Add0_distinct
    (fun q hq => s2Step90Add0_owned (List.mem_toFinset.mpr hq)) s2Step90Add0_borrowed

private theorem s2Step90Add1_apart : Disjoint s2Step90Add1Arena.live s2Step90Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step90Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90Add1_card : s2Step90Add1Arena.live.card=870 := by
  decide +kernel

private theorem s2Step90Add1_borrowed : s2Step90Add1Arena.checkBorrow (hmrHybridCount s2Step90Add1Arena s2Step90Add1B.length) s2Step90Add1Work=some s2Step90Add1During := by
  have len : s2Step90Add1Work.length=hmrHybridCount s2Step90Add1Arena s2Step90Add1B.length := by
    rw [hmrHybridCount,s2Step90Add1_card]
    decide +kernel
  have nd : s2Step90Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step90Add1Arena s2Step90Add1During s2Step90Add1Work.toFinset s2Step90Add1_bounded s2Step90Add1_apart rfl

private theorem s2Step90Add1_distinct : (785::786::839::(s2Step90Add1A++s2Step90Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90Add1_owned : (785::786::839::(s2Step90Add1A++s2Step90Add1B)).toFinset⊆s2Step90Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step90Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90Add1_checked : compileHmrHybridCinLog s2Step90Add1Arena 786 785 839 s2Step90Add1A s2Step90Add1B s2Step90Add1Work=some s2Step90Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step90Add1Arena s2Step90Add1During 786 785 839 s2Step90Add1A s2Step90Add1B s2Step90Add1Work
    (by decide +kernel) (by decide +kernel) s2Step90Add1_distinct
    (fun q hq => s2Step90Add1_owned (List.mem_toFinset.mpr hq)) s2Step90Add1_borrowed

private theorem s2Step90F4_apart : Disjoint (s2Step90Add0A++s2Step90Add0B).toFinset (s2Step90Add1A++s2Step90Add1B).toFinset := by
  have nd : ((s2Step90Add0A++s2Step90Add0B)++(s2Step90Add1A++s2Step90Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step90F4_carry : s2Step90F4FlagArena.checkBorrow 1 [839]=some s2Step90Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step90F4FlagArena,s2Step90HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step90F4FlagArena,s2Step90HeadFvAfter,s2Step90Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step90F4_distinct : (793::786::785::839::((s2Step90Add0A++s2Step90Add1A)++(s2Step90Add0B++s2Step90Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90F4_flag : s2Step90HeadFvAfter.checkBorrow 1 [785]=some s2Step90F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step90HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step90F4_owned : (793::786::((s2Step90Add0A++s2Step90Add1A)++(s2Step90Add0B++s2Step90Add1B))).toFinset⊆s2Step90HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step90HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90F4_checked : compileHmrHybridF4Log s2Step90HeadFvAfter 793 786 s2Step90Add0A s2Step90Add0B s2Step90Add1A s2Step90Add1B [785] [839] s2Step90Add0Work s2Step90Add1Work=some s2Step90F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step90HeadFvAfter s2Step90F4FlagArena s2Step90Add0Arena s2Step90Add0During s2Step90Add1During 793 786
    s2Step90Add0A s2Step90Add0B s2Step90Add1A s2Step90Add1B [785] [839] s2Step90Add0Work s2Step90Add1Work
    (fun q hq => s2Step90F4_owned (List.mem_toFinset.mpr hq)) s2Step90F4_flag s2Step90F4_carry
    s2Step90F4_distinct s2Step90F4_apart s2Step90Add0_checked s2Step90Add1_checked

private theorem s2Step90Front_branch : s2Step90FrontSigmaArena.checkBorrow 1 [786]=some s2Step90HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step90FrontSigmaArena,s2Step90EntryGvAfter,s2Step90EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step90FrontSigmaArena,s2Step90EntryGvAfter,s2Step90EntryGAfter,s2Step90HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step90Front_entry : HmrFrontEntryValid s2Step90EntryFBefore s2Step90FrontBank 224 58 ⟨223,223,58,58⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step90FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step90EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step90EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step90FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step90Front_sigma : s2Step90EntryGvAfter.checkBorrow 1 [793]=some s2Step90FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step90EntryGvAfter,s2Step90EntryGAfter,arenaWires]
  · rfl

private def s2Step90HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90HeadFBefore : Arena := s2Step90HeadGAfter

private def s2Step90HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735],768⟩

private def s2Step90HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step90HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 779],769⟩

private def s2Step90HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789],771⟩

private theorem s2Step90HeadBank_incomingDistinct : ([s2Step90HeadGRow,s2Step90HeadFRow,s2Step90HeadGvRow,s2Step90HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90HeadF_Incoming : rowsOwned s2Step90HeadFBefore [s2Step90HeadFRow,s2Step90HeadGvRow,s2Step90HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step90HeadGRow,s2Step90HeadFRow,s2Step90HeadGvRow,s2Step90HeadFvRow] 1 s2Step90HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step90HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step90HeadBank_outgoingOwned : rowsOwned s2Step90HeadFvAfter [s2Step90HeadGOut,s2Step90HeadFOut,s2Step90HeadGvOut,s2Step90HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step90HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step90HeadF_Outgoing : rowsOwned s2Step90HeadFvAfter [s2Step90HeadFOut,s2Step90HeadGvOut,s2Step90HeadFvOut] :=
  hmrRows_owned_drop s2Step90HeadFvAfter [s2Step90HeadGOut,s2Step90HeadFOut,s2Step90HeadGvOut,s2Step90HeadFvOut] 1 s2Step90HeadBank_outgoingOwned

private theorem s2Step90HeadF_distinct : (s2Step90HeadFRow.sign::s2Step90HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90HeadF_owned : (s2Step90HeadFRow.sign::s2Step90HeadFRow.payload).toFinset⊆s2Step90HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step90HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90HeadF_reserved : s2Step90HeadFBefore.reserve s2Step90HeadFFresh.toFinset=some s2Step90HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step90HeadFFresh,arenaWires]
  · norm_num [s2Step90HeadFBefore,s2Step90HeadGAfter,s2Step90HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step90HeadFAfter,s2Step90HeadFBefore,s2Step90HeadGAfter,s2Step90HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step90HeadF_checked : planRowResizeLog s2Step90HeadFBefore s2Step90HeadFRow 225 s2Step90HeadFFresh=
    some (s2Step90HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 816],768⟩,growRow 768 s2Step90HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step90HeadFBefore s2Step90HeadFAfter s2Step90HeadFRow 225 s2Step90HeadFFresh
    s2Step90HeadF_distinct s2Step90HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step90HeadF_reserved
  have rowEq : WindowRow.mk (s2Step90HeadFRow.payload++s2Step90HeadFFresh) s2Step90HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 816],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step90HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step90HeadFvBefore : Arena := s2Step90HeadGvAfter

private theorem s2Step90HeadFv_Incoming : rowsOwned s2Step90HeadFvBefore [s2Step90HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step90HeadGRow,s2Step90HeadFRow,s2Step90HeadGvRow,s2Step90HeadFvRow] 3 s2Step90HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step90HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step90HeadFv_Outgoing : rowsOwned s2Step90HeadFvAfter [s2Step90HeadFvOut] :=
  hmrRows_owned_drop s2Step90HeadFvAfter [s2Step90HeadGOut,s2Step90HeadFOut,s2Step90HeadGvOut,s2Step90HeadFvOut] 3 s2Step90HeadBank_outgoingOwned

private theorem s2Step90HeadFv_distinct : (s2Step90HeadFvRow.sign::s2Step90HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90HeadFv_owned : (s2Step90HeadFvRow.sign::s2Step90HeadFvRow.payload).toFinset⊆s2Step90HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step90HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90HeadFv_reserved : s2Step90HeadFvBefore.reserve s2Step90HeadFvFresh.toFinset=some s2Step90HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step90HeadFvFresh,arenaWires]
  · norm_num [s2Step90HeadFvBefore,s2Step90HeadGvAfter,s2Step90HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step90HeadFvAfter,s2Step90HeadFvBefore,s2Step90HeadGvAfter,s2Step90HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step90HeadFv_checked : planRowResizeLog s2Step90HeadFvBefore s2Step90HeadFvRow 59 s2Step90HeadFvFresh=
    some (s2Step90HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 836],770⟩,growRow 770 s2Step90HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step90HeadFvBefore s2Step90HeadFvAfter s2Step90HeadFvRow 59 s2Step90HeadFvFresh
    s2Step90HeadFv_distinct s2Step90HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step90HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step90HeadFvRow.payload++s2Step90HeadFvFresh) s2Step90HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 836],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step90HeadG_Incoming : rowsOwned s2Step90HeadGBefore [s2Step90HeadGRow,s2Step90HeadFRow,s2Step90HeadGvRow,s2Step90HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step90HeadGRow,s2Step90HeadFRow,s2Step90HeadGvRow,s2Step90HeadFvRow] 0 s2Step90HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step90HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step90HeadG_Outgoing : rowsOwned s2Step90HeadFvAfter [s2Step90HeadGOut,s2Step90HeadFOut,s2Step90HeadGvOut,s2Step90HeadFvOut] :=
  hmrRows_owned_drop s2Step90HeadFvAfter [s2Step90HeadGOut,s2Step90HeadFOut,s2Step90HeadGvOut,s2Step90HeadFvOut] 0 s2Step90HeadBank_outgoingOwned

private theorem s2Step90HeadG_distinct : (s2Step90HeadGRow.sign::s2Step90HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90HeadG_owned : (s2Step90HeadGRow.sign::s2Step90HeadGRow.payload).toFinset⊆s2Step90HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step90HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90HeadG_reserved : s2Step90HeadGBefore.reserve s2Step90HeadGFresh.toFinset=some s2Step90HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step90HeadGFresh,arenaWires]
  · norm_num [s2Step90HeadGBefore,s2Step90HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step90HeadGAfter,s2Step90HeadGBefore,s2Step90HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step90HeadG_checked : planRowResizeLog s2Step90HeadGBefore s2Step90HeadGRow 225 s2Step90HeadGFresh=
    some (s2Step90HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 779, 844],769⟩,growRow 769 s2Step90HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step90HeadGBefore s2Step90HeadGAfter s2Step90HeadGRow 225 s2Step90HeadGFresh
    s2Step90HeadG_distinct s2Step90HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step90HeadG_reserved
  have rowEq : WindowRow.mk (s2Step90HeadGRow.payload++s2Step90HeadGFresh) s2Step90HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 779, 844],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step90HeadGvBefore : Arena := s2Step90HeadFAfter

private theorem s2Step90HeadGv_Incoming : rowsOwned s2Step90HeadGvBefore [s2Step90HeadGvRow,s2Step90HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step90HeadGRow,s2Step90HeadFRow,s2Step90HeadGvRow,s2Step90HeadFvRow] 2 s2Step90HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step90HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step90HeadGv_Outgoing : rowsOwned s2Step90HeadFvAfter [s2Step90HeadGvOut,s2Step90HeadFvOut] :=
  hmrRows_owned_drop s2Step90HeadFvAfter [s2Step90HeadGOut,s2Step90HeadFOut,s2Step90HeadGvOut,s2Step90HeadFvOut] 2 s2Step90HeadBank_outgoingOwned

private theorem s2Step90HeadGv_distinct : (s2Step90HeadGvRow.sign::s2Step90HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step90HeadGv_owned : (s2Step90HeadGvRow.sign::s2Step90HeadGvRow.payload).toFinset⊆s2Step90HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step90HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (874≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step90HeadGv_reserved : s2Step90HeadGvBefore.reserve s2Step90HeadGvFresh.toFinset=some s2Step90HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step90HeadGvFresh,arenaWires]
  · norm_num [s2Step90HeadGvBefore,s2Step90HeadFAfter,s2Step90HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step90HeadGvAfter,s2Step90HeadGvBefore,s2Step90HeadFAfter,s2Step90HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step90HeadGv_checked : planRowResizeLog s2Step90HeadGvBefore s2Step90HeadGvRow 59 s2Step90HeadGvFresh=
    some (s2Step90HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 781],771⟩,growRow 771 s2Step90HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step90HeadGvBefore s2Step90HeadGvAfter s2Step90HeadGvRow 59 s2Step90HeadGvFresh
    s2Step90HeadGv_distinct s2Step90HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step90HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step90HeadGvRow.payload++s2Step90HeadGvFresh) s2Step90HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 781],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step90HeadBank_rows : planWindowRowsLog s2Step90HeadGBefore [(s2Step90HeadGRow,225),(s2Step90HeadFRow,225),(s2Step90HeadGvRow,59),(s2Step90HeadFvRow,59)] [s2Step90HeadGFresh,s2Step90HeadFFresh,s2Step90HeadGvFresh,s2Step90HeadFvFresh]=
    some (s2Step90HeadFvAfter,[s2Step90HeadGOut,s2Step90HeadFOut,s2Step90HeadGvOut,s2Step90HeadFvOut],(growRow 769 s2Step90HeadGFresh ++ (growRow 768 s2Step90HeadFFresh ++ (growRow 771 s2Step90HeadGvFresh ++ (growRow 770 s2Step90HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step90HeadFvAfter [] []=some (s2Step90HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step90HeadFvBefore s2Step90HeadFvAfter s2Step90HeadFvAfter
    s2Step90HeadFvRow s2Step90HeadFvOut 59 s2Step90HeadFvFresh [] [] []
    (growRow 770 s2Step90HeadFvFresh) ([]) s2Step90HeadFv_Incoming s2Step90HeadFv_checked h4 s2Step90HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step90HeadGvBefore s2Step90HeadGvAfter s2Step90HeadFvAfter
    s2Step90HeadGvRow s2Step90HeadGvOut 59 s2Step90HeadGvFresh [(s2Step90HeadFvRow,59)] [s2Step90HeadFvFresh] [s2Step90HeadFvOut]
    (growRow 771 s2Step90HeadGvFresh) ((growRow 770 s2Step90HeadFvFresh ++ [])) s2Step90HeadGv_Incoming s2Step90HeadGv_checked h3 s2Step90HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step90HeadFBefore s2Step90HeadFAfter s2Step90HeadFvAfter
    s2Step90HeadFRow s2Step90HeadFOut 225 s2Step90HeadFFresh [(s2Step90HeadGvRow,59),(s2Step90HeadFvRow,59)] [s2Step90HeadGvFresh,s2Step90HeadFvFresh] [s2Step90HeadGvOut,s2Step90HeadFvOut]
    (growRow 768 s2Step90HeadFFresh) ((growRow 771 s2Step90HeadGvFresh ++ (growRow 770 s2Step90HeadFvFresh ++ []))) s2Step90HeadF_Incoming s2Step90HeadF_checked h2 s2Step90HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step90HeadGBefore s2Step90HeadGAfter s2Step90HeadFvAfter
    s2Step90HeadGRow s2Step90HeadGOut 225 s2Step90HeadGFresh [(s2Step90HeadFRow,225),(s2Step90HeadGvRow,59),(s2Step90HeadFvRow,59)] [s2Step90HeadFFresh,s2Step90HeadGvFresh,s2Step90HeadFvFresh] [s2Step90HeadFOut,s2Step90HeadGvOut,s2Step90HeadFvOut]
    (growRow 769 s2Step90HeadGFresh) ((growRow 768 s2Step90HeadFFresh ++ (growRow 771 s2Step90HeadGvFresh ++ (growRow 770 s2Step90HeadFvFresh ++ [])))) s2Step90HeadG_Incoming s2Step90HeadG_checked h1 s2Step90HeadG_Outgoing
  exact h0

private theorem s2Step90HeadBank_checked : compileHmrBankResizeLog .headroom s2Step90HeadGBefore ⟨s2Step90HeadFRow,s2Step90HeadGRow,s2Step90HeadFvRow,s2Step90HeadGvRow⟩ ⟨225,225,59,59⟩ [s2Step90HeadGFresh,s2Step90HeadFFresh,s2Step90HeadGvFresh,s2Step90HeadFvFresh]=
    some (s2Step90HeadFvAfter,⟨s2Step90HeadFOut,s2Step90HeadGOut,s2Step90HeadFvOut,s2Step90HeadGvOut⟩,(growRow 769 s2Step90HeadGFresh ++ (growRow 768 s2Step90HeadFFresh ++ (growRow 771 s2Step90HeadGvFresh ++ (growRow 770 s2Step90HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step90HeadBank_rows]
  rfl

private theorem s2Step90Front_checked : compileHmrSourceFrontLog s2Step90EntryFBefore s2Step90FrontBank 224 58 ⟨223,223,58,58⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step90FrontLog=some s2Step90FrontPlan := by
  have pairEq : s2Step90FrontPair=⟨s2Step90HeadFRow,s2Step90HeadGRow,s2Step90HeadFvRow,s2Step90HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step90FrontHead=⟨s2Step90ExitFRow,s2Step90ExitGRow,s2Step90ExitFvRow,s2Step90ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step90Add0A=s2Step90FrontHead.f.wires := by decide +kernel
  have gEq : s2Step90Add0B=s2Step90FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step90Add1A=s2Step90FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step90Add1B=s2Step90FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step90EntryFBefore s2Step90FrontBank 224 58 ⟨223,223,58,58⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step90FrontLog s2Step90FrontPlan
  · exact s2Step90Front_entry
  · exact s2Step90EntryBank_checked
  · exact s2Step90Front_sigma
  · rfl
  · exact s2Step90Front_branch
  · rfl
  · simpa only [s2Step90FrontPlan,pairEq] using s2Step90HeadBank_checked
  · simpa only [s2Step90FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step90F4_checked
  · exact s2Step90Counter_checked
  · rfl
  · simpa only [s2Step90FrontPlan,headEq] using s2Step90ExitBank_checked

private theorem s2Step90Complete_explicit_checked : compileHmrEarlyStepLog s2Step90EntryFBefore s2Step90FrontBank 224 58 ⟨223,223,58,58⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874] 33 s2Step90CompleteLog=some s2Step90CompletePlan := by
  let Q := s2Step90EarlyControlPlan
  have hq := s2Step90EarlyControl_plan_checked
  have fv1 : s2Step90CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step90CompleteOut.fv.payload[2]?.getD s2Step90CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step90CompleteOut.fv.payload[3]?.getD s2Step90CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step90CompleteOut.fv.payload[4]?.getD s2Step90CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step90EntryFBefore s2Step90EarlyControlArena s2Step90FrontBank 224 58 ⟨223,223,58,58⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874] 33 s2Step90CompleteLog s2Step90FrontPlan Q
    s2Step90Front_checked s2Step90Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step90Complete_owned s2Step90Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step90EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874] 777 793 s2Step90CompleteOut.fv.second (s2Step90CompleteOut.fv.payload[2]?.getD s2Step90CompleteOut.fv.sign) (s2Step90CompleteOut.fv.payload[3]?.getD s2Step90CompleteOut.fv.sign) (s2Step90CompleteOut.fv.payload[4]?.getD s2Step90CompleteOut.fv.sign) 786 33 s2Step90EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep90Arena : Arena := s2Step90EntryFBefore
def s2PrivateStep90Bank : WindowBank := s2Step90FrontBank
def s2PrivateStep90Spec : HmrSourceWalkStepLog := ⟨224,58,⟨223,223,58,58⟩,33,.early s2Step90CompleteLog⟩
def s2PrivateStep90Plan : HmrSourceStepPlan := .early s2Step90CompletePlan
theorem s2PrivateStep90_source : s2PrivateStep90Spec=s2ObservedLogs80[10] := rfl
theorem s2PrivateStep90_checked : compileHmrSourceStepLog s2PrivateStep90Arena s2PrivateStep90Bank
    s2PrivateStep90Spec.fgWidth s2PrivateStep90Spec.vWidth s2PrivateStep90Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874]
    6 498 90 s2PrivateStep90Spec.need none s2PrivateStep90Spec.log=some s2PrivateStep90Plan := by
  change compileHmrSourceStepLog s2Step90EntryFBefore s2Step90FrontBank 224 58 ⟨223,223,58,58⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874] 6 498 90 33 none (.early s2Step90CompleteLog)=some (.early s2Step90CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 90<498)]
  rw [s2Step90Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
