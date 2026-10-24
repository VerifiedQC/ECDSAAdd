import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep114
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

private def s2Step116CompleteMoves : List (Wire × Wire) := []

private def s2Step116EarlyControlLog : HmrEarlyControlLog := ⟨[781, 849, 846, 807, 794],[806],[802],[867, 877, 879, 882, 883, 884],[]⟩

private def s2Step116FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [807], [], [805]],[[794], [846], [781], [849]],[[], [], [], []]⟩,[815],[792],[806],[802],[867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 802, 867, 877]⟩

private def s2Step116CompleteLog : HmrEarlyStepLog := ⟨s2Step116FrontLog,s2Step116CompleteMoves,s2Step116EarlyControlLog⟩

private def s2Step116ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step116ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩

private def s2Step116ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],769⟩

private def s2Step116ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805],771⟩

private def s2Step116FrontOut : WindowBank := ⟨s2Step116ExitFOut,s2Step116ExitGOut,s2Step116ExitFvOut,s2Step116ExitGvOut⟩

private def s2Step116CompleteOut : WindowBank := s2Step116FrontOut.repacked s2Step116CompleteMoves

private def s2Step116EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step116EarlyControlPositiveArena,[806],s2Step116EarlyControlEqualityArena,[802],⟨⟨815,false⟩,[⟨⟨806,false⟩,802⟩]⟩⟩

private def s2Step116EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step116EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step116EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,781⟩,⟨⟨774,false⟩,849⟩,⟨⟨775,false⟩,846⟩,⟨⟨776,false⟩,807⟩,⟨⟨777,false⟩,794⟩]⟩

private def s2Step116EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step116EarlyControlZeroArena,s2Step116EarlyControlZeroPlan,s2Step116EarlyControlClassPlan,s2Step116EarlyControlFlagArena,s2Step116EarlyControlFittedArena,s2Step116EarlyControlHistoryArena,s2Step116EarlyControlSigmaArena,s2Step116EarlyControlOutputArena,s2Step116EarlyControlLog⟩

private def s2Step116CounterWork : List Wire := [806, 802, 867, 877]

private theorem s2Step116Counter_bounded : s2Step116CounterWork.toFinset⊆arenaWires := by norm_num [s2Step116CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step116HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116CounterDuring : Arena := ⟨s2Step116HeadFvAfter.live∪s2Step116CounterWork.toFinset,Finset.union_subset s2Step116HeadFvAfter.bounded s2Step116Counter_bounded⟩

private def s2Step116EntryFFresh : List Wire := []

private def s2Step116EntryFvFresh : List Wire := []

private def s2Step116EntryGFresh : List Wire := [807]

private def s2Step116EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116EntryGvFresh : List Wire := [805]

private def s2Step116ExitFExtra : List Wire := [846]

private def s2Step116ExitFvExtra : List Wire := [849]

private def s2Step116ExitGExtra : List Wire := [807, 794]

private def s2Step116ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116ExitGvExtra : List Wire := [781]

private def s2Step116Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116Add0Work : List Wire := [867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step116Add0_bounded : s2Step116Add0Work.toFinset⊆arenaWires := by
  have h : s2Step116Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step116Add0During : Arena := ⟨s2Step116Add0Arena.live∪s2Step116Add0Work.toFinset,Finset.union_subset s2Step116Add0Arena.bounded s2Step116Add0_bounded⟩

private def s2Step116Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116Add1Work : List Wire := [867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step116Add1_bounded : s2Step116Add1Work.toFinset⊆arenaWires := by
  have h : s2Step116Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step116Add1During : Arena := ⟨s2Step116Add1Arena.live∪s2Step116Add1Work.toFinset,Finset.union_subset s2Step116Add1Arena.bounded s2Step116Add1_bounded⟩

private def s2Step116F4FlagArena : Arena := ⟨s2Step116HeadFvAfter.live∪{806},Finset.union_subset s2Step116HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step116F4Plan : HmrHybridF4Plan := ⟨s2Step116F4FlagArena,[806],s2Step116Add0Arena,[802],s2Step116Add0During,s2Step116Add0Work,s2Step116Add1During,s2Step116Add1Work⟩

private def s2Step116HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 846],768⟩

private def s2Step116HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 849],770⟩

private def s2Step116HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 807, 794],769⟩

private def s2Step116HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 781],771⟩

private def s2Step116FrontHead : WindowBank := ⟨s2Step116HeadFOut,s2Step116HeadGOut,s2Step116HeadFvOut,s2Step116HeadGvOut⟩

private def s2Step116EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step116EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩

private def s2Step116EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 807],769⟩

private def s2Step116EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805],771⟩

private def s2Step116FrontPair : WindowBank := ⟨s2Step116EntryFOut,s2Step116EntryGOut,s2Step116EntryFvOut,s2Step116EntryGvOut⟩

private def s2Step116FrontSigmaArena : Arena := ⟨s2Step116EntryGvAfter.live∪{815},Finset.union_subset s2Step116EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step116HeadFFresh : List Wire := [846]

private def s2Step116HeadFvFresh : List Wire := [849]

private def s2Step116HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116HeadGFresh : List Wire := [794]

private def s2Step116HeadGvFresh : List Wire := [781]

private def s2Step116FrontPlan : HmrSourceFront := ⟨s2Step116EntryGvAfter,s2Step116FrontPair,(growRow 768 s2Step116EntryFFresh ++ (growRow 769 s2Step116EntryGFresh ++ (growRow 770 s2Step116EntryFvFresh ++ (growRow 771 s2Step116EntryGvFresh ++ [])))),s2Step116FrontSigmaArena,[815],s2Step116HeadGBefore,[792],
  s2Step116HeadFvAfter,s2Step116FrontHead,(growRow 769 s2Step116HeadGFresh ++ (growRow 768 s2Step116HeadFFresh ++ (growRow 771 s2Step116HeadGvFresh ++ (growRow 770 s2Step116HeadFvFresh ++ [])))),s2Step116F4Plan,s2Step116CounterDuring,s2Step116CounterWork,s2Step116ExitGvAfter,s2Step116FrontOut,(shrinkRow 769 s2Step116ExitGExtra ++ (shrinkRow 768 s2Step116ExitFExtra ++ (shrinkRow 770 s2Step116ExitFvExtra ++ (shrinkRow 771 s2Step116ExitGvExtra ++ []))))⟩

private def s2Step116CompletePlan : HmrEarlyStepPlan := ⟨s2Step116FrontPlan,s2Step116EarlyControlArena,s2Step116EarlyControlPlan,s2Step116CompleteMoves⟩

private theorem s2Step116Complete_apart : List.Disjoint (s2Step116CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [815, 792, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step116CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[815, 792, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step116Complete_owned : (s2Step116CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step116EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step116EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116Complete_repack : s2Step116ExitGvAfter.checkRepack s2Step116CompleteMoves=some s2Step116EarlyControlArena := by rfl

private theorem s2Step116EarlyControl_branchOwned : ([792] : List Wire).toFinset⊆s2Step116EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step116EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116EarlyControl_branch : compileHmrBranchRetirement s2Step116EarlyControlSigmaArena 792=some s2Step116EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step116EarlyControl_branchOwned
  · ext q
    simp [s2Step116EarlyControlOutputArena,s2Step116EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step116EarlyControl_classEqualityBorrow : s2Step116EarlyControlPositiveArena.checkBorrow (([815, 806] : List Wire).length-1) s2Step116EarlyControlLog.classWork=some s2Step116EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step116EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step116EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step116EarlyControlEqualityArena,s2Step116EarlyControlPositiveArena,s2Step116EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step116EarlyControl_classEqualityOwned : ([815, 806] : List Wire).toFinset⊆s2Step116EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step116EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116EarlyControl_classEquality : compileHmrEqualityLog s2Step116EarlyControlPositiveArena [815, 806] 0 s2Step116EarlyControlLog.classWork=some (s2Step116EarlyControlEqualityArena,s2Step116EarlyControlLog.classWork,s2Step116EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step116EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step116EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step116EarlyControl_classOwned : ([777, 794, 815] : List Wire).toFinset⊆s2Step116EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step116EarlyControlZeroArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116EarlyControl_positiveBorrow : s2Step116EarlyControlZeroArena.checkBorrow (1) s2Step116EarlyControlLog.positiveWork=some s2Step116EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step116EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step116EarlyControlZeroArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step116EarlyControlPositiveArena,s2Step116EarlyControlZeroArena,s2Step116EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step116EarlyControl_class : compileHmrSourceClassLog s2Step116EarlyControlZeroArena false 777 s2Step116EarlyControlZeroPlan.top 0 815 s2Step116EarlyControlLog.positiveWork s2Step116EarlyControlLog.classWork=some s2Step116EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step116EarlyControlClassPlan s2Step116EarlyControlZeroArena false 777 s2Step116EarlyControlZeroPlan.top 0 815
  constructor
  · decide +kernel
  · exact s2Step116EarlyControl_classOwned
  · exact s2Step116EarlyControl_positiveBorrow
  · exact s2Step116EarlyControl_classEquality

private theorem s2Step116EarlyControl_entryRecordOwned : ([792, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step116EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step116EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116EarlyControl_entrySigmaOwned : ([815, 254] : List Wire).toFinset⊆s2Step116EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step116EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116EarlyControl_fitBorrow : s2Step116EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step116EarlyControlLog.recordFresh=some s2Step116EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step116EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step116EarlyControlFlagArena (fun q => (0≤q ∧ q<885)) rfl
      decide +kernel
    · ext q
      simp [s2Step116EarlyControlFittedArena,s2Step116EarlyControlFlagArena,s2Step116EarlyControlLog,arenaWires]

private theorem s2Step116EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step116EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step116EarlyControlFlagArena (fun q => (0≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step116EarlyControl_fit : compileHmrRecordGrowLog s2Step116EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step116EarlyControlLog.recordFresh=some s2Step116EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step116EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step116EarlyControl_fitBorrow

private theorem s2Step116EarlyControl_flagsBorrow : s2Step116EarlyControlEqualityArena.checkBorrow (6) s2Step116EarlyControlLog.flagWork=some s2Step116EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step116EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step116EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step116EarlyControlFlagArena,s2Step116EarlyControlEqualityArena,s2Step116EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step116EarlyControl_flagsOwned : ([802, 253, 252, 251] : List Wire).toFinset⊆s2Step116EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step116EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116EarlyControl_flags : compileHmrFlagsLog s2Step116EarlyControlClassPlan.equalityArena s2Step116EarlyControlClassPlan.equality.top 253 252 251 s2Step116EarlyControlLog.flagWork=some s2Step116EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step116EarlyControl_flagsOwned⟩
  · exact s2Step116EarlyControl_flagsBorrow

private theorem s2Step116EarlyControl_historyBorrow : s2Step116EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step116EarlyControlLog.recordFresh=some s2Step116EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step116EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step116EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step116EarlyControlHistoryArena,s2Step116EarlyControlArena,s2Step116EarlyControlLog,arenaWires]

private theorem s2Step116EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step116EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step116EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116EarlyControl_history : compileHmrRecordGrowLog s2Step116EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step116EarlyControlLog.recordFresh=some s2Step116EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step116EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step116EarlyControl_historyBorrow

private theorem s2Step116EarlyControl_sigmaOwned : ([254, 815] : List Wire).toFinset⊆s2Step116EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step116EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116EarlyControl_sigmaReleaseOwned : ([815] : List Wire).toFinset⊆s2Step116EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step116EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116EarlyControl_sigmaRelease : s2Step116EarlyControlHistoryArena.release {815} (fun _ => false)=some s2Step116EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step116EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step116EarlyControlSigmaArena,s2Step116EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step116EarlyControl_sigma : compileHmrSigmaDropLog s2Step116EarlyControlHistoryArena false 0 0 254 815 []=some s2Step116EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step116EarlyControl_sigmaOwned⟩
  · exact s2Step116EarlyControl_sigmaRelease

private theorem s2Step116EarlyControl_zeroBorrow : s2Step116EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step116EarlyControlLog.zeroWork=some s2Step116EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step116EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step116EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step116EarlyControlZeroArena,s2Step116EarlyControlArena,s2Step116EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step116EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step116EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step116EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116EarlyControl_zero : compileHmrEqualityLog s2Step116EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step116EarlyControlLog.zeroWork=some (s2Step116EarlyControlZeroArena,s2Step116EarlyControlLog.zeroWork,s2Step116EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step116EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step116EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step116EarlyControl_logged : s2Step116EarlyControlPlan.Logged s2Step116EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 815 254 253 252 251 792 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step116EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step116EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step116EarlyControl_zero
  · exact s2Step116EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step116EarlyControl_flags
  · exact s2Step116EarlyControl_fit
  · exact s2Step116EarlyControl_history
  · exact s2Step116EarlyControl_sigma
  · exact s2Step116EarlyControl_branch

private theorem s2Step116EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step116EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 815 254 253 252 251 792 37 s2Step116EarlyControlLog=some s2Step116EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step116EarlyControlPlan s2Step116EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 815 254 253 252 251 792 37 s2Step116EarlyControl_logged

private def s2Step116EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step116EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩

private def s2Step116EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],769⟩

private def s2Step116EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820],771⟩

private def s2Step116FrontBank : WindowBank := ⟨s2Step116EntryFRow,s2Step116EntryGRow,s2Step116EntryFvRow,s2Step116EntryGvRow⟩

private def s2Step116Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 846, 768]

private def s2Step116Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 807, 794, 769]

private def s2Step116Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 849, 770]

private def s2Step116Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 781, 771]

private theorem s2Step116Counter_apart : Disjoint s2Step116HeadFvAfter.live s2Step116CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step116HeadFvAfter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116Counter_borrowed : s2Step116HeadFvAfter.checkBorrow 4 s2Step116CounterWork=some s2Step116CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step116HeadFvAfter s2Step116CounterDuring s2Step116CounterWork.toFinset s2Step116Counter_bounded s2Step116Counter_apart rfl

private theorem s2Step116Counter_owned : (815::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step116HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step116HeadFvAfter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116Counter_checked : compileHmrCounterStepLog s2Step116HeadFvAfter true 815 [772, 773, 774, 775, 776, 777] s2Step116CounterWork=some s2Step116CounterDuring := by
  have owned : ∀q∈815::[772, 773, 774, 775, 776, 777],q∈s2Step116HeadFvAfter.live := fun q hq => s2Step116Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step116Counter_borrowed

private def s2Step116EntryFAfter : Arena := s2Step116EntryFBefore

private theorem s2Step116EntryBank_incomingDistinct : ([s2Step116EntryFRow,s2Step116EntryGRow,s2Step116EntryFvRow,s2Step116EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116EntryF_Incoming : rowsOwned s2Step116EntryFBefore [s2Step116EntryFRow,s2Step116EntryGRow,s2Step116EntryFvRow,s2Step116EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step116EntryFRow,s2Step116EntryGRow,s2Step116EntryFvRow,s2Step116EntryGvRow] 0 s2Step116EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step116EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step116EntryBank_outgoingOwned : rowsOwned s2Step116EntryGvAfter [s2Step116EntryFOut,s2Step116EntryGOut,s2Step116EntryFvOut,s2Step116EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step116EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step116EntryF_Outgoing : rowsOwned s2Step116EntryGvAfter [s2Step116EntryFOut,s2Step116EntryGOut,s2Step116EntryFvOut,s2Step116EntryGvOut] :=
  hmrRows_owned_drop s2Step116EntryGvAfter [s2Step116EntryFOut,s2Step116EntryGOut,s2Step116EntryFvOut,s2Step116EntryGvOut] 0 s2Step116EntryBank_outgoingOwned

private theorem s2Step116EntryF_distinct : (s2Step116EntryFRow.sign::s2Step116EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116EntryF_owned : (s2Step116EntryFRow.sign::s2Step116EntryFRow.payload).toFinset⊆s2Step116EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step116EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116EntryF_reserved : s2Step116EntryFBefore.reserve s2Step116EntryFFresh.toFinset=some s2Step116EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step116EntryFFresh,arenaWires]
  · norm_num [s2Step116EntryFBefore,s2Step116EntryFFresh,arenaWires]
  · simp only [s2Step116EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step116EntryF_checked : planRowResizeLog s2Step116EntryFBefore s2Step116EntryFRow 212 s2Step116EntryFFresh=
    some (s2Step116EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩,growRow 768 s2Step116EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step116EntryFBefore s2Step116EntryFAfter s2Step116EntryFRow 212 s2Step116EntryFFresh
    s2Step116EntryF_distinct s2Step116EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step116EntryF_reserved
  have rowEq : WindowRow.mk (s2Step116EntryFRow.payload++s2Step116EntryFFresh) s2Step116EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step116EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116EntryFvAfter : Arena := s2Step116EntryGAfter

private def s2Step116EntryFvBefore : Arena := s2Step116EntryGAfter

private theorem s2Step116EntryFv_Incoming : rowsOwned s2Step116EntryFvBefore [s2Step116EntryFvRow,s2Step116EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step116EntryFRow,s2Step116EntryGRow,s2Step116EntryFvRow,s2Step116EntryGvRow] 2 s2Step116EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step116EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step116EntryFv_Outgoing : rowsOwned s2Step116EntryGvAfter [s2Step116EntryFvOut,s2Step116EntryGvOut] :=
  hmrRows_owned_drop s2Step116EntryGvAfter [s2Step116EntryFOut,s2Step116EntryGOut,s2Step116EntryFvOut,s2Step116EntryGvOut] 2 s2Step116EntryBank_outgoingOwned

private theorem s2Step116EntryFv_distinct : (s2Step116EntryFvRow.sign::s2Step116EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116EntryFv_owned : (s2Step116EntryFvRow.sign::s2Step116EntryFvRow.payload).toFinset⊆s2Step116EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step116EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116EntryFv_reserved : s2Step116EntryFvBefore.reserve s2Step116EntryFvFresh.toFinset=some s2Step116EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step116EntryFvFresh,arenaWires]
  · norm_num [s2Step116EntryFvBefore,s2Step116EntryGAfter,s2Step116EntryFvFresh,arenaWires]
  · simp only [s2Step116EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step116EntryFv_checked : planRowResizeLog s2Step116EntryFvBefore s2Step116EntryFvRow 72 s2Step116EntryFvFresh=
    some (s2Step116EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩,growRow 770 s2Step116EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step116EntryFvBefore s2Step116EntryFvAfter s2Step116EntryFvRow 72 s2Step116EntryFvFresh
    s2Step116EntryFv_distinct s2Step116EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step116EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step116EntryFvRow.payload++s2Step116EntryFvFresh) s2Step116EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step116EntryGBefore : Arena := s2Step116EntryFBefore

private theorem s2Step116EntryG_Incoming : rowsOwned s2Step116EntryGBefore [s2Step116EntryGRow,s2Step116EntryFvRow,s2Step116EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step116EntryFRow,s2Step116EntryGRow,s2Step116EntryFvRow,s2Step116EntryGvRow] 1 s2Step116EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step116EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step116EntryG_Outgoing : rowsOwned s2Step116EntryGvAfter [s2Step116EntryGOut,s2Step116EntryFvOut,s2Step116EntryGvOut] :=
  hmrRows_owned_drop s2Step116EntryGvAfter [s2Step116EntryFOut,s2Step116EntryGOut,s2Step116EntryFvOut,s2Step116EntryGvOut] 1 s2Step116EntryBank_outgoingOwned

private theorem s2Step116EntryG_distinct : (s2Step116EntryGRow.sign::s2Step116EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116EntryG_owned : (s2Step116EntryGRow.sign::s2Step116EntryGRow.payload).toFinset⊆s2Step116EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step116EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116EntryG_reserved : s2Step116EntryGBefore.reserve s2Step116EntryGFresh.toFinset=some s2Step116EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step116EntryGFresh,arenaWires]
  · norm_num [s2Step116EntryGBefore,s2Step116EntryFBefore,s2Step116EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step116EntryGAfter,s2Step116EntryGBefore,s2Step116EntryFBefore,s2Step116EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step116EntryG_checked : planRowResizeLog s2Step116EntryGBefore s2Step116EntryGRow 212 s2Step116EntryGFresh=
    some (s2Step116EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 807],769⟩,growRow 769 s2Step116EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step116EntryGBefore s2Step116EntryGAfter s2Step116EntryGRow 212 s2Step116EntryGFresh
    s2Step116EntryG_distinct s2Step116EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step116EntryG_reserved
  have rowEq : WindowRow.mk (s2Step116EntryGRow.payload++s2Step116EntryGFresh) s2Step116EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 807],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step116EntryGvBefore : Arena := s2Step116EntryGAfter

private theorem s2Step116EntryGv_Incoming : rowsOwned s2Step116EntryGvBefore [s2Step116EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step116EntryFRow,s2Step116EntryGRow,s2Step116EntryFvRow,s2Step116EntryGvRow] 3 s2Step116EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step116EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step116EntryGv_Outgoing : rowsOwned s2Step116EntryGvAfter [s2Step116EntryGvOut] :=
  hmrRows_owned_drop s2Step116EntryGvAfter [s2Step116EntryFOut,s2Step116EntryGOut,s2Step116EntryFvOut,s2Step116EntryGvOut] 3 s2Step116EntryBank_outgoingOwned

private theorem s2Step116EntryGv_distinct : (s2Step116EntryGvRow.sign::s2Step116EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116EntryGv_owned : (s2Step116EntryGvRow.sign::s2Step116EntryGvRow.payload).toFinset⊆s2Step116EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step116EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116EntryGv_reserved : s2Step116EntryGvBefore.reserve s2Step116EntryGvFresh.toFinset=some s2Step116EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step116EntryGvFresh,arenaWires]
  · norm_num [s2Step116EntryGvBefore,s2Step116EntryGAfter,s2Step116EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step116EntryGvAfter,s2Step116EntryGvBefore,s2Step116EntryGAfter,s2Step116EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step116EntryGv_checked : planRowResizeLog s2Step116EntryGvBefore s2Step116EntryGvRow 72 s2Step116EntryGvFresh=
    some (s2Step116EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805],771⟩,growRow 771 s2Step116EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step116EntryGvBefore s2Step116EntryGvAfter s2Step116EntryGvRow 72 s2Step116EntryGvFresh
    s2Step116EntryGv_distinct s2Step116EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step116EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step116EntryGvRow.payload++s2Step116EntryGvFresh) s2Step116EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step116EntryBank_rows : planWindowRowsLog s2Step116EntryFBefore [(s2Step116EntryFRow,212),(s2Step116EntryGRow,212),(s2Step116EntryFvRow,72),(s2Step116EntryGvRow,72)] [s2Step116EntryFFresh,s2Step116EntryGFresh,s2Step116EntryFvFresh,s2Step116EntryGvFresh]=
    some (s2Step116EntryGvAfter,[s2Step116EntryFOut,s2Step116EntryGOut,s2Step116EntryFvOut,s2Step116EntryGvOut],(growRow 768 s2Step116EntryFFresh ++ (growRow 769 s2Step116EntryGFresh ++ (growRow 770 s2Step116EntryFvFresh ++ (growRow 771 s2Step116EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step116EntryGvAfter [] []=some (s2Step116EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step116EntryGvBefore s2Step116EntryGvAfter s2Step116EntryGvAfter
    s2Step116EntryGvRow s2Step116EntryGvOut 72 s2Step116EntryGvFresh [] [] []
    (growRow 771 s2Step116EntryGvFresh) ([]) s2Step116EntryGv_Incoming s2Step116EntryGv_checked h4 s2Step116EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step116EntryFvBefore s2Step116EntryFvAfter s2Step116EntryGvAfter
    s2Step116EntryFvRow s2Step116EntryFvOut 72 s2Step116EntryFvFresh [(s2Step116EntryGvRow,72)] [s2Step116EntryGvFresh] [s2Step116EntryGvOut]
    (growRow 770 s2Step116EntryFvFresh) ((growRow 771 s2Step116EntryGvFresh ++ [])) s2Step116EntryFv_Incoming s2Step116EntryFv_checked h3 s2Step116EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step116EntryGBefore s2Step116EntryGAfter s2Step116EntryGvAfter
    s2Step116EntryGRow s2Step116EntryGOut 212 s2Step116EntryGFresh [(s2Step116EntryFvRow,72),(s2Step116EntryGvRow,72)] [s2Step116EntryFvFresh,s2Step116EntryGvFresh] [s2Step116EntryFvOut,s2Step116EntryGvOut]
    (growRow 769 s2Step116EntryGFresh) ((growRow 770 s2Step116EntryFvFresh ++ (growRow 771 s2Step116EntryGvFresh ++ []))) s2Step116EntryG_Incoming s2Step116EntryG_checked h2 s2Step116EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step116EntryFBefore s2Step116EntryFAfter s2Step116EntryGvAfter
    s2Step116EntryFRow s2Step116EntryFOut 212 s2Step116EntryFFresh [(s2Step116EntryGRow,212),(s2Step116EntryFvRow,72),(s2Step116EntryGvRow,72)] [s2Step116EntryGFresh,s2Step116EntryFvFresh,s2Step116EntryGvFresh] [s2Step116EntryGOut,s2Step116EntryFvOut,s2Step116EntryGvOut]
    (growRow 768 s2Step116EntryFFresh) ((growRow 769 s2Step116EntryGFresh ++ (growRow 770 s2Step116EntryFvFresh ++ (growRow 771 s2Step116EntryGvFresh ++ [])))) s2Step116EntryF_Incoming s2Step116EntryF_checked h1 s2Step116EntryF_Outgoing
  exact h0

private theorem s2Step116EntryBank_checked : compileHmrBankResizeLog .entry s2Step116EntryFBefore ⟨s2Step116EntryFRow,s2Step116EntryGRow,s2Step116EntryFvRow,s2Step116EntryGvRow⟩ ⟨212,212,72,72⟩ [s2Step116EntryFFresh,s2Step116EntryGFresh,s2Step116EntryFvFresh,s2Step116EntryGvFresh]=
    some (s2Step116EntryGvAfter,⟨s2Step116EntryFOut,s2Step116EntryGOut,s2Step116EntryFvOut,s2Step116EntryGvOut⟩,(growRow 768 s2Step116EntryFFresh ++ (growRow 769 s2Step116EntryGFresh ++ (growRow 770 s2Step116EntryFvFresh ++ (growRow 771 s2Step116EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step116EntryBank_rows]
  rfl

private def s2Step116ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116ExitFBefore : Arena := s2Step116ExitGAfter

private def s2Step116ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 846],768⟩

private def s2Step116ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 849],770⟩

private def s2Step116ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 807, 794],769⟩

private def s2Step116ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 781],771⟩

private theorem s2Step116ExitBank_incomingDistinct : ([s2Step116ExitGRow,s2Step116ExitFRow,s2Step116ExitFvRow,s2Step116ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116ExitF_Incoming : rowsOwned s2Step116ExitFBefore [s2Step116ExitFRow,s2Step116ExitFvRow,s2Step116ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step116ExitGRow,s2Step116ExitFRow,s2Step116ExitFvRow,s2Step116ExitGvRow] 1 s2Step116ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step116ExitFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step116ExitBank_outgoingOwned : rowsOwned s2Step116ExitGvAfter [s2Step116ExitGOut,s2Step116ExitFOut,s2Step116ExitFvOut,s2Step116ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step116ExitGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step116ExitF_Outgoing : rowsOwned s2Step116ExitGvAfter [s2Step116ExitFOut,s2Step116ExitFvOut,s2Step116ExitGvOut] :=
  hmrRows_owned_drop s2Step116ExitGvAfter [s2Step116ExitGOut,s2Step116ExitFOut,s2Step116ExitFvOut,s2Step116ExitGvOut] 1 s2Step116ExitBank_outgoingOwned

private theorem s2Step116ExitF_distinct : (s2Step116ExitFRow.sign::s2Step116ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116ExitF_owned : (s2Step116ExitFRow.sign::s2Step116ExitFRow.payload).toFinset⊆s2Step116ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step116ExitFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116ExitF_retired : s2Step116ExitFBefore.retireSet s2Step116ExitFExtra.toFinset=s2Step116ExitFAfter := by
  unfold Arena.retireSet s2Step116ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step116ExitFBefore,s2Step116ExitGAfter,s2Step116ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step116ExitF_checked : planRowResizeLog s2Step116ExitFBefore s2Step116ExitFRow 212 []=
    some (s2Step116ExitFAfter,s2Step116ExitFOut,shrinkRow 768 s2Step116ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step116ExitFBefore s2Step116ExitFRow 212 s2Step116ExitF_distinct s2Step116ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step116ExitFRow.payload.take 212) s2Step116ExitFRow.sign=s2Step116ExitFOut := by decide +kernel
  have hi : s2Step116ExitFRow.payload.drop 212=s2Step116ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step116ExitF_retired] at result
  exact result

private def s2Step116ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116ExitFvBefore : Arena := s2Step116ExitFAfter

private theorem s2Step116ExitFv_Incoming : rowsOwned s2Step116ExitFvBefore [s2Step116ExitFvRow,s2Step116ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step116ExitGRow,s2Step116ExitFRow,s2Step116ExitFvRow,s2Step116ExitGvRow] 2 s2Step116ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step116ExitFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step116ExitFv_Outgoing : rowsOwned s2Step116ExitGvAfter [s2Step116ExitFvOut,s2Step116ExitGvOut] :=
  hmrRows_owned_drop s2Step116ExitGvAfter [s2Step116ExitGOut,s2Step116ExitFOut,s2Step116ExitFvOut,s2Step116ExitGvOut] 2 s2Step116ExitBank_outgoingOwned

private theorem s2Step116ExitFv_distinct : (s2Step116ExitFvRow.sign::s2Step116ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116ExitFv_owned : (s2Step116ExitFvRow.sign::s2Step116ExitFvRow.payload).toFinset⊆s2Step116ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step116ExitFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116ExitFv_retired : s2Step116ExitFvBefore.retireSet s2Step116ExitFvExtra.toFinset=s2Step116ExitFvAfter := by
  unfold Arena.retireSet s2Step116ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step116ExitFvBefore,s2Step116ExitFAfter,s2Step116ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step116ExitFv_checked : planRowResizeLog s2Step116ExitFvBefore s2Step116ExitFvRow 72 []=
    some (s2Step116ExitFvAfter,s2Step116ExitFvOut,shrinkRow 770 s2Step116ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step116ExitFvBefore s2Step116ExitFvRow 72 s2Step116ExitFv_distinct s2Step116ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step116ExitFvRow.payload.take 72) s2Step116ExitFvRow.sign=s2Step116ExitFvOut := by decide +kernel
  have hi : s2Step116ExitFvRow.payload.drop 72=s2Step116ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step116ExitFv_retired] at result
  exact result

private def s2Step116ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step116ExitG_Incoming : rowsOwned s2Step116ExitGBefore [s2Step116ExitGRow,s2Step116ExitFRow,s2Step116ExitFvRow,s2Step116ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step116ExitGRow,s2Step116ExitFRow,s2Step116ExitFvRow,s2Step116ExitGvRow] 0 s2Step116ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step116ExitGBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step116ExitG_Outgoing : rowsOwned s2Step116ExitGvAfter [s2Step116ExitGOut,s2Step116ExitFOut,s2Step116ExitFvOut,s2Step116ExitGvOut] :=
  hmrRows_owned_drop s2Step116ExitGvAfter [s2Step116ExitGOut,s2Step116ExitFOut,s2Step116ExitFvOut,s2Step116ExitGvOut] 0 s2Step116ExitBank_outgoingOwned

private theorem s2Step116ExitG_distinct : (s2Step116ExitGRow.sign::s2Step116ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116ExitG_owned : (s2Step116ExitGRow.sign::s2Step116ExitGRow.payload).toFinset⊆s2Step116ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step116ExitGBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116ExitG_retired : s2Step116ExitGBefore.retireSet s2Step116ExitGExtra.toFinset=s2Step116ExitGAfter := by
  unfold Arena.retireSet s2Step116ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step116ExitGBefore,s2Step116ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step116ExitG_checked : planRowResizeLog s2Step116ExitGBefore s2Step116ExitGRow 211 []=
    some (s2Step116ExitGAfter,s2Step116ExitGOut,shrinkRow 769 s2Step116ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step116ExitGBefore s2Step116ExitGRow 211 s2Step116ExitG_distinct s2Step116ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step116ExitGRow.payload.take 211) s2Step116ExitGRow.sign=s2Step116ExitGOut := by decide +kernel
  have hi : s2Step116ExitGRow.payload.drop 211=s2Step116ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step116ExitG_retired] at result
  exact result

private def s2Step116ExitGvBefore : Arena := s2Step116ExitFvAfter

private theorem s2Step116ExitGv_Incoming : rowsOwned s2Step116ExitGvBefore [s2Step116ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step116ExitGRow,s2Step116ExitFRow,s2Step116ExitFvRow,s2Step116ExitGvRow] 3 s2Step116ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step116ExitGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step116ExitGv_Outgoing : rowsOwned s2Step116ExitGvAfter [s2Step116ExitGvOut] :=
  hmrRows_owned_drop s2Step116ExitGvAfter [s2Step116ExitGOut,s2Step116ExitFOut,s2Step116ExitFvOut,s2Step116ExitGvOut] 3 s2Step116ExitBank_outgoingOwned

private theorem s2Step116ExitGv_distinct : (s2Step116ExitGvRow.sign::s2Step116ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116ExitGv_owned : (s2Step116ExitGvRow.sign::s2Step116ExitGvRow.payload).toFinset⊆s2Step116ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step116ExitGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116ExitGv_retired : s2Step116ExitGvBefore.retireSet s2Step116ExitGvExtra.toFinset=s2Step116ExitGvAfter := by
  unfold Arena.retireSet s2Step116ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step116ExitGvBefore,s2Step116ExitFvAfter,s2Step116ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step116ExitGv_checked : planRowResizeLog s2Step116ExitGvBefore s2Step116ExitGvRow 72 []=
    some (s2Step116ExitGvAfter,s2Step116ExitGvOut,shrinkRow 771 s2Step116ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step116ExitGvBefore s2Step116ExitGvRow 72 s2Step116ExitGv_distinct s2Step116ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step116ExitGvRow.payload.take 72) s2Step116ExitGvRow.sign=s2Step116ExitGvOut := by decide +kernel
  have hi : s2Step116ExitGvRow.payload.drop 72=s2Step116ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step116ExitGv_retired] at result
  exact result

private theorem s2Step116ExitBank_rows : planWindowRowsLog s2Step116ExitGBefore [(s2Step116ExitGRow,211),(s2Step116ExitFRow,212),(s2Step116ExitFvRow,72),(s2Step116ExitGvRow,72)] [[],[],[],[]]=
    some (s2Step116ExitGvAfter,[s2Step116ExitGOut,s2Step116ExitFOut,s2Step116ExitFvOut,s2Step116ExitGvOut],(shrinkRow 769 s2Step116ExitGExtra ++ (shrinkRow 768 s2Step116ExitFExtra ++ (shrinkRow 770 s2Step116ExitFvExtra ++ (shrinkRow 771 s2Step116ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step116ExitGvAfter [] []=some (s2Step116ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step116ExitGvBefore s2Step116ExitGvAfter s2Step116ExitGvAfter
    s2Step116ExitGvRow s2Step116ExitGvOut 72 [] [] [] []
    (shrinkRow 771 s2Step116ExitGvExtra) ([]) s2Step116ExitGv_Incoming s2Step116ExitGv_checked h4 s2Step116ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step116ExitFvBefore s2Step116ExitFvAfter s2Step116ExitGvAfter
    s2Step116ExitFvRow s2Step116ExitFvOut 72 [] [(s2Step116ExitGvRow,72)] [[]] [s2Step116ExitGvOut]
    (shrinkRow 770 s2Step116ExitFvExtra) ((shrinkRow 771 s2Step116ExitGvExtra ++ [])) s2Step116ExitFv_Incoming s2Step116ExitFv_checked h3 s2Step116ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step116ExitFBefore s2Step116ExitFAfter s2Step116ExitGvAfter
    s2Step116ExitFRow s2Step116ExitFOut 212 [] [(s2Step116ExitFvRow,72),(s2Step116ExitGvRow,72)] [[],[]] [s2Step116ExitFvOut,s2Step116ExitGvOut]
    (shrinkRow 768 s2Step116ExitFExtra) ((shrinkRow 770 s2Step116ExitFvExtra ++ (shrinkRow 771 s2Step116ExitGvExtra ++ []))) s2Step116ExitF_Incoming s2Step116ExitF_checked h2 s2Step116ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step116ExitGBefore s2Step116ExitGAfter s2Step116ExitGvAfter
    s2Step116ExitGRow s2Step116ExitGOut 211 [] [(s2Step116ExitFRow,212),(s2Step116ExitFvRow,72),(s2Step116ExitGvRow,72)] [[],[],[]] [s2Step116ExitFOut,s2Step116ExitFvOut,s2Step116ExitGvOut]
    (shrinkRow 769 s2Step116ExitGExtra) ((shrinkRow 768 s2Step116ExitFExtra ++ (shrinkRow 770 s2Step116ExitFvExtra ++ (shrinkRow 771 s2Step116ExitGvExtra ++ [])))) s2Step116ExitG_Incoming s2Step116ExitG_checked h1 s2Step116ExitG_Outgoing
  exact h0

private theorem s2Step116ExitBank_checked : compileHmrBankResizeLog .exit s2Step116ExitGBefore ⟨s2Step116ExitFRow,s2Step116ExitGRow,s2Step116ExitFvRow,s2Step116ExitGvRow⟩ ⟨212,211,72,72⟩ [[],[],[],[]]=
    some (s2Step116ExitGvAfter,⟨s2Step116ExitFOut,s2Step116ExitGOut,s2Step116ExitFvOut,s2Step116ExitGvOut⟩,(shrinkRow 769 s2Step116ExitGExtra ++ (shrinkRow 768 s2Step116ExitFExtra ++ (shrinkRow 770 s2Step116ExitFvExtra ++ (shrinkRow 771 s2Step116ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step116ExitBank_rows]
  rfl

private theorem s2Step116Add0_apart : Disjoint s2Step116Add0Arena.live s2Step116Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step116Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116Add0_card : s2Step116Add0Arena.live.card=879 := by
  decide +kernel

private theorem s2Step116Add0_borrowed : s2Step116Add0Arena.checkBorrow (hmrHybridCount s2Step116Add0Arena s2Step116Add0B.length) s2Step116Add0Work=some s2Step116Add0During := by
  have len : s2Step116Add0Work.length=hmrHybridCount s2Step116Add0Arena s2Step116Add0B.length := by
    rw [hmrHybridCount,s2Step116Add0_card]
    decide +kernel
  have nd : s2Step116Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step116Add0Arena s2Step116Add0During s2Step116Add0Work.toFinset s2Step116Add0_bounded s2Step116Add0_apart rfl

private theorem s2Step116Add0_distinct : (806::792::802::(s2Step116Add0A++s2Step116Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116Add0_owned : (806::792::802::(s2Step116Add0A++s2Step116Add0B)).toFinset⊆s2Step116Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step116Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116Add0_checked : compileHmrHybridCinLog s2Step116Add0Arena 792 806 802 s2Step116Add0A s2Step116Add0B s2Step116Add0Work=some s2Step116Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step116Add0Arena s2Step116Add0During 792 806 802 s2Step116Add0A s2Step116Add0B s2Step116Add0Work
    (by decide +kernel) (by decide +kernel) s2Step116Add0_distinct
    (fun q hq => s2Step116Add0_owned (List.mem_toFinset.mpr hq)) s2Step116Add0_borrowed

private theorem s2Step116Add1_apart : Disjoint s2Step116Add1Arena.live s2Step116Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step116Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116Add1_card : s2Step116Add1Arena.live.card=879 := by
  decide +kernel

private theorem s2Step116Add1_borrowed : s2Step116Add1Arena.checkBorrow (hmrHybridCount s2Step116Add1Arena s2Step116Add1B.length) s2Step116Add1Work=some s2Step116Add1During := by
  have len : s2Step116Add1Work.length=hmrHybridCount s2Step116Add1Arena s2Step116Add1B.length := by
    rw [hmrHybridCount,s2Step116Add1_card]
    decide +kernel
  have nd : s2Step116Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step116Add1Arena s2Step116Add1During s2Step116Add1Work.toFinset s2Step116Add1_bounded s2Step116Add1_apart rfl

private theorem s2Step116Add1_distinct : (806::792::802::(s2Step116Add1A++s2Step116Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116Add1_owned : (806::792::802::(s2Step116Add1A++s2Step116Add1B)).toFinset⊆s2Step116Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step116Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116Add1_checked : compileHmrHybridCinLog s2Step116Add1Arena 792 806 802 s2Step116Add1A s2Step116Add1B s2Step116Add1Work=some s2Step116Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step116Add1Arena s2Step116Add1During 792 806 802 s2Step116Add1A s2Step116Add1B s2Step116Add1Work
    (by decide +kernel) (by decide +kernel) s2Step116Add1_distinct
    (fun q hq => s2Step116Add1_owned (List.mem_toFinset.mpr hq)) s2Step116Add1_borrowed

private theorem s2Step116F4_apart : Disjoint (s2Step116Add0A++s2Step116Add0B).toFinset (s2Step116Add1A++s2Step116Add1B).toFinset := by
  have nd : ((s2Step116Add0A++s2Step116Add0B)++(s2Step116Add1A++s2Step116Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step116F4_carry : s2Step116F4FlagArena.checkBorrow 1 [802]=some s2Step116Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step116F4FlagArena,s2Step116HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step116F4FlagArena,s2Step116HeadFvAfter,s2Step116Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step116F4_distinct : (815::792::806::802::((s2Step116Add0A++s2Step116Add1A)++(s2Step116Add0B++s2Step116Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116F4_flag : s2Step116HeadFvAfter.checkBorrow 1 [806]=some s2Step116F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step116HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step116F4_owned : (815::792::((s2Step116Add0A++s2Step116Add1A)++(s2Step116Add0B++s2Step116Add1B))).toFinset⊆s2Step116HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step116HeadFvAfter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116F4_checked : compileHmrHybridF4Log s2Step116HeadFvAfter 815 792 s2Step116Add0A s2Step116Add0B s2Step116Add1A s2Step116Add1B [806] [802] s2Step116Add0Work s2Step116Add1Work=some s2Step116F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step116HeadFvAfter s2Step116F4FlagArena s2Step116Add0Arena s2Step116Add0During s2Step116Add1During 815 792
    s2Step116Add0A s2Step116Add0B s2Step116Add1A s2Step116Add1B [806] [802] s2Step116Add0Work s2Step116Add1Work
    (fun q hq => s2Step116F4_owned (List.mem_toFinset.mpr hq)) s2Step116F4_flag s2Step116F4_carry
    s2Step116F4_distinct s2Step116F4_apart s2Step116Add0_checked s2Step116Add1_checked

private theorem s2Step116Front_branch : s2Step116FrontSigmaArena.checkBorrow 1 [792]=some s2Step116HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step116FrontSigmaArena,s2Step116EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step116FrontSigmaArena,s2Step116EntryGvAfter,s2Step116HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step116Front_entry : HmrFrontEntryValid s2Step116EntryFBefore s2Step116FrontBank 212 72 ⟨212,211,72,72⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step116FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step116EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step116EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step116FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step116Front_sigma : s2Step116EntryGvAfter.checkBorrow 1 [815]=some s2Step116FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step116EntryGvAfter,arenaWires]
  · rfl

private def s2Step116HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116HeadFBefore : Arena := s2Step116HeadGAfter

private def s2Step116HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step116HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩

private def s2Step116HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 807],769⟩

private def s2Step116HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805],771⟩

private theorem s2Step116HeadBank_incomingDistinct : ([s2Step116HeadGRow,s2Step116HeadFRow,s2Step116HeadGvRow,s2Step116HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116HeadF_Incoming : rowsOwned s2Step116HeadFBefore [s2Step116HeadFRow,s2Step116HeadGvRow,s2Step116HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step116HeadGRow,s2Step116HeadFRow,s2Step116HeadGvRow,s2Step116HeadFvRow] 1 s2Step116HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step116HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step116HeadBank_outgoingOwned : rowsOwned s2Step116HeadFvAfter [s2Step116HeadGOut,s2Step116HeadFOut,s2Step116HeadGvOut,s2Step116HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step116HeadFvAfter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step116HeadF_Outgoing : rowsOwned s2Step116HeadFvAfter [s2Step116HeadFOut,s2Step116HeadGvOut,s2Step116HeadFvOut] :=
  hmrRows_owned_drop s2Step116HeadFvAfter [s2Step116HeadGOut,s2Step116HeadFOut,s2Step116HeadGvOut,s2Step116HeadFvOut] 1 s2Step116HeadBank_outgoingOwned

private theorem s2Step116HeadF_distinct : (s2Step116HeadFRow.sign::s2Step116HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116HeadF_owned : (s2Step116HeadFRow.sign::s2Step116HeadFRow.payload).toFinset⊆s2Step116HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step116HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116HeadF_reserved : s2Step116HeadFBefore.reserve s2Step116HeadFFresh.toFinset=some s2Step116HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step116HeadFFresh,arenaWires]
  · norm_num [s2Step116HeadFBefore,s2Step116HeadGAfter,s2Step116HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step116HeadFAfter,s2Step116HeadFBefore,s2Step116HeadGAfter,s2Step116HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step116HeadF_checked : planRowResizeLog s2Step116HeadFBefore s2Step116HeadFRow 213 s2Step116HeadFFresh=
    some (s2Step116HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 846],768⟩,growRow 768 s2Step116HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step116HeadFBefore s2Step116HeadFAfter s2Step116HeadFRow 213 s2Step116HeadFFresh
    s2Step116HeadF_distinct s2Step116HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step116HeadF_reserved
  have rowEq : WindowRow.mk (s2Step116HeadFRow.payload++s2Step116HeadFFresh) s2Step116HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 846],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step116HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step116HeadFvBefore : Arena := s2Step116HeadGvAfter

private theorem s2Step116HeadFv_Incoming : rowsOwned s2Step116HeadFvBefore [s2Step116HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step116HeadGRow,s2Step116HeadFRow,s2Step116HeadGvRow,s2Step116HeadFvRow] 3 s2Step116HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step116HeadFvBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step116HeadFv_Outgoing : rowsOwned s2Step116HeadFvAfter [s2Step116HeadFvOut] :=
  hmrRows_owned_drop s2Step116HeadFvAfter [s2Step116HeadGOut,s2Step116HeadFOut,s2Step116HeadGvOut,s2Step116HeadFvOut] 3 s2Step116HeadBank_outgoingOwned

private theorem s2Step116HeadFv_distinct : (s2Step116HeadFvRow.sign::s2Step116HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116HeadFv_owned : (s2Step116HeadFvRow.sign::s2Step116HeadFvRow.payload).toFinset⊆s2Step116HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step116HeadFvBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116HeadFv_reserved : s2Step116HeadFvBefore.reserve s2Step116HeadFvFresh.toFinset=some s2Step116HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step116HeadFvFresh,arenaWires]
  · norm_num [s2Step116HeadFvBefore,s2Step116HeadGvAfter,s2Step116HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step116HeadFvAfter,s2Step116HeadFvBefore,s2Step116HeadGvAfter,s2Step116HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step116HeadFv_checked : planRowResizeLog s2Step116HeadFvBefore s2Step116HeadFvRow 73 s2Step116HeadFvFresh=
    some (s2Step116HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 849],770⟩,growRow 770 s2Step116HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step116HeadFvBefore s2Step116HeadFvAfter s2Step116HeadFvRow 73 s2Step116HeadFvFresh
    s2Step116HeadFv_distinct s2Step116HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step116HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step116HeadFvRow.payload++s2Step116HeadFvFresh) s2Step116HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 849],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step116HeadG_Incoming : rowsOwned s2Step116HeadGBefore [s2Step116HeadGRow,s2Step116HeadFRow,s2Step116HeadGvRow,s2Step116HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step116HeadGRow,s2Step116HeadFRow,s2Step116HeadGvRow,s2Step116HeadFvRow] 0 s2Step116HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step116HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step116HeadG_Outgoing : rowsOwned s2Step116HeadFvAfter [s2Step116HeadGOut,s2Step116HeadFOut,s2Step116HeadGvOut,s2Step116HeadFvOut] :=
  hmrRows_owned_drop s2Step116HeadFvAfter [s2Step116HeadGOut,s2Step116HeadFOut,s2Step116HeadGvOut,s2Step116HeadFvOut] 0 s2Step116HeadBank_outgoingOwned

private theorem s2Step116HeadG_distinct : (s2Step116HeadGRow.sign::s2Step116HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116HeadG_owned : (s2Step116HeadGRow.sign::s2Step116HeadGRow.payload).toFinset⊆s2Step116HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step116HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116HeadG_reserved : s2Step116HeadGBefore.reserve s2Step116HeadGFresh.toFinset=some s2Step116HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step116HeadGFresh,arenaWires]
  · norm_num [s2Step116HeadGBefore,s2Step116HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step116HeadGAfter,s2Step116HeadGBefore,s2Step116HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step116HeadG_checked : planRowResizeLog s2Step116HeadGBefore s2Step116HeadGRow 213 s2Step116HeadGFresh=
    some (s2Step116HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 807, 794],769⟩,growRow 769 s2Step116HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step116HeadGBefore s2Step116HeadGAfter s2Step116HeadGRow 213 s2Step116HeadGFresh
    s2Step116HeadG_distinct s2Step116HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step116HeadG_reserved
  have rowEq : WindowRow.mk (s2Step116HeadGRow.payload++s2Step116HeadGFresh) s2Step116HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 807, 794],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step116HeadGvBefore : Arena := s2Step116HeadFAfter

private theorem s2Step116HeadGv_Incoming : rowsOwned s2Step116HeadGvBefore [s2Step116HeadGvRow,s2Step116HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step116HeadGRow,s2Step116HeadFRow,s2Step116HeadGvRow,s2Step116HeadFvRow] 2 s2Step116HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step116HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step116HeadGv_Outgoing : rowsOwned s2Step116HeadFvAfter [s2Step116HeadGvOut,s2Step116HeadFvOut] :=
  hmrRows_owned_drop s2Step116HeadFvAfter [s2Step116HeadGOut,s2Step116HeadFOut,s2Step116HeadGvOut,s2Step116HeadFvOut] 2 s2Step116HeadBank_outgoingOwned

private theorem s2Step116HeadGv_distinct : (s2Step116HeadGvRow.sign::s2Step116HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step116HeadGv_owned : (s2Step116HeadGvRow.sign::s2Step116HeadGvRow.payload).toFinset⊆s2Step116HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step116HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step116HeadGv_reserved : s2Step116HeadGvBefore.reserve s2Step116HeadGvFresh.toFinset=some s2Step116HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step116HeadGvFresh,arenaWires]
  · norm_num [s2Step116HeadGvBefore,s2Step116HeadFAfter,s2Step116HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step116HeadGvAfter,s2Step116HeadGvBefore,s2Step116HeadFAfter,s2Step116HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step116HeadGv_checked : planRowResizeLog s2Step116HeadGvBefore s2Step116HeadGvRow 73 s2Step116HeadGvFresh=
    some (s2Step116HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 781],771⟩,growRow 771 s2Step116HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step116HeadGvBefore s2Step116HeadGvAfter s2Step116HeadGvRow 73 s2Step116HeadGvFresh
    s2Step116HeadGv_distinct s2Step116HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step116HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step116HeadGvRow.payload++s2Step116HeadGvFresh) s2Step116HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 781],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step116HeadBank_rows : planWindowRowsLog s2Step116HeadGBefore [(s2Step116HeadGRow,213),(s2Step116HeadFRow,213),(s2Step116HeadGvRow,73),(s2Step116HeadFvRow,73)] [s2Step116HeadGFresh,s2Step116HeadFFresh,s2Step116HeadGvFresh,s2Step116HeadFvFresh]=
    some (s2Step116HeadFvAfter,[s2Step116HeadGOut,s2Step116HeadFOut,s2Step116HeadGvOut,s2Step116HeadFvOut],(growRow 769 s2Step116HeadGFresh ++ (growRow 768 s2Step116HeadFFresh ++ (growRow 771 s2Step116HeadGvFresh ++ (growRow 770 s2Step116HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step116HeadFvAfter [] []=some (s2Step116HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step116HeadFvBefore s2Step116HeadFvAfter s2Step116HeadFvAfter
    s2Step116HeadFvRow s2Step116HeadFvOut 73 s2Step116HeadFvFresh [] [] []
    (growRow 770 s2Step116HeadFvFresh) ([]) s2Step116HeadFv_Incoming s2Step116HeadFv_checked h4 s2Step116HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step116HeadGvBefore s2Step116HeadGvAfter s2Step116HeadFvAfter
    s2Step116HeadGvRow s2Step116HeadGvOut 73 s2Step116HeadGvFresh [(s2Step116HeadFvRow,73)] [s2Step116HeadFvFresh] [s2Step116HeadFvOut]
    (growRow 771 s2Step116HeadGvFresh) ((growRow 770 s2Step116HeadFvFresh ++ [])) s2Step116HeadGv_Incoming s2Step116HeadGv_checked h3 s2Step116HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step116HeadFBefore s2Step116HeadFAfter s2Step116HeadFvAfter
    s2Step116HeadFRow s2Step116HeadFOut 213 s2Step116HeadFFresh [(s2Step116HeadGvRow,73),(s2Step116HeadFvRow,73)] [s2Step116HeadGvFresh,s2Step116HeadFvFresh] [s2Step116HeadGvOut,s2Step116HeadFvOut]
    (growRow 768 s2Step116HeadFFresh) ((growRow 771 s2Step116HeadGvFresh ++ (growRow 770 s2Step116HeadFvFresh ++ []))) s2Step116HeadF_Incoming s2Step116HeadF_checked h2 s2Step116HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step116HeadGBefore s2Step116HeadGAfter s2Step116HeadFvAfter
    s2Step116HeadGRow s2Step116HeadGOut 213 s2Step116HeadGFresh [(s2Step116HeadFRow,213),(s2Step116HeadGvRow,73),(s2Step116HeadFvRow,73)] [s2Step116HeadFFresh,s2Step116HeadGvFresh,s2Step116HeadFvFresh] [s2Step116HeadFOut,s2Step116HeadGvOut,s2Step116HeadFvOut]
    (growRow 769 s2Step116HeadGFresh) ((growRow 768 s2Step116HeadFFresh ++ (growRow 771 s2Step116HeadGvFresh ++ (growRow 770 s2Step116HeadFvFresh ++ [])))) s2Step116HeadG_Incoming s2Step116HeadG_checked h1 s2Step116HeadG_Outgoing
  exact h0

private theorem s2Step116HeadBank_checked : compileHmrBankResizeLog .headroom s2Step116HeadGBefore ⟨s2Step116HeadFRow,s2Step116HeadGRow,s2Step116HeadFvRow,s2Step116HeadGvRow⟩ ⟨213,213,73,73⟩ [s2Step116HeadGFresh,s2Step116HeadFFresh,s2Step116HeadGvFresh,s2Step116HeadFvFresh]=
    some (s2Step116HeadFvAfter,⟨s2Step116HeadFOut,s2Step116HeadGOut,s2Step116HeadFvOut,s2Step116HeadGvOut⟩,(growRow 769 s2Step116HeadGFresh ++ (growRow 768 s2Step116HeadFFresh ++ (growRow 771 s2Step116HeadGvFresh ++ (growRow 770 s2Step116HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step116HeadBank_rows]
  rfl

private theorem s2Step116Front_checked : compileHmrSourceFrontLog s2Step116EntryFBefore s2Step116FrontBank 212 72 ⟨212,211,72,72⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step116FrontLog=some s2Step116FrontPlan := by
  have pairEq : s2Step116FrontPair=⟨s2Step116HeadFRow,s2Step116HeadGRow,s2Step116HeadFvRow,s2Step116HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step116FrontHead=⟨s2Step116ExitFRow,s2Step116ExitGRow,s2Step116ExitFvRow,s2Step116ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step116Add0A=s2Step116FrontHead.f.wires := by decide +kernel
  have gEq : s2Step116Add0B=s2Step116FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step116Add1A=s2Step116FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step116Add1B=s2Step116FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step116EntryFBefore s2Step116FrontBank 212 72 ⟨212,211,72,72⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step116FrontLog s2Step116FrontPlan
  · exact s2Step116Front_entry
  · exact s2Step116EntryBank_checked
  · exact s2Step116Front_sigma
  · rfl
  · exact s2Step116Front_branch
  · rfl
  · simpa only [s2Step116FrontPlan,pairEq] using s2Step116HeadBank_checked
  · simpa only [s2Step116FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step116F4_checked
  · exact s2Step116Counter_checked
  · rfl
  · simpa only [s2Step116FrontPlan,headEq] using s2Step116ExitBank_checked

private theorem s2Step116Complete_explicit_checked : compileHmrEarlyStepLog s2Step116EntryFBefore s2Step116FrontBank 212 72 ⟨212,211,72,72⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step116CompleteLog=some s2Step116CompletePlan := by
  let Q := s2Step116EarlyControlPlan
  have hq := s2Step116EarlyControl_plan_checked
  have fv1 : s2Step116CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step116CompleteOut.fv.payload[2]?.getD s2Step116CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step116CompleteOut.fv.payload[3]?.getD s2Step116CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step116CompleteOut.fv.payload[4]?.getD s2Step116CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step116EntryFBefore s2Step116EarlyControlArena s2Step116FrontBank 212 72 ⟨212,211,72,72⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step116CompleteLog s2Step116FrontPlan Q
    s2Step116Front_checked s2Step116Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step116Complete_owned s2Step116Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step116EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 815 s2Step116CompleteOut.fv.second (s2Step116CompleteOut.fv.payload[2]?.getD s2Step116CompleteOut.fv.sign) (s2Step116CompleteOut.fv.payload[3]?.getD s2Step116CompleteOut.fv.sign) (s2Step116CompleteOut.fv.payload[4]?.getD s2Step116CompleteOut.fv.sign) 792 37 s2Step116EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep116Arena : Arena := s2Step116EntryFBefore
def s2PrivateStep116Bank : WindowBank := s2Step116FrontBank
def s2PrivateStep116Spec : HmrSourceWalkStepLog := ⟨212,72,⟨212,211,72,72⟩,37,.early s2Step116CompleteLog⟩
def s2PrivateStep116Plan : HmrSourceStepPlan := .early s2Step116CompletePlan
theorem s2PrivateStep116_source : s2PrivateStep116Spec=s2ObservedLogs112[4] := rfl
theorem s2PrivateStep116_checked : compileHmrSourceStepLog s2PrivateStep116Arena s2PrivateStep116Bank
    s2PrivateStep116Spec.fgWidth s2PrivateStep116Spec.vWidth s2PrivateStep116Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 116 s2PrivateStep116Spec.need none s2PrivateStep116Spec.log=some s2PrivateStep116Plan := by
  change compileHmrSourceStepLog s2Step116EntryFBefore s2Step116FrontBank 212 72 ⟨212,211,72,72⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 116 37 none (.early s2Step116CompleteLog)=some (.early s2Step116CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 116<498)]
  rw [s2Step116Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
