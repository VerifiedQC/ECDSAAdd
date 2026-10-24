import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep78
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

private def s2Step80CompleteMoves : List (Wire × Wire) := [(841,227)]

private def s2Step80EarlyControlLog : HmrEarlyControlLog := ⟨[841, 836, 816, 844, 784],[845],[846],[847, 849, 851, 867, 873, 874],[]⟩

private def s2Step80FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [784], [783], []],[[845], [844], [836], [816]],[[], [], [], []]⟩,[842],[782],[846],[847],[849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924],[846, 847, 849, 851]⟩

private def s2Step80CompleteLog : HmrEarlyStepLog := ⟨s2Step80FrontLog,s2Step80CompleteMoves,s2Step80EarlyControlLog⟩

private def s2Step80ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩

private def s2Step80ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783],770⟩

private def s2Step80ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226],769⟩

private def s2Step80ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩

private def s2Step80FrontOut : WindowBank := ⟨s2Step80ExitFOut,s2Step80ExitGOut,s2Step80ExitFvOut,s2Step80ExitGvOut⟩

private def s2Step80CompleteOut : WindowBank := s2Step80FrontOut.repacked s2Step80CompleteMoves

private def s2Step80EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step80EarlyControlPositiveArena,[845],s2Step80EarlyControlEqualityArena,[846],⟨⟨842,false⟩,[⟨⟨845,false⟩,846⟩]⟩⟩

private def s2Step80EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<875)),Finset.filter_subset _ _⟩

private def s2Step80EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<875)),Finset.filter_subset _ _⟩

private def s2Step80EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,841⟩,⟨⟨774,false⟩,836⟩,⟨⟨775,false⟩,816⟩,⟨⟨776,false⟩,844⟩,⟨⟨777,false⟩,784⟩]⟩

private def s2Step80EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step80EarlyControlZeroArena,s2Step80EarlyControlZeroPlan,s2Step80EarlyControlClassPlan,s2Step80EarlyControlFlagArena,s2Step80EarlyControlFittedArena,s2Step80EarlyControlHistoryArena,s2Step80EarlyControlSigmaArena,s2Step80EarlyControlOutputArena,s2Step80EarlyControlLog⟩

private def s2Step80CounterWork : List Wire := [846, 847, 849, 851]

private theorem s2Step80Counter_bounded : s2Step80CounterWork.toFinset⊆arenaWires := by norm_num [s2Step80CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step80HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80CounterDuring : Arena := ⟨s2Step80HeadFvAfter.live∪s2Step80CounterWork.toFinset,Finset.union_subset s2Step80HeadFvAfter.bounded s2Step80Counter_bounded⟩

private def s2Step80EntryFFresh : List Wire := []

private def s2Step80EntryFvFresh : List Wire := [783]

private def s2Step80EntryGFresh : List Wire := [784]

private def s2Step80EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80EntryGvAfter : Arena := s2Step80EntryFvAfter

private def s2Step80EntryGvFresh : List Wire := []

private def s2Step80ExitFExtra : List Wire := [844]

private def s2Step80ExitFvExtra : List Wire := [816]

private def s2Step80ExitGExtra : List Wire := [227, 784, 845]

private def s2Step80ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<227) ∨ (228≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80ExitGvExtra : List Wire := [836]

private def s2Step80Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80Add0Work : List Wire := [849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step80Add0_bounded : s2Step80Add0Work.toFinset⊆arenaWires := by
  have h : s2Step80Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step80Add0During : Arena := ⟨s2Step80Add0Arena.live∪s2Step80Add0Work.toFinset,Finset.union_subset s2Step80Add0Arena.bounded s2Step80Add0_bounded⟩

private def s2Step80Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80Add1Work : List Wire := [849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924]

private theorem s2Step80Add1_bounded : s2Step80Add1Work.toFinset⊆arenaWires := by
  have h : s2Step80Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step80Add1During : Arena := ⟨s2Step80Add1Arena.live∪s2Step80Add1Work.toFinset,Finset.union_subset s2Step80Add1Arena.bounded s2Step80Add1_bounded⟩

private def s2Step80F4FlagArena : Arena := ⟨s2Step80HeadFvAfter.live∪{846},Finset.union_subset s2Step80HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step80F4Plan : HmrHybridF4Plan := ⟨s2Step80F4FlagArena,[846],s2Step80Add0Arena,[847],s2Step80Add0During,s2Step80Add0Work,s2Step80Add1During,s2Step80Add1Work⟩

private def s2Step80HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 844],768⟩

private def s2Step80HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 816],770⟩

private def s2Step80HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 784, 845],769⟩

private def s2Step80HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 836],771⟩

private def s2Step80FrontHead : WindowBank := ⟨s2Step80HeadFOut,s2Step80HeadGOut,s2Step80HeadFvOut,s2Step80HeadGvOut⟩

private def s2Step80EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩

private def s2Step80EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783],770⟩

private def s2Step80EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 784],769⟩

private def s2Step80EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩

private def s2Step80FrontPair : WindowBank := ⟨s2Step80EntryFOut,s2Step80EntryGOut,s2Step80EntryFvOut,s2Step80EntryGvOut⟩

private def s2Step80FrontSigmaArena : Arena := ⟨s2Step80EntryGvAfter.live∪{842},Finset.union_subset s2Step80EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step80HeadFFresh : List Wire := [844]

private def s2Step80HeadFvFresh : List Wire := [816]

private def s2Step80HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80HeadGFresh : List Wire := [845]

private def s2Step80HeadGvFresh : List Wire := [836]

private def s2Step80FrontPlan : HmrSourceFront := ⟨s2Step80EntryGvAfter,s2Step80FrontPair,(growRow 768 s2Step80EntryFFresh ++ (growRow 769 s2Step80EntryGFresh ++ (growRow 770 s2Step80EntryFvFresh ++ (growRow 771 s2Step80EntryGvFresh ++ [])))),s2Step80FrontSigmaArena,[842],s2Step80HeadGBefore,[782],
  s2Step80HeadFvAfter,s2Step80FrontHead,(growRow 769 s2Step80HeadGFresh ++ (growRow 768 s2Step80HeadFFresh ++ (growRow 771 s2Step80HeadGvFresh ++ (growRow 770 s2Step80HeadFvFresh ++ [])))),s2Step80F4Plan,s2Step80CounterDuring,s2Step80CounterWork,s2Step80ExitGvAfter,s2Step80FrontOut,(shrinkRow 769 s2Step80ExitGExtra ++ (shrinkRow 768 s2Step80ExitFExtra ++ (shrinkRow 770 s2Step80ExitFvExtra ++ (shrinkRow 771 s2Step80ExitGvExtra ++ []))))⟩

private def s2Step80CompletePlan : HmrEarlyStepPlan := ⟨s2Step80FrontPlan,s2Step80EarlyControlArena,s2Step80EarlyControlPlan,s2Step80CompleteMoves⟩

private theorem s2Step80Complete_apart : List.Disjoint (s2Step80CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [842, 782, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  have nd : ((s2Step80CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[842, 782, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step80Complete_owned : (s2Step80CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step80EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step80EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private def s2Step80CompleteMoveArena : Arena := ⟨s2Step80ExitGvAfter.live∪{227},Finset.union_subset s2Step80ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step80Complete_repack : s2Step80ExitGvAfter.checkRepack s2Step80CompleteMoves=some s2Step80EarlyControlArena := by
  have owned : 841∈s2Step80ExitGvAfter.live := by norm_num [s2Step80ExitGvAfter,arenaWires]
  have reserve : s2Step80ExitGvAfter.reserve {227}=some s2Step80CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step80ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step80CompleteMoveArena.retireSet {841}=s2Step80EarlyControlArena := by
    unfold Arena.retireSet s2Step80EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step80CompleteMoveArena,s2Step80ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step80CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step80CompleteMoveArena.retireSet {841}).checkRepack []=some s2Step80EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step80EarlyControl_branchOwned : ([782] : List Wire).toFinset⊆s2Step80EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step80EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80EarlyControl_branch : compileHmrBranchRetirement s2Step80EarlyControlSigmaArena 782=some s2Step80EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step80EarlyControl_branchOwned
  · ext q
    simp [s2Step80EarlyControlOutputArena,s2Step80EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step80EarlyControl_classEqualityBorrow : s2Step80EarlyControlPositiveArena.checkBorrow (([842, 845] : List Wire).length-1) s2Step80EarlyControlLog.classWork=some s2Step80EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step80EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step80EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step80EarlyControlEqualityArena,s2Step80EarlyControlPositiveArena,s2Step80EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step80EarlyControl_classEqualityOwned : ([842, 845] : List Wire).toFinset⊆s2Step80EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step80EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80EarlyControl_classEquality : compileHmrEqualityLog s2Step80EarlyControlPositiveArena [842, 845] 0 s2Step80EarlyControlLog.classWork=some (s2Step80EarlyControlEqualityArena,s2Step80EarlyControlLog.classWork,s2Step80EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step80EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step80EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step80EarlyControl_classOwned : ([777, 784, 842] : List Wire).toFinset⊆s2Step80EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step80EarlyControlZeroArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80EarlyControl_positiveBorrow : s2Step80EarlyControlZeroArena.checkBorrow (1) s2Step80EarlyControlLog.positiveWork=some s2Step80EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step80EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step80EarlyControlZeroArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step80EarlyControlPositiveArena,s2Step80EarlyControlZeroArena,s2Step80EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step80EarlyControl_class : compileHmrSourceClassLog s2Step80EarlyControlZeroArena false 777 s2Step80EarlyControlZeroPlan.top 0 842 s2Step80EarlyControlLog.positiveWork s2Step80EarlyControlLog.classWork=some s2Step80EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step80EarlyControlClassPlan s2Step80EarlyControlZeroArena false 777 s2Step80EarlyControlZeroPlan.top 0 842
  constructor
  · decide +kernel
  · exact s2Step80EarlyControl_classOwned
  · exact s2Step80EarlyControl_positiveBorrow
  · exact s2Step80EarlyControl_classEquality

private theorem s2Step80EarlyControl_entryRecordOwned : ([782, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step80EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step80EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80EarlyControl_entrySigmaOwned : ([842, 254] : List Wire).toFinset⊆s2Step80EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step80EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80EarlyControl_fitBorrow : s2Step80EarlyControlFlagArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step80EarlyControlLog.recordFresh=some s2Step80EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step80EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step80EarlyControlFlagArena (fun q => (0≤q ∧ q<875)) rfl
      decide +kernel
    · ext q
      simp [s2Step80EarlyControlFittedArena,s2Step80EarlyControlFlagArena,s2Step80EarlyControlLog,arenaWires]

private theorem s2Step80EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step80EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step80EarlyControlFlagArena (fun q => (0≤q ∧ q<875)) rfl
  decide +kernel

private theorem s2Step80EarlyControl_fit : compileHmrRecordGrowLog s2Step80EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step80EarlyControlLog.recordFresh=some s2Step80EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step80EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step80EarlyControl_fitBorrow

private theorem s2Step80EarlyControl_flagsBorrow : s2Step80EarlyControlEqualityArena.checkBorrow (6) s2Step80EarlyControlLog.flagWork=some s2Step80EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step80EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step80EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step80EarlyControlFlagArena,s2Step80EarlyControlEqualityArena,s2Step80EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step80EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step80EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step80EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80EarlyControl_flags : compileHmrFlagsLog s2Step80EarlyControlClassPlan.equalityArena s2Step80EarlyControlClassPlan.equality.top 253 252 251 s2Step80EarlyControlLog.flagWork=some s2Step80EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step80EarlyControl_flagsOwned⟩
  · exact s2Step80EarlyControl_flagsBorrow

private theorem s2Step80EarlyControl_historyBorrow : s2Step80EarlyControlArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step80EarlyControlLog.recordFresh=some s2Step80EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step80EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step80EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step80EarlyControlHistoryArena,s2Step80EarlyControlArena,s2Step80EarlyControlLog,arenaWires]

private theorem s2Step80EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step80EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step80EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80EarlyControl_history : compileHmrRecordGrowLog s2Step80EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step80EarlyControlLog.recordFresh=some s2Step80EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step80EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step80EarlyControl_historyBorrow

private theorem s2Step80EarlyControl_sigmaOwned : ([254, 842] : List Wire).toFinset⊆s2Step80EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step80EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80EarlyControl_sigmaReleaseOwned : ([842] : List Wire).toFinset⊆s2Step80EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step80EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80EarlyControl_sigmaRelease : s2Step80EarlyControlHistoryArena.release {842} (fun _ => false)=some s2Step80EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step80EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step80EarlyControlSigmaArena,s2Step80EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step80EarlyControl_sigma : compileHmrSigmaDropLog s2Step80EarlyControlHistoryArena false 0 0 254 842 []=some s2Step80EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step80EarlyControl_sigmaOwned⟩
  · exact s2Step80EarlyControl_sigmaRelease

private theorem s2Step80EarlyControl_zeroBorrow : s2Step80EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step80EarlyControlLog.zeroWork=some s2Step80EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step80EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step80EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step80EarlyControlZeroArena,s2Step80EarlyControlArena,s2Step80EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step80EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step80EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step80EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80EarlyControl_zero : compileHmrEqualityLog s2Step80EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step80EarlyControlLog.zeroWork=some (s2Step80EarlyControlZeroArena,s2Step80EarlyControlLog.zeroWork,s2Step80EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step80EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step80EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step80EarlyControl_logged : s2Step80EarlyControlPlan.Logged s2Step80EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 842 254 253 252 251 782 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step80EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step80EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step80EarlyControl_zero
  · exact s2Step80EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step80EarlyControl_flags
  · exact s2Step80EarlyControl_fit
  · exact s2Step80EarlyControl_history
  · exact s2Step80EarlyControl_sigma
  · exact s2Step80EarlyControl_branch

private theorem s2Step80EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step80EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 842 254 253 252 251 782 30 s2Step80EarlyControlLog=some s2Step80EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step80EarlyControlPlan s2Step80EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 842 254 253 252 251 782 30 s2Step80EarlyControl_logged

private def s2Step80EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩

private def s2Step80EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827],770⟩

private def s2Step80EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227],769⟩

private def s2Step80EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩

private def s2Step80FrontBank : WindowBank := ⟨s2Step80EntryFRow,s2Step80EntryGRow,s2Step80EntryFvRow,s2Step80EntryGvRow⟩

private def s2Step80Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 844, 768]

private def s2Step80Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 784, 845, 769]

private def s2Step80Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 816, 770]

private def s2Step80Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 836, 771]

private theorem s2Step80Counter_apart : Disjoint s2Step80HeadFvAfter.live s2Step80CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step80HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80Counter_borrowed : s2Step80HeadFvAfter.checkBorrow 4 s2Step80CounterWork=some s2Step80CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step80HeadFvAfter s2Step80CounterDuring s2Step80CounterWork.toFinset s2Step80Counter_bounded s2Step80Counter_apart rfl

private theorem s2Step80Counter_owned : (842::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step80HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step80HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80Counter_checked : compileHmrCounterStepLog s2Step80HeadFvAfter true 842 [772, 773, 774, 775, 776, 777] s2Step80CounterWork=some s2Step80CounterDuring := by
  have owned : ∀q∈842::[772, 773, 774, 775, 776, 777],q∈s2Step80HeadFvAfter.live := fun q hq => s2Step80Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step80Counter_borrowed

private def s2Step80EntryFAfter : Arena := s2Step80EntryFBefore

private theorem s2Step80EntryBank_incomingDistinct : ([s2Step80EntryFRow,s2Step80EntryGRow,s2Step80EntryFvRow,s2Step80EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80EntryF_Incoming : rowsOwned s2Step80EntryFBefore [s2Step80EntryFRow,s2Step80EntryGRow,s2Step80EntryFvRow,s2Step80EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step80EntryFRow,s2Step80EntryGRow,s2Step80EntryFvRow,s2Step80EntryGvRow] 0 s2Step80EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step80EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step80EntryBank_outgoingOwned : rowsOwned s2Step80EntryGvAfter [s2Step80EntryFOut,s2Step80EntryGOut,s2Step80EntryFvOut,s2Step80EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step80EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step80EntryF_Outgoing : rowsOwned s2Step80EntryGvAfter [s2Step80EntryFOut,s2Step80EntryGOut,s2Step80EntryFvOut,s2Step80EntryGvOut] :=
  hmrRows_owned_drop s2Step80EntryGvAfter [s2Step80EntryFOut,s2Step80EntryGOut,s2Step80EntryFvOut,s2Step80EntryGvOut] 0 s2Step80EntryBank_outgoingOwned

private theorem s2Step80EntryF_distinct : (s2Step80EntryFRow.sign::s2Step80EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80EntryF_owned : (s2Step80EntryFRow.sign::s2Step80EntryFRow.payload).toFinset⊆s2Step80EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step80EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80EntryF_reserved : s2Step80EntryFBefore.reserve s2Step80EntryFFresh.toFinset=some s2Step80EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step80EntryFFresh,arenaWires]
  · norm_num [s2Step80EntryFBefore,s2Step80EntryFFresh,arenaWires]
  · simp only [s2Step80EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step80EntryF_checked : planRowResizeLog s2Step80EntryFBefore s2Step80EntryFRow 229 s2Step80EntryFFresh=
    some (s2Step80EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩,growRow 768 s2Step80EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step80EntryFBefore s2Step80EntryFAfter s2Step80EntryFRow 229 s2Step80EntryFFresh
    s2Step80EntryF_distinct s2Step80EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step80EntryF_reserved
  have rowEq : WindowRow.mk (s2Step80EntryFRow.payload++s2Step80EntryFFresh) s2Step80EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step80EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80EntryFvBefore : Arena := s2Step80EntryGAfter

private theorem s2Step80EntryFv_Incoming : rowsOwned s2Step80EntryFvBefore [s2Step80EntryFvRow,s2Step80EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step80EntryFRow,s2Step80EntryGRow,s2Step80EntryFvRow,s2Step80EntryGvRow] 2 s2Step80EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step80EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step80EntryFv_Outgoing : rowsOwned s2Step80EntryGvAfter [s2Step80EntryFvOut,s2Step80EntryGvOut] :=
  hmrRows_owned_drop s2Step80EntryGvAfter [s2Step80EntryFOut,s2Step80EntryGOut,s2Step80EntryFvOut,s2Step80EntryGvOut] 2 s2Step80EntryBank_outgoingOwned

private theorem s2Step80EntryFv_distinct : (s2Step80EntryFvRow.sign::s2Step80EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80EntryFv_owned : (s2Step80EntryFvRow.sign::s2Step80EntryFvRow.payload).toFinset⊆s2Step80EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step80EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80EntryFv_reserved : s2Step80EntryFvBefore.reserve s2Step80EntryFvFresh.toFinset=some s2Step80EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step80EntryFvFresh,arenaWires]
  · norm_num [s2Step80EntryFvBefore,s2Step80EntryGAfter,s2Step80EntryFvFresh,arenaWires]
  · ext q
    simp only [s2Step80EntryFvAfter,s2Step80EntryFvBefore,s2Step80EntryGAfter,s2Step80EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step80EntryFv_checked : planRowResizeLog s2Step80EntryFvBefore s2Step80EntryFvRow 54 s2Step80EntryFvFresh=
    some (s2Step80EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783],770⟩,growRow 770 s2Step80EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step80EntryFvBefore s2Step80EntryFvAfter s2Step80EntryFvRow 54 s2Step80EntryFvFresh
    s2Step80EntryFv_distinct s2Step80EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step80EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step80EntryFvRow.payload++s2Step80EntryFvFresh) s2Step80EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step80EntryGBefore : Arena := s2Step80EntryFBefore

private theorem s2Step80EntryG_Incoming : rowsOwned s2Step80EntryGBefore [s2Step80EntryGRow,s2Step80EntryFvRow,s2Step80EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step80EntryFRow,s2Step80EntryGRow,s2Step80EntryFvRow,s2Step80EntryGvRow] 1 s2Step80EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step80EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step80EntryG_Outgoing : rowsOwned s2Step80EntryGvAfter [s2Step80EntryGOut,s2Step80EntryFvOut,s2Step80EntryGvOut] :=
  hmrRows_owned_drop s2Step80EntryGvAfter [s2Step80EntryFOut,s2Step80EntryGOut,s2Step80EntryFvOut,s2Step80EntryGvOut] 1 s2Step80EntryBank_outgoingOwned

private theorem s2Step80EntryG_distinct : (s2Step80EntryGRow.sign::s2Step80EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80EntryG_owned : (s2Step80EntryGRow.sign::s2Step80EntryGRow.payload).toFinset⊆s2Step80EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step80EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80EntryG_reserved : s2Step80EntryGBefore.reserve s2Step80EntryGFresh.toFinset=some s2Step80EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step80EntryGFresh,arenaWires]
  · norm_num [s2Step80EntryGBefore,s2Step80EntryFBefore,s2Step80EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step80EntryGAfter,s2Step80EntryGBefore,s2Step80EntryFBefore,s2Step80EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step80EntryG_checked : planRowResizeLog s2Step80EntryGBefore s2Step80EntryGRow 229 s2Step80EntryGFresh=
    some (s2Step80EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 784],769⟩,growRow 769 s2Step80EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step80EntryGBefore s2Step80EntryGAfter s2Step80EntryGRow 229 s2Step80EntryGFresh
    s2Step80EntryG_distinct s2Step80EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step80EntryG_reserved
  have rowEq : WindowRow.mk (s2Step80EntryGRow.payload++s2Step80EntryGFresh) s2Step80EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step80EntryGvBefore : Arena := s2Step80EntryFvAfter

private theorem s2Step80EntryGv_Incoming : rowsOwned s2Step80EntryGvBefore [s2Step80EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step80EntryFRow,s2Step80EntryGRow,s2Step80EntryFvRow,s2Step80EntryGvRow] 3 s2Step80EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step80EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step80EntryGv_Outgoing : rowsOwned s2Step80EntryGvAfter [s2Step80EntryGvOut] :=
  hmrRows_owned_drop s2Step80EntryGvAfter [s2Step80EntryFOut,s2Step80EntryGOut,s2Step80EntryFvOut,s2Step80EntryGvOut] 3 s2Step80EntryBank_outgoingOwned

private theorem s2Step80EntryGv_distinct : (s2Step80EntryGvRow.sign::s2Step80EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80EntryGv_owned : (s2Step80EntryGvRow.sign::s2Step80EntryGvRow.payload).toFinset⊆s2Step80EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step80EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80EntryGv_reserved : s2Step80EntryGvBefore.reserve s2Step80EntryGvFresh.toFinset=some s2Step80EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step80EntryGvFresh,arenaWires]
  · norm_num [s2Step80EntryGvBefore,s2Step80EntryFvAfter,s2Step80EntryGvFresh,arenaWires]
  · simp only [s2Step80EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step80EntryGv_checked : planRowResizeLog s2Step80EntryGvBefore s2Step80EntryGvRow 54 s2Step80EntryGvFresh=
    some (s2Step80EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩,growRow 771 s2Step80EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step80EntryGvBefore s2Step80EntryGvAfter s2Step80EntryGvRow 54 s2Step80EntryGvFresh
    s2Step80EntryGv_distinct s2Step80EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step80EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step80EntryGvRow.payload++s2Step80EntryGvFresh) s2Step80EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step80EntryBank_rows : planWindowRowsLog s2Step80EntryFBefore [(s2Step80EntryFRow,229),(s2Step80EntryGRow,229),(s2Step80EntryFvRow,54),(s2Step80EntryGvRow,54)] [s2Step80EntryFFresh,s2Step80EntryGFresh,s2Step80EntryFvFresh,s2Step80EntryGvFresh]=
    some (s2Step80EntryGvAfter,[s2Step80EntryFOut,s2Step80EntryGOut,s2Step80EntryFvOut,s2Step80EntryGvOut],(growRow 768 s2Step80EntryFFresh ++ (growRow 769 s2Step80EntryGFresh ++ (growRow 770 s2Step80EntryFvFresh ++ (growRow 771 s2Step80EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step80EntryGvAfter [] []=some (s2Step80EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step80EntryGvBefore s2Step80EntryGvAfter s2Step80EntryGvAfter
    s2Step80EntryGvRow s2Step80EntryGvOut 54 s2Step80EntryGvFresh [] [] []
    (growRow 771 s2Step80EntryGvFresh) ([]) s2Step80EntryGv_Incoming s2Step80EntryGv_checked h4 s2Step80EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step80EntryFvBefore s2Step80EntryFvAfter s2Step80EntryGvAfter
    s2Step80EntryFvRow s2Step80EntryFvOut 54 s2Step80EntryFvFresh [(s2Step80EntryGvRow,54)] [s2Step80EntryGvFresh] [s2Step80EntryGvOut]
    (growRow 770 s2Step80EntryFvFresh) ((growRow 771 s2Step80EntryGvFresh ++ [])) s2Step80EntryFv_Incoming s2Step80EntryFv_checked h3 s2Step80EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step80EntryGBefore s2Step80EntryGAfter s2Step80EntryGvAfter
    s2Step80EntryGRow s2Step80EntryGOut 229 s2Step80EntryGFresh [(s2Step80EntryFvRow,54),(s2Step80EntryGvRow,54)] [s2Step80EntryFvFresh,s2Step80EntryGvFresh] [s2Step80EntryFvOut,s2Step80EntryGvOut]
    (growRow 769 s2Step80EntryGFresh) ((growRow 770 s2Step80EntryFvFresh ++ (growRow 771 s2Step80EntryGvFresh ++ []))) s2Step80EntryG_Incoming s2Step80EntryG_checked h2 s2Step80EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step80EntryFBefore s2Step80EntryFAfter s2Step80EntryGvAfter
    s2Step80EntryFRow s2Step80EntryFOut 229 s2Step80EntryFFresh [(s2Step80EntryGRow,229),(s2Step80EntryFvRow,54),(s2Step80EntryGvRow,54)] [s2Step80EntryGFresh,s2Step80EntryFvFresh,s2Step80EntryGvFresh] [s2Step80EntryGOut,s2Step80EntryFvOut,s2Step80EntryGvOut]
    (growRow 768 s2Step80EntryFFresh) ((growRow 769 s2Step80EntryGFresh ++ (growRow 770 s2Step80EntryFvFresh ++ (growRow 771 s2Step80EntryGvFresh ++ [])))) s2Step80EntryF_Incoming s2Step80EntryF_checked h1 s2Step80EntryF_Outgoing
  exact h0

private theorem s2Step80EntryBank_checked : compileHmrBankResizeLog .entry s2Step80EntryFBefore ⟨s2Step80EntryFRow,s2Step80EntryGRow,s2Step80EntryFvRow,s2Step80EntryGvRow⟩ ⟨229,229,54,54⟩ [s2Step80EntryFFresh,s2Step80EntryGFresh,s2Step80EntryFvFresh,s2Step80EntryGvFresh]=
    some (s2Step80EntryGvAfter,⟨s2Step80EntryFOut,s2Step80EntryGOut,s2Step80EntryFvOut,s2Step80EntryGvOut⟩,(growRow 768 s2Step80EntryFFresh ++ (growRow 769 s2Step80EntryGFresh ++ (growRow 770 s2Step80EntryFvFresh ++ (growRow 771 s2Step80EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step80EntryBank_rows]
  rfl

private def s2Step80ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<227) ∨ (228≤q ∧ q<784) ∨ (785≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<227) ∨ (228≤q ∧ q<784) ∨ (785≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80ExitFBefore : Arena := s2Step80ExitGAfter

private def s2Step80ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 844],768⟩

private def s2Step80ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 816],770⟩

private def s2Step80ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 784, 845],769⟩

private def s2Step80ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 836],771⟩

private theorem s2Step80ExitBank_incomingDistinct : ([s2Step80ExitGRow,s2Step80ExitFRow,s2Step80ExitFvRow,s2Step80ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80ExitF_Incoming : rowsOwned s2Step80ExitFBefore [s2Step80ExitFRow,s2Step80ExitFvRow,s2Step80ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step80ExitGRow,s2Step80ExitFRow,s2Step80ExitFvRow,s2Step80ExitGvRow] 1 s2Step80ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step80ExitFBefore (fun q => (0≤q ∧ q<227) ∨ (228≤q ∧ q<784) ∨ (785≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step80ExitBank_outgoingOwned : rowsOwned s2Step80ExitGvAfter [s2Step80ExitGOut,s2Step80ExitFOut,s2Step80ExitFvOut,s2Step80ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step80ExitGvAfter (fun q => (0≤q ∧ q<227) ∨ (228≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step80ExitF_Outgoing : rowsOwned s2Step80ExitGvAfter [s2Step80ExitFOut,s2Step80ExitFvOut,s2Step80ExitGvOut] :=
  hmrRows_owned_drop s2Step80ExitGvAfter [s2Step80ExitGOut,s2Step80ExitFOut,s2Step80ExitFvOut,s2Step80ExitGvOut] 1 s2Step80ExitBank_outgoingOwned

private theorem s2Step80ExitF_distinct : (s2Step80ExitFRow.sign::s2Step80ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80ExitF_owned : (s2Step80ExitFRow.sign::s2Step80ExitFRow.payload).toFinset⊆s2Step80ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step80ExitFBefore (fun q => (0≤q ∧ q<227) ∨ (228≤q ∧ q<784) ∨ (785≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80ExitF_retired : s2Step80ExitFBefore.retireSet s2Step80ExitFExtra.toFinset=s2Step80ExitFAfter := by
  unfold Arena.retireSet s2Step80ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step80ExitFBefore,s2Step80ExitGAfter,s2Step80ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step80ExitF_checked : planRowResizeLog s2Step80ExitFBefore s2Step80ExitFRow 229 []=
    some (s2Step80ExitFAfter,s2Step80ExitFOut,shrinkRow 768 s2Step80ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step80ExitFBefore s2Step80ExitFRow 229 s2Step80ExitF_distinct s2Step80ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step80ExitFRow.payload.take 229) s2Step80ExitFRow.sign=s2Step80ExitFOut := by decide +kernel
  have hi : s2Step80ExitFRow.payload.drop 229=s2Step80ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step80ExitF_retired] at result
  exact result

private def s2Step80ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<227) ∨ (228≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80ExitFvBefore : Arena := s2Step80ExitFAfter

private theorem s2Step80ExitFv_Incoming : rowsOwned s2Step80ExitFvBefore [s2Step80ExitFvRow,s2Step80ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step80ExitGRow,s2Step80ExitFRow,s2Step80ExitFvRow,s2Step80ExitGvRow] 2 s2Step80ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step80ExitFvBefore (fun q => (0≤q ∧ q<227) ∨ (228≤q ∧ q<784) ∨ (785≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step80ExitFv_Outgoing : rowsOwned s2Step80ExitGvAfter [s2Step80ExitFvOut,s2Step80ExitGvOut] :=
  hmrRows_owned_drop s2Step80ExitGvAfter [s2Step80ExitGOut,s2Step80ExitFOut,s2Step80ExitFvOut,s2Step80ExitGvOut] 2 s2Step80ExitBank_outgoingOwned

private theorem s2Step80ExitFv_distinct : (s2Step80ExitFvRow.sign::s2Step80ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80ExitFv_owned : (s2Step80ExitFvRow.sign::s2Step80ExitFvRow.payload).toFinset⊆s2Step80ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step80ExitFvBefore (fun q => (0≤q ∧ q<227) ∨ (228≤q ∧ q<784) ∨ (785≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80ExitFv_retired : s2Step80ExitFvBefore.retireSet s2Step80ExitFvExtra.toFinset=s2Step80ExitFvAfter := by
  unfold Arena.retireSet s2Step80ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step80ExitFvBefore,s2Step80ExitFAfter,s2Step80ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step80ExitFv_checked : planRowResizeLog s2Step80ExitFvBefore s2Step80ExitFvRow 54 []=
    some (s2Step80ExitFvAfter,s2Step80ExitFvOut,shrinkRow 770 s2Step80ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step80ExitFvBefore s2Step80ExitFvRow 54 s2Step80ExitFv_distinct s2Step80ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step80ExitFvRow.payload.take 54) s2Step80ExitFvRow.sign=s2Step80ExitFvOut := by decide +kernel
  have hi : s2Step80ExitFvRow.payload.drop 54=s2Step80ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step80ExitFv_retired] at result
  exact result

private def s2Step80ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step80ExitG_Incoming : rowsOwned s2Step80ExitGBefore [s2Step80ExitGRow,s2Step80ExitFRow,s2Step80ExitFvRow,s2Step80ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step80ExitGRow,s2Step80ExitFRow,s2Step80ExitFvRow,s2Step80ExitGvRow] 0 s2Step80ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step80ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step80ExitG_Outgoing : rowsOwned s2Step80ExitGvAfter [s2Step80ExitGOut,s2Step80ExitFOut,s2Step80ExitFvOut,s2Step80ExitGvOut] :=
  hmrRows_owned_drop s2Step80ExitGvAfter [s2Step80ExitGOut,s2Step80ExitFOut,s2Step80ExitFvOut,s2Step80ExitGvOut] 0 s2Step80ExitBank_outgoingOwned

private theorem s2Step80ExitG_distinct : (s2Step80ExitGRow.sign::s2Step80ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80ExitG_owned : (s2Step80ExitGRow.sign::s2Step80ExitGRow.payload).toFinset⊆s2Step80ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step80ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80ExitG_retired : s2Step80ExitGBefore.retireSet s2Step80ExitGExtra.toFinset=s2Step80ExitGAfter := by
  unfold Arena.retireSet s2Step80ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step80ExitGBefore,s2Step80ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step80ExitG_checked : planRowResizeLog s2Step80ExitGBefore s2Step80ExitGRow 227 []=
    some (s2Step80ExitGAfter,s2Step80ExitGOut,shrinkRow 769 s2Step80ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step80ExitGBefore s2Step80ExitGRow 227 s2Step80ExitG_distinct s2Step80ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step80ExitGRow.payload.take 227) s2Step80ExitGRow.sign=s2Step80ExitGOut := by decide +kernel
  have hi : s2Step80ExitGRow.payload.drop 227=s2Step80ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step80ExitG_retired] at result
  exact result

private def s2Step80ExitGvBefore : Arena := s2Step80ExitFvAfter

private theorem s2Step80ExitGv_Incoming : rowsOwned s2Step80ExitGvBefore [s2Step80ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step80ExitGRow,s2Step80ExitFRow,s2Step80ExitFvRow,s2Step80ExitGvRow] 3 s2Step80ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step80ExitGvBefore (fun q => (0≤q ∧ q<227) ∨ (228≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step80ExitGv_Outgoing : rowsOwned s2Step80ExitGvAfter [s2Step80ExitGvOut] :=
  hmrRows_owned_drop s2Step80ExitGvAfter [s2Step80ExitGOut,s2Step80ExitFOut,s2Step80ExitFvOut,s2Step80ExitGvOut] 3 s2Step80ExitBank_outgoingOwned

private theorem s2Step80ExitGv_distinct : (s2Step80ExitGvRow.sign::s2Step80ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80ExitGv_owned : (s2Step80ExitGvRow.sign::s2Step80ExitGvRow.payload).toFinset⊆s2Step80ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step80ExitGvBefore (fun q => (0≤q ∧ q<227) ∨ (228≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80ExitGv_retired : s2Step80ExitGvBefore.retireSet s2Step80ExitGvExtra.toFinset=s2Step80ExitGvAfter := by
  unfold Arena.retireSet s2Step80ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step80ExitGvBefore,s2Step80ExitFvAfter,s2Step80ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step80ExitGv_checked : planRowResizeLog s2Step80ExitGvBefore s2Step80ExitGvRow 54 []=
    some (s2Step80ExitGvAfter,s2Step80ExitGvOut,shrinkRow 771 s2Step80ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step80ExitGvBefore s2Step80ExitGvRow 54 s2Step80ExitGv_distinct s2Step80ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step80ExitGvRow.payload.take 54) s2Step80ExitGvRow.sign=s2Step80ExitGvOut := by decide +kernel
  have hi : s2Step80ExitGvRow.payload.drop 54=s2Step80ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step80ExitGv_retired] at result
  exact result

private theorem s2Step80ExitBank_rows : planWindowRowsLog s2Step80ExitGBefore [(s2Step80ExitGRow,227),(s2Step80ExitFRow,229),(s2Step80ExitFvRow,54),(s2Step80ExitGvRow,54)] [[],[],[],[]]=
    some (s2Step80ExitGvAfter,[s2Step80ExitGOut,s2Step80ExitFOut,s2Step80ExitFvOut,s2Step80ExitGvOut],(shrinkRow 769 s2Step80ExitGExtra ++ (shrinkRow 768 s2Step80ExitFExtra ++ (shrinkRow 770 s2Step80ExitFvExtra ++ (shrinkRow 771 s2Step80ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step80ExitGvAfter [] []=some (s2Step80ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step80ExitGvBefore s2Step80ExitGvAfter s2Step80ExitGvAfter
    s2Step80ExitGvRow s2Step80ExitGvOut 54 [] [] [] []
    (shrinkRow 771 s2Step80ExitGvExtra) ([]) s2Step80ExitGv_Incoming s2Step80ExitGv_checked h4 s2Step80ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step80ExitFvBefore s2Step80ExitFvAfter s2Step80ExitGvAfter
    s2Step80ExitFvRow s2Step80ExitFvOut 54 [] [(s2Step80ExitGvRow,54)] [[]] [s2Step80ExitGvOut]
    (shrinkRow 770 s2Step80ExitFvExtra) ((shrinkRow 771 s2Step80ExitGvExtra ++ [])) s2Step80ExitFv_Incoming s2Step80ExitFv_checked h3 s2Step80ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step80ExitFBefore s2Step80ExitFAfter s2Step80ExitGvAfter
    s2Step80ExitFRow s2Step80ExitFOut 229 [] [(s2Step80ExitFvRow,54),(s2Step80ExitGvRow,54)] [[],[]] [s2Step80ExitFvOut,s2Step80ExitGvOut]
    (shrinkRow 768 s2Step80ExitFExtra) ((shrinkRow 770 s2Step80ExitFvExtra ++ (shrinkRow 771 s2Step80ExitGvExtra ++ []))) s2Step80ExitF_Incoming s2Step80ExitF_checked h2 s2Step80ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step80ExitGBefore s2Step80ExitGAfter s2Step80ExitGvAfter
    s2Step80ExitGRow s2Step80ExitGOut 227 [] [(s2Step80ExitFRow,229),(s2Step80ExitFvRow,54),(s2Step80ExitGvRow,54)] [[],[],[]] [s2Step80ExitFOut,s2Step80ExitFvOut,s2Step80ExitGvOut]
    (shrinkRow 769 s2Step80ExitGExtra) ((shrinkRow 768 s2Step80ExitFExtra ++ (shrinkRow 770 s2Step80ExitFvExtra ++ (shrinkRow 771 s2Step80ExitGvExtra ++ [])))) s2Step80ExitG_Incoming s2Step80ExitG_checked h1 s2Step80ExitG_Outgoing
  exact h0

private theorem s2Step80ExitBank_checked : compileHmrBankResizeLog .exit s2Step80ExitGBefore ⟨s2Step80ExitFRow,s2Step80ExitGRow,s2Step80ExitFvRow,s2Step80ExitGvRow⟩ ⟨229,227,54,54⟩ [[],[],[],[]]=
    some (s2Step80ExitGvAfter,⟨s2Step80ExitFOut,s2Step80ExitGOut,s2Step80ExitFvOut,s2Step80ExitGvOut⟩,(shrinkRow 769 s2Step80ExitGExtra ++ (shrinkRow 768 s2Step80ExitFExtra ++ (shrinkRow 770 s2Step80ExitFvExtra ++ (shrinkRow 771 s2Step80ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step80ExitBank_rows]
  rfl

private theorem s2Step80Add0_apart : Disjoint s2Step80Add0Arena.live s2Step80Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step80Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80Add0_card : s2Step80Add0Arena.live.card=870 := by
  decide +kernel

private theorem s2Step80Add0_borrowed : s2Step80Add0Arena.checkBorrow (hmrHybridCount s2Step80Add0Arena s2Step80Add0B.length) s2Step80Add0Work=some s2Step80Add0During := by
  have len : s2Step80Add0Work.length=hmrHybridCount s2Step80Add0Arena s2Step80Add0B.length := by
    rw [hmrHybridCount,s2Step80Add0_card]
    decide +kernel
  have nd : s2Step80Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step80Add0Arena s2Step80Add0During s2Step80Add0Work.toFinset s2Step80Add0_bounded s2Step80Add0_apart rfl

private theorem s2Step80Add0_distinct : (846::782::847::(s2Step80Add0A++s2Step80Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80Add0_owned : (846::782::847::(s2Step80Add0A++s2Step80Add0B)).toFinset⊆s2Step80Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step80Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80Add0_checked : compileHmrHybridCinLog s2Step80Add0Arena 782 846 847 s2Step80Add0A s2Step80Add0B s2Step80Add0Work=some s2Step80Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step80Add0Arena s2Step80Add0During 782 846 847 s2Step80Add0A s2Step80Add0B s2Step80Add0Work
    (by decide +kernel) (by decide +kernel) s2Step80Add0_distinct
    (fun q hq => s2Step80Add0_owned (List.mem_toFinset.mpr hq)) s2Step80Add0_borrowed

private theorem s2Step80Add1_apart : Disjoint s2Step80Add1Arena.live s2Step80Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step80Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80Add1_card : s2Step80Add1Arena.live.card=870 := by
  decide +kernel

private theorem s2Step80Add1_borrowed : s2Step80Add1Arena.checkBorrow (hmrHybridCount s2Step80Add1Arena s2Step80Add1B.length) s2Step80Add1Work=some s2Step80Add1During := by
  have len : s2Step80Add1Work.length=hmrHybridCount s2Step80Add1Arena s2Step80Add1B.length := by
    rw [hmrHybridCount,s2Step80Add1_card]
    decide +kernel
  have nd : s2Step80Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step80Add1Arena s2Step80Add1During s2Step80Add1Work.toFinset s2Step80Add1_bounded s2Step80Add1_apart rfl

private theorem s2Step80Add1_distinct : (846::782::847::(s2Step80Add1A++s2Step80Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80Add1_owned : (846::782::847::(s2Step80Add1A++s2Step80Add1B)).toFinset⊆s2Step80Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step80Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80Add1_checked : compileHmrHybridCinLog s2Step80Add1Arena 782 846 847 s2Step80Add1A s2Step80Add1B s2Step80Add1Work=some s2Step80Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step80Add1Arena s2Step80Add1During 782 846 847 s2Step80Add1A s2Step80Add1B s2Step80Add1Work
    (by decide +kernel) (by decide +kernel) s2Step80Add1_distinct
    (fun q hq => s2Step80Add1_owned (List.mem_toFinset.mpr hq)) s2Step80Add1_borrowed

private theorem s2Step80F4_apart : Disjoint (s2Step80Add0A++s2Step80Add0B).toFinset (s2Step80Add1A++s2Step80Add1B).toFinset := by
  have nd : ((s2Step80Add0A++s2Step80Add0B)++(s2Step80Add1A++s2Step80Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step80F4_carry : s2Step80F4FlagArena.checkBorrow 1 [847]=some s2Step80Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step80F4FlagArena,s2Step80HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step80F4FlagArena,s2Step80HeadFvAfter,s2Step80Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step80F4_distinct : (842::782::846::847::((s2Step80Add0A++s2Step80Add1A)++(s2Step80Add0B++s2Step80Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80F4_flag : s2Step80HeadFvAfter.checkBorrow 1 [846]=some s2Step80F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step80HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step80F4_owned : (842::782::((s2Step80Add0A++s2Step80Add1A)++(s2Step80Add0B++s2Step80Add1B))).toFinset⊆s2Step80HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step80HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80F4_checked : compileHmrHybridF4Log s2Step80HeadFvAfter 842 782 s2Step80Add0A s2Step80Add0B s2Step80Add1A s2Step80Add1B [846] [847] s2Step80Add0Work s2Step80Add1Work=some s2Step80F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step80HeadFvAfter s2Step80F4FlagArena s2Step80Add0Arena s2Step80Add0During s2Step80Add1During 842 782
    s2Step80Add0A s2Step80Add0B s2Step80Add1A s2Step80Add1B [846] [847] s2Step80Add0Work s2Step80Add1Work
    (fun q hq => s2Step80F4_owned (List.mem_toFinset.mpr hq)) s2Step80F4_flag s2Step80F4_carry
    s2Step80F4_distinct s2Step80F4_apart s2Step80Add0_checked s2Step80Add1_checked

private theorem s2Step80Front_branch : s2Step80FrontSigmaArena.checkBorrow 1 [782]=some s2Step80HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step80FrontSigmaArena,s2Step80EntryGvAfter,s2Step80EntryFvAfter,arenaWires]
  · ext q
    simp only [s2Step80FrontSigmaArena,s2Step80EntryGvAfter,s2Step80EntryFvAfter,s2Step80HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step80Front_entry : HmrFrontEntryValid s2Step80EntryFBefore s2Step80FrontBank 229 54 ⟨229,227,54,54⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step80FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step80EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step80EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step80FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step80Front_sigma : s2Step80EntryGvAfter.checkBorrow 1 [842]=some s2Step80FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step80EntryGvAfter,s2Step80EntryFvAfter,arenaWires]
  · rfl

private def s2Step80HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80HeadFBefore : Arena := s2Step80HeadGAfter

private def s2Step80HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740],768⟩

private def s2Step80HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783],770⟩

private def s2Step80HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 784],769⟩

private def s2Step80HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826],771⟩

private theorem s2Step80HeadBank_incomingDistinct : ([s2Step80HeadGRow,s2Step80HeadFRow,s2Step80HeadGvRow,s2Step80HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80HeadF_Incoming : rowsOwned s2Step80HeadFBefore [s2Step80HeadFRow,s2Step80HeadGvRow,s2Step80HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step80HeadGRow,s2Step80HeadFRow,s2Step80HeadGvRow,s2Step80HeadFvRow] 1 s2Step80HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step80HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step80HeadBank_outgoingOwned : rowsOwned s2Step80HeadFvAfter [s2Step80HeadGOut,s2Step80HeadFOut,s2Step80HeadGvOut,s2Step80HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step80HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step80HeadF_Outgoing : rowsOwned s2Step80HeadFvAfter [s2Step80HeadFOut,s2Step80HeadGvOut,s2Step80HeadFvOut] :=
  hmrRows_owned_drop s2Step80HeadFvAfter [s2Step80HeadGOut,s2Step80HeadFOut,s2Step80HeadGvOut,s2Step80HeadFvOut] 1 s2Step80HeadBank_outgoingOwned

private theorem s2Step80HeadF_distinct : (s2Step80HeadFRow.sign::s2Step80HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80HeadF_owned : (s2Step80HeadFRow.sign::s2Step80HeadFRow.payload).toFinset⊆s2Step80HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step80HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80HeadF_reserved : s2Step80HeadFBefore.reserve s2Step80HeadFFresh.toFinset=some s2Step80HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step80HeadFFresh,arenaWires]
  · norm_num [s2Step80HeadFBefore,s2Step80HeadGAfter,s2Step80HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step80HeadFAfter,s2Step80HeadFBefore,s2Step80HeadGAfter,s2Step80HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step80HeadF_checked : planRowResizeLog s2Step80HeadFBefore s2Step80HeadFRow 230 s2Step80HeadFFresh=
    some (s2Step80HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 844],768⟩,growRow 768 s2Step80HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step80HeadFBefore s2Step80HeadFAfter s2Step80HeadFRow 230 s2Step80HeadFFresh
    s2Step80HeadF_distinct s2Step80HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step80HeadF_reserved
  have rowEq : WindowRow.mk (s2Step80HeadFRow.payload++s2Step80HeadFFresh) s2Step80HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 844],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step80HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step80HeadFvBefore : Arena := s2Step80HeadGvAfter

private theorem s2Step80HeadFv_Incoming : rowsOwned s2Step80HeadFvBefore [s2Step80HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step80HeadGRow,s2Step80HeadFRow,s2Step80HeadGvRow,s2Step80HeadFvRow] 3 s2Step80HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step80HeadFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step80HeadFv_Outgoing : rowsOwned s2Step80HeadFvAfter [s2Step80HeadFvOut] :=
  hmrRows_owned_drop s2Step80HeadFvAfter [s2Step80HeadGOut,s2Step80HeadFOut,s2Step80HeadGvOut,s2Step80HeadFvOut] 3 s2Step80HeadBank_outgoingOwned

private theorem s2Step80HeadFv_distinct : (s2Step80HeadFvRow.sign::s2Step80HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80HeadFv_owned : (s2Step80HeadFvRow.sign::s2Step80HeadFvRow.payload).toFinset⊆s2Step80HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step80HeadFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80HeadFv_reserved : s2Step80HeadFvBefore.reserve s2Step80HeadFvFresh.toFinset=some s2Step80HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step80HeadFvFresh,arenaWires]
  · norm_num [s2Step80HeadFvBefore,s2Step80HeadGvAfter,s2Step80HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step80HeadFvAfter,s2Step80HeadFvBefore,s2Step80HeadGvAfter,s2Step80HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step80HeadFv_checked : planRowResizeLog s2Step80HeadFvBefore s2Step80HeadFvRow 55 s2Step80HeadFvFresh=
    some (s2Step80HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 816],770⟩,growRow 770 s2Step80HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step80HeadFvBefore s2Step80HeadFvAfter s2Step80HeadFvRow 55 s2Step80HeadFvFresh
    s2Step80HeadFv_distinct s2Step80HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step80HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step80HeadFvRow.payload++s2Step80HeadFvFresh) s2Step80HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 816],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step80HeadG_Incoming : rowsOwned s2Step80HeadGBefore [s2Step80HeadGRow,s2Step80HeadFRow,s2Step80HeadGvRow,s2Step80HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step80HeadGRow,s2Step80HeadFRow,s2Step80HeadGvRow,s2Step80HeadFvRow] 0 s2Step80HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step80HeadGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step80HeadG_Outgoing : rowsOwned s2Step80HeadFvAfter [s2Step80HeadGOut,s2Step80HeadFOut,s2Step80HeadGvOut,s2Step80HeadFvOut] :=
  hmrRows_owned_drop s2Step80HeadFvAfter [s2Step80HeadGOut,s2Step80HeadFOut,s2Step80HeadGvOut,s2Step80HeadFvOut] 0 s2Step80HeadBank_outgoingOwned

private theorem s2Step80HeadG_distinct : (s2Step80HeadGRow.sign::s2Step80HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80HeadG_owned : (s2Step80HeadGRow.sign::s2Step80HeadGRow.payload).toFinset⊆s2Step80HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step80HeadGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80HeadG_reserved : s2Step80HeadGBefore.reserve s2Step80HeadGFresh.toFinset=some s2Step80HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step80HeadGFresh,arenaWires]
  · norm_num [s2Step80HeadGBefore,s2Step80HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step80HeadGAfter,s2Step80HeadGBefore,s2Step80HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step80HeadG_checked : planRowResizeLog s2Step80HeadGBefore s2Step80HeadGRow 230 s2Step80HeadGFresh=
    some (s2Step80HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 784, 845],769⟩,growRow 769 s2Step80HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step80HeadGBefore s2Step80HeadGAfter s2Step80HeadGRow 230 s2Step80HeadGFresh
    s2Step80HeadG_distinct s2Step80HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step80HeadG_reserved
  have rowEq : WindowRow.mk (s2Step80HeadGRow.payload++s2Step80HeadGFresh) s2Step80HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 784, 845],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step80HeadGvBefore : Arena := s2Step80HeadFAfter

private theorem s2Step80HeadGv_Incoming : rowsOwned s2Step80HeadGvBefore [s2Step80HeadGvRow,s2Step80HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step80HeadGRow,s2Step80HeadFRow,s2Step80HeadGvRow,s2Step80HeadFvRow] 2 s2Step80HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step80HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step80HeadGv_Outgoing : rowsOwned s2Step80HeadFvAfter [s2Step80HeadGvOut,s2Step80HeadFvOut] :=
  hmrRows_owned_drop s2Step80HeadFvAfter [s2Step80HeadGOut,s2Step80HeadFOut,s2Step80HeadGvOut,s2Step80HeadFvOut] 2 s2Step80HeadBank_outgoingOwned

private theorem s2Step80HeadGv_distinct : (s2Step80HeadGvRow.sign::s2Step80HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step80HeadGv_owned : (s2Step80HeadGvRow.sign::s2Step80HeadGvRow.payload).toFinset⊆s2Step80HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step80HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step80HeadGv_reserved : s2Step80HeadGvBefore.reserve s2Step80HeadGvFresh.toFinset=some s2Step80HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step80HeadGvFresh,arenaWires]
  · norm_num [s2Step80HeadGvBefore,s2Step80HeadFAfter,s2Step80HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step80HeadGvAfter,s2Step80HeadGvBefore,s2Step80HeadFAfter,s2Step80HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step80HeadGv_checked : planRowResizeLog s2Step80HeadGvBefore s2Step80HeadGvRow 55 s2Step80HeadGvFresh=
    some (s2Step80HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 836],771⟩,growRow 771 s2Step80HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step80HeadGvBefore s2Step80HeadGvAfter s2Step80HeadGvRow 55 s2Step80HeadGvFresh
    s2Step80HeadGv_distinct s2Step80HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step80HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step80HeadGvRow.payload++s2Step80HeadGvFresh) s2Step80HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 836],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step80HeadBank_rows : planWindowRowsLog s2Step80HeadGBefore [(s2Step80HeadGRow,230),(s2Step80HeadFRow,230),(s2Step80HeadGvRow,55),(s2Step80HeadFvRow,55)] [s2Step80HeadGFresh,s2Step80HeadFFresh,s2Step80HeadGvFresh,s2Step80HeadFvFresh]=
    some (s2Step80HeadFvAfter,[s2Step80HeadGOut,s2Step80HeadFOut,s2Step80HeadGvOut,s2Step80HeadFvOut],(growRow 769 s2Step80HeadGFresh ++ (growRow 768 s2Step80HeadFFresh ++ (growRow 771 s2Step80HeadGvFresh ++ (growRow 770 s2Step80HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step80HeadFvAfter [] []=some (s2Step80HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step80HeadFvBefore s2Step80HeadFvAfter s2Step80HeadFvAfter
    s2Step80HeadFvRow s2Step80HeadFvOut 55 s2Step80HeadFvFresh [] [] []
    (growRow 770 s2Step80HeadFvFresh) ([]) s2Step80HeadFv_Incoming s2Step80HeadFv_checked h4 s2Step80HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step80HeadGvBefore s2Step80HeadGvAfter s2Step80HeadFvAfter
    s2Step80HeadGvRow s2Step80HeadGvOut 55 s2Step80HeadGvFresh [(s2Step80HeadFvRow,55)] [s2Step80HeadFvFresh] [s2Step80HeadFvOut]
    (growRow 771 s2Step80HeadGvFresh) ((growRow 770 s2Step80HeadFvFresh ++ [])) s2Step80HeadGv_Incoming s2Step80HeadGv_checked h3 s2Step80HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step80HeadFBefore s2Step80HeadFAfter s2Step80HeadFvAfter
    s2Step80HeadFRow s2Step80HeadFOut 230 s2Step80HeadFFresh [(s2Step80HeadGvRow,55),(s2Step80HeadFvRow,55)] [s2Step80HeadGvFresh,s2Step80HeadFvFresh] [s2Step80HeadGvOut,s2Step80HeadFvOut]
    (growRow 768 s2Step80HeadFFresh) ((growRow 771 s2Step80HeadGvFresh ++ (growRow 770 s2Step80HeadFvFresh ++ []))) s2Step80HeadF_Incoming s2Step80HeadF_checked h2 s2Step80HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step80HeadGBefore s2Step80HeadGAfter s2Step80HeadFvAfter
    s2Step80HeadGRow s2Step80HeadGOut 230 s2Step80HeadGFresh [(s2Step80HeadFRow,230),(s2Step80HeadGvRow,55),(s2Step80HeadFvRow,55)] [s2Step80HeadFFresh,s2Step80HeadGvFresh,s2Step80HeadFvFresh] [s2Step80HeadFOut,s2Step80HeadGvOut,s2Step80HeadFvOut]
    (growRow 769 s2Step80HeadGFresh) ((growRow 768 s2Step80HeadFFresh ++ (growRow 771 s2Step80HeadGvFresh ++ (growRow 770 s2Step80HeadFvFresh ++ [])))) s2Step80HeadG_Incoming s2Step80HeadG_checked h1 s2Step80HeadG_Outgoing
  exact h0

private theorem s2Step80HeadBank_checked : compileHmrBankResizeLog .headroom s2Step80HeadGBefore ⟨s2Step80HeadFRow,s2Step80HeadGRow,s2Step80HeadFvRow,s2Step80HeadGvRow⟩ ⟨230,230,55,55⟩ [s2Step80HeadGFresh,s2Step80HeadFFresh,s2Step80HeadGvFresh,s2Step80HeadFvFresh]=
    some (s2Step80HeadFvAfter,⟨s2Step80HeadFOut,s2Step80HeadGOut,s2Step80HeadFvOut,s2Step80HeadGvOut⟩,(growRow 769 s2Step80HeadGFresh ++ (growRow 768 s2Step80HeadFFresh ++ (growRow 771 s2Step80HeadGvFresh ++ (growRow 770 s2Step80HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step80HeadBank_rows]
  rfl

private theorem s2Step80Front_checked : compileHmrSourceFrontLog s2Step80EntryFBefore s2Step80FrontBank 229 54 ⟨229,227,54,54⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step80FrontLog=some s2Step80FrontPlan := by
  have pairEq : s2Step80FrontPair=⟨s2Step80HeadFRow,s2Step80HeadGRow,s2Step80HeadFvRow,s2Step80HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step80FrontHead=⟨s2Step80ExitFRow,s2Step80ExitGRow,s2Step80ExitFvRow,s2Step80ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step80Add0A=s2Step80FrontHead.f.wires := by decide +kernel
  have gEq : s2Step80Add0B=s2Step80FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step80Add1A=s2Step80FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step80Add1B=s2Step80FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step80EntryFBefore s2Step80FrontBank 229 54 ⟨229,227,54,54⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step80FrontLog s2Step80FrontPlan
  · exact s2Step80Front_entry
  · exact s2Step80EntryBank_checked
  · exact s2Step80Front_sigma
  · rfl
  · exact s2Step80Front_branch
  · rfl
  · simpa only [s2Step80FrontPlan,pairEq] using s2Step80HeadBank_checked
  · simpa only [s2Step80FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step80F4_checked
  · exact s2Step80Counter_checked
  · rfl
  · simpa only [s2Step80FrontPlan,headEq] using s2Step80ExitBank_checked

private theorem s2Step80Complete_explicit_checked : compileHmrEarlyStepLog s2Step80EntryFBefore s2Step80FrontBank 229 54 ⟨229,227,54,54⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step80CompleteLog=some s2Step80CompletePlan := by
  let Q := s2Step80EarlyControlPlan
  have hq := s2Step80EarlyControl_plan_checked
  have fv1 : s2Step80CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step80CompleteOut.fv.payload[2]?.getD s2Step80CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step80CompleteOut.fv.payload[3]?.getD s2Step80CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step80CompleteOut.fv.payload[4]?.getD s2Step80CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step80EntryFBefore s2Step80EarlyControlArena s2Step80FrontBank 229 54 ⟨229,227,54,54⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step80CompleteLog s2Step80FrontPlan Q
    s2Step80Front_checked s2Step80Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step80Complete_owned s2Step80Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step80EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 842 s2Step80CompleteOut.fv.second (s2Step80CompleteOut.fv.payload[2]?.getD s2Step80CompleteOut.fv.sign) (s2Step80CompleteOut.fv.payload[3]?.getD s2Step80CompleteOut.fv.sign) (s2Step80CompleteOut.fv.payload[4]?.getD s2Step80CompleteOut.fv.sign) 782 30 s2Step80EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep80Arena : Arena := s2Step80EntryFBefore
def s2PrivateStep80Bank : WindowBank := s2Step80FrontBank
def s2PrivateStep80Spec : HmrSourceWalkStepLog := ⟨229,54,⟨229,227,54,54⟩,30,.early s2Step80CompleteLog⟩
def s2PrivateStep80Plan : HmrSourceStepPlan := .early s2Step80CompletePlan
theorem s2PrivateStep80_source : s2PrivateStep80Spec=s2ObservedLogs80[0] := rfl
theorem s2PrivateStep80_checked : compileHmrSourceStepLog s2PrivateStep80Arena s2PrivateStep80Bank
    s2PrivateStep80Spec.fgWidth s2PrivateStep80Spec.vWidth s2PrivateStep80Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]
    6 498 80 s2PrivateStep80Spec.need none s2PrivateStep80Spec.log=some s2PrivateStep80Plan := by
  change compileHmrSourceStepLog s2Step80EntryFBefore s2Step80FrontBank 229 54 ⟨229,227,54,54⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 6 498 80 30 none (.early s2Step80CompleteLog)=some (.early s2Step80CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 80<498)]
  rw [s2Step80Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
