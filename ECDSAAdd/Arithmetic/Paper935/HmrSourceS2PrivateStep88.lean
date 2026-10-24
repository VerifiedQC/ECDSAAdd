import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep86
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

private def s2Step88CompleteMoves : List (Wire × Wire) := []

private def s2Step88EarlyControlLog : HmrEarlyControlLog := ⟨[779, 836, 781, 844, 816],[785],[839],[846, 847, 849, 851, 867, 873],[]⟩

private def s2Step88FrontLog : HmrFrontAllocationLog := ⟨⟨[[844], [], [], [779]],[[839], [816], [836], [781]],[[], [], [], []]⟩,[793],[789],[846],[847],[849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929],[846, 847, 849, 851]⟩

private def s2Step88CompleteLog : HmrEarlyStepLog := ⟨s2Step88FrontLog,s2Step88CompleteMoves,s2Step88EarlyControlLog⟩

private def s2Step88ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735],768⟩

private def s2Step88ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step88ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223],769⟩

private def s2Step88ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩

private def s2Step88FrontOut : WindowBank := ⟨s2Step88ExitFOut,s2Step88ExitGOut,s2Step88ExitFvOut,s2Step88ExitGvOut⟩

private def s2Step88CompleteOut : WindowBank := s2Step88FrontOut.repacked s2Step88CompleteMoves

private def s2Step88EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step88EarlyControlPositiveArena,[785],s2Step88EarlyControlEqualityArena,[839],⟨⟨793,false⟩,[⟨⟨785,false⟩,839⟩]⟩⟩

private def s2Step88EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<874) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<874) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,779⟩,⟨⟨774,false⟩,836⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,844⟩,⟨⟨777,false⟩,816⟩]⟩

private def s2Step88EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step88EarlyControlZeroArena,s2Step88EarlyControlZeroPlan,s2Step88EarlyControlClassPlan,s2Step88EarlyControlFlagArena,s2Step88EarlyControlFittedArena,s2Step88EarlyControlHistoryArena,s2Step88EarlyControlSigmaArena,s2Step88EarlyControlOutputArena,s2Step88EarlyControlLog⟩

private def s2Step88CounterWork : List Wire := [846, 847, 849, 851]

private theorem s2Step88Counter_bounded : s2Step88CounterWork.toFinset⊆arenaWires := by norm_num [s2Step88CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step88HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88CounterDuring : Arena := ⟨s2Step88HeadFvAfter.live∪s2Step88CounterWork.toFinset,Finset.union_subset s2Step88HeadFvAfter.bounded s2Step88Counter_bounded⟩

private def s2Step88EntryFFresh : List Wire := [844]

private def s2Step88EntryFvFresh : List Wire := []

private def s2Step88EntryGFresh : List Wire := []

private def s2Step88EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88EntryGvFresh : List Wire := [779]

private def s2Step88ExitFExtra : List Wire := [844, 816]

private def s2Step88ExitFvExtra : List Wire := [781]

private def s2Step88ExitGExtra : List Wire := [785, 839]

private def s2Step88ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88ExitGvExtra : List Wire := [779, 836]

private def s2Step88Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88Add0Work : List Wire := [849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step88Add0_bounded : s2Step88Add0Work.toFinset⊆arenaWires := by
  have h : s2Step88Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step88Add0During : Arena := ⟨s2Step88Add0Arena.live∪s2Step88Add0Work.toFinset,Finset.union_subset s2Step88Add0Arena.bounded s2Step88Add0_bounded⟩

private def s2Step88Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88Add1Work : List Wire := [849, 851, 867, 873, 874, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929]

private theorem s2Step88Add1_bounded : s2Step88Add1Work.toFinset⊆arenaWires := by
  have h : s2Step88Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step88Add1During : Arena := ⟨s2Step88Add1Arena.live∪s2Step88Add1Work.toFinset,Finset.union_subset s2Step88Add1Arena.bounded s2Step88Add1_bounded⟩

private def s2Step88F4FlagArena : Arena := ⟨s2Step88HeadFvAfter.live∪{846},Finset.union_subset s2Step88HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step88F4Plan : HmrHybridF4Plan := ⟨s2Step88F4FlagArena,[846],s2Step88Add0Arena,[847],s2Step88Add0During,s2Step88Add0Work,s2Step88Add1During,s2Step88Add1Work⟩

private def s2Step88HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 844, 816],768⟩

private def s2Step88HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 781],770⟩

private def s2Step88HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785, 839],769⟩

private def s2Step88HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 779, 836],771⟩

private def s2Step88FrontHead : WindowBank := ⟨s2Step88HeadFOut,s2Step88HeadGOut,s2Step88HeadFvOut,s2Step88HeadGvOut⟩

private def s2Step88EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 844],768⟩

private def s2Step88EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step88EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785],769⟩

private def s2Step88EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 779],771⟩

private def s2Step88FrontPair : WindowBank := ⟨s2Step88EntryFOut,s2Step88EntryGOut,s2Step88EntryFvOut,s2Step88EntryGvOut⟩

private def s2Step88FrontSigmaArena : Arena := ⟨s2Step88EntryGvAfter.live∪{793},Finset.union_subset s2Step88EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step88HeadFFresh : List Wire := [816]

private def s2Step88HeadFvFresh : List Wire := [781]

private def s2Step88HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88HeadGFresh : List Wire := [839]

private def s2Step88HeadGvFresh : List Wire := [836]

private def s2Step88FrontPlan : HmrSourceFront := ⟨s2Step88EntryGvAfter,s2Step88FrontPair,(growRow 768 s2Step88EntryFFresh ++ (growRow 769 s2Step88EntryGFresh ++ (growRow 770 s2Step88EntryFvFresh ++ (growRow 771 s2Step88EntryGvFresh ++ [])))),s2Step88FrontSigmaArena,[793],s2Step88HeadGBefore,[789],
  s2Step88HeadFvAfter,s2Step88FrontHead,(growRow 769 s2Step88HeadGFresh ++ (growRow 768 s2Step88HeadFFresh ++ (growRow 771 s2Step88HeadGvFresh ++ (growRow 770 s2Step88HeadFvFresh ++ [])))),s2Step88F4Plan,s2Step88CounterDuring,s2Step88CounterWork,s2Step88ExitGvAfter,s2Step88FrontOut,(shrinkRow 769 s2Step88ExitGExtra ++ (shrinkRow 768 s2Step88ExitFExtra ++ (shrinkRow 770 s2Step88ExitFvExtra ++ (shrinkRow 771 s2Step88ExitGvExtra ++ []))))⟩

private def s2Step88CompletePlan : HmrEarlyStepPlan := ⟨s2Step88FrontPlan,s2Step88EarlyControlArena,s2Step88EarlyControlPlan,s2Step88CompleteMoves⟩

private theorem s2Step88Complete_apart : List.Disjoint (s2Step88CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [793, 789, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] := by
  have nd : ((s2Step88CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[793, 789, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step88Complete_owned : (s2Step88CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step88EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step88EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88Complete_repack : s2Step88ExitGvAfter.checkRepack s2Step88CompleteMoves=some s2Step88EarlyControlArena := by rfl

private theorem s2Step88EarlyControl_branchOwned : ([789] : List Wire).toFinset⊆s2Step88EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step88EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88EarlyControl_branch : compileHmrBranchRetirement s2Step88EarlyControlSigmaArena 789=some s2Step88EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step88EarlyControl_branchOwned
  · ext q
    simp [s2Step88EarlyControlOutputArena,s2Step88EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step88EarlyControl_classEqualityBorrow : s2Step88EarlyControlPositiveArena.checkBorrow (([793, 785] : List Wire).length-1) s2Step88EarlyControlLog.classWork=some s2Step88EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step88EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step88EarlyControlPositiveArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step88EarlyControlEqualityArena,s2Step88EarlyControlPositiveArena,s2Step88EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step88EarlyControl_classEqualityOwned : ([793, 785] : List Wire).toFinset⊆s2Step88EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step88EarlyControlPositiveArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88EarlyControl_classEquality : compileHmrEqualityLog s2Step88EarlyControlPositiveArena [793, 785] 0 s2Step88EarlyControlLog.classWork=some (s2Step88EarlyControlEqualityArena,s2Step88EarlyControlLog.classWork,s2Step88EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step88EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step88EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step88EarlyControl_classOwned : ([777, 816, 793] : List Wire).toFinset⊆s2Step88EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step88EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88EarlyControl_positiveBorrow : s2Step88EarlyControlZeroArena.checkBorrow (1) s2Step88EarlyControlLog.positiveWork=some s2Step88EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step88EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step88EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step88EarlyControlPositiveArena,s2Step88EarlyControlZeroArena,s2Step88EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step88EarlyControl_class : compileHmrSourceClassLog s2Step88EarlyControlZeroArena false 777 s2Step88EarlyControlZeroPlan.top 0 793 s2Step88EarlyControlLog.positiveWork s2Step88EarlyControlLog.classWork=some s2Step88EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step88EarlyControlClassPlan s2Step88EarlyControlZeroArena false 777 s2Step88EarlyControlZeroPlan.top 0 793
  constructor
  · decide +kernel
  · exact s2Step88EarlyControl_classOwned
  · exact s2Step88EarlyControl_positiveBorrow
  · exact s2Step88EarlyControl_classEquality

private theorem s2Step88EarlyControl_entryRecordOwned : ([789, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).toFinset⊆s2Step88EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step88EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88EarlyControl_entrySigmaOwned : ([793, 254] : List Wire).toFinset⊆s2Step88EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step88EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88EarlyControl_fitBorrow : s2Step88EarlyControlFlagArena.checkBorrow ((31-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).length)) s2Step88EarlyControlLog.recordFresh=some s2Step88EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step88EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step88EarlyControlFlagArena (fun q => (0≤q ∧ q<874) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step88EarlyControlFittedArena,s2Step88EarlyControlFlagArena,s2Step88EarlyControlLog,arenaWires]

private theorem s2Step88EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).toFinset⊆s2Step88EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step88EarlyControlFlagArena (fun q => (0≤q ∧ q<874) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88EarlyControl_fit : compileHmrRecordGrowLog s2Step88EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 31 s2Step88EarlyControlLog.recordFresh=some s2Step88EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step88EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step88EarlyControl_fitBorrow

private theorem s2Step88EarlyControl_flagsBorrow : s2Step88EarlyControlEqualityArena.checkBorrow (6) s2Step88EarlyControlLog.flagWork=some s2Step88EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step88EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step88EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step88EarlyControlFlagArena,s2Step88EarlyControlEqualityArena,s2Step88EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step88EarlyControl_flagsOwned : ([839, 253, 252, 251] : List Wire).toFinset⊆s2Step88EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step88EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88EarlyControl_flags : compileHmrFlagsLog s2Step88EarlyControlClassPlan.equalityArena s2Step88EarlyControlClassPlan.equality.top 253 252 251 s2Step88EarlyControlLog.flagWork=some s2Step88EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step88EarlyControl_flagsOwned⟩
  · exact s2Step88EarlyControl_flagsBorrow

private theorem s2Step88EarlyControl_historyBorrow : s2Step88EarlyControlArena.checkBorrow ((31-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).length)) s2Step88EarlyControlLog.recordFresh=some s2Step88EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step88EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step88EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step88EarlyControlHistoryArena,s2Step88EarlyControlArena,s2Step88EarlyControlLog,arenaWires]

private theorem s2Step88EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] : List Wire).toFinset⊆s2Step88EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step88EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88EarlyControl_history : compileHmrRecordGrowLog s2Step88EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 31 s2Step88EarlyControlLog.recordFresh=some s2Step88EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step88EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step88EarlyControl_historyBorrow

private theorem s2Step88EarlyControl_sigmaOwned : ([254, 793] : List Wire).toFinset⊆s2Step88EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step88EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88EarlyControl_sigmaReleaseOwned : ([793] : List Wire).toFinset⊆s2Step88EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step88EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88EarlyControl_sigmaRelease : s2Step88EarlyControlHistoryArena.release {793} (fun _ => false)=some s2Step88EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step88EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step88EarlyControlSigmaArena,s2Step88EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step88EarlyControl_sigma : compileHmrSigmaDropLog s2Step88EarlyControlHistoryArena false 0 0 254 793 []=some s2Step88EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step88EarlyControl_sigmaOwned⟩
  · exact s2Step88EarlyControl_sigmaRelease

private theorem s2Step88EarlyControl_zeroBorrow : s2Step88EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step88EarlyControlLog.zeroWork=some s2Step88EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step88EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step88EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
      decide +kernel
    · ext q
      simp [s2Step88EarlyControlZeroArena,s2Step88EarlyControlArena,s2Step88EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step88EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step88EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step88EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88EarlyControl_zero : compileHmrEqualityLog s2Step88EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step88EarlyControlLog.zeroWork=some (s2Step88EarlyControlZeroArena,s2Step88EarlyControlLog.zeroWork,s2Step88EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step88EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step88EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step88EarlyControl_logged : s2Step88EarlyControlPlan.Logged s2Step88EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 793 254 253 252 251 789 31 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step88EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step88EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step88EarlyControl_zero
  · exact s2Step88EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step88EarlyControl_flags
  · exact s2Step88EarlyControl_fit
  · exact s2Step88EarlyControl_history
  · exact s2Step88EarlyControl_sigma
  · exact s2Step88EarlyControl_branch

private theorem s2Step88EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step88EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 793 254 253 252 251 789 31 s2Step88EarlyControlLog=some s2Step88EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step88EarlyControlPlan s2Step88EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 793 254 253 252 251 789 31 s2Step88EarlyControl_logged

private def s2Step88EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735],768⟩

private def s2Step88EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step88EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785],769⟩

private def s2Step88EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842],771⟩

private def s2Step88FrontBank : WindowBank := ⟨s2Step88EntryFRow,s2Step88EntryGRow,s2Step88EntryFvRow,s2Step88EntryGvRow⟩

private def s2Step88Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 844, 816, 768]

private def s2Step88Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785, 839, 769]

private def s2Step88Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 781, 770]

private def s2Step88Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 779, 836, 771]

private theorem s2Step88Counter_apart : Disjoint s2Step88HeadFvAfter.live s2Step88CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step88HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88Counter_borrowed : s2Step88HeadFvAfter.checkBorrow 4 s2Step88CounterWork=some s2Step88CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step88HeadFvAfter s2Step88CounterDuring s2Step88CounterWork.toFinset s2Step88Counter_bounded s2Step88Counter_apart rfl

private theorem s2Step88Counter_owned : (793::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step88HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step88HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88Counter_checked : compileHmrCounterStepLog s2Step88HeadFvAfter true 793 [772, 773, 774, 775, 776, 777] s2Step88CounterWork=some s2Step88CounterDuring := by
  have owned : ∀q∈793::[772, 773, 774, 775, 776, 777],q∈s2Step88HeadFvAfter.live := fun q hq => s2Step88Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step88Counter_borrowed

private def s2Step88EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private theorem s2Step88EntryBank_incomingDistinct : ([s2Step88EntryFRow,s2Step88EntryGRow,s2Step88EntryFvRow,s2Step88EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88EntryF_Incoming : rowsOwned s2Step88EntryFBefore [s2Step88EntryFRow,s2Step88EntryGRow,s2Step88EntryFvRow,s2Step88EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step88EntryFRow,s2Step88EntryGRow,s2Step88EntryFvRow,s2Step88EntryGvRow] 0 s2Step88EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step88EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step88EntryBank_outgoingOwned : rowsOwned s2Step88EntryGvAfter [s2Step88EntryFOut,s2Step88EntryGOut,s2Step88EntryFvOut,s2Step88EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step88EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step88EntryF_Outgoing : rowsOwned s2Step88EntryGvAfter [s2Step88EntryFOut,s2Step88EntryGOut,s2Step88EntryFvOut,s2Step88EntryGvOut] :=
  hmrRows_owned_drop s2Step88EntryGvAfter [s2Step88EntryFOut,s2Step88EntryGOut,s2Step88EntryFvOut,s2Step88EntryGvOut] 0 s2Step88EntryBank_outgoingOwned

private theorem s2Step88EntryF_distinct : (s2Step88EntryFRow.sign::s2Step88EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88EntryF_owned : (s2Step88EntryFRow.sign::s2Step88EntryFRow.payload).toFinset⊆s2Step88EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step88EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88EntryF_reserved : s2Step88EntryFBefore.reserve s2Step88EntryFFresh.toFinset=some s2Step88EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step88EntryFFresh,arenaWires]
  · norm_num [s2Step88EntryFBefore,s2Step88EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step88EntryFAfter,s2Step88EntryFBefore,s2Step88EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step88EntryF_checked : planRowResizeLog s2Step88EntryFBefore s2Step88EntryFRow 225 s2Step88EntryFFresh=
    some (s2Step88EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 844],768⟩,growRow 768 s2Step88EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step88EntryFBefore s2Step88EntryFAfter s2Step88EntryFRow 225 s2Step88EntryFFresh
    s2Step88EntryF_distinct s2Step88EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step88EntryF_reserved
  have rowEq : WindowRow.mk (s2Step88EntryFRow.payload++s2Step88EntryFFresh) s2Step88EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 844],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step88EntryFvAfter : Arena := s2Step88EntryFAfter

private def s2Step88EntryFvBefore : Arena := s2Step88EntryFAfter

private theorem s2Step88EntryFv_Incoming : rowsOwned s2Step88EntryFvBefore [s2Step88EntryFvRow,s2Step88EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step88EntryFRow,s2Step88EntryGRow,s2Step88EntryFvRow,s2Step88EntryGvRow] 2 s2Step88EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step88EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step88EntryFv_Outgoing : rowsOwned s2Step88EntryGvAfter [s2Step88EntryFvOut,s2Step88EntryGvOut] :=
  hmrRows_owned_drop s2Step88EntryGvAfter [s2Step88EntryFOut,s2Step88EntryGOut,s2Step88EntryFvOut,s2Step88EntryGvOut] 2 s2Step88EntryBank_outgoingOwned

private theorem s2Step88EntryFv_distinct : (s2Step88EntryFvRow.sign::s2Step88EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88EntryFv_owned : (s2Step88EntryFvRow.sign::s2Step88EntryFvRow.payload).toFinset⊆s2Step88EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step88EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88EntryFv_reserved : s2Step88EntryFvBefore.reserve s2Step88EntryFvFresh.toFinset=some s2Step88EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step88EntryFvFresh,arenaWires]
  · norm_num [s2Step88EntryFvBefore,s2Step88EntryFAfter,s2Step88EntryFvFresh,arenaWires]
  · simp only [s2Step88EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step88EntryFv_checked : planRowResizeLog s2Step88EntryFvBefore s2Step88EntryFvRow 58 s2Step88EntryFvFresh=
    some (s2Step88EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩,growRow 770 s2Step88EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step88EntryFvBefore s2Step88EntryFvAfter s2Step88EntryFvRow 58 s2Step88EntryFvFresh
    s2Step88EntryFv_distinct s2Step88EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step88EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step88EntryFvRow.payload++s2Step88EntryFvFresh) s2Step88EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step88EntryGAfter : Arena := s2Step88EntryFAfter

private def s2Step88EntryGBefore : Arena := s2Step88EntryFAfter

private theorem s2Step88EntryG_Incoming : rowsOwned s2Step88EntryGBefore [s2Step88EntryGRow,s2Step88EntryFvRow,s2Step88EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step88EntryFRow,s2Step88EntryGRow,s2Step88EntryFvRow,s2Step88EntryGvRow] 1 s2Step88EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step88EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step88EntryG_Outgoing : rowsOwned s2Step88EntryGvAfter [s2Step88EntryGOut,s2Step88EntryFvOut,s2Step88EntryGvOut] :=
  hmrRows_owned_drop s2Step88EntryGvAfter [s2Step88EntryFOut,s2Step88EntryGOut,s2Step88EntryFvOut,s2Step88EntryGvOut] 1 s2Step88EntryBank_outgoingOwned

private theorem s2Step88EntryG_distinct : (s2Step88EntryGRow.sign::s2Step88EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88EntryG_owned : (s2Step88EntryGRow.sign::s2Step88EntryGRow.payload).toFinset⊆s2Step88EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step88EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88EntryG_reserved : s2Step88EntryGBefore.reserve s2Step88EntryGFresh.toFinset=some s2Step88EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step88EntryGFresh,arenaWires]
  · norm_num [s2Step88EntryGBefore,s2Step88EntryFAfter,s2Step88EntryGFresh,arenaWires]
  · simp only [s2Step88EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step88EntryG_checked : planRowResizeLog s2Step88EntryGBefore s2Step88EntryGRow 225 s2Step88EntryGFresh=
    some (s2Step88EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785],769⟩,growRow 769 s2Step88EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step88EntryGBefore s2Step88EntryGAfter s2Step88EntryGRow 225 s2Step88EntryGFresh
    s2Step88EntryG_distinct s2Step88EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step88EntryG_reserved
  have rowEq : WindowRow.mk (s2Step88EntryGRow.payload++s2Step88EntryGFresh) s2Step88EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step88EntryGvBefore : Arena := s2Step88EntryFAfter

private theorem s2Step88EntryGv_Incoming : rowsOwned s2Step88EntryGvBefore [s2Step88EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step88EntryFRow,s2Step88EntryGRow,s2Step88EntryFvRow,s2Step88EntryGvRow] 3 s2Step88EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step88EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step88EntryGv_Outgoing : rowsOwned s2Step88EntryGvAfter [s2Step88EntryGvOut] :=
  hmrRows_owned_drop s2Step88EntryGvAfter [s2Step88EntryFOut,s2Step88EntryGOut,s2Step88EntryFvOut,s2Step88EntryGvOut] 3 s2Step88EntryBank_outgoingOwned

private theorem s2Step88EntryGv_distinct : (s2Step88EntryGvRow.sign::s2Step88EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88EntryGv_owned : (s2Step88EntryGvRow.sign::s2Step88EntryGvRow.payload).toFinset⊆s2Step88EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step88EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88EntryGv_reserved : s2Step88EntryGvBefore.reserve s2Step88EntryGvFresh.toFinset=some s2Step88EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step88EntryGvFresh,arenaWires]
  · norm_num [s2Step88EntryGvBefore,s2Step88EntryFAfter,s2Step88EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step88EntryGvAfter,s2Step88EntryGvBefore,s2Step88EntryFAfter,s2Step88EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step88EntryGv_checked : planRowResizeLog s2Step88EntryGvBefore s2Step88EntryGvRow 58 s2Step88EntryGvFresh=
    some (s2Step88EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 779],771⟩,growRow 771 s2Step88EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step88EntryGvBefore s2Step88EntryGvAfter s2Step88EntryGvRow 58 s2Step88EntryGvFresh
    s2Step88EntryGv_distinct s2Step88EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step88EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step88EntryGvRow.payload++s2Step88EntryGvFresh) s2Step88EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 779],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step88EntryBank_rows : planWindowRowsLog s2Step88EntryFBefore [(s2Step88EntryFRow,225),(s2Step88EntryGRow,225),(s2Step88EntryFvRow,58),(s2Step88EntryGvRow,58)] [s2Step88EntryFFresh,s2Step88EntryGFresh,s2Step88EntryFvFresh,s2Step88EntryGvFresh]=
    some (s2Step88EntryGvAfter,[s2Step88EntryFOut,s2Step88EntryGOut,s2Step88EntryFvOut,s2Step88EntryGvOut],(growRow 768 s2Step88EntryFFresh ++ (growRow 769 s2Step88EntryGFresh ++ (growRow 770 s2Step88EntryFvFresh ++ (growRow 771 s2Step88EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step88EntryGvAfter [] []=some (s2Step88EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step88EntryGvBefore s2Step88EntryGvAfter s2Step88EntryGvAfter
    s2Step88EntryGvRow s2Step88EntryGvOut 58 s2Step88EntryGvFresh [] [] []
    (growRow 771 s2Step88EntryGvFresh) ([]) s2Step88EntryGv_Incoming s2Step88EntryGv_checked h4 s2Step88EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step88EntryFvBefore s2Step88EntryFvAfter s2Step88EntryGvAfter
    s2Step88EntryFvRow s2Step88EntryFvOut 58 s2Step88EntryFvFresh [(s2Step88EntryGvRow,58)] [s2Step88EntryGvFresh] [s2Step88EntryGvOut]
    (growRow 770 s2Step88EntryFvFresh) ((growRow 771 s2Step88EntryGvFresh ++ [])) s2Step88EntryFv_Incoming s2Step88EntryFv_checked h3 s2Step88EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step88EntryGBefore s2Step88EntryGAfter s2Step88EntryGvAfter
    s2Step88EntryGRow s2Step88EntryGOut 225 s2Step88EntryGFresh [(s2Step88EntryFvRow,58),(s2Step88EntryGvRow,58)] [s2Step88EntryFvFresh,s2Step88EntryGvFresh] [s2Step88EntryFvOut,s2Step88EntryGvOut]
    (growRow 769 s2Step88EntryGFresh) ((growRow 770 s2Step88EntryFvFresh ++ (growRow 771 s2Step88EntryGvFresh ++ []))) s2Step88EntryG_Incoming s2Step88EntryG_checked h2 s2Step88EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step88EntryFBefore s2Step88EntryFAfter s2Step88EntryGvAfter
    s2Step88EntryFRow s2Step88EntryFOut 225 s2Step88EntryFFresh [(s2Step88EntryGRow,225),(s2Step88EntryFvRow,58),(s2Step88EntryGvRow,58)] [s2Step88EntryGFresh,s2Step88EntryFvFresh,s2Step88EntryGvFresh] [s2Step88EntryGOut,s2Step88EntryFvOut,s2Step88EntryGvOut]
    (growRow 768 s2Step88EntryFFresh) ((growRow 769 s2Step88EntryGFresh ++ (growRow 770 s2Step88EntryFvFresh ++ (growRow 771 s2Step88EntryGvFresh ++ [])))) s2Step88EntryF_Incoming s2Step88EntryF_checked h1 s2Step88EntryF_Outgoing
  exact h0

private theorem s2Step88EntryBank_checked : compileHmrBankResizeLog .entry s2Step88EntryFBefore ⟨s2Step88EntryFRow,s2Step88EntryGRow,s2Step88EntryFvRow,s2Step88EntryGvRow⟩ ⟨225,225,58,58⟩ [s2Step88EntryFFresh,s2Step88EntryGFresh,s2Step88EntryFvFresh,s2Step88EntryGvFresh]=
    some (s2Step88EntryGvAfter,⟨s2Step88EntryFOut,s2Step88EntryGOut,s2Step88EntryFvOut,s2Step88EntryGvOut⟩,(growRow 768 s2Step88EntryFFresh ++ (growRow 769 s2Step88EntryGFresh ++ (growRow 770 s2Step88EntryFvFresh ++ (growRow 771 s2Step88EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step88EntryBank_rows]
  rfl

private def s2Step88ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88ExitFBefore : Arena := s2Step88ExitGAfter

private def s2Step88ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 844, 816],768⟩

private def s2Step88ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 781],770⟩

private def s2Step88ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785, 839],769⟩

private def s2Step88ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 779, 836],771⟩

private theorem s2Step88ExitBank_incomingDistinct : ([s2Step88ExitGRow,s2Step88ExitFRow,s2Step88ExitFvRow,s2Step88ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88ExitF_Incoming : rowsOwned s2Step88ExitFBefore [s2Step88ExitFRow,s2Step88ExitFvRow,s2Step88ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step88ExitGRow,s2Step88ExitFRow,s2Step88ExitFvRow,s2Step88ExitGvRow] 1 s2Step88ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step88ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step88ExitBank_outgoingOwned : rowsOwned s2Step88ExitGvAfter [s2Step88ExitGOut,s2Step88ExitFOut,s2Step88ExitFvOut,s2Step88ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step88ExitGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step88ExitF_Outgoing : rowsOwned s2Step88ExitGvAfter [s2Step88ExitFOut,s2Step88ExitFvOut,s2Step88ExitGvOut] :=
  hmrRows_owned_drop s2Step88ExitGvAfter [s2Step88ExitGOut,s2Step88ExitFOut,s2Step88ExitFvOut,s2Step88ExitGvOut] 1 s2Step88ExitBank_outgoingOwned

private theorem s2Step88ExitF_distinct : (s2Step88ExitFRow.sign::s2Step88ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88ExitF_owned : (s2Step88ExitFRow.sign::s2Step88ExitFRow.payload).toFinset⊆s2Step88ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step88ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88ExitF_retired : s2Step88ExitFBefore.retireSet s2Step88ExitFExtra.toFinset=s2Step88ExitFAfter := by
  unfold Arena.retireSet s2Step88ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step88ExitFBefore,s2Step88ExitGAfter,s2Step88ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step88ExitF_checked : planRowResizeLog s2Step88ExitFBefore s2Step88ExitFRow 224 []=
    some (s2Step88ExitFAfter,s2Step88ExitFOut,shrinkRow 768 s2Step88ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step88ExitFBefore s2Step88ExitFRow 224 s2Step88ExitF_distinct s2Step88ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step88ExitFRow.payload.take 224) s2Step88ExitFRow.sign=s2Step88ExitFOut := by decide +kernel
  have hi : s2Step88ExitFRow.payload.drop 224=s2Step88ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step88ExitF_retired] at result
  exact result

private def s2Step88ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88ExitFvBefore : Arena := s2Step88ExitFAfter

private theorem s2Step88ExitFv_Incoming : rowsOwned s2Step88ExitFvBefore [s2Step88ExitFvRow,s2Step88ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step88ExitGRow,s2Step88ExitFRow,s2Step88ExitFvRow,s2Step88ExitGvRow] 2 s2Step88ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step88ExitFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step88ExitFv_Outgoing : rowsOwned s2Step88ExitGvAfter [s2Step88ExitFvOut,s2Step88ExitGvOut] :=
  hmrRows_owned_drop s2Step88ExitGvAfter [s2Step88ExitGOut,s2Step88ExitFOut,s2Step88ExitFvOut,s2Step88ExitGvOut] 2 s2Step88ExitBank_outgoingOwned

private theorem s2Step88ExitFv_distinct : (s2Step88ExitFvRow.sign::s2Step88ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88ExitFv_owned : (s2Step88ExitFvRow.sign::s2Step88ExitFvRow.payload).toFinset⊆s2Step88ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step88ExitFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88ExitFv_retired : s2Step88ExitFvBefore.retireSet s2Step88ExitFvExtra.toFinset=s2Step88ExitFvAfter := by
  unfold Arena.retireSet s2Step88ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step88ExitFvBefore,s2Step88ExitFAfter,s2Step88ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step88ExitFv_checked : planRowResizeLog s2Step88ExitFvBefore s2Step88ExitFvRow 58 []=
    some (s2Step88ExitFvAfter,s2Step88ExitFvOut,shrinkRow 770 s2Step88ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step88ExitFvBefore s2Step88ExitFvRow 58 s2Step88ExitFv_distinct s2Step88ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step88ExitFvRow.payload.take 58) s2Step88ExitFvRow.sign=s2Step88ExitFvOut := by decide +kernel
  have hi : s2Step88ExitFvRow.payload.drop 58=s2Step88ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step88ExitFv_retired] at result
  exact result

private def s2Step88ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private theorem s2Step88ExitG_Incoming : rowsOwned s2Step88ExitGBefore [s2Step88ExitGRow,s2Step88ExitFRow,s2Step88ExitFvRow,s2Step88ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step88ExitGRow,s2Step88ExitFRow,s2Step88ExitFvRow,s2Step88ExitGvRow] 0 s2Step88ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step88ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step88ExitG_Outgoing : rowsOwned s2Step88ExitGvAfter [s2Step88ExitGOut,s2Step88ExitFOut,s2Step88ExitFvOut,s2Step88ExitGvOut] :=
  hmrRows_owned_drop s2Step88ExitGvAfter [s2Step88ExitGOut,s2Step88ExitFOut,s2Step88ExitFvOut,s2Step88ExitGvOut] 0 s2Step88ExitBank_outgoingOwned

private theorem s2Step88ExitG_distinct : (s2Step88ExitGRow.sign::s2Step88ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88ExitG_owned : (s2Step88ExitGRow.sign::s2Step88ExitGRow.payload).toFinset⊆s2Step88ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step88ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88ExitG_retired : s2Step88ExitGBefore.retireSet s2Step88ExitGExtra.toFinset=s2Step88ExitGAfter := by
  unfold Arena.retireSet s2Step88ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step88ExitGBefore,s2Step88ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step88ExitG_checked : planRowResizeLog s2Step88ExitGBefore s2Step88ExitGRow 224 []=
    some (s2Step88ExitGAfter,s2Step88ExitGOut,shrinkRow 769 s2Step88ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step88ExitGBefore s2Step88ExitGRow 224 s2Step88ExitG_distinct s2Step88ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step88ExitGRow.payload.take 224) s2Step88ExitGRow.sign=s2Step88ExitGOut := by decide +kernel
  have hi : s2Step88ExitGRow.payload.drop 224=s2Step88ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step88ExitG_retired] at result
  exact result

private def s2Step88ExitGvBefore : Arena := s2Step88ExitFvAfter

private theorem s2Step88ExitGv_Incoming : rowsOwned s2Step88ExitGvBefore [s2Step88ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step88ExitGRow,s2Step88ExitFRow,s2Step88ExitFvRow,s2Step88ExitGvRow] 3 s2Step88ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step88ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step88ExitGv_Outgoing : rowsOwned s2Step88ExitGvAfter [s2Step88ExitGvOut] :=
  hmrRows_owned_drop s2Step88ExitGvAfter [s2Step88ExitGOut,s2Step88ExitFOut,s2Step88ExitFvOut,s2Step88ExitGvOut] 3 s2Step88ExitBank_outgoingOwned

private theorem s2Step88ExitGv_distinct : (s2Step88ExitGvRow.sign::s2Step88ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88ExitGv_owned : (s2Step88ExitGvRow.sign::s2Step88ExitGvRow.payload).toFinset⊆s2Step88ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step88ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<816) ∨ (817≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88ExitGv_retired : s2Step88ExitGvBefore.retireSet s2Step88ExitGvExtra.toFinset=s2Step88ExitGvAfter := by
  unfold Arena.retireSet s2Step88ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step88ExitGvBefore,s2Step88ExitFvAfter,s2Step88ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step88ExitGv_checked : planRowResizeLog s2Step88ExitGvBefore s2Step88ExitGvRow 57 []=
    some (s2Step88ExitGvAfter,s2Step88ExitGvOut,shrinkRow 771 s2Step88ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step88ExitGvBefore s2Step88ExitGvRow 57 s2Step88ExitGv_distinct s2Step88ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step88ExitGvRow.payload.take 57) s2Step88ExitGvRow.sign=s2Step88ExitGvOut := by decide +kernel
  have hi : s2Step88ExitGvRow.payload.drop 57=s2Step88ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step88ExitGv_retired] at result
  exact result

private theorem s2Step88ExitBank_rows : planWindowRowsLog s2Step88ExitGBefore [(s2Step88ExitGRow,224),(s2Step88ExitFRow,224),(s2Step88ExitFvRow,58),(s2Step88ExitGvRow,57)] [[],[],[],[]]=
    some (s2Step88ExitGvAfter,[s2Step88ExitGOut,s2Step88ExitFOut,s2Step88ExitFvOut,s2Step88ExitGvOut],(shrinkRow 769 s2Step88ExitGExtra ++ (shrinkRow 768 s2Step88ExitFExtra ++ (shrinkRow 770 s2Step88ExitFvExtra ++ (shrinkRow 771 s2Step88ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step88ExitGvAfter [] []=some (s2Step88ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step88ExitGvBefore s2Step88ExitGvAfter s2Step88ExitGvAfter
    s2Step88ExitGvRow s2Step88ExitGvOut 57 [] [] [] []
    (shrinkRow 771 s2Step88ExitGvExtra) ([]) s2Step88ExitGv_Incoming s2Step88ExitGv_checked h4 s2Step88ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step88ExitFvBefore s2Step88ExitFvAfter s2Step88ExitGvAfter
    s2Step88ExitFvRow s2Step88ExitFvOut 58 [] [(s2Step88ExitGvRow,57)] [[]] [s2Step88ExitGvOut]
    (shrinkRow 770 s2Step88ExitFvExtra) ((shrinkRow 771 s2Step88ExitGvExtra ++ [])) s2Step88ExitFv_Incoming s2Step88ExitFv_checked h3 s2Step88ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step88ExitFBefore s2Step88ExitFAfter s2Step88ExitGvAfter
    s2Step88ExitFRow s2Step88ExitFOut 224 [] [(s2Step88ExitFvRow,58),(s2Step88ExitGvRow,57)] [[],[]] [s2Step88ExitFvOut,s2Step88ExitGvOut]
    (shrinkRow 768 s2Step88ExitFExtra) ((shrinkRow 770 s2Step88ExitFvExtra ++ (shrinkRow 771 s2Step88ExitGvExtra ++ []))) s2Step88ExitF_Incoming s2Step88ExitF_checked h2 s2Step88ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step88ExitGBefore s2Step88ExitGAfter s2Step88ExitGvAfter
    s2Step88ExitGRow s2Step88ExitGOut 224 [] [(s2Step88ExitFRow,224),(s2Step88ExitFvRow,58),(s2Step88ExitGvRow,57)] [[],[],[]] [s2Step88ExitFOut,s2Step88ExitFvOut,s2Step88ExitGvOut]
    (shrinkRow 769 s2Step88ExitGExtra) ((shrinkRow 768 s2Step88ExitFExtra ++ (shrinkRow 770 s2Step88ExitFvExtra ++ (shrinkRow 771 s2Step88ExitGvExtra ++ [])))) s2Step88ExitG_Incoming s2Step88ExitG_checked h1 s2Step88ExitG_Outgoing
  exact h0

private theorem s2Step88ExitBank_checked : compileHmrBankResizeLog .exit s2Step88ExitGBefore ⟨s2Step88ExitFRow,s2Step88ExitGRow,s2Step88ExitFvRow,s2Step88ExitGvRow⟩ ⟨224,224,58,57⟩ [[],[],[],[]]=
    some (s2Step88ExitGvAfter,⟨s2Step88ExitFOut,s2Step88ExitGOut,s2Step88ExitFvOut,s2Step88ExitGvOut⟩,(shrinkRow 769 s2Step88ExitGExtra ++ (shrinkRow 768 s2Step88ExitFExtra ++ (shrinkRow 770 s2Step88ExitFvExtra ++ (shrinkRow 771 s2Step88ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step88ExitBank_rows]
  rfl

private theorem s2Step88Add0_apart : Disjoint s2Step88Add0Arena.live s2Step88Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step88Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88Add0_card : s2Step88Add0Arena.live.card=871 := by
  decide +kernel

private theorem s2Step88Add0_borrowed : s2Step88Add0Arena.checkBorrow (hmrHybridCount s2Step88Add0Arena s2Step88Add0B.length) s2Step88Add0Work=some s2Step88Add0During := by
  have len : s2Step88Add0Work.length=hmrHybridCount s2Step88Add0Arena s2Step88Add0B.length := by
    rw [hmrHybridCount,s2Step88Add0_card]
    decide +kernel
  have nd : s2Step88Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step88Add0Arena s2Step88Add0During s2Step88Add0Work.toFinset s2Step88Add0_bounded s2Step88Add0_apart rfl

private theorem s2Step88Add0_distinct : (846::789::847::(s2Step88Add0A++s2Step88Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88Add0_owned : (846::789::847::(s2Step88Add0A++s2Step88Add0B)).toFinset⊆s2Step88Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step88Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88Add0_checked : compileHmrHybridCinLog s2Step88Add0Arena 789 846 847 s2Step88Add0A s2Step88Add0B s2Step88Add0Work=some s2Step88Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step88Add0Arena s2Step88Add0During 789 846 847 s2Step88Add0A s2Step88Add0B s2Step88Add0Work
    (by decide +kernel) (by decide +kernel) s2Step88Add0_distinct
    (fun q hq => s2Step88Add0_owned (List.mem_toFinset.mpr hq)) s2Step88Add0_borrowed

private theorem s2Step88Add1_apart : Disjoint s2Step88Add1Arena.live s2Step88Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step88Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88Add1_card : s2Step88Add1Arena.live.card=871 := by
  decide +kernel

private theorem s2Step88Add1_borrowed : s2Step88Add1Arena.checkBorrow (hmrHybridCount s2Step88Add1Arena s2Step88Add1B.length) s2Step88Add1Work=some s2Step88Add1During := by
  have len : s2Step88Add1Work.length=hmrHybridCount s2Step88Add1Arena s2Step88Add1B.length := by
    rw [hmrHybridCount,s2Step88Add1_card]
    decide +kernel
  have nd : s2Step88Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step88Add1Arena s2Step88Add1During s2Step88Add1Work.toFinset s2Step88Add1_bounded s2Step88Add1_apart rfl

private theorem s2Step88Add1_distinct : (846::789::847::(s2Step88Add1A++s2Step88Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88Add1_owned : (846::789::847::(s2Step88Add1A++s2Step88Add1B)).toFinset⊆s2Step88Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step88Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88Add1_checked : compileHmrHybridCinLog s2Step88Add1Arena 789 846 847 s2Step88Add1A s2Step88Add1B s2Step88Add1Work=some s2Step88Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step88Add1Arena s2Step88Add1During 789 846 847 s2Step88Add1A s2Step88Add1B s2Step88Add1Work
    (by decide +kernel) (by decide +kernel) s2Step88Add1_distinct
    (fun q hq => s2Step88Add1_owned (List.mem_toFinset.mpr hq)) s2Step88Add1_borrowed

private theorem s2Step88F4_apart : Disjoint (s2Step88Add0A++s2Step88Add0B).toFinset (s2Step88Add1A++s2Step88Add1B).toFinset := by
  have nd : ((s2Step88Add0A++s2Step88Add0B)++(s2Step88Add1A++s2Step88Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step88F4_carry : s2Step88F4FlagArena.checkBorrow 1 [847]=some s2Step88Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step88F4FlagArena,s2Step88HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step88F4FlagArena,s2Step88HeadFvAfter,s2Step88Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step88F4_distinct : (793::789::846::847::((s2Step88Add0A++s2Step88Add1A)++(s2Step88Add0B++s2Step88Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88F4_flag : s2Step88HeadFvAfter.checkBorrow 1 [846]=some s2Step88F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step88HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step88F4_owned : (793::789::((s2Step88Add0A++s2Step88Add1A)++(s2Step88Add0B++s2Step88Add1B))).toFinset⊆s2Step88HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step88HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88F4_checked : compileHmrHybridF4Log s2Step88HeadFvAfter 793 789 s2Step88Add0A s2Step88Add0B s2Step88Add1A s2Step88Add1B [846] [847] s2Step88Add0Work s2Step88Add1Work=some s2Step88F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step88HeadFvAfter s2Step88F4FlagArena s2Step88Add0Arena s2Step88Add0During s2Step88Add1During 793 789
    s2Step88Add0A s2Step88Add0B s2Step88Add1A s2Step88Add1B [846] [847] s2Step88Add0Work s2Step88Add1Work
    (fun q hq => s2Step88F4_owned (List.mem_toFinset.mpr hq)) s2Step88F4_flag s2Step88F4_carry
    s2Step88F4_distinct s2Step88F4_apart s2Step88Add0_checked s2Step88Add1_checked

private theorem s2Step88Front_branch : s2Step88FrontSigmaArena.checkBorrow 1 [789]=some s2Step88HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step88FrontSigmaArena,s2Step88EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step88FrontSigmaArena,s2Step88EntryGvAfter,s2Step88HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step88Front_entry : HmrFrontEntryValid s2Step88EntryFBefore s2Step88FrontBank 225 58 ⟨224,224,58,57⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step88FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step88EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step88EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<793) ∨ (794≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step88FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step88Front_sigma : s2Step88EntryGvAfter.checkBorrow 1 [793]=some s2Step88FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step88EntryGvAfter,arenaWires]
  · rfl

private def s2Step88HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88HeadFBefore : Arena := s2Step88HeadGAfter

private def s2Step88HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 844],768⟩

private def s2Step88HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845],770⟩

private def s2Step88HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785],769⟩

private def s2Step88HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 779],771⟩

private theorem s2Step88HeadBank_incomingDistinct : ([s2Step88HeadGRow,s2Step88HeadFRow,s2Step88HeadGvRow,s2Step88HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88HeadF_Incoming : rowsOwned s2Step88HeadFBefore [s2Step88HeadFRow,s2Step88HeadGvRow,s2Step88HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step88HeadGRow,s2Step88HeadFRow,s2Step88HeadGvRow,s2Step88HeadFvRow] 1 s2Step88HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step88HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step88HeadBank_outgoingOwned : rowsOwned s2Step88HeadFvAfter [s2Step88HeadGOut,s2Step88HeadFOut,s2Step88HeadGvOut,s2Step88HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step88HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step88HeadF_Outgoing : rowsOwned s2Step88HeadFvAfter [s2Step88HeadFOut,s2Step88HeadGvOut,s2Step88HeadFvOut] :=
  hmrRows_owned_drop s2Step88HeadFvAfter [s2Step88HeadGOut,s2Step88HeadFOut,s2Step88HeadGvOut,s2Step88HeadFvOut] 1 s2Step88HeadBank_outgoingOwned

private theorem s2Step88HeadF_distinct : (s2Step88HeadFRow.sign::s2Step88HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88HeadF_owned : (s2Step88HeadFRow.sign::s2Step88HeadFRow.payload).toFinset⊆s2Step88HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step88HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88HeadF_reserved : s2Step88HeadFBefore.reserve s2Step88HeadFFresh.toFinset=some s2Step88HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step88HeadFFresh,arenaWires]
  · norm_num [s2Step88HeadFBefore,s2Step88HeadGAfter,s2Step88HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step88HeadFAfter,s2Step88HeadFBefore,s2Step88HeadGAfter,s2Step88HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step88HeadF_checked : planRowResizeLog s2Step88HeadFBefore s2Step88HeadFRow 226 s2Step88HeadFFresh=
    some (s2Step88HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 844, 816],768⟩,growRow 768 s2Step88HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step88HeadFBefore s2Step88HeadFAfter s2Step88HeadFRow 226 s2Step88HeadFFresh
    s2Step88HeadF_distinct s2Step88HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step88HeadF_reserved
  have rowEq : WindowRow.mk (s2Step88HeadFRow.payload++s2Step88HeadFFresh) s2Step88HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 844, 816],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step88HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)),Finset.filter_subset _ _⟩

private def s2Step88HeadFvBefore : Arena := s2Step88HeadGvAfter

private theorem s2Step88HeadFv_Incoming : rowsOwned s2Step88HeadFvBefore [s2Step88HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step88HeadGRow,s2Step88HeadFRow,s2Step88HeadGvRow,s2Step88HeadFvRow] 3 s2Step88HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step88HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step88HeadFv_Outgoing : rowsOwned s2Step88HeadFvAfter [s2Step88HeadFvOut] :=
  hmrRows_owned_drop s2Step88HeadFvAfter [s2Step88HeadGOut,s2Step88HeadFOut,s2Step88HeadGvOut,s2Step88HeadFvOut] 3 s2Step88HeadBank_outgoingOwned

private theorem s2Step88HeadFv_distinct : (s2Step88HeadFvRow.sign::s2Step88HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88HeadFv_owned : (s2Step88HeadFvRow.sign::s2Step88HeadFvRow.payload).toFinset⊆s2Step88HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step88HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88HeadFv_reserved : s2Step88HeadFvBefore.reserve s2Step88HeadFvFresh.toFinset=some s2Step88HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step88HeadFvFresh,arenaWires]
  · norm_num [s2Step88HeadFvBefore,s2Step88HeadGvAfter,s2Step88HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step88HeadFvAfter,s2Step88HeadFvBefore,s2Step88HeadGvAfter,s2Step88HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step88HeadFv_checked : planRowResizeLog s2Step88HeadFvBefore s2Step88HeadFvRow 59 s2Step88HeadFvFresh=
    some (s2Step88HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 781],770⟩,growRow 770 s2Step88HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step88HeadFvBefore s2Step88HeadFvAfter s2Step88HeadFvRow 59 s2Step88HeadFvFresh
    s2Step88HeadFv_distinct s2Step88HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step88HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step88HeadFvRow.payload++s2Step88HeadFvFresh) s2Step88HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 781],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step88HeadG_Incoming : rowsOwned s2Step88HeadGBefore [s2Step88HeadGRow,s2Step88HeadFRow,s2Step88HeadGvRow,s2Step88HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step88HeadGRow,s2Step88HeadFRow,s2Step88HeadGvRow,s2Step88HeadFvRow] 0 s2Step88HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step88HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step88HeadG_Outgoing : rowsOwned s2Step88HeadFvAfter [s2Step88HeadGOut,s2Step88HeadFOut,s2Step88HeadGvOut,s2Step88HeadFvOut] :=
  hmrRows_owned_drop s2Step88HeadFvAfter [s2Step88HeadGOut,s2Step88HeadFOut,s2Step88HeadGvOut,s2Step88HeadFvOut] 0 s2Step88HeadBank_outgoingOwned

private theorem s2Step88HeadG_distinct : (s2Step88HeadGRow.sign::s2Step88HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88HeadG_owned : (s2Step88HeadGRow.sign::s2Step88HeadGRow.payload).toFinset⊆s2Step88HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step88HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88HeadG_reserved : s2Step88HeadGBefore.reserve s2Step88HeadGFresh.toFinset=some s2Step88HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step88HeadGFresh,arenaWires]
  · norm_num [s2Step88HeadGBefore,s2Step88HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step88HeadGAfter,s2Step88HeadGBefore,s2Step88HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step88HeadG_checked : planRowResizeLog s2Step88HeadGBefore s2Step88HeadGRow 226 s2Step88HeadGFresh=
    some (s2Step88HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785, 839],769⟩,growRow 769 s2Step88HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step88HeadGBefore s2Step88HeadGAfter s2Step88HeadGRow 226 s2Step88HeadGFresh
    s2Step88HeadG_distinct s2Step88HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step88HeadG_reserved
  have rowEq : WindowRow.mk (s2Step88HeadGRow.payload++s2Step88HeadGFresh) s2Step88HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 785, 839],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step88HeadGvBefore : Arena := s2Step88HeadFAfter

private theorem s2Step88HeadGv_Incoming : rowsOwned s2Step88HeadGvBefore [s2Step88HeadGvRow,s2Step88HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step88HeadGRow,s2Step88HeadFRow,s2Step88HeadGvRow,s2Step88HeadFvRow] 2 s2Step88HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step88HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
    decide +kernel

private theorem s2Step88HeadGv_Outgoing : rowsOwned s2Step88HeadFvAfter [s2Step88HeadGvOut,s2Step88HeadFvOut] :=
  hmrRows_owned_drop s2Step88HeadFvAfter [s2Step88HeadGOut,s2Step88HeadFOut,s2Step88HeadGvOut,s2Step88HeadFvOut] 2 s2Step88HeadBank_outgoingOwned

private theorem s2Step88HeadGv_distinct : (s2Step88HeadGvRow.sign::s2Step88HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step88HeadGv_owned : (s2Step88HeadGvRow.sign::s2Step88HeadGvRow.payload).toFinset⊆s2Step88HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step88HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<836) ∨ (837≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873) ∨ (875≤q ∧ q<876)) rfl
  decide +kernel

private theorem s2Step88HeadGv_reserved : s2Step88HeadGvBefore.reserve s2Step88HeadGvFresh.toFinset=some s2Step88HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step88HeadGvFresh,arenaWires]
  · norm_num [s2Step88HeadGvBefore,s2Step88HeadFAfter,s2Step88HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step88HeadGvAfter,s2Step88HeadGvBefore,s2Step88HeadFAfter,s2Step88HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step88HeadGv_checked : planRowResizeLog s2Step88HeadGvBefore s2Step88HeadGvRow 59 s2Step88HeadGvFresh=
    some (s2Step88HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 779, 836],771⟩,growRow 771 s2Step88HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step88HeadGvBefore s2Step88HeadGvAfter s2Step88HeadGvRow 59 s2Step88HeadGvFresh
    s2Step88HeadGv_distinct s2Step88HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step88HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step88HeadGvRow.payload++s2Step88HeadGvFresh) s2Step88HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 779, 836],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step88HeadBank_rows : planWindowRowsLog s2Step88HeadGBefore [(s2Step88HeadGRow,226),(s2Step88HeadFRow,226),(s2Step88HeadGvRow,59),(s2Step88HeadFvRow,59)] [s2Step88HeadGFresh,s2Step88HeadFFresh,s2Step88HeadGvFresh,s2Step88HeadFvFresh]=
    some (s2Step88HeadFvAfter,[s2Step88HeadGOut,s2Step88HeadFOut,s2Step88HeadGvOut,s2Step88HeadFvOut],(growRow 769 s2Step88HeadGFresh ++ (growRow 768 s2Step88HeadFFresh ++ (growRow 771 s2Step88HeadGvFresh ++ (growRow 770 s2Step88HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step88HeadFvAfter [] []=some (s2Step88HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step88HeadFvBefore s2Step88HeadFvAfter s2Step88HeadFvAfter
    s2Step88HeadFvRow s2Step88HeadFvOut 59 s2Step88HeadFvFresh [] [] []
    (growRow 770 s2Step88HeadFvFresh) ([]) s2Step88HeadFv_Incoming s2Step88HeadFv_checked h4 s2Step88HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step88HeadGvBefore s2Step88HeadGvAfter s2Step88HeadFvAfter
    s2Step88HeadGvRow s2Step88HeadGvOut 59 s2Step88HeadGvFresh [(s2Step88HeadFvRow,59)] [s2Step88HeadFvFresh] [s2Step88HeadFvOut]
    (growRow 771 s2Step88HeadGvFresh) ((growRow 770 s2Step88HeadFvFresh ++ [])) s2Step88HeadGv_Incoming s2Step88HeadGv_checked h3 s2Step88HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step88HeadFBefore s2Step88HeadFAfter s2Step88HeadFvAfter
    s2Step88HeadFRow s2Step88HeadFOut 226 s2Step88HeadFFresh [(s2Step88HeadGvRow,59),(s2Step88HeadFvRow,59)] [s2Step88HeadGvFresh,s2Step88HeadFvFresh] [s2Step88HeadGvOut,s2Step88HeadFvOut]
    (growRow 768 s2Step88HeadFFresh) ((growRow 771 s2Step88HeadGvFresh ++ (growRow 770 s2Step88HeadFvFresh ++ []))) s2Step88HeadF_Incoming s2Step88HeadF_checked h2 s2Step88HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step88HeadGBefore s2Step88HeadGAfter s2Step88HeadFvAfter
    s2Step88HeadGRow s2Step88HeadGOut 226 s2Step88HeadGFresh [(s2Step88HeadFRow,226),(s2Step88HeadGvRow,59),(s2Step88HeadFvRow,59)] [s2Step88HeadFFresh,s2Step88HeadGvFresh,s2Step88HeadFvFresh] [s2Step88HeadFOut,s2Step88HeadGvOut,s2Step88HeadFvOut]
    (growRow 769 s2Step88HeadGFresh) ((growRow 768 s2Step88HeadFFresh ++ (growRow 771 s2Step88HeadGvFresh ++ (growRow 770 s2Step88HeadFvFresh ++ [])))) s2Step88HeadG_Incoming s2Step88HeadG_checked h1 s2Step88HeadG_Outgoing
  exact h0

private theorem s2Step88HeadBank_checked : compileHmrBankResizeLog .headroom s2Step88HeadGBefore ⟨s2Step88HeadFRow,s2Step88HeadGRow,s2Step88HeadFvRow,s2Step88HeadGvRow⟩ ⟨226,226,59,59⟩ [s2Step88HeadGFresh,s2Step88HeadFFresh,s2Step88HeadGvFresh,s2Step88HeadFvFresh]=
    some (s2Step88HeadFvAfter,⟨s2Step88HeadFOut,s2Step88HeadGOut,s2Step88HeadFvOut,s2Step88HeadGvOut⟩,(growRow 769 s2Step88HeadGFresh ++ (growRow 768 s2Step88HeadFFresh ++ (growRow 771 s2Step88HeadGvFresh ++ (growRow 770 s2Step88HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step88HeadBank_rows]
  rfl

private theorem s2Step88Front_checked : compileHmrSourceFrontLog s2Step88EntryFBefore s2Step88FrontBank 225 58 ⟨224,224,58,57⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step88FrontLog=some s2Step88FrontPlan := by
  have pairEq : s2Step88FrontPair=⟨s2Step88HeadFRow,s2Step88HeadGRow,s2Step88HeadFvRow,s2Step88HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step88FrontHead=⟨s2Step88ExitFRow,s2Step88ExitGRow,s2Step88ExitFvRow,s2Step88ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step88Add0A=s2Step88FrontHead.f.wires := by decide +kernel
  have gEq : s2Step88Add0B=s2Step88FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step88Add1A=s2Step88FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step88Add1B=s2Step88FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step88EntryFBefore s2Step88FrontBank 225 58 ⟨224,224,58,57⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step88FrontLog s2Step88FrontPlan
  · exact s2Step88Front_entry
  · exact s2Step88EntryBank_checked
  · exact s2Step88Front_sigma
  · rfl
  · exact s2Step88Front_branch
  · rfl
  · simpa only [s2Step88FrontPlan,pairEq] using s2Step88HeadBank_checked
  · simpa only [s2Step88FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step88F4_checked
  · exact s2Step88Counter_checked
  · rfl
  · simpa only [s2Step88FrontPlan,headEq] using s2Step88ExitBank_checked

private theorem s2Step88Complete_explicit_checked : compileHmrEarlyStepLog s2Step88EntryFBefore s2Step88FrontBank 225 58 ⟨224,224,58,57⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 31 s2Step88CompleteLog=some s2Step88CompletePlan := by
  let Q := s2Step88EarlyControlPlan
  have hq := s2Step88EarlyControl_plan_checked
  have fv1 : s2Step88CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step88CompleteOut.fv.payload[2]?.getD s2Step88CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step88CompleteOut.fv.payload[3]?.getD s2Step88CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step88CompleteOut.fv.payload[4]?.getD s2Step88CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step88EntryFBefore s2Step88EarlyControlArena s2Step88FrontBank 225 58 ⟨224,224,58,57⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 31 s2Step88CompleteLog s2Step88FrontPlan Q
    s2Step88Front_checked s2Step88Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step88Complete_owned s2Step88Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step88EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 777 793 s2Step88CompleteOut.fv.second (s2Step88CompleteOut.fv.payload[2]?.getD s2Step88CompleteOut.fv.sign) (s2Step88CompleteOut.fv.payload[3]?.getD s2Step88CompleteOut.fv.sign) (s2Step88CompleteOut.fv.payload[4]?.getD s2Step88CompleteOut.fv.sign) 789 31 s2Step88EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep88Arena : Arena := s2Step88EntryFBefore
def s2PrivateStep88Bank : WindowBank := s2Step88FrontBank
def s2PrivateStep88Spec : HmrSourceWalkStepLog := ⟨225,58,⟨224,224,58,57⟩,31,.early s2Step88CompleteLog⟩
def s2PrivateStep88Plan : HmrSourceStepPlan := .early s2Step88CompletePlan
theorem s2PrivateStep88_source : s2PrivateStep88Spec=s2ObservedLogs80[8] := rfl
theorem s2PrivateStep88_checked : compileHmrSourceStepLog s2PrivateStep88Arena s2PrivateStep88Bank
    s2PrivateStep88Spec.fgWidth s2PrivateStep88Spec.vWidth s2PrivateStep88Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875]
    6 498 88 s2PrivateStep88Spec.need none s2PrivateStep88Spec.log=some s2PrivateStep88Plan := by
  change compileHmrSourceStepLog s2Step88EntryFBefore s2Step88FrontBank 225 58 ⟨224,224,58,57⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875] 6 498 88 31 none (.early s2Step88CompleteLog)=some (.early s2Step88CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 88<498)]
  rw [s2Step88Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
