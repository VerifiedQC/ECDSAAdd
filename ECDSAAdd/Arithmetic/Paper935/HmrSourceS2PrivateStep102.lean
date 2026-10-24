import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep100
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

private def s2Step102CompleteMoves : List (Wire × Wire) := []

private def s2Step102EarlyControlLog : HmrEarlyControlLog := ⟨[846, 799, 851, 785, 781],[849],[806],[802, 867, 877, 878, 879, 881],[]⟩

private def s2Step102FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [804]],[[785], [851], [846], [799]],[[], [], [], []]⟩,[794],[798],[781],[849],[806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 849, 806, 802]⟩

private def s2Step102CompleteLog : HmrEarlyStepLog := ⟨s2Step102FrontLog,s2Step102CompleteMoves,s2Step102EarlyControlLog⟩

private def s2Step102ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729],768⟩

private def s2Step102ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩

private def s2Step102ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩

private def s2Step102ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804],771⟩

private def s2Step102FrontOut : WindowBank := ⟨s2Step102ExitFOut,s2Step102ExitGOut,s2Step102ExitFvOut,s2Step102ExitGvOut⟩

private def s2Step102CompleteOut : WindowBank := s2Step102FrontOut.repacked s2Step102CompleteMoves

private def s2Step102EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step102EarlyControlPositiveArena,[849],s2Step102EarlyControlEqualityArena,[806],⟨⟨794,false⟩,[⟨⟨849,false⟩,806⟩]⟩⟩

private def s2Step102EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step102EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step102EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,846⟩,⟨⟨774,false⟩,799⟩,⟨⟨775,false⟩,851⟩,⟨⟨776,false⟩,785⟩,⟨⟨777,false⟩,781⟩]⟩

private def s2Step102EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step102EarlyControlZeroArena,s2Step102EarlyControlZeroPlan,s2Step102EarlyControlClassPlan,s2Step102EarlyControlFlagArena,s2Step102EarlyControlFittedArena,s2Step102EarlyControlHistoryArena,s2Step102EarlyControlSigmaArena,s2Step102EarlyControlOutputArena,s2Step102EarlyControlLog⟩

private def s2Step102CounterWork : List Wire := [781, 849, 806, 802]

private theorem s2Step102Counter_bounded : s2Step102CounterWork.toFinset⊆arenaWires := by norm_num [s2Step102CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step102HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102CounterDuring : Arena := ⟨s2Step102HeadFvAfter.live∪s2Step102CounterWork.toFinset,Finset.union_subset s2Step102HeadFvAfter.bounded s2Step102Counter_bounded⟩

private def s2Step102EntryFFresh : List Wire := []

private def s2Step102EntryFvFresh : List Wire := []

private def s2Step102EntryGFresh : List Wire := []

private def s2Step102EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102EntryGvFresh : List Wire := [804]

private def s2Step102ExitFExtra : List Wire := [851]

private def s2Step102ExitFvExtra : List Wire := [799]

private def s2Step102ExitGExtra : List Wire := [785]

private def s2Step102ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102ExitGvExtra : List Wire := [846]

private def s2Step102Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102Add0Work : List Wire := [806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step102Add0_bounded : s2Step102Add0Work.toFinset⊆arenaWires := by
  have h : s2Step102Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step102Add0During : Arena := ⟨s2Step102Add0Arena.live∪s2Step102Add0Work.toFinset,Finset.union_subset s2Step102Add0Arena.bounded s2Step102Add0_bounded⟩

private def s2Step102Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102Add1Work : List Wire := [806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step102Add1_bounded : s2Step102Add1Work.toFinset⊆arenaWires := by
  have h : s2Step102Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step102Add1During : Arena := ⟨s2Step102Add1Arena.live∪s2Step102Add1Work.toFinset,Finset.union_subset s2Step102Add1Arena.bounded s2Step102Add1_bounded⟩

private def s2Step102F4FlagArena : Arena := ⟨s2Step102HeadFvAfter.live∪{781},Finset.union_subset s2Step102HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step102F4Plan : HmrHybridF4Plan := ⟨s2Step102F4FlagArena,[781],s2Step102Add0Arena,[849],s2Step102Add0During,s2Step102Add0Work,s2Step102Add1During,s2Step102Add1Work⟩

private def s2Step102HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 851],768⟩

private def s2Step102HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 799],770⟩

private def s2Step102HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 785],769⟩

private def s2Step102HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 846],771⟩

private def s2Step102FrontHead : WindowBank := ⟨s2Step102HeadFOut,s2Step102HeadGOut,s2Step102HeadFvOut,s2Step102HeadGvOut⟩

private def s2Step102EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729],768⟩

private def s2Step102EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩

private def s2Step102EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩

private def s2Step102EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804],771⟩

private def s2Step102FrontPair : WindowBank := ⟨s2Step102EntryFOut,s2Step102EntryGOut,s2Step102EntryFvOut,s2Step102EntryGvOut⟩

private def s2Step102FrontSigmaArena : Arena := ⟨s2Step102EntryGvAfter.live∪{794},Finset.union_subset s2Step102EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step102HeadFFresh : List Wire := [851]

private def s2Step102HeadFvFresh : List Wire := [799]

private def s2Step102HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102HeadGFresh : List Wire := [785]

private def s2Step102HeadGvFresh : List Wire := [846]

private def s2Step102FrontPlan : HmrSourceFront := ⟨s2Step102EntryGvAfter,s2Step102FrontPair,(growRow 768 s2Step102EntryFFresh ++ (growRow 769 s2Step102EntryGFresh ++ (growRow 770 s2Step102EntryFvFresh ++ (growRow 771 s2Step102EntryGvFresh ++ [])))),s2Step102FrontSigmaArena,[794],s2Step102HeadGBefore,[798],
  s2Step102HeadFvAfter,s2Step102FrontHead,(growRow 769 s2Step102HeadGFresh ++ (growRow 768 s2Step102HeadFFresh ++ (growRow 771 s2Step102HeadGvFresh ++ (growRow 770 s2Step102HeadFvFresh ++ [])))),s2Step102F4Plan,s2Step102CounterDuring,s2Step102CounterWork,s2Step102ExitGvAfter,s2Step102FrontOut,(shrinkRow 769 s2Step102ExitGExtra ++ (shrinkRow 768 s2Step102ExitFExtra ++ (shrinkRow 770 s2Step102ExitFvExtra ++ (shrinkRow 771 s2Step102ExitGvExtra ++ []))))⟩

private def s2Step102CompletePlan : HmrEarlyStepPlan := ⟨s2Step102FrontPlan,s2Step102EarlyControlArena,s2Step102EarlyControlPlan,s2Step102CompleteMoves⟩

private theorem s2Step102Complete_apart : List.Disjoint (s2Step102CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [794, 798, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] := by
  have nd : ((s2Step102CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[794, 798, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step102Complete_owned : (s2Step102CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step102EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step102EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102Complete_repack : s2Step102ExitGvAfter.checkRepack s2Step102CompleteMoves=some s2Step102EarlyControlArena := by rfl

private theorem s2Step102EarlyControl_branchOwned : ([798] : List Wire).toFinset⊆s2Step102EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step102EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102EarlyControl_branch : compileHmrBranchRetirement s2Step102EarlyControlSigmaArena 798=some s2Step102EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step102EarlyControl_branchOwned
  · ext q
    simp [s2Step102EarlyControlOutputArena,s2Step102EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step102EarlyControl_classEqualityBorrow : s2Step102EarlyControlPositiveArena.checkBorrow (([794, 849] : List Wire).length-1) s2Step102EarlyControlLog.classWork=some s2Step102EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step102EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step102EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step102EarlyControlEqualityArena,s2Step102EarlyControlPositiveArena,s2Step102EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step102EarlyControl_classEqualityOwned : ([794, 849] : List Wire).toFinset⊆s2Step102EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step102EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102EarlyControl_classEquality : compileHmrEqualityLog s2Step102EarlyControlPositiveArena [794, 849] 0 s2Step102EarlyControlLog.classWork=some (s2Step102EarlyControlEqualityArena,s2Step102EarlyControlLog.classWork,s2Step102EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step102EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step102EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step102EarlyControl_classOwned : ([777, 781, 794] : List Wire).toFinset⊆s2Step102EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step102EarlyControlZeroArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102EarlyControl_positiveBorrow : s2Step102EarlyControlZeroArena.checkBorrow (1) s2Step102EarlyControlLog.positiveWork=some s2Step102EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step102EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step102EarlyControlZeroArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step102EarlyControlPositiveArena,s2Step102EarlyControlZeroArena,s2Step102EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step102EarlyControl_class : compileHmrSourceClassLog s2Step102EarlyControlZeroArena false 777 s2Step102EarlyControlZeroPlan.top 0 794 s2Step102EarlyControlLog.positiveWork s2Step102EarlyControlLog.classWork=some s2Step102EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step102EarlyControlClassPlan s2Step102EarlyControlZeroArena false 777 s2Step102EarlyControlZeroPlan.top 0 794
  constructor
  · decide +kernel
  · exact s2Step102EarlyControl_classOwned
  · exact s2Step102EarlyControl_positiveBorrow
  · exact s2Step102EarlyControl_classEquality

private theorem s2Step102EarlyControl_entryRecordOwned : ([798, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step102EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step102EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102EarlyControl_entrySigmaOwned : ([794, 254] : List Wire).toFinset⊆s2Step102EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step102EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102EarlyControl_fitBorrow : s2Step102EarlyControlFlagArena.checkBorrow ((35-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).length)) s2Step102EarlyControlLog.recordFresh=some s2Step102EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step102EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step102EarlyControlFlagArena (fun q => (0≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step102EarlyControlFittedArena,s2Step102EarlyControlFlagArena,s2Step102EarlyControlLog,arenaWires]

private theorem s2Step102EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step102EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step102EarlyControlFlagArena (fun q => (0≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step102EarlyControl_fit : compileHmrRecordGrowLog s2Step102EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step102EarlyControlLog.recordFresh=some s2Step102EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step102EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step102EarlyControl_fitBorrow

private theorem s2Step102EarlyControl_flagsBorrow : s2Step102EarlyControlEqualityArena.checkBorrow (6) s2Step102EarlyControlLog.flagWork=some s2Step102EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step102EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step102EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step102EarlyControlFlagArena,s2Step102EarlyControlEqualityArena,s2Step102EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step102EarlyControl_flagsOwned : ([806, 253, 252, 251] : List Wire).toFinset⊆s2Step102EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step102EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102EarlyControl_flags : compileHmrFlagsLog s2Step102EarlyControlClassPlan.equalityArena s2Step102EarlyControlClassPlan.equality.top 253 252 251 s2Step102EarlyControlLog.flagWork=some s2Step102EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step102EarlyControl_flagsOwned⟩
  · exact s2Step102EarlyControl_flagsBorrow

private theorem s2Step102EarlyControl_historyBorrow : s2Step102EarlyControlArena.checkBorrow ((35-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).length)) s2Step102EarlyControlLog.recordFresh=some s2Step102EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step102EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step102EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step102EarlyControlHistoryArena,s2Step102EarlyControlArena,s2Step102EarlyControlLog,arenaWires]

private theorem s2Step102EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step102EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step102EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102EarlyControl_history : compileHmrRecordGrowLog s2Step102EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step102EarlyControlLog.recordFresh=some s2Step102EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step102EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step102EarlyControl_historyBorrow

private theorem s2Step102EarlyControl_sigmaOwned : ([254, 794] : List Wire).toFinset⊆s2Step102EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step102EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102EarlyControl_sigmaReleaseOwned : ([794] : List Wire).toFinset⊆s2Step102EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step102EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102EarlyControl_sigmaRelease : s2Step102EarlyControlHistoryArena.release {794} (fun _ => false)=some s2Step102EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step102EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step102EarlyControlSigmaArena,s2Step102EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step102EarlyControl_sigma : compileHmrSigmaDropLog s2Step102EarlyControlHistoryArena false 0 0 254 794 []=some s2Step102EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step102EarlyControl_sigmaOwned⟩
  · exact s2Step102EarlyControl_sigmaRelease

private theorem s2Step102EarlyControl_zeroBorrow : s2Step102EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step102EarlyControlLog.zeroWork=some s2Step102EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step102EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step102EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step102EarlyControlZeroArena,s2Step102EarlyControlArena,s2Step102EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step102EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step102EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step102EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102EarlyControl_zero : compileHmrEqualityLog s2Step102EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step102EarlyControlLog.zeroWork=some (s2Step102EarlyControlZeroArena,s2Step102EarlyControlLog.zeroWork,s2Step102EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step102EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step102EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step102EarlyControl_logged : s2Step102EarlyControlPlan.Logged s2Step102EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 794 254 253 252 251 798 35 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step102EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step102EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step102EarlyControl_zero
  · exact s2Step102EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step102EarlyControl_flags
  · exact s2Step102EarlyControl_fit
  · exact s2Step102EarlyControl_history
  · exact s2Step102EarlyControl_sigma
  · exact s2Step102EarlyControl_branch

private theorem s2Step102EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step102EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 794 254 253 252 251 798 35 s2Step102EarlyControlLog=some s2Step102EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step102EarlyControlPlan s2Step102EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 794 254 253 252 251 798 35 s2Step102EarlyControl_logged

private def s2Step102EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729],768⟩

private def s2Step102EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩

private def s2Step102EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩

private def s2Step102EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801],771⟩

private def s2Step102FrontBank : WindowBank := ⟨s2Step102EntryFRow,s2Step102EntryGRow,s2Step102EntryFvRow,s2Step102EntryGvRow⟩

private def s2Step102Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 851, 768]

private def s2Step102Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 785, 769]

private def s2Step102Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 799, 770]

private def s2Step102Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 846, 771]

private theorem s2Step102Counter_apart : Disjoint s2Step102HeadFvAfter.live s2Step102CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step102HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102Counter_borrowed : s2Step102HeadFvAfter.checkBorrow 4 s2Step102CounterWork=some s2Step102CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step102HeadFvAfter s2Step102CounterDuring s2Step102CounterWork.toFinset s2Step102Counter_bounded s2Step102Counter_apart rfl

private theorem s2Step102Counter_owned : (794::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step102HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step102HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102Counter_checked : compileHmrCounterStepLog s2Step102HeadFvAfter true 794 [772, 773, 774, 775, 776, 777] s2Step102CounterWork=some s2Step102CounterDuring := by
  have owned : ∀q∈794::[772, 773, 774, 775, 776, 777],q∈s2Step102HeadFvAfter.live := fun q hq => s2Step102Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step102Counter_borrowed

private def s2Step102EntryFAfter : Arena := s2Step102EntryFBefore

private theorem s2Step102EntryBank_incomingDistinct : ([s2Step102EntryFRow,s2Step102EntryGRow,s2Step102EntryFvRow,s2Step102EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102EntryF_Incoming : rowsOwned s2Step102EntryFBefore [s2Step102EntryFRow,s2Step102EntryGRow,s2Step102EntryFvRow,s2Step102EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step102EntryFRow,s2Step102EntryGRow,s2Step102EntryFvRow,s2Step102EntryGvRow] 0 s2Step102EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step102EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step102EntryBank_outgoingOwned : rowsOwned s2Step102EntryGvAfter [s2Step102EntryFOut,s2Step102EntryGOut,s2Step102EntryFvOut,s2Step102EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step102EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step102EntryF_Outgoing : rowsOwned s2Step102EntryGvAfter [s2Step102EntryFOut,s2Step102EntryGOut,s2Step102EntryFvOut,s2Step102EntryGvOut] :=
  hmrRows_owned_drop s2Step102EntryGvAfter [s2Step102EntryFOut,s2Step102EntryGOut,s2Step102EntryFvOut,s2Step102EntryGvOut] 0 s2Step102EntryBank_outgoingOwned

private theorem s2Step102EntryF_distinct : (s2Step102EntryFRow.sign::s2Step102EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102EntryF_owned : (s2Step102EntryFRow.sign::s2Step102EntryFRow.payload).toFinset⊆s2Step102EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step102EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102EntryF_reserved : s2Step102EntryFBefore.reserve s2Step102EntryFFresh.toFinset=some s2Step102EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step102EntryFFresh,arenaWires]
  · norm_num [s2Step102EntryFBefore,s2Step102EntryFFresh,arenaWires]
  · simp only [s2Step102EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step102EntryF_checked : planRowResizeLog s2Step102EntryFBefore s2Step102EntryFRow 218 s2Step102EntryFFresh=
    some (s2Step102EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729],768⟩,growRow 768 s2Step102EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step102EntryFBefore s2Step102EntryFAfter s2Step102EntryFRow 218 s2Step102EntryFFresh
    s2Step102EntryF_distinct s2Step102EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step102EntryF_reserved
  have rowEq : WindowRow.mk (s2Step102EntryFRow.payload++s2Step102EntryFFresh) s2Step102EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step102EntryFvAfter : Arena := s2Step102EntryFBefore

private def s2Step102EntryFvBefore : Arena := s2Step102EntryFBefore

private theorem s2Step102EntryFv_Incoming : rowsOwned s2Step102EntryFvBefore [s2Step102EntryFvRow,s2Step102EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step102EntryFRow,s2Step102EntryGRow,s2Step102EntryFvRow,s2Step102EntryGvRow] 2 s2Step102EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step102EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step102EntryFv_Outgoing : rowsOwned s2Step102EntryGvAfter [s2Step102EntryFvOut,s2Step102EntryGvOut] :=
  hmrRows_owned_drop s2Step102EntryGvAfter [s2Step102EntryFOut,s2Step102EntryGOut,s2Step102EntryFvOut,s2Step102EntryGvOut] 2 s2Step102EntryBank_outgoingOwned

private theorem s2Step102EntryFv_distinct : (s2Step102EntryFvRow.sign::s2Step102EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102EntryFv_owned : (s2Step102EntryFvRow.sign::s2Step102EntryFvRow.payload).toFinset⊆s2Step102EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step102EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102EntryFv_reserved : s2Step102EntryFvBefore.reserve s2Step102EntryFvFresh.toFinset=some s2Step102EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step102EntryFvFresh,arenaWires]
  · norm_num [s2Step102EntryFvBefore,s2Step102EntryFBefore,s2Step102EntryFvFresh,arenaWires]
  · simp only [s2Step102EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step102EntryFv_checked : planRowResizeLog s2Step102EntryFvBefore s2Step102EntryFvRow 65 s2Step102EntryFvFresh=
    some (s2Step102EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩,growRow 770 s2Step102EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step102EntryFvBefore s2Step102EntryFvAfter s2Step102EntryFvRow 65 s2Step102EntryFvFresh
    s2Step102EntryFv_distinct s2Step102EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step102EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step102EntryFvRow.payload++s2Step102EntryFvFresh) s2Step102EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step102EntryGAfter : Arena := s2Step102EntryFBefore

private def s2Step102EntryGBefore : Arena := s2Step102EntryFBefore

private theorem s2Step102EntryG_Incoming : rowsOwned s2Step102EntryGBefore [s2Step102EntryGRow,s2Step102EntryFvRow,s2Step102EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step102EntryFRow,s2Step102EntryGRow,s2Step102EntryFvRow,s2Step102EntryGvRow] 1 s2Step102EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step102EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step102EntryG_Outgoing : rowsOwned s2Step102EntryGvAfter [s2Step102EntryGOut,s2Step102EntryFvOut,s2Step102EntryGvOut] :=
  hmrRows_owned_drop s2Step102EntryGvAfter [s2Step102EntryFOut,s2Step102EntryGOut,s2Step102EntryFvOut,s2Step102EntryGvOut] 1 s2Step102EntryBank_outgoingOwned

private theorem s2Step102EntryG_distinct : (s2Step102EntryGRow.sign::s2Step102EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102EntryG_owned : (s2Step102EntryGRow.sign::s2Step102EntryGRow.payload).toFinset⊆s2Step102EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step102EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102EntryG_reserved : s2Step102EntryGBefore.reserve s2Step102EntryGFresh.toFinset=some s2Step102EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step102EntryGFresh,arenaWires]
  · norm_num [s2Step102EntryGBefore,s2Step102EntryFBefore,s2Step102EntryGFresh,arenaWires]
  · simp only [s2Step102EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step102EntryG_checked : planRowResizeLog s2Step102EntryGBefore s2Step102EntryGRow 218 s2Step102EntryGFresh=
    some (s2Step102EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩,growRow 769 s2Step102EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step102EntryGBefore s2Step102EntryGAfter s2Step102EntryGRow 218 s2Step102EntryGFresh
    s2Step102EntryG_distinct s2Step102EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step102EntryG_reserved
  have rowEq : WindowRow.mk (s2Step102EntryGRow.payload++s2Step102EntryGFresh) s2Step102EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step102EntryGvBefore : Arena := s2Step102EntryFBefore

private theorem s2Step102EntryGv_Incoming : rowsOwned s2Step102EntryGvBefore [s2Step102EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step102EntryFRow,s2Step102EntryGRow,s2Step102EntryFvRow,s2Step102EntryGvRow] 3 s2Step102EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step102EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step102EntryGv_Outgoing : rowsOwned s2Step102EntryGvAfter [s2Step102EntryGvOut] :=
  hmrRows_owned_drop s2Step102EntryGvAfter [s2Step102EntryFOut,s2Step102EntryGOut,s2Step102EntryFvOut,s2Step102EntryGvOut] 3 s2Step102EntryBank_outgoingOwned

private theorem s2Step102EntryGv_distinct : (s2Step102EntryGvRow.sign::s2Step102EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102EntryGv_owned : (s2Step102EntryGvRow.sign::s2Step102EntryGvRow.payload).toFinset⊆s2Step102EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step102EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102EntryGv_reserved : s2Step102EntryGvBefore.reserve s2Step102EntryGvFresh.toFinset=some s2Step102EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step102EntryGvFresh,arenaWires]
  · norm_num [s2Step102EntryGvBefore,s2Step102EntryFBefore,s2Step102EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step102EntryGvAfter,s2Step102EntryGvBefore,s2Step102EntryFBefore,s2Step102EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step102EntryGv_checked : planRowResizeLog s2Step102EntryGvBefore s2Step102EntryGvRow 65 s2Step102EntryGvFresh=
    some (s2Step102EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804],771⟩,growRow 771 s2Step102EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step102EntryGvBefore s2Step102EntryGvAfter s2Step102EntryGvRow 65 s2Step102EntryGvFresh
    s2Step102EntryGv_distinct s2Step102EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step102EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step102EntryGvRow.payload++s2Step102EntryGvFresh) s2Step102EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step102EntryBank_rows : planWindowRowsLog s2Step102EntryFBefore [(s2Step102EntryFRow,218),(s2Step102EntryGRow,218),(s2Step102EntryFvRow,65),(s2Step102EntryGvRow,65)] [s2Step102EntryFFresh,s2Step102EntryGFresh,s2Step102EntryFvFresh,s2Step102EntryGvFresh]=
    some (s2Step102EntryGvAfter,[s2Step102EntryFOut,s2Step102EntryGOut,s2Step102EntryFvOut,s2Step102EntryGvOut],(growRow 768 s2Step102EntryFFresh ++ (growRow 769 s2Step102EntryGFresh ++ (growRow 770 s2Step102EntryFvFresh ++ (growRow 771 s2Step102EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step102EntryGvAfter [] []=some (s2Step102EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step102EntryGvBefore s2Step102EntryGvAfter s2Step102EntryGvAfter
    s2Step102EntryGvRow s2Step102EntryGvOut 65 s2Step102EntryGvFresh [] [] []
    (growRow 771 s2Step102EntryGvFresh) ([]) s2Step102EntryGv_Incoming s2Step102EntryGv_checked h4 s2Step102EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step102EntryFvBefore s2Step102EntryFvAfter s2Step102EntryGvAfter
    s2Step102EntryFvRow s2Step102EntryFvOut 65 s2Step102EntryFvFresh [(s2Step102EntryGvRow,65)] [s2Step102EntryGvFresh] [s2Step102EntryGvOut]
    (growRow 770 s2Step102EntryFvFresh) ((growRow 771 s2Step102EntryGvFresh ++ [])) s2Step102EntryFv_Incoming s2Step102EntryFv_checked h3 s2Step102EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step102EntryGBefore s2Step102EntryGAfter s2Step102EntryGvAfter
    s2Step102EntryGRow s2Step102EntryGOut 218 s2Step102EntryGFresh [(s2Step102EntryFvRow,65),(s2Step102EntryGvRow,65)] [s2Step102EntryFvFresh,s2Step102EntryGvFresh] [s2Step102EntryFvOut,s2Step102EntryGvOut]
    (growRow 769 s2Step102EntryGFresh) ((growRow 770 s2Step102EntryFvFresh ++ (growRow 771 s2Step102EntryGvFresh ++ []))) s2Step102EntryG_Incoming s2Step102EntryG_checked h2 s2Step102EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step102EntryFBefore s2Step102EntryFAfter s2Step102EntryGvAfter
    s2Step102EntryFRow s2Step102EntryFOut 218 s2Step102EntryFFresh [(s2Step102EntryGRow,218),(s2Step102EntryFvRow,65),(s2Step102EntryGvRow,65)] [s2Step102EntryGFresh,s2Step102EntryFvFresh,s2Step102EntryGvFresh] [s2Step102EntryGOut,s2Step102EntryFvOut,s2Step102EntryGvOut]
    (growRow 768 s2Step102EntryFFresh) ((growRow 769 s2Step102EntryGFresh ++ (growRow 770 s2Step102EntryFvFresh ++ (growRow 771 s2Step102EntryGvFresh ++ [])))) s2Step102EntryF_Incoming s2Step102EntryF_checked h1 s2Step102EntryF_Outgoing
  exact h0

private theorem s2Step102EntryBank_checked : compileHmrBankResizeLog .entry s2Step102EntryFBefore ⟨s2Step102EntryFRow,s2Step102EntryGRow,s2Step102EntryFvRow,s2Step102EntryGvRow⟩ ⟨218,218,65,65⟩ [s2Step102EntryFFresh,s2Step102EntryGFresh,s2Step102EntryFvFresh,s2Step102EntryGvFresh]=
    some (s2Step102EntryGvAfter,⟨s2Step102EntryFOut,s2Step102EntryGOut,s2Step102EntryFvOut,s2Step102EntryGvOut⟩,(growRow 768 s2Step102EntryFFresh ++ (growRow 769 s2Step102EntryGFresh ++ (growRow 770 s2Step102EntryFvFresh ++ (growRow 771 s2Step102EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step102EntryBank_rows]
  rfl

private def s2Step102ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102ExitFBefore : Arena := s2Step102ExitGAfter

private def s2Step102ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 851],768⟩

private def s2Step102ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 799],770⟩

private def s2Step102ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 785],769⟩

private def s2Step102ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 846],771⟩

private theorem s2Step102ExitBank_incomingDistinct : ([s2Step102ExitGRow,s2Step102ExitFRow,s2Step102ExitFvRow,s2Step102ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102ExitF_Incoming : rowsOwned s2Step102ExitFBefore [s2Step102ExitFRow,s2Step102ExitFvRow,s2Step102ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step102ExitGRow,s2Step102ExitFRow,s2Step102ExitFvRow,s2Step102ExitGvRow] 1 s2Step102ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step102ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step102ExitBank_outgoingOwned : rowsOwned s2Step102ExitGvAfter [s2Step102ExitGOut,s2Step102ExitFOut,s2Step102ExitFvOut,s2Step102ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step102ExitGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step102ExitF_Outgoing : rowsOwned s2Step102ExitGvAfter [s2Step102ExitFOut,s2Step102ExitFvOut,s2Step102ExitGvOut] :=
  hmrRows_owned_drop s2Step102ExitGvAfter [s2Step102ExitGOut,s2Step102ExitFOut,s2Step102ExitFvOut,s2Step102ExitGvOut] 1 s2Step102ExitBank_outgoingOwned

private theorem s2Step102ExitF_distinct : (s2Step102ExitFRow.sign::s2Step102ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102ExitF_owned : (s2Step102ExitFRow.sign::s2Step102ExitFRow.payload).toFinset⊆s2Step102ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step102ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102ExitF_retired : s2Step102ExitFBefore.retireSet s2Step102ExitFExtra.toFinset=s2Step102ExitFAfter := by
  unfold Arena.retireSet s2Step102ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step102ExitFBefore,s2Step102ExitGAfter,s2Step102ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step102ExitF_checked : planRowResizeLog s2Step102ExitFBefore s2Step102ExitFRow 218 []=
    some (s2Step102ExitFAfter,s2Step102ExitFOut,shrinkRow 768 s2Step102ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step102ExitFBefore s2Step102ExitFRow 218 s2Step102ExitF_distinct s2Step102ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step102ExitFRow.payload.take 218) s2Step102ExitFRow.sign=s2Step102ExitFOut := by decide +kernel
  have hi : s2Step102ExitFRow.payload.drop 218=s2Step102ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step102ExitF_retired] at result
  exact result

private def s2Step102ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102ExitFvBefore : Arena := s2Step102ExitFAfter

private theorem s2Step102ExitFv_Incoming : rowsOwned s2Step102ExitFvBefore [s2Step102ExitFvRow,s2Step102ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step102ExitGRow,s2Step102ExitFRow,s2Step102ExitFvRow,s2Step102ExitGvRow] 2 s2Step102ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step102ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step102ExitFv_Outgoing : rowsOwned s2Step102ExitGvAfter [s2Step102ExitFvOut,s2Step102ExitGvOut] :=
  hmrRows_owned_drop s2Step102ExitGvAfter [s2Step102ExitGOut,s2Step102ExitFOut,s2Step102ExitFvOut,s2Step102ExitGvOut] 2 s2Step102ExitBank_outgoingOwned

private theorem s2Step102ExitFv_distinct : (s2Step102ExitFvRow.sign::s2Step102ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102ExitFv_owned : (s2Step102ExitFvRow.sign::s2Step102ExitFvRow.payload).toFinset⊆s2Step102ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step102ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102ExitFv_retired : s2Step102ExitFvBefore.retireSet s2Step102ExitFvExtra.toFinset=s2Step102ExitFvAfter := by
  unfold Arena.retireSet s2Step102ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step102ExitFvBefore,s2Step102ExitFAfter,s2Step102ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step102ExitFv_checked : planRowResizeLog s2Step102ExitFvBefore s2Step102ExitFvRow 65 []=
    some (s2Step102ExitFvAfter,s2Step102ExitFvOut,shrinkRow 770 s2Step102ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step102ExitFvBefore s2Step102ExitFvRow 65 s2Step102ExitFv_distinct s2Step102ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step102ExitFvRow.payload.take 65) s2Step102ExitFvRow.sign=s2Step102ExitFvOut := by decide +kernel
  have hi : s2Step102ExitFvRow.payload.drop 65=s2Step102ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step102ExitFv_retired] at result
  exact result

private def s2Step102ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private theorem s2Step102ExitG_Incoming : rowsOwned s2Step102ExitGBefore [s2Step102ExitGRow,s2Step102ExitFRow,s2Step102ExitFvRow,s2Step102ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step102ExitGRow,s2Step102ExitFRow,s2Step102ExitFvRow,s2Step102ExitGvRow] 0 s2Step102ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step102ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step102ExitG_Outgoing : rowsOwned s2Step102ExitGvAfter [s2Step102ExitGOut,s2Step102ExitFOut,s2Step102ExitFvOut,s2Step102ExitGvOut] :=
  hmrRows_owned_drop s2Step102ExitGvAfter [s2Step102ExitGOut,s2Step102ExitFOut,s2Step102ExitFvOut,s2Step102ExitGvOut] 0 s2Step102ExitBank_outgoingOwned

private theorem s2Step102ExitG_distinct : (s2Step102ExitGRow.sign::s2Step102ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102ExitG_owned : (s2Step102ExitGRow.sign::s2Step102ExitGRow.payload).toFinset⊆s2Step102ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step102ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102ExitG_retired : s2Step102ExitGBefore.retireSet s2Step102ExitGExtra.toFinset=s2Step102ExitGAfter := by
  unfold Arena.retireSet s2Step102ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step102ExitGBefore,s2Step102ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step102ExitG_checked : planRowResizeLog s2Step102ExitGBefore s2Step102ExitGRow 218 []=
    some (s2Step102ExitGAfter,s2Step102ExitGOut,shrinkRow 769 s2Step102ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step102ExitGBefore s2Step102ExitGRow 218 s2Step102ExitG_distinct s2Step102ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step102ExitGRow.payload.take 218) s2Step102ExitGRow.sign=s2Step102ExitGOut := by decide +kernel
  have hi : s2Step102ExitGRow.payload.drop 218=s2Step102ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step102ExitG_retired] at result
  exact result

private def s2Step102ExitGvBefore : Arena := s2Step102ExitFvAfter

private theorem s2Step102ExitGv_Incoming : rowsOwned s2Step102ExitGvBefore [s2Step102ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step102ExitGRow,s2Step102ExitFRow,s2Step102ExitFvRow,s2Step102ExitGvRow] 3 s2Step102ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step102ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step102ExitGv_Outgoing : rowsOwned s2Step102ExitGvAfter [s2Step102ExitGvOut] :=
  hmrRows_owned_drop s2Step102ExitGvAfter [s2Step102ExitGOut,s2Step102ExitFOut,s2Step102ExitFvOut,s2Step102ExitGvOut] 3 s2Step102ExitBank_outgoingOwned

private theorem s2Step102ExitGv_distinct : (s2Step102ExitGvRow.sign::s2Step102ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102ExitGv_owned : (s2Step102ExitGvRow.sign::s2Step102ExitGvRow.payload).toFinset⊆s2Step102ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step102ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102ExitGv_retired : s2Step102ExitGvBefore.retireSet s2Step102ExitGvExtra.toFinset=s2Step102ExitGvAfter := by
  unfold Arena.retireSet s2Step102ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step102ExitGvBefore,s2Step102ExitFvAfter,s2Step102ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step102ExitGv_checked : planRowResizeLog s2Step102ExitGvBefore s2Step102ExitGvRow 65 []=
    some (s2Step102ExitGvAfter,s2Step102ExitGvOut,shrinkRow 771 s2Step102ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step102ExitGvBefore s2Step102ExitGvRow 65 s2Step102ExitGv_distinct s2Step102ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step102ExitGvRow.payload.take 65) s2Step102ExitGvRow.sign=s2Step102ExitGvOut := by decide +kernel
  have hi : s2Step102ExitGvRow.payload.drop 65=s2Step102ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step102ExitGv_retired] at result
  exact result

private theorem s2Step102ExitBank_rows : planWindowRowsLog s2Step102ExitGBefore [(s2Step102ExitGRow,218),(s2Step102ExitFRow,218),(s2Step102ExitFvRow,65),(s2Step102ExitGvRow,65)] [[],[],[],[]]=
    some (s2Step102ExitGvAfter,[s2Step102ExitGOut,s2Step102ExitFOut,s2Step102ExitFvOut,s2Step102ExitGvOut],(shrinkRow 769 s2Step102ExitGExtra ++ (shrinkRow 768 s2Step102ExitFExtra ++ (shrinkRow 770 s2Step102ExitFvExtra ++ (shrinkRow 771 s2Step102ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step102ExitGvAfter [] []=some (s2Step102ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step102ExitGvBefore s2Step102ExitGvAfter s2Step102ExitGvAfter
    s2Step102ExitGvRow s2Step102ExitGvOut 65 [] [] [] []
    (shrinkRow 771 s2Step102ExitGvExtra) ([]) s2Step102ExitGv_Incoming s2Step102ExitGv_checked h4 s2Step102ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step102ExitFvBefore s2Step102ExitFvAfter s2Step102ExitGvAfter
    s2Step102ExitFvRow s2Step102ExitFvOut 65 [] [(s2Step102ExitGvRow,65)] [[]] [s2Step102ExitGvOut]
    (shrinkRow 770 s2Step102ExitFvExtra) ((shrinkRow 771 s2Step102ExitGvExtra ++ [])) s2Step102ExitFv_Incoming s2Step102ExitFv_checked h3 s2Step102ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step102ExitFBefore s2Step102ExitFAfter s2Step102ExitGvAfter
    s2Step102ExitFRow s2Step102ExitFOut 218 [] [(s2Step102ExitFvRow,65),(s2Step102ExitGvRow,65)] [[],[]] [s2Step102ExitFvOut,s2Step102ExitGvOut]
    (shrinkRow 768 s2Step102ExitFExtra) ((shrinkRow 770 s2Step102ExitFvExtra ++ (shrinkRow 771 s2Step102ExitGvExtra ++ []))) s2Step102ExitF_Incoming s2Step102ExitF_checked h2 s2Step102ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step102ExitGBefore s2Step102ExitGAfter s2Step102ExitGvAfter
    s2Step102ExitGRow s2Step102ExitGOut 218 [] [(s2Step102ExitFRow,218),(s2Step102ExitFvRow,65),(s2Step102ExitGvRow,65)] [[],[],[]] [s2Step102ExitFOut,s2Step102ExitFvOut,s2Step102ExitGvOut]
    (shrinkRow 769 s2Step102ExitGExtra) ((shrinkRow 768 s2Step102ExitFExtra ++ (shrinkRow 770 s2Step102ExitFvExtra ++ (shrinkRow 771 s2Step102ExitGvExtra ++ [])))) s2Step102ExitG_Incoming s2Step102ExitG_checked h1 s2Step102ExitG_Outgoing
  exact h0

private theorem s2Step102ExitBank_checked : compileHmrBankResizeLog .exit s2Step102ExitGBefore ⟨s2Step102ExitFRow,s2Step102ExitGRow,s2Step102ExitFvRow,s2Step102ExitGvRow⟩ ⟨218,218,65,65⟩ [[],[],[],[]]=
    some (s2Step102ExitGvAfter,⟨s2Step102ExitFOut,s2Step102ExitGOut,s2Step102ExitFvOut,s2Step102ExitGvOut⟩,(shrinkRow 769 s2Step102ExitGExtra ++ (shrinkRow 768 s2Step102ExitFExtra ++ (shrinkRow 770 s2Step102ExitFvExtra ++ (shrinkRow 771 s2Step102ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step102ExitBank_rows]
  rfl

private theorem s2Step102Add0_apart : Disjoint s2Step102Add0Arena.live s2Step102Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step102Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102Add0_card : s2Step102Add0Arena.live.card=875 := by
  decide +kernel

private theorem s2Step102Add0_borrowed : s2Step102Add0Arena.checkBorrow (hmrHybridCount s2Step102Add0Arena s2Step102Add0B.length) s2Step102Add0Work=some s2Step102Add0During := by
  have len : s2Step102Add0Work.length=hmrHybridCount s2Step102Add0Arena s2Step102Add0B.length := by
    rw [hmrHybridCount,s2Step102Add0_card]
    decide +kernel
  have nd : s2Step102Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step102Add0Arena s2Step102Add0During s2Step102Add0Work.toFinset s2Step102Add0_bounded s2Step102Add0_apart rfl

private theorem s2Step102Add0_distinct : (781::798::849::(s2Step102Add0A++s2Step102Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102Add0_owned : (781::798::849::(s2Step102Add0A++s2Step102Add0B)).toFinset⊆s2Step102Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step102Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102Add0_checked : compileHmrHybridCinLog s2Step102Add0Arena 798 781 849 s2Step102Add0A s2Step102Add0B s2Step102Add0Work=some s2Step102Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step102Add0Arena s2Step102Add0During 798 781 849 s2Step102Add0A s2Step102Add0B s2Step102Add0Work
    (by decide +kernel) (by decide +kernel) s2Step102Add0_distinct
    (fun q hq => s2Step102Add0_owned (List.mem_toFinset.mpr hq)) s2Step102Add0_borrowed

private theorem s2Step102Add1_apart : Disjoint s2Step102Add1Arena.live s2Step102Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step102Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102Add1_card : s2Step102Add1Arena.live.card=875 := by
  decide +kernel

private theorem s2Step102Add1_borrowed : s2Step102Add1Arena.checkBorrow (hmrHybridCount s2Step102Add1Arena s2Step102Add1B.length) s2Step102Add1Work=some s2Step102Add1During := by
  have len : s2Step102Add1Work.length=hmrHybridCount s2Step102Add1Arena s2Step102Add1B.length := by
    rw [hmrHybridCount,s2Step102Add1_card]
    decide +kernel
  have nd : s2Step102Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step102Add1Arena s2Step102Add1During s2Step102Add1Work.toFinset s2Step102Add1_bounded s2Step102Add1_apart rfl

private theorem s2Step102Add1_distinct : (781::798::849::(s2Step102Add1A++s2Step102Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102Add1_owned : (781::798::849::(s2Step102Add1A++s2Step102Add1B)).toFinset⊆s2Step102Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step102Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102Add1_checked : compileHmrHybridCinLog s2Step102Add1Arena 798 781 849 s2Step102Add1A s2Step102Add1B s2Step102Add1Work=some s2Step102Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step102Add1Arena s2Step102Add1During 798 781 849 s2Step102Add1A s2Step102Add1B s2Step102Add1Work
    (by decide +kernel) (by decide +kernel) s2Step102Add1_distinct
    (fun q hq => s2Step102Add1_owned (List.mem_toFinset.mpr hq)) s2Step102Add1_borrowed

private theorem s2Step102F4_apart : Disjoint (s2Step102Add0A++s2Step102Add0B).toFinset (s2Step102Add1A++s2Step102Add1B).toFinset := by
  have nd : ((s2Step102Add0A++s2Step102Add0B)++(s2Step102Add1A++s2Step102Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step102F4_carry : s2Step102F4FlagArena.checkBorrow 1 [849]=some s2Step102Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step102F4FlagArena,s2Step102HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step102F4FlagArena,s2Step102HeadFvAfter,s2Step102Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step102F4_distinct : (794::798::781::849::((s2Step102Add0A++s2Step102Add1A)++(s2Step102Add0B++s2Step102Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102F4_flag : s2Step102HeadFvAfter.checkBorrow 1 [781]=some s2Step102F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step102HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step102F4_owned : (794::798::((s2Step102Add0A++s2Step102Add1A)++(s2Step102Add0B++s2Step102Add1B))).toFinset⊆s2Step102HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step102HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102F4_checked : compileHmrHybridF4Log s2Step102HeadFvAfter 794 798 s2Step102Add0A s2Step102Add0B s2Step102Add1A s2Step102Add1B [781] [849] s2Step102Add0Work s2Step102Add1Work=some s2Step102F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step102HeadFvAfter s2Step102F4FlagArena s2Step102Add0Arena s2Step102Add0During s2Step102Add1During 794 798
    s2Step102Add0A s2Step102Add0B s2Step102Add1A s2Step102Add1B [781] [849] s2Step102Add0Work s2Step102Add1Work
    (fun q hq => s2Step102F4_owned (List.mem_toFinset.mpr hq)) s2Step102F4_flag s2Step102F4_carry
    s2Step102F4_distinct s2Step102F4_apart s2Step102Add0_checked s2Step102Add1_checked

private theorem s2Step102Front_branch : s2Step102FrontSigmaArena.checkBorrow 1 [798]=some s2Step102HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step102FrontSigmaArena,s2Step102EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step102FrontSigmaArena,s2Step102EntryGvAfter,s2Step102HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step102Front_entry : HmrFrontEntryValid s2Step102EntryFBefore s2Step102FrontBank 218 65 ⟨218,218,65,65⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step102FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step102EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step102EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step102FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step102Front_sigma : s2Step102EntryGvAfter.checkBorrow 1 [794]=some s2Step102FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step102EntryGvAfter,arenaWires]
  · rfl

private def s2Step102HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102HeadFBefore : Arena := s2Step102HeadGAfter

private def s2Step102HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729],768⟩

private def s2Step102HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩

private def s2Step102HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩

private def s2Step102HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804],771⟩

private theorem s2Step102HeadBank_incomingDistinct : ([s2Step102HeadGRow,s2Step102HeadFRow,s2Step102HeadGvRow,s2Step102HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102HeadF_Incoming : rowsOwned s2Step102HeadFBefore [s2Step102HeadFRow,s2Step102HeadGvRow,s2Step102HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step102HeadGRow,s2Step102HeadFRow,s2Step102HeadGvRow,s2Step102HeadFvRow] 1 s2Step102HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step102HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step102HeadBank_outgoingOwned : rowsOwned s2Step102HeadFvAfter [s2Step102HeadGOut,s2Step102HeadFOut,s2Step102HeadGvOut,s2Step102HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step102HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step102HeadF_Outgoing : rowsOwned s2Step102HeadFvAfter [s2Step102HeadFOut,s2Step102HeadGvOut,s2Step102HeadFvOut] :=
  hmrRows_owned_drop s2Step102HeadFvAfter [s2Step102HeadGOut,s2Step102HeadFOut,s2Step102HeadGvOut,s2Step102HeadFvOut] 1 s2Step102HeadBank_outgoingOwned

private theorem s2Step102HeadF_distinct : (s2Step102HeadFRow.sign::s2Step102HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102HeadF_owned : (s2Step102HeadFRow.sign::s2Step102HeadFRow.payload).toFinset⊆s2Step102HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step102HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102HeadF_reserved : s2Step102HeadFBefore.reserve s2Step102HeadFFresh.toFinset=some s2Step102HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step102HeadFFresh,arenaWires]
  · norm_num [s2Step102HeadFBefore,s2Step102HeadGAfter,s2Step102HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step102HeadFAfter,s2Step102HeadFBefore,s2Step102HeadGAfter,s2Step102HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step102HeadF_checked : planRowResizeLog s2Step102HeadFBefore s2Step102HeadFRow 219 s2Step102HeadFFresh=
    some (s2Step102HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 851],768⟩,growRow 768 s2Step102HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step102HeadFBefore s2Step102HeadFAfter s2Step102HeadFRow 219 s2Step102HeadFFresh
    s2Step102HeadF_distinct s2Step102HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step102HeadF_reserved
  have rowEq : WindowRow.mk (s2Step102HeadFRow.payload++s2Step102HeadFFresh) s2Step102HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 851],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step102HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step102HeadFvBefore : Arena := s2Step102HeadGvAfter

private theorem s2Step102HeadFv_Incoming : rowsOwned s2Step102HeadFvBefore [s2Step102HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step102HeadGRow,s2Step102HeadFRow,s2Step102HeadGvRow,s2Step102HeadFvRow] 3 s2Step102HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step102HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step102HeadFv_Outgoing : rowsOwned s2Step102HeadFvAfter [s2Step102HeadFvOut] :=
  hmrRows_owned_drop s2Step102HeadFvAfter [s2Step102HeadGOut,s2Step102HeadFOut,s2Step102HeadGvOut,s2Step102HeadFvOut] 3 s2Step102HeadBank_outgoingOwned

private theorem s2Step102HeadFv_distinct : (s2Step102HeadFvRow.sign::s2Step102HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102HeadFv_owned : (s2Step102HeadFvRow.sign::s2Step102HeadFvRow.payload).toFinset⊆s2Step102HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step102HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102HeadFv_reserved : s2Step102HeadFvBefore.reserve s2Step102HeadFvFresh.toFinset=some s2Step102HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step102HeadFvFresh,arenaWires]
  · norm_num [s2Step102HeadFvBefore,s2Step102HeadGvAfter,s2Step102HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step102HeadFvAfter,s2Step102HeadFvBefore,s2Step102HeadGvAfter,s2Step102HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step102HeadFv_checked : planRowResizeLog s2Step102HeadFvBefore s2Step102HeadFvRow 66 s2Step102HeadFvFresh=
    some (s2Step102HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 799],770⟩,growRow 770 s2Step102HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step102HeadFvBefore s2Step102HeadFvAfter s2Step102HeadFvRow 66 s2Step102HeadFvFresh
    s2Step102HeadFv_distinct s2Step102HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step102HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step102HeadFvRow.payload++s2Step102HeadFvFresh) s2Step102HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 799],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step102HeadG_Incoming : rowsOwned s2Step102HeadGBefore [s2Step102HeadGRow,s2Step102HeadFRow,s2Step102HeadGvRow,s2Step102HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step102HeadGRow,s2Step102HeadFRow,s2Step102HeadGvRow,s2Step102HeadFvRow] 0 s2Step102HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step102HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step102HeadG_Outgoing : rowsOwned s2Step102HeadFvAfter [s2Step102HeadGOut,s2Step102HeadFOut,s2Step102HeadGvOut,s2Step102HeadFvOut] :=
  hmrRows_owned_drop s2Step102HeadFvAfter [s2Step102HeadGOut,s2Step102HeadFOut,s2Step102HeadGvOut,s2Step102HeadFvOut] 0 s2Step102HeadBank_outgoingOwned

private theorem s2Step102HeadG_distinct : (s2Step102HeadGRow.sign::s2Step102HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102HeadG_owned : (s2Step102HeadGRow.sign::s2Step102HeadGRow.payload).toFinset⊆s2Step102HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step102HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102HeadG_reserved : s2Step102HeadGBefore.reserve s2Step102HeadGFresh.toFinset=some s2Step102HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step102HeadGFresh,arenaWires]
  · norm_num [s2Step102HeadGBefore,s2Step102HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step102HeadGAfter,s2Step102HeadGBefore,s2Step102HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step102HeadG_checked : planRowResizeLog s2Step102HeadGBefore s2Step102HeadGRow 219 s2Step102HeadGFresh=
    some (s2Step102HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 785],769⟩,growRow 769 s2Step102HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step102HeadGBefore s2Step102HeadGAfter s2Step102HeadGRow 219 s2Step102HeadGFresh
    s2Step102HeadG_distinct s2Step102HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step102HeadG_reserved
  have rowEq : WindowRow.mk (s2Step102HeadGRow.payload++s2Step102HeadGFresh) s2Step102HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step102HeadGvBefore : Arena := s2Step102HeadFAfter

private theorem s2Step102HeadGv_Incoming : rowsOwned s2Step102HeadGvBefore [s2Step102HeadGvRow,s2Step102HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step102HeadGRow,s2Step102HeadFRow,s2Step102HeadGvRow,s2Step102HeadFvRow] 2 s2Step102HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step102HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step102HeadGv_Outgoing : rowsOwned s2Step102HeadFvAfter [s2Step102HeadGvOut,s2Step102HeadFvOut] :=
  hmrRows_owned_drop s2Step102HeadFvAfter [s2Step102HeadGOut,s2Step102HeadFOut,s2Step102HeadGvOut,s2Step102HeadFvOut] 2 s2Step102HeadBank_outgoingOwned

private theorem s2Step102HeadGv_distinct : (s2Step102HeadGvRow.sign::s2Step102HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step102HeadGv_owned : (s2Step102HeadGvRow.sign::s2Step102HeadGvRow.payload).toFinset⊆s2Step102HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step102HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step102HeadGv_reserved : s2Step102HeadGvBefore.reserve s2Step102HeadGvFresh.toFinset=some s2Step102HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step102HeadGvFresh,arenaWires]
  · norm_num [s2Step102HeadGvBefore,s2Step102HeadFAfter,s2Step102HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step102HeadGvAfter,s2Step102HeadGvBefore,s2Step102HeadFAfter,s2Step102HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step102HeadGv_checked : planRowResizeLog s2Step102HeadGvBefore s2Step102HeadGvRow 66 s2Step102HeadGvFresh=
    some (s2Step102HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 846],771⟩,growRow 771 s2Step102HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step102HeadGvBefore s2Step102HeadGvAfter s2Step102HeadGvRow 66 s2Step102HeadGvFresh
    s2Step102HeadGv_distinct s2Step102HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step102HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step102HeadGvRow.payload++s2Step102HeadGvFresh) s2Step102HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 846],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step102HeadBank_rows : planWindowRowsLog s2Step102HeadGBefore [(s2Step102HeadGRow,219),(s2Step102HeadFRow,219),(s2Step102HeadGvRow,66),(s2Step102HeadFvRow,66)] [s2Step102HeadGFresh,s2Step102HeadFFresh,s2Step102HeadGvFresh,s2Step102HeadFvFresh]=
    some (s2Step102HeadFvAfter,[s2Step102HeadGOut,s2Step102HeadFOut,s2Step102HeadGvOut,s2Step102HeadFvOut],(growRow 769 s2Step102HeadGFresh ++ (growRow 768 s2Step102HeadFFresh ++ (growRow 771 s2Step102HeadGvFresh ++ (growRow 770 s2Step102HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step102HeadFvAfter [] []=some (s2Step102HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step102HeadFvBefore s2Step102HeadFvAfter s2Step102HeadFvAfter
    s2Step102HeadFvRow s2Step102HeadFvOut 66 s2Step102HeadFvFresh [] [] []
    (growRow 770 s2Step102HeadFvFresh) ([]) s2Step102HeadFv_Incoming s2Step102HeadFv_checked h4 s2Step102HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step102HeadGvBefore s2Step102HeadGvAfter s2Step102HeadFvAfter
    s2Step102HeadGvRow s2Step102HeadGvOut 66 s2Step102HeadGvFresh [(s2Step102HeadFvRow,66)] [s2Step102HeadFvFresh] [s2Step102HeadFvOut]
    (growRow 771 s2Step102HeadGvFresh) ((growRow 770 s2Step102HeadFvFresh ++ [])) s2Step102HeadGv_Incoming s2Step102HeadGv_checked h3 s2Step102HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step102HeadFBefore s2Step102HeadFAfter s2Step102HeadFvAfter
    s2Step102HeadFRow s2Step102HeadFOut 219 s2Step102HeadFFresh [(s2Step102HeadGvRow,66),(s2Step102HeadFvRow,66)] [s2Step102HeadGvFresh,s2Step102HeadFvFresh] [s2Step102HeadGvOut,s2Step102HeadFvOut]
    (growRow 768 s2Step102HeadFFresh) ((growRow 771 s2Step102HeadGvFresh ++ (growRow 770 s2Step102HeadFvFresh ++ []))) s2Step102HeadF_Incoming s2Step102HeadF_checked h2 s2Step102HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step102HeadGBefore s2Step102HeadGAfter s2Step102HeadFvAfter
    s2Step102HeadGRow s2Step102HeadGOut 219 s2Step102HeadGFresh [(s2Step102HeadFRow,219),(s2Step102HeadGvRow,66),(s2Step102HeadFvRow,66)] [s2Step102HeadFFresh,s2Step102HeadGvFresh,s2Step102HeadFvFresh] [s2Step102HeadFOut,s2Step102HeadGvOut,s2Step102HeadFvOut]
    (growRow 769 s2Step102HeadGFresh) ((growRow 768 s2Step102HeadFFresh ++ (growRow 771 s2Step102HeadGvFresh ++ (growRow 770 s2Step102HeadFvFresh ++ [])))) s2Step102HeadG_Incoming s2Step102HeadG_checked h1 s2Step102HeadG_Outgoing
  exact h0

private theorem s2Step102HeadBank_checked : compileHmrBankResizeLog .headroom s2Step102HeadGBefore ⟨s2Step102HeadFRow,s2Step102HeadGRow,s2Step102HeadFvRow,s2Step102HeadGvRow⟩ ⟨219,219,66,66⟩ [s2Step102HeadGFresh,s2Step102HeadFFresh,s2Step102HeadGvFresh,s2Step102HeadFvFresh]=
    some (s2Step102HeadFvAfter,⟨s2Step102HeadFOut,s2Step102HeadGOut,s2Step102HeadFvOut,s2Step102HeadGvOut⟩,(growRow 769 s2Step102HeadGFresh ++ (growRow 768 s2Step102HeadFFresh ++ (growRow 771 s2Step102HeadGvFresh ++ (growRow 770 s2Step102HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step102HeadBank_rows]
  rfl

private theorem s2Step102Front_checked : compileHmrSourceFrontLog s2Step102EntryFBefore s2Step102FrontBank 218 65 ⟨218,218,65,65⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step102FrontLog=some s2Step102FrontPlan := by
  have pairEq : s2Step102FrontPair=⟨s2Step102HeadFRow,s2Step102HeadGRow,s2Step102HeadFvRow,s2Step102HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step102FrontHead=⟨s2Step102ExitFRow,s2Step102ExitGRow,s2Step102ExitFvRow,s2Step102ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step102Add0A=s2Step102FrontHead.f.wires := by decide +kernel
  have gEq : s2Step102Add0B=s2Step102FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step102Add1A=s2Step102FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step102Add1B=s2Step102FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step102EntryFBefore s2Step102FrontBank 218 65 ⟨218,218,65,65⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step102FrontLog s2Step102FrontPlan
  · exact s2Step102Front_entry
  · exact s2Step102EntryBank_checked
  · exact s2Step102Front_sigma
  · rfl
  · exact s2Step102Front_branch
  · rfl
  · simpa only [s2Step102FrontPlan,pairEq] using s2Step102HeadBank_checked
  · simpa only [s2Step102FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step102F4_checked
  · exact s2Step102Counter_checked
  · rfl
  · simpa only [s2Step102FrontPlan,headEq] using s2Step102ExitBank_checked

private theorem s2Step102Complete_explicit_checked : compileHmrEarlyStepLog s2Step102EntryFBefore s2Step102FrontBank 218 65 ⟨218,218,65,65⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step102CompleteLog=some s2Step102CompletePlan := by
  let Q := s2Step102EarlyControlPlan
  have hq := s2Step102EarlyControl_plan_checked
  have fv1 : s2Step102CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step102CompleteOut.fv.payload[2]?.getD s2Step102CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step102CompleteOut.fv.payload[3]?.getD s2Step102CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step102CompleteOut.fv.payload[4]?.getD s2Step102CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step102EntryFBefore s2Step102EarlyControlArena s2Step102FrontBank 218 65 ⟨218,218,65,65⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step102CompleteLog s2Step102FrontPlan Q
    s2Step102Front_checked s2Step102Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step102Complete_owned s2Step102Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step102EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 794 s2Step102CompleteOut.fv.second (s2Step102CompleteOut.fv.payload[2]?.getD s2Step102CompleteOut.fv.sign) (s2Step102CompleteOut.fv.payload[3]?.getD s2Step102CompleteOut.fv.sign) (s2Step102CompleteOut.fv.payload[4]?.getD s2Step102CompleteOut.fv.sign) 798 35 s2Step102EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep102Arena : Arena := s2Step102EntryFBefore
def s2PrivateStep102Bank : WindowBank := s2Step102FrontBank
def s2PrivateStep102Spec : HmrSourceWalkStepLog := ⟨218,65,⟨218,218,65,65⟩,35,.early s2Step102CompleteLog⟩
def s2PrivateStep102Plan : HmrSourceStepPlan := .early s2Step102CompletePlan
theorem s2PrivateStep102_source : s2PrivateStep102Spec=s2ObservedLogs96[6] := rfl
theorem s2PrivateStep102_checked : compileHmrSourceStepLog s2PrivateStep102Arena s2PrivateStep102Bank
    s2PrivateStep102Spec.fgWidth s2PrivateStep102Spec.vWidth s2PrivateStep102Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880]
    6 498 102 s2PrivateStep102Spec.need none s2PrivateStep102Spec.log=some s2PrivateStep102Plan := by
  change compileHmrSourceStepLog s2Step102EntryFBefore s2Step102FrontBank 218 65 ⟨218,218,65,65⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 6 498 102 35 none (.early s2Step102CompleteLog)=some (.early s2Step102CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 102<498)]
  rw [s2Step102Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
