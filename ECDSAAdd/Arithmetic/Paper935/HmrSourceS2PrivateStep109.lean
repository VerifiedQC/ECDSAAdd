import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep107
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

private def s2Step109CompleteMoves : List (Wire × Wire) := [(800,213)]

private def s2Step109EarlyControlLog : HmrEarlyControlLog := ⟨[800, 787, 805, 809, 808],[794],[846],[781, 849, 806, 802, 867, 877],[878]⟩

private def s2Step109FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [787]],[[808], [809], [805], [810]],[[], [], [], []]⟩,[799],[815],[794],[846],[781, 849, 806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 849, 806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[794, 846, 781, 849]⟩

private def s2Step109CompleteLog : HmrEarlyStepLog := ⟨s2Step109FrontLog,s2Step109CompleteMoves,s2Step109EarlyControlLog⟩

private def s2Step109ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725],768⟩

private def s2Step109ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩

private def s2Step109ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212],769⟩

private def s2Step109ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811],771⟩

private def s2Step109FrontOut : WindowBank := ⟨s2Step109ExitFOut,s2Step109ExitGOut,s2Step109ExitFvOut,s2Step109ExitGvOut⟩

private def s2Step109CompleteOut : WindowBank := s2Step109FrontOut.repacked s2Step109CompleteMoves

private def s2Step109EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step109EarlyControlPositiveArena,[794],s2Step109EarlyControlEqualityArena,[846],⟨⟨799,false⟩,[⟨⟨794,false⟩,846⟩]⟩⟩

private def s2Step109EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<878) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,800⟩,⟨⟨774,false⟩,787⟩,⟨⟨775,false⟩,805⟩,⟨⟨776,false⟩,809⟩,⟨⟨777,false⟩,808⟩]⟩

private def s2Step109EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step109EarlyControlZeroArena,s2Step109EarlyControlZeroPlan,s2Step109EarlyControlClassPlan,s2Step109EarlyControlFlagArena,s2Step109EarlyControlFittedArena,s2Step109EarlyControlHistoryArena,s2Step109EarlyControlSigmaArena,s2Step109EarlyControlOutputArena,s2Step109EarlyControlLog⟩

private def s2Step109CounterWork : List Wire := [794, 846, 781, 849]

private theorem s2Step109Counter_bounded : s2Step109CounterWork.toFinset⊆arenaWires := by norm_num [s2Step109CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step109HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109CounterDuring : Arena := ⟨s2Step109HeadFvAfter.live∪s2Step109CounterWork.toFinset,Finset.union_subset s2Step109HeadFvAfter.bounded s2Step109Counter_bounded⟩

private def s2Step109EntryFFresh : List Wire := []

private def s2Step109EntryFvFresh : List Wire := []

private def s2Step109EntryGFresh : List Wire := []

private def s2Step109EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109EntryGvFresh : List Wire := [787]

private def s2Step109ExitFExtra : List Wire := [809]

private def s2Step109ExitGExtra : List Wire := [213, 808]

private def s2Step109ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<213) ∨ (214≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109ExitGvExtra : List Wire := [787, 805]

private def s2Step109Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109Add0Work : List Wire := [781, 849, 806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step109Add0_bounded : s2Step109Add0Work.toFinset⊆arenaWires := by
  have h : s2Step109Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step109Add0During : Arena := ⟨s2Step109Add0Arena.live∪s2Step109Add0Work.toFinset,Finset.union_subset s2Step109Add0Arena.bounded s2Step109Add0_bounded⟩

private def s2Step109Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109Add1Work : List Wire := [781, 849, 806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step109Add1_bounded : s2Step109Add1Work.toFinset⊆arenaWires := by
  have h : s2Step109Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step109Add1During : Arena := ⟨s2Step109Add1Arena.live∪s2Step109Add1Work.toFinset,Finset.union_subset s2Step109Add1Arena.bounded s2Step109Add1_bounded⟩

private def s2Step109F4FlagArena : Arena := ⟨s2Step109HeadFvAfter.live∪{794},Finset.union_subset s2Step109HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step109F4Plan : HmrHybridF4Plan := ⟨s2Step109F4FlagArena,[794],s2Step109Add0Arena,[846],s2Step109Add0During,s2Step109Add0Work,s2Step109Add1During,s2Step109Add1Work⟩

private def s2Step109HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 809],768⟩

private def s2Step109HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩

private def s2Step109HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 808],769⟩

private def s2Step109HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 787, 805],771⟩

private def s2Step109FrontHead : WindowBank := ⟨s2Step109HeadFOut,s2Step109HeadGOut,s2Step109HeadFvOut,s2Step109HeadGvOut⟩

private def s2Step109EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725],768⟩

private def s2Step109EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785],770⟩

private def s2Step109EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213],769⟩

private def s2Step109EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 787],771⟩

private def s2Step109FrontPair : WindowBank := ⟨s2Step109EntryFOut,s2Step109EntryGOut,s2Step109EntryFvOut,s2Step109EntryGvOut⟩

private def s2Step109FrontSigmaArena : Arena := ⟨s2Step109EntryGvAfter.live∪{799},Finset.union_subset s2Step109EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step109HeadFFresh : List Wire := [809]

private def s2Step109HeadFvFresh : List Wire := [810]

private def s2Step109HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109HeadGFresh : List Wire := [808]

private def s2Step109HeadGvFresh : List Wire := [805]

private def s2Step109FrontPlan : HmrSourceFront := ⟨s2Step109EntryGvAfter,s2Step109FrontPair,(growRow 768 s2Step109EntryFFresh ++ (growRow 769 s2Step109EntryGFresh ++ (growRow 770 s2Step109EntryFvFresh ++ (growRow 771 s2Step109EntryGvFresh ++ [])))),s2Step109FrontSigmaArena,[799],s2Step109HeadGBefore,[815],
  s2Step109HeadFvAfter,s2Step109FrontHead,(growRow 769 s2Step109HeadGFresh ++ (growRow 768 s2Step109HeadFFresh ++ (growRow 771 s2Step109HeadGvFresh ++ (growRow 770 s2Step109HeadFvFresh ++ [])))),s2Step109F4Plan,s2Step109CounterDuring,s2Step109CounterWork,s2Step109ExitGvAfter,s2Step109FrontOut,(shrinkRow 769 s2Step109ExitGExtra ++ (shrinkRow 768 s2Step109ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step109ExitGvExtra ++ []))))⟩

private def s2Step109CompletePlan : HmrEarlyStepPlan := ⟨s2Step109FrontPlan,s2Step109EarlyControlArena,s2Step109EarlyControlPlan,s2Step109CompleteMoves⟩

private theorem s2Step109Complete_apart : List.Disjoint (s2Step109CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [799, 815, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] := by
  have nd : ((s2Step109CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[799, 815, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step109Complete_owned : (s2Step109CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step109EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step109EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private def s2Step109CompleteMoveArena : Arena := ⟨s2Step109ExitGvAfter.live∪{213},Finset.union_subset s2Step109ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step109Complete_repack : s2Step109ExitGvAfter.checkRepack s2Step109CompleteMoves=some s2Step109EarlyControlArena := by
  have owned : 800∈s2Step109ExitGvAfter.live := by norm_num [s2Step109ExitGvAfter,arenaWires]
  have reserve : s2Step109ExitGvAfter.reserve {213}=some s2Step109CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step109ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step109CompleteMoveArena.retireSet {800}=s2Step109EarlyControlArena := by
    unfold Arena.retireSet s2Step109EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step109CompleteMoveArena,s2Step109ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step109CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step109CompleteMoveArena.retireSet {800}).checkRepack []=some s2Step109EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step109EarlyControl_branchOwned : ([815] : List Wire).toFinset⊆s2Step109EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step109EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109EarlyControl_branch : compileHmrBranchRetirement s2Step109EarlyControlSigmaArena 815=some s2Step109EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step109EarlyControl_branchOwned
  · ext q
    simp [s2Step109EarlyControlOutputArena,s2Step109EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step109EarlyControl_classEqualityBorrow : s2Step109EarlyControlPositiveArena.checkBorrow (([799, 794] : List Wire).length-1) s2Step109EarlyControlLog.classWork=some s2Step109EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step109EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step109EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step109EarlyControlEqualityArena,s2Step109EarlyControlPositiveArena,s2Step109EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step109EarlyControl_classEqualityOwned : ([799, 794] : List Wire).toFinset⊆s2Step109EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step109EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109EarlyControl_classEquality : compileHmrEqualityLog s2Step109EarlyControlPositiveArena [799, 794] 0 s2Step109EarlyControlLog.classWork=some (s2Step109EarlyControlEqualityArena,s2Step109EarlyControlLog.classWork,s2Step109EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step109EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step109EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step109EarlyControl_classOwned : ([777, 808, 799] : List Wire).toFinset⊆s2Step109EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step109EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109EarlyControl_positiveBorrow : s2Step109EarlyControlZeroArena.checkBorrow (1) s2Step109EarlyControlLog.positiveWork=some s2Step109EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step109EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step109EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step109EarlyControlPositiveArena,s2Step109EarlyControlZeroArena,s2Step109EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step109EarlyControl_class : compileHmrSourceClassLog s2Step109EarlyControlZeroArena false 777 s2Step109EarlyControlZeroPlan.top 0 799 s2Step109EarlyControlLog.positiveWork s2Step109EarlyControlLog.classWork=some s2Step109EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step109EarlyControlClassPlan s2Step109EarlyControlZeroArena false 777 s2Step109EarlyControlZeroPlan.top 0 799
  constructor
  · decide +kernel
  · exact s2Step109EarlyControl_classOwned
  · exact s2Step109EarlyControl_positiveBorrow
  · exact s2Step109EarlyControl_classEquality

private theorem s2Step109EarlyControl_entryRecordOwned : ([815, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step109EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step109EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109EarlyControl_entrySigmaOwned : ([799, 254] : List Wire).toFinset⊆s2Step109EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step109EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109EarlyControl_fitBorrow : s2Step109EarlyControlFlagArena.checkBorrow ((36-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).length)) s2Step109EarlyControlLog.recordFresh=some s2Step109EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step109EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step109EarlyControlFlagArena (fun q => (0≤q ∧ q<878) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step109EarlyControlFittedArena,s2Step109EarlyControlFlagArena,s2Step109EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step109EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step109EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step109EarlyControlFlagArena (fun q => (0≤q ∧ q<878) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109EarlyControl_fit : compileHmrRecordGrowLog s2Step109EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 36 s2Step109EarlyControlLog.recordFresh=some s2Step109EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step109EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step109EarlyControl_fitBorrow

private theorem s2Step109EarlyControl_flagsBorrow : s2Step109EarlyControlEqualityArena.checkBorrow (6) s2Step109EarlyControlLog.flagWork=some s2Step109EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step109EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step109EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step109EarlyControlFlagArena,s2Step109EarlyControlEqualityArena,s2Step109EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step109EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step109EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step109EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109EarlyControl_flags : compileHmrFlagsLog s2Step109EarlyControlClassPlan.equalityArena s2Step109EarlyControlClassPlan.equality.top 253 252 251 s2Step109EarlyControlLog.flagWork=some s2Step109EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step109EarlyControl_flagsOwned⟩
  · exact s2Step109EarlyControl_flagsBorrow

private theorem s2Step109EarlyControl_historyBorrow : s2Step109EarlyControlArena.checkBorrow ((36-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).length)) s2Step109EarlyControlLog.recordFresh=some s2Step109EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step109EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step109EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step109EarlyControlHistoryArena,s2Step109EarlyControlArena,s2Step109EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step109EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step109EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step109EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109EarlyControl_history : compileHmrRecordGrowLog s2Step109EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 36 s2Step109EarlyControlLog.recordFresh=some s2Step109EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step109EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step109EarlyControl_historyBorrow

private theorem s2Step109EarlyControl_sigmaOwned : ([254, 799] : List Wire).toFinset⊆s2Step109EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step109EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109EarlyControl_sigmaReleaseOwned : ([799] : List Wire).toFinset⊆s2Step109EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step109EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109EarlyControl_sigmaRelease : s2Step109EarlyControlHistoryArena.release {799} (fun _ => false)=some s2Step109EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step109EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step109EarlyControlSigmaArena,s2Step109EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step109EarlyControl_sigma : compileHmrSigmaDropLog s2Step109EarlyControlHistoryArena false 0 0 254 799 []=some s2Step109EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step109EarlyControl_sigmaOwned⟩
  · exact s2Step109EarlyControl_sigmaRelease

private theorem s2Step109EarlyControl_zeroBorrow : s2Step109EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step109EarlyControlLog.zeroWork=some s2Step109EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step109EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step109EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step109EarlyControlZeroArena,s2Step109EarlyControlArena,s2Step109EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step109EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step109EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step109EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109EarlyControl_zero : compileHmrEqualityLog s2Step109EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step109EarlyControlLog.zeroWork=some (s2Step109EarlyControlZeroArena,s2Step109EarlyControlLog.zeroWork,s2Step109EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step109EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step109EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step109EarlyControl_logged : s2Step109EarlyControlPlan.Logged s2Step109EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 799 254 253 252 251 815 36 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step109EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step109EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step109EarlyControl_zero
  · exact s2Step109EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step109EarlyControl_flags
  · exact s2Step109EarlyControl_fit
  · exact s2Step109EarlyControl_history
  · exact s2Step109EarlyControl_sigma
  · exact s2Step109EarlyControl_branch

private theorem s2Step109EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step109EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 799 254 253 252 251 815 36 s2Step109EarlyControlLog=some s2Step109EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step109EarlyControlPlan s2Step109EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 799 254 253 252 251 815 36 s2Step109EarlyControl_logged

private def s2Step109EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725],768⟩

private def s2Step109EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785],770⟩

private def s2Step109EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213],769⟩

private def s2Step109EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811],771⟩

private def s2Step109FrontBank : WindowBank := ⟨s2Step109EntryFRow,s2Step109EntryGRow,s2Step109EntryFvRow,s2Step109EntryGvRow⟩

private def s2Step109Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 809, 768]

private def s2Step109Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 808, 769]

private def s2Step109Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 770]

private def s2Step109Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 787, 805, 771]

private theorem s2Step109Counter_apart : Disjoint s2Step109HeadFvAfter.live s2Step109CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step109HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109Counter_borrowed : s2Step109HeadFvAfter.checkBorrow 4 s2Step109CounterWork=some s2Step109CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step109HeadFvAfter s2Step109CounterDuring s2Step109CounterWork.toFinset s2Step109Counter_bounded s2Step109Counter_apart rfl

private theorem s2Step109Counter_owned : (799::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step109HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step109HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109Counter_checked : compileHmrCounterStepLog s2Step109HeadFvAfter true 799 [772, 773, 774, 775, 776, 777] s2Step109CounterWork=some s2Step109CounterDuring := by
  have owned : ∀q∈799::[772, 773, 774, 775, 776, 777],q∈s2Step109HeadFvAfter.live := fun q hq => s2Step109Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step109Counter_borrowed

private def s2Step109EntryFAfter : Arena := s2Step109EntryFBefore

private theorem s2Step109EntryBank_incomingDistinct : ([s2Step109EntryFRow,s2Step109EntryGRow,s2Step109EntryFvRow,s2Step109EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109EntryF_Incoming : rowsOwned s2Step109EntryFBefore [s2Step109EntryFRow,s2Step109EntryGRow,s2Step109EntryFvRow,s2Step109EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step109EntryFRow,s2Step109EntryGRow,s2Step109EntryFvRow,s2Step109EntryGvRow] 0 s2Step109EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step109EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step109EntryBank_outgoingOwned : rowsOwned s2Step109EntryGvAfter [s2Step109EntryFOut,s2Step109EntryGOut,s2Step109EntryFvOut,s2Step109EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step109EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step109EntryF_Outgoing : rowsOwned s2Step109EntryGvAfter [s2Step109EntryFOut,s2Step109EntryGOut,s2Step109EntryFvOut,s2Step109EntryGvOut] :=
  hmrRows_owned_drop s2Step109EntryGvAfter [s2Step109EntryFOut,s2Step109EntryGOut,s2Step109EntryFvOut,s2Step109EntryGvOut] 0 s2Step109EntryBank_outgoingOwned

private theorem s2Step109EntryF_distinct : (s2Step109EntryFRow.sign::s2Step109EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109EntryF_owned : (s2Step109EntryFRow.sign::s2Step109EntryFRow.payload).toFinset⊆s2Step109EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step109EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109EntryF_reserved : s2Step109EntryFBefore.reserve s2Step109EntryFFresh.toFinset=some s2Step109EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step109EntryFFresh,arenaWires]
  · norm_num [s2Step109EntryFBefore,s2Step109EntryFFresh,arenaWires]
  · simp only [s2Step109EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step109EntryF_checked : planRowResizeLog s2Step109EntryFBefore s2Step109EntryFRow 214 s2Step109EntryFFresh=
    some (s2Step109EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725],768⟩,growRow 768 s2Step109EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step109EntryFBefore s2Step109EntryFAfter s2Step109EntryFRow 214 s2Step109EntryFFresh
    s2Step109EntryF_distinct s2Step109EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step109EntryF_reserved
  have rowEq : WindowRow.mk (s2Step109EntryFRow.payload++s2Step109EntryFFresh) s2Step109EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step109EntryFvAfter : Arena := s2Step109EntryFBefore

private def s2Step109EntryFvBefore : Arena := s2Step109EntryFBefore

private theorem s2Step109EntryFv_Incoming : rowsOwned s2Step109EntryFvBefore [s2Step109EntryFvRow,s2Step109EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step109EntryFRow,s2Step109EntryGRow,s2Step109EntryFvRow,s2Step109EntryGvRow] 2 s2Step109EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step109EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step109EntryFv_Outgoing : rowsOwned s2Step109EntryGvAfter [s2Step109EntryFvOut,s2Step109EntryGvOut] :=
  hmrRows_owned_drop s2Step109EntryGvAfter [s2Step109EntryFOut,s2Step109EntryGOut,s2Step109EntryFvOut,s2Step109EntryGvOut] 2 s2Step109EntryBank_outgoingOwned

private theorem s2Step109EntryFv_distinct : (s2Step109EntryFvRow.sign::s2Step109EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109EntryFv_owned : (s2Step109EntryFvRow.sign::s2Step109EntryFvRow.payload).toFinset⊆s2Step109EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step109EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109EntryFv_reserved : s2Step109EntryFvBefore.reserve s2Step109EntryFvFresh.toFinset=some s2Step109EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step109EntryFvFresh,arenaWires]
  · norm_num [s2Step109EntryFvBefore,s2Step109EntryFBefore,s2Step109EntryFvFresh,arenaWires]
  · simp only [s2Step109EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step109EntryFv_checked : planRowResizeLog s2Step109EntryFvBefore s2Step109EntryFvRow 68 s2Step109EntryFvFresh=
    some (s2Step109EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785],770⟩,growRow 770 s2Step109EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step109EntryFvBefore s2Step109EntryFvAfter s2Step109EntryFvRow 68 s2Step109EntryFvFresh
    s2Step109EntryFv_distinct s2Step109EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step109EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step109EntryFvRow.payload++s2Step109EntryFvFresh) s2Step109EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step109EntryGAfter : Arena := s2Step109EntryFBefore

private def s2Step109EntryGBefore : Arena := s2Step109EntryFBefore

private theorem s2Step109EntryG_Incoming : rowsOwned s2Step109EntryGBefore [s2Step109EntryGRow,s2Step109EntryFvRow,s2Step109EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step109EntryFRow,s2Step109EntryGRow,s2Step109EntryFvRow,s2Step109EntryGvRow] 1 s2Step109EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step109EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step109EntryG_Outgoing : rowsOwned s2Step109EntryGvAfter [s2Step109EntryGOut,s2Step109EntryFvOut,s2Step109EntryGvOut] :=
  hmrRows_owned_drop s2Step109EntryGvAfter [s2Step109EntryFOut,s2Step109EntryGOut,s2Step109EntryFvOut,s2Step109EntryGvOut] 1 s2Step109EntryBank_outgoingOwned

private theorem s2Step109EntryG_distinct : (s2Step109EntryGRow.sign::s2Step109EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109EntryG_owned : (s2Step109EntryGRow.sign::s2Step109EntryGRow.payload).toFinset⊆s2Step109EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step109EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109EntryG_reserved : s2Step109EntryGBefore.reserve s2Step109EntryGFresh.toFinset=some s2Step109EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step109EntryGFresh,arenaWires]
  · norm_num [s2Step109EntryGBefore,s2Step109EntryFBefore,s2Step109EntryGFresh,arenaWires]
  · simp only [s2Step109EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step109EntryG_checked : planRowResizeLog s2Step109EntryGBefore s2Step109EntryGRow 214 s2Step109EntryGFresh=
    some (s2Step109EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213],769⟩,growRow 769 s2Step109EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step109EntryGBefore s2Step109EntryGAfter s2Step109EntryGRow 214 s2Step109EntryGFresh
    s2Step109EntryG_distinct s2Step109EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step109EntryG_reserved
  have rowEq : WindowRow.mk (s2Step109EntryGRow.payload++s2Step109EntryGFresh) s2Step109EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step109EntryGvBefore : Arena := s2Step109EntryFBefore

private theorem s2Step109EntryGv_Incoming : rowsOwned s2Step109EntryGvBefore [s2Step109EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step109EntryFRow,s2Step109EntryGRow,s2Step109EntryFvRow,s2Step109EntryGvRow] 3 s2Step109EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step109EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step109EntryGv_Outgoing : rowsOwned s2Step109EntryGvAfter [s2Step109EntryGvOut] :=
  hmrRows_owned_drop s2Step109EntryGvAfter [s2Step109EntryFOut,s2Step109EntryGOut,s2Step109EntryFvOut,s2Step109EntryGvOut] 3 s2Step109EntryBank_outgoingOwned

private theorem s2Step109EntryGv_distinct : (s2Step109EntryGvRow.sign::s2Step109EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109EntryGv_owned : (s2Step109EntryGvRow.sign::s2Step109EntryGvRow.payload).toFinset⊆s2Step109EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step109EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109EntryGv_reserved : s2Step109EntryGvBefore.reserve s2Step109EntryGvFresh.toFinset=some s2Step109EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step109EntryGvFresh,arenaWires]
  · norm_num [s2Step109EntryGvBefore,s2Step109EntryFBefore,s2Step109EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step109EntryGvAfter,s2Step109EntryGvBefore,s2Step109EntryFBefore,s2Step109EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step109EntryGv_checked : planRowResizeLog s2Step109EntryGvBefore s2Step109EntryGvRow 68 s2Step109EntryGvFresh=
    some (s2Step109EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 787],771⟩,growRow 771 s2Step109EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step109EntryGvBefore s2Step109EntryGvAfter s2Step109EntryGvRow 68 s2Step109EntryGvFresh
    s2Step109EntryGv_distinct s2Step109EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step109EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step109EntryGvRow.payload++s2Step109EntryGvFresh) s2Step109EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step109EntryBank_rows : planWindowRowsLog s2Step109EntryFBefore [(s2Step109EntryFRow,214),(s2Step109EntryGRow,214),(s2Step109EntryFvRow,68),(s2Step109EntryGvRow,68)] [s2Step109EntryFFresh,s2Step109EntryGFresh,s2Step109EntryFvFresh,s2Step109EntryGvFresh]=
    some (s2Step109EntryGvAfter,[s2Step109EntryFOut,s2Step109EntryGOut,s2Step109EntryFvOut,s2Step109EntryGvOut],(growRow 768 s2Step109EntryFFresh ++ (growRow 769 s2Step109EntryGFresh ++ (growRow 770 s2Step109EntryFvFresh ++ (growRow 771 s2Step109EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step109EntryGvAfter [] []=some (s2Step109EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step109EntryGvBefore s2Step109EntryGvAfter s2Step109EntryGvAfter
    s2Step109EntryGvRow s2Step109EntryGvOut 68 s2Step109EntryGvFresh [] [] []
    (growRow 771 s2Step109EntryGvFresh) ([]) s2Step109EntryGv_Incoming s2Step109EntryGv_checked h4 s2Step109EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step109EntryFvBefore s2Step109EntryFvAfter s2Step109EntryGvAfter
    s2Step109EntryFvRow s2Step109EntryFvOut 68 s2Step109EntryFvFresh [(s2Step109EntryGvRow,68)] [s2Step109EntryGvFresh] [s2Step109EntryGvOut]
    (growRow 770 s2Step109EntryFvFresh) ((growRow 771 s2Step109EntryGvFresh ++ [])) s2Step109EntryFv_Incoming s2Step109EntryFv_checked h3 s2Step109EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step109EntryGBefore s2Step109EntryGAfter s2Step109EntryGvAfter
    s2Step109EntryGRow s2Step109EntryGOut 214 s2Step109EntryGFresh [(s2Step109EntryFvRow,68),(s2Step109EntryGvRow,68)] [s2Step109EntryFvFresh,s2Step109EntryGvFresh] [s2Step109EntryFvOut,s2Step109EntryGvOut]
    (growRow 769 s2Step109EntryGFresh) ((growRow 770 s2Step109EntryFvFresh ++ (growRow 771 s2Step109EntryGvFresh ++ []))) s2Step109EntryG_Incoming s2Step109EntryG_checked h2 s2Step109EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step109EntryFBefore s2Step109EntryFAfter s2Step109EntryGvAfter
    s2Step109EntryFRow s2Step109EntryFOut 214 s2Step109EntryFFresh [(s2Step109EntryGRow,214),(s2Step109EntryFvRow,68),(s2Step109EntryGvRow,68)] [s2Step109EntryGFresh,s2Step109EntryFvFresh,s2Step109EntryGvFresh] [s2Step109EntryGOut,s2Step109EntryFvOut,s2Step109EntryGvOut]
    (growRow 768 s2Step109EntryFFresh) ((growRow 769 s2Step109EntryGFresh ++ (growRow 770 s2Step109EntryFvFresh ++ (growRow 771 s2Step109EntryGvFresh ++ [])))) s2Step109EntryF_Incoming s2Step109EntryF_checked h1 s2Step109EntryF_Outgoing
  exact h0

private theorem s2Step109EntryBank_checked : compileHmrBankResizeLog .entry s2Step109EntryFBefore ⟨s2Step109EntryFRow,s2Step109EntryGRow,s2Step109EntryFvRow,s2Step109EntryGvRow⟩ ⟨214,214,68,68⟩ [s2Step109EntryFFresh,s2Step109EntryGFresh,s2Step109EntryFvFresh,s2Step109EntryGvFresh]=
    some (s2Step109EntryGvAfter,⟨s2Step109EntryFOut,s2Step109EntryGOut,s2Step109EntryFvOut,s2Step109EntryGvOut⟩,(growRow 768 s2Step109EntryFFresh ++ (growRow 769 s2Step109EntryGFresh ++ (growRow 770 s2Step109EntryFvFresh ++ (growRow 771 s2Step109EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step109EntryBank_rows]
  rfl

private def s2Step109ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<213) ∨ (214≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<213) ∨ (214≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109ExitFBefore : Arena := s2Step109ExitGAfter

private def s2Step109ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 809],768⟩

private def s2Step109ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩

private def s2Step109ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 808],769⟩

private def s2Step109ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 787, 805],771⟩

private theorem s2Step109ExitBank_incomingDistinct : ([s2Step109ExitGRow,s2Step109ExitFRow,s2Step109ExitFvRow,s2Step109ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109ExitF_Incoming : rowsOwned s2Step109ExitFBefore [s2Step109ExitFRow,s2Step109ExitFvRow,s2Step109ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step109ExitGRow,s2Step109ExitFRow,s2Step109ExitFvRow,s2Step109ExitGvRow] 1 s2Step109ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step109ExitFBefore (fun q => (0≤q ∧ q<213) ∨ (214≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step109ExitBank_outgoingOwned : rowsOwned s2Step109ExitGvAfter [s2Step109ExitGOut,s2Step109ExitFOut,s2Step109ExitFvOut,s2Step109ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step109ExitGvAfter (fun q => (0≤q ∧ q<213) ∨ (214≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step109ExitF_Outgoing : rowsOwned s2Step109ExitGvAfter [s2Step109ExitFOut,s2Step109ExitFvOut,s2Step109ExitGvOut] :=
  hmrRows_owned_drop s2Step109ExitGvAfter [s2Step109ExitGOut,s2Step109ExitFOut,s2Step109ExitFvOut,s2Step109ExitGvOut] 1 s2Step109ExitBank_outgoingOwned

private theorem s2Step109ExitF_distinct : (s2Step109ExitFRow.sign::s2Step109ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109ExitF_owned : (s2Step109ExitFRow.sign::s2Step109ExitFRow.payload).toFinset⊆s2Step109ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step109ExitFBefore (fun q => (0≤q ∧ q<213) ∨ (214≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109ExitF_retired : s2Step109ExitFBefore.retireSet s2Step109ExitFExtra.toFinset=s2Step109ExitFAfter := by
  unfold Arena.retireSet s2Step109ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step109ExitFBefore,s2Step109ExitGAfter,s2Step109ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step109ExitF_checked : planRowResizeLog s2Step109ExitFBefore s2Step109ExitFRow 214 []=
    some (s2Step109ExitFAfter,s2Step109ExitFOut,shrinkRow 768 s2Step109ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step109ExitFBefore s2Step109ExitFRow 214 s2Step109ExitF_distinct s2Step109ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step109ExitFRow.payload.take 214) s2Step109ExitFRow.sign=s2Step109ExitFOut := by decide +kernel
  have hi : s2Step109ExitFRow.payload.drop 214=s2Step109ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step109ExitF_retired] at result
  exact result

private def s2Step109ExitFvAfter : Arena := s2Step109ExitFAfter

private def s2Step109ExitFvBefore : Arena := s2Step109ExitFAfter

private theorem s2Step109ExitFv_Incoming : rowsOwned s2Step109ExitFvBefore [s2Step109ExitFvRow,s2Step109ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step109ExitGRow,s2Step109ExitFRow,s2Step109ExitFvRow,s2Step109ExitGvRow] 2 s2Step109ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step109ExitFvBefore (fun q => (0≤q ∧ q<213) ∨ (214≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step109ExitFv_Outgoing : rowsOwned s2Step109ExitGvAfter [s2Step109ExitFvOut,s2Step109ExitGvOut] :=
  hmrRows_owned_drop s2Step109ExitGvAfter [s2Step109ExitGOut,s2Step109ExitFOut,s2Step109ExitFvOut,s2Step109ExitGvOut] 2 s2Step109ExitBank_outgoingOwned

private theorem s2Step109ExitFv_distinct : (s2Step109ExitFvRow.sign::s2Step109ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109ExitFv_owned : (s2Step109ExitFvRow.sign::s2Step109ExitFvRow.payload).toFinset⊆s2Step109ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step109ExitFvBefore (fun q => (0≤q ∧ q<213) ∨ (214≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109ExitFv_reserved : s2Step109ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step109ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step109ExitFv_checked : planRowResizeLog s2Step109ExitFvBefore s2Step109ExitFvRow 69 []=
    some (s2Step109ExitFvAfter,s2Step109ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step109ExitFvBefore s2Step109ExitFvAfter s2Step109ExitFvRow 69 []
    s2Step109ExitFv_distinct s2Step109ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step109ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step109ExitFvRow.payload++[]) s2Step109ExitFvRow.sign=s2Step109ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step109ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private theorem s2Step109ExitG_Incoming : rowsOwned s2Step109ExitGBefore [s2Step109ExitGRow,s2Step109ExitFRow,s2Step109ExitFvRow,s2Step109ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step109ExitGRow,s2Step109ExitFRow,s2Step109ExitFvRow,s2Step109ExitGvRow] 0 s2Step109ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step109ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step109ExitG_Outgoing : rowsOwned s2Step109ExitGvAfter [s2Step109ExitGOut,s2Step109ExitFOut,s2Step109ExitFvOut,s2Step109ExitGvOut] :=
  hmrRows_owned_drop s2Step109ExitGvAfter [s2Step109ExitGOut,s2Step109ExitFOut,s2Step109ExitFvOut,s2Step109ExitGvOut] 0 s2Step109ExitBank_outgoingOwned

private theorem s2Step109ExitG_distinct : (s2Step109ExitGRow.sign::s2Step109ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109ExitG_owned : (s2Step109ExitGRow.sign::s2Step109ExitGRow.payload).toFinset⊆s2Step109ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step109ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109ExitG_retired : s2Step109ExitGBefore.retireSet s2Step109ExitGExtra.toFinset=s2Step109ExitGAfter := by
  unfold Arena.retireSet s2Step109ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step109ExitGBefore,s2Step109ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step109ExitG_checked : planRowResizeLog s2Step109ExitGBefore s2Step109ExitGRow 213 []=
    some (s2Step109ExitGAfter,s2Step109ExitGOut,shrinkRow 769 s2Step109ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step109ExitGBefore s2Step109ExitGRow 213 s2Step109ExitG_distinct s2Step109ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step109ExitGRow.payload.take 213) s2Step109ExitGRow.sign=s2Step109ExitGOut := by decide +kernel
  have hi : s2Step109ExitGRow.payload.drop 213=s2Step109ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step109ExitG_retired] at result
  exact result

private def s2Step109ExitGvBefore : Arena := s2Step109ExitFAfter

private theorem s2Step109ExitGv_Incoming : rowsOwned s2Step109ExitGvBefore [s2Step109ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step109ExitGRow,s2Step109ExitFRow,s2Step109ExitFvRow,s2Step109ExitGvRow] 3 s2Step109ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step109ExitGvBefore (fun q => (0≤q ∧ q<213) ∨ (214≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step109ExitGv_Outgoing : rowsOwned s2Step109ExitGvAfter [s2Step109ExitGvOut] :=
  hmrRows_owned_drop s2Step109ExitGvAfter [s2Step109ExitGOut,s2Step109ExitFOut,s2Step109ExitFvOut,s2Step109ExitGvOut] 3 s2Step109ExitBank_outgoingOwned

private theorem s2Step109ExitGv_distinct : (s2Step109ExitGvRow.sign::s2Step109ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109ExitGv_owned : (s2Step109ExitGvRow.sign::s2Step109ExitGvRow.payload).toFinset⊆s2Step109ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step109ExitGvBefore (fun q => (0≤q ∧ q<213) ∨ (214≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109ExitGv_retired : s2Step109ExitGvBefore.retireSet s2Step109ExitGvExtra.toFinset=s2Step109ExitGvAfter := by
  unfold Arena.retireSet s2Step109ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step109ExitGvBefore,s2Step109ExitFAfter,s2Step109ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step109ExitGv_checked : planRowResizeLog s2Step109ExitGvBefore s2Step109ExitGvRow 67 []=
    some (s2Step109ExitGvAfter,s2Step109ExitGvOut,shrinkRow 771 s2Step109ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step109ExitGvBefore s2Step109ExitGvRow 67 s2Step109ExitGv_distinct s2Step109ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step109ExitGvRow.payload.take 67) s2Step109ExitGvRow.sign=s2Step109ExitGvOut := by decide +kernel
  have hi : s2Step109ExitGvRow.payload.drop 67=s2Step109ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step109ExitGv_retired] at result
  exact result

private theorem s2Step109ExitBank_rows : planWindowRowsLog s2Step109ExitGBefore [(s2Step109ExitGRow,213),(s2Step109ExitFRow,214),(s2Step109ExitFvRow,69),(s2Step109ExitGvRow,67)] [[],[],[],[]]=
    some (s2Step109ExitGvAfter,[s2Step109ExitGOut,s2Step109ExitFOut,s2Step109ExitFvOut,s2Step109ExitGvOut],(shrinkRow 769 s2Step109ExitGExtra ++ (shrinkRow 768 s2Step109ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step109ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step109ExitGvAfter [] []=some (s2Step109ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step109ExitGvBefore s2Step109ExitGvAfter s2Step109ExitGvAfter
    s2Step109ExitGvRow s2Step109ExitGvOut 67 [] [] [] []
    (shrinkRow 771 s2Step109ExitGvExtra) ([]) s2Step109ExitGv_Incoming s2Step109ExitGv_checked h4 s2Step109ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step109ExitFvBefore s2Step109ExitFvAfter s2Step109ExitGvAfter
    s2Step109ExitFvRow s2Step109ExitFvOut 69 [] [(s2Step109ExitGvRow,67)] [[]] [s2Step109ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step109ExitGvExtra ++ [])) s2Step109ExitFv_Incoming s2Step109ExitFv_checked h3 s2Step109ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step109ExitFBefore s2Step109ExitFAfter s2Step109ExitGvAfter
    s2Step109ExitFRow s2Step109ExitFOut 214 [] [(s2Step109ExitFvRow,69),(s2Step109ExitGvRow,67)] [[],[]] [s2Step109ExitFvOut,s2Step109ExitGvOut]
    (shrinkRow 768 s2Step109ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step109ExitGvExtra ++ []))) s2Step109ExitF_Incoming s2Step109ExitF_checked h2 s2Step109ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step109ExitGBefore s2Step109ExitGAfter s2Step109ExitGvAfter
    s2Step109ExitGRow s2Step109ExitGOut 213 [] [(s2Step109ExitFRow,214),(s2Step109ExitFvRow,69),(s2Step109ExitGvRow,67)] [[],[],[]] [s2Step109ExitFOut,s2Step109ExitFvOut,s2Step109ExitGvOut]
    (shrinkRow 769 s2Step109ExitGExtra) ((shrinkRow 768 s2Step109ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step109ExitGvExtra ++ [])))) s2Step109ExitG_Incoming s2Step109ExitG_checked h1 s2Step109ExitG_Outgoing
  exact h0

private theorem s2Step109ExitBank_checked : compileHmrBankResizeLog .exit s2Step109ExitGBefore ⟨s2Step109ExitFRow,s2Step109ExitGRow,s2Step109ExitFvRow,s2Step109ExitGvRow⟩ ⟨214,213,69,67⟩ [[],[],[],[]]=
    some (s2Step109ExitGvAfter,⟨s2Step109ExitFOut,s2Step109ExitGOut,s2Step109ExitFvOut,s2Step109ExitGvOut⟩,(shrinkRow 769 s2Step109ExitGExtra ++ (shrinkRow 768 s2Step109ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step109ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step109ExitBank_rows]
  rfl

private theorem s2Step109Add0_apart : Disjoint s2Step109Add0Arena.live s2Step109Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step109Add0Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109Add0_card : s2Step109Add0Arena.live.card=873 := by
  decide +kernel

private theorem s2Step109Add0_borrowed : s2Step109Add0Arena.checkBorrow (hmrHybridCount s2Step109Add0Arena s2Step109Add0B.length) s2Step109Add0Work=some s2Step109Add0During := by
  have len : s2Step109Add0Work.length=hmrHybridCount s2Step109Add0Arena s2Step109Add0B.length := by
    rw [hmrHybridCount,s2Step109Add0_card]
    decide +kernel
  have nd : s2Step109Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step109Add0Arena s2Step109Add0During s2Step109Add0Work.toFinset s2Step109Add0_bounded s2Step109Add0_apart rfl

private theorem s2Step109Add0_distinct : (794::815::846::(s2Step109Add0A++s2Step109Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109Add0_owned : (794::815::846::(s2Step109Add0A++s2Step109Add0B)).toFinset⊆s2Step109Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step109Add0Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109Add0_checked : compileHmrHybridCinLog s2Step109Add0Arena 815 794 846 s2Step109Add0A s2Step109Add0B s2Step109Add0Work=some s2Step109Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step109Add0Arena s2Step109Add0During 815 794 846 s2Step109Add0A s2Step109Add0B s2Step109Add0Work
    (by decide +kernel) (by decide +kernel) s2Step109Add0_distinct
    (fun q hq => s2Step109Add0_owned (List.mem_toFinset.mpr hq)) s2Step109Add0_borrowed

private theorem s2Step109Add1_apart : Disjoint s2Step109Add1Arena.live s2Step109Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step109Add1Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109Add1_card : s2Step109Add1Arena.live.card=873 := by
  decide +kernel

private theorem s2Step109Add1_borrowed : s2Step109Add1Arena.checkBorrow (hmrHybridCount s2Step109Add1Arena s2Step109Add1B.length) s2Step109Add1Work=some s2Step109Add1During := by
  have len : s2Step109Add1Work.length=hmrHybridCount s2Step109Add1Arena s2Step109Add1B.length := by
    rw [hmrHybridCount,s2Step109Add1_card]
    decide +kernel
  have nd : s2Step109Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step109Add1Arena s2Step109Add1During s2Step109Add1Work.toFinset s2Step109Add1_bounded s2Step109Add1_apart rfl

private theorem s2Step109Add1_distinct : (794::815::846::(s2Step109Add1A++s2Step109Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109Add1_owned : (794::815::846::(s2Step109Add1A++s2Step109Add1B)).toFinset⊆s2Step109Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step109Add1Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109Add1_checked : compileHmrHybridCinLog s2Step109Add1Arena 815 794 846 s2Step109Add1A s2Step109Add1B s2Step109Add1Work=some s2Step109Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step109Add1Arena s2Step109Add1During 815 794 846 s2Step109Add1A s2Step109Add1B s2Step109Add1Work
    (by decide +kernel) (by decide +kernel) s2Step109Add1_distinct
    (fun q hq => s2Step109Add1_owned (List.mem_toFinset.mpr hq)) s2Step109Add1_borrowed

private theorem s2Step109F4_apart : Disjoint (s2Step109Add0A++s2Step109Add0B).toFinset (s2Step109Add1A++s2Step109Add1B).toFinset := by
  have nd : ((s2Step109Add0A++s2Step109Add0B)++(s2Step109Add1A++s2Step109Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step109F4_carry : s2Step109F4FlagArena.checkBorrow 1 [846]=some s2Step109Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step109F4FlagArena,s2Step109HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step109F4FlagArena,s2Step109HeadFvAfter,s2Step109Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step109F4_distinct : (799::815::794::846::((s2Step109Add0A++s2Step109Add1A)++(s2Step109Add0B++s2Step109Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109F4_flag : s2Step109HeadFvAfter.checkBorrow 1 [794]=some s2Step109F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step109HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step109F4_owned : (799::815::((s2Step109Add0A++s2Step109Add1A)++(s2Step109Add0B++s2Step109Add1B))).toFinset⊆s2Step109HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step109HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109F4_checked : compileHmrHybridF4Log s2Step109HeadFvAfter 799 815 s2Step109Add0A s2Step109Add0B s2Step109Add1A s2Step109Add1B [794] [846] s2Step109Add0Work s2Step109Add1Work=some s2Step109F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step109HeadFvAfter s2Step109F4FlagArena s2Step109Add0Arena s2Step109Add0During s2Step109Add1During 799 815
    s2Step109Add0A s2Step109Add0B s2Step109Add1A s2Step109Add1B [794] [846] s2Step109Add0Work s2Step109Add1Work
    (fun q hq => s2Step109F4_owned (List.mem_toFinset.mpr hq)) s2Step109F4_flag s2Step109F4_carry
    s2Step109F4_distinct s2Step109F4_apart s2Step109Add0_checked s2Step109Add1_checked

private theorem s2Step109Front_branch : s2Step109FrontSigmaArena.checkBorrow 1 [815]=some s2Step109HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step109FrontSigmaArena,s2Step109EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step109FrontSigmaArena,s2Step109EntryGvAfter,s2Step109HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step109Front_entry : HmrFrontEntryValid s2Step109EntryFBefore s2Step109FrontBank 214 68 ⟨214,213,69,67⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step109FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step109EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step109EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step109FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step109Front_sigma : s2Step109EntryGvAfter.checkBorrow 1 [799]=some s2Step109FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step109EntryGvAfter,arenaWires]
  · rfl

private def s2Step109HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109HeadFBefore : Arena := s2Step109HeadGAfter

private def s2Step109HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725],768⟩

private def s2Step109HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785],770⟩

private def s2Step109HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213],769⟩

private def s2Step109HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 787],771⟩

private theorem s2Step109HeadBank_incomingDistinct : ([s2Step109HeadGRow,s2Step109HeadFRow,s2Step109HeadGvRow,s2Step109HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109HeadF_Incoming : rowsOwned s2Step109HeadFBefore [s2Step109HeadFRow,s2Step109HeadGvRow,s2Step109HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step109HeadGRow,s2Step109HeadFRow,s2Step109HeadGvRow,s2Step109HeadFvRow] 1 s2Step109HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step109HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step109HeadBank_outgoingOwned : rowsOwned s2Step109HeadFvAfter [s2Step109HeadGOut,s2Step109HeadFOut,s2Step109HeadGvOut,s2Step109HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step109HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step109HeadF_Outgoing : rowsOwned s2Step109HeadFvAfter [s2Step109HeadFOut,s2Step109HeadGvOut,s2Step109HeadFvOut] :=
  hmrRows_owned_drop s2Step109HeadFvAfter [s2Step109HeadGOut,s2Step109HeadFOut,s2Step109HeadGvOut,s2Step109HeadFvOut] 1 s2Step109HeadBank_outgoingOwned

private theorem s2Step109HeadF_distinct : (s2Step109HeadFRow.sign::s2Step109HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109HeadF_owned : (s2Step109HeadFRow.sign::s2Step109HeadFRow.payload).toFinset⊆s2Step109HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step109HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109HeadF_reserved : s2Step109HeadFBefore.reserve s2Step109HeadFFresh.toFinset=some s2Step109HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step109HeadFFresh,arenaWires]
  · norm_num [s2Step109HeadFBefore,s2Step109HeadGAfter,s2Step109HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step109HeadFAfter,s2Step109HeadFBefore,s2Step109HeadGAfter,s2Step109HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step109HeadF_checked : planRowResizeLog s2Step109HeadFBefore s2Step109HeadFRow 215 s2Step109HeadFFresh=
    some (s2Step109HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 809],768⟩,growRow 768 s2Step109HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step109HeadFBefore s2Step109HeadFAfter s2Step109HeadFRow 215 s2Step109HeadFFresh
    s2Step109HeadF_distinct s2Step109HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step109HeadF_reserved
  have rowEq : WindowRow.mk (s2Step109HeadFRow.payload++s2Step109HeadFFresh) s2Step109HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 809],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step109HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step109HeadFvBefore : Arena := s2Step109HeadGvAfter

private theorem s2Step109HeadFv_Incoming : rowsOwned s2Step109HeadFvBefore [s2Step109HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step109HeadGRow,s2Step109HeadFRow,s2Step109HeadGvRow,s2Step109HeadFvRow] 3 s2Step109HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step109HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step109HeadFv_Outgoing : rowsOwned s2Step109HeadFvAfter [s2Step109HeadFvOut] :=
  hmrRows_owned_drop s2Step109HeadFvAfter [s2Step109HeadGOut,s2Step109HeadFOut,s2Step109HeadGvOut,s2Step109HeadFvOut] 3 s2Step109HeadBank_outgoingOwned

private theorem s2Step109HeadFv_distinct : (s2Step109HeadFvRow.sign::s2Step109HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109HeadFv_owned : (s2Step109HeadFvRow.sign::s2Step109HeadFvRow.payload).toFinset⊆s2Step109HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step109HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109HeadFv_reserved : s2Step109HeadFvBefore.reserve s2Step109HeadFvFresh.toFinset=some s2Step109HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step109HeadFvFresh,arenaWires]
  · norm_num [s2Step109HeadFvBefore,s2Step109HeadGvAfter,s2Step109HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step109HeadFvAfter,s2Step109HeadFvBefore,s2Step109HeadGvAfter,s2Step109HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step109HeadFv_checked : planRowResizeLog s2Step109HeadFvBefore s2Step109HeadFvRow 69 s2Step109HeadFvFresh=
    some (s2Step109HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩,growRow 770 s2Step109HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step109HeadFvBefore s2Step109HeadFvAfter s2Step109HeadFvRow 69 s2Step109HeadFvFresh
    s2Step109HeadFv_distinct s2Step109HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step109HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step109HeadFvRow.payload++s2Step109HeadFvFresh) s2Step109HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step109HeadG_Incoming : rowsOwned s2Step109HeadGBefore [s2Step109HeadGRow,s2Step109HeadFRow,s2Step109HeadGvRow,s2Step109HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step109HeadGRow,s2Step109HeadFRow,s2Step109HeadGvRow,s2Step109HeadFvRow] 0 s2Step109HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step109HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step109HeadG_Outgoing : rowsOwned s2Step109HeadFvAfter [s2Step109HeadGOut,s2Step109HeadFOut,s2Step109HeadGvOut,s2Step109HeadFvOut] :=
  hmrRows_owned_drop s2Step109HeadFvAfter [s2Step109HeadGOut,s2Step109HeadFOut,s2Step109HeadGvOut,s2Step109HeadFvOut] 0 s2Step109HeadBank_outgoingOwned

private theorem s2Step109HeadG_distinct : (s2Step109HeadGRow.sign::s2Step109HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109HeadG_owned : (s2Step109HeadGRow.sign::s2Step109HeadGRow.payload).toFinset⊆s2Step109HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step109HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109HeadG_reserved : s2Step109HeadGBefore.reserve s2Step109HeadGFresh.toFinset=some s2Step109HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step109HeadGFresh,arenaWires]
  · norm_num [s2Step109HeadGBefore,s2Step109HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step109HeadGAfter,s2Step109HeadGBefore,s2Step109HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step109HeadG_checked : planRowResizeLog s2Step109HeadGBefore s2Step109HeadGRow 215 s2Step109HeadGFresh=
    some (s2Step109HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 808],769⟩,growRow 769 s2Step109HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step109HeadGBefore s2Step109HeadGAfter s2Step109HeadGRow 215 s2Step109HeadGFresh
    s2Step109HeadG_distinct s2Step109HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step109HeadG_reserved
  have rowEq : WindowRow.mk (s2Step109HeadGRow.payload++s2Step109HeadGFresh) s2Step109HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 808],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step109HeadGvBefore : Arena := s2Step109HeadFAfter

private theorem s2Step109HeadGv_Incoming : rowsOwned s2Step109HeadGvBefore [s2Step109HeadGvRow,s2Step109HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step109HeadGRow,s2Step109HeadFRow,s2Step109HeadGvRow,s2Step109HeadFvRow] 2 s2Step109HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step109HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step109HeadGv_Outgoing : rowsOwned s2Step109HeadFvAfter [s2Step109HeadGvOut,s2Step109HeadFvOut] :=
  hmrRows_owned_drop s2Step109HeadFvAfter [s2Step109HeadGOut,s2Step109HeadFOut,s2Step109HeadGvOut,s2Step109HeadFvOut] 2 s2Step109HeadBank_outgoingOwned

private theorem s2Step109HeadGv_distinct : (s2Step109HeadGvRow.sign::s2Step109HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step109HeadGv_owned : (s2Step109HeadGvRow.sign::s2Step109HeadGvRow.payload).toFinset⊆s2Step109HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step109HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step109HeadGv_reserved : s2Step109HeadGvBefore.reserve s2Step109HeadGvFresh.toFinset=some s2Step109HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step109HeadGvFresh,arenaWires]
  · norm_num [s2Step109HeadGvBefore,s2Step109HeadFAfter,s2Step109HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step109HeadGvAfter,s2Step109HeadGvBefore,s2Step109HeadFAfter,s2Step109HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step109HeadGv_checked : planRowResizeLog s2Step109HeadGvBefore s2Step109HeadGvRow 69 s2Step109HeadGvFresh=
    some (s2Step109HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 787, 805],771⟩,growRow 771 s2Step109HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step109HeadGvBefore s2Step109HeadGvAfter s2Step109HeadGvRow 69 s2Step109HeadGvFresh
    s2Step109HeadGv_distinct s2Step109HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step109HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step109HeadGvRow.payload++s2Step109HeadGvFresh) s2Step109HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 787, 805],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step109HeadBank_rows : planWindowRowsLog s2Step109HeadGBefore [(s2Step109HeadGRow,215),(s2Step109HeadFRow,215),(s2Step109HeadGvRow,69),(s2Step109HeadFvRow,69)] [s2Step109HeadGFresh,s2Step109HeadFFresh,s2Step109HeadGvFresh,s2Step109HeadFvFresh]=
    some (s2Step109HeadFvAfter,[s2Step109HeadGOut,s2Step109HeadFOut,s2Step109HeadGvOut,s2Step109HeadFvOut],(growRow 769 s2Step109HeadGFresh ++ (growRow 768 s2Step109HeadFFresh ++ (growRow 771 s2Step109HeadGvFresh ++ (growRow 770 s2Step109HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step109HeadFvAfter [] []=some (s2Step109HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step109HeadFvBefore s2Step109HeadFvAfter s2Step109HeadFvAfter
    s2Step109HeadFvRow s2Step109HeadFvOut 69 s2Step109HeadFvFresh [] [] []
    (growRow 770 s2Step109HeadFvFresh) ([]) s2Step109HeadFv_Incoming s2Step109HeadFv_checked h4 s2Step109HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step109HeadGvBefore s2Step109HeadGvAfter s2Step109HeadFvAfter
    s2Step109HeadGvRow s2Step109HeadGvOut 69 s2Step109HeadGvFresh [(s2Step109HeadFvRow,69)] [s2Step109HeadFvFresh] [s2Step109HeadFvOut]
    (growRow 771 s2Step109HeadGvFresh) ((growRow 770 s2Step109HeadFvFresh ++ [])) s2Step109HeadGv_Incoming s2Step109HeadGv_checked h3 s2Step109HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step109HeadFBefore s2Step109HeadFAfter s2Step109HeadFvAfter
    s2Step109HeadFRow s2Step109HeadFOut 215 s2Step109HeadFFresh [(s2Step109HeadGvRow,69),(s2Step109HeadFvRow,69)] [s2Step109HeadGvFresh,s2Step109HeadFvFresh] [s2Step109HeadGvOut,s2Step109HeadFvOut]
    (growRow 768 s2Step109HeadFFresh) ((growRow 771 s2Step109HeadGvFresh ++ (growRow 770 s2Step109HeadFvFresh ++ []))) s2Step109HeadF_Incoming s2Step109HeadF_checked h2 s2Step109HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step109HeadGBefore s2Step109HeadGAfter s2Step109HeadFvAfter
    s2Step109HeadGRow s2Step109HeadGOut 215 s2Step109HeadGFresh [(s2Step109HeadFRow,215),(s2Step109HeadGvRow,69),(s2Step109HeadFvRow,69)] [s2Step109HeadFFresh,s2Step109HeadGvFresh,s2Step109HeadFvFresh] [s2Step109HeadFOut,s2Step109HeadGvOut,s2Step109HeadFvOut]
    (growRow 769 s2Step109HeadGFresh) ((growRow 768 s2Step109HeadFFresh ++ (growRow 771 s2Step109HeadGvFresh ++ (growRow 770 s2Step109HeadFvFresh ++ [])))) s2Step109HeadG_Incoming s2Step109HeadG_checked h1 s2Step109HeadG_Outgoing
  exact h0

private theorem s2Step109HeadBank_checked : compileHmrBankResizeLog .headroom s2Step109HeadGBefore ⟨s2Step109HeadFRow,s2Step109HeadGRow,s2Step109HeadFvRow,s2Step109HeadGvRow⟩ ⟨215,215,69,69⟩ [s2Step109HeadGFresh,s2Step109HeadFFresh,s2Step109HeadGvFresh,s2Step109HeadFvFresh]=
    some (s2Step109HeadFvAfter,⟨s2Step109HeadFOut,s2Step109HeadGOut,s2Step109HeadFvOut,s2Step109HeadGvOut⟩,(growRow 769 s2Step109HeadGFresh ++ (growRow 768 s2Step109HeadFFresh ++ (growRow 771 s2Step109HeadGvFresh ++ (growRow 770 s2Step109HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step109HeadBank_rows]
  rfl

private theorem s2Step109Front_checked : compileHmrSourceFrontLog s2Step109EntryFBefore s2Step109FrontBank 214 68 ⟨214,213,69,67⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step109FrontLog=some s2Step109FrontPlan := by
  have pairEq : s2Step109FrontPair=⟨s2Step109HeadFRow,s2Step109HeadGRow,s2Step109HeadFvRow,s2Step109HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step109FrontHead=⟨s2Step109ExitFRow,s2Step109ExitGRow,s2Step109ExitFvRow,s2Step109ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step109Add0A=s2Step109FrontHead.f.wires := by decide +kernel
  have gEq : s2Step109Add0B=s2Step109FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step109Add1A=s2Step109FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step109Add1B=s2Step109FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step109EntryFBefore s2Step109FrontBank 214 68 ⟨214,213,69,67⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step109FrontLog s2Step109FrontPlan
  · exact s2Step109Front_entry
  · exact s2Step109EntryBank_checked
  · exact s2Step109Front_sigma
  · rfl
  · exact s2Step109Front_branch
  · rfl
  · simpa only [s2Step109FrontPlan,pairEq] using s2Step109HeadBank_checked
  · simpa only [s2Step109FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step109F4_checked
  · exact s2Step109Counter_checked
  · rfl
  · simpa only [s2Step109FrontPlan,headEq] using s2Step109ExitBank_checked

private theorem s2Step109Complete_explicit_checked : compileHmrEarlyStepLog s2Step109EntryFBefore s2Step109FrontBank 214 68 ⟨214,213,69,67⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 36 s2Step109CompleteLog=some s2Step109CompletePlan := by
  let Q := s2Step109EarlyControlPlan
  have hq := s2Step109EarlyControl_plan_checked
  have fv1 : s2Step109CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step109CompleteOut.fv.payload[2]?.getD s2Step109CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step109CompleteOut.fv.payload[3]?.getD s2Step109CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step109CompleteOut.fv.payload[4]?.getD s2Step109CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step109EntryFBefore s2Step109EarlyControlArena s2Step109FrontBank 214 68 ⟨214,213,69,67⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 36 s2Step109CompleteLog s2Step109FrontPlan Q
    s2Step109Front_checked s2Step109Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step109Complete_owned s2Step109Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step109EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 799 s2Step109CompleteOut.fv.second (s2Step109CompleteOut.fv.payload[2]?.getD s2Step109CompleteOut.fv.sign) (s2Step109CompleteOut.fv.payload[3]?.getD s2Step109CompleteOut.fv.sign) (s2Step109CompleteOut.fv.payload[4]?.getD s2Step109CompleteOut.fv.sign) 815 36 s2Step109EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep109Arena : Arena := s2Step109EntryFBefore
def s2PrivateStep109Bank : WindowBank := s2Step109FrontBank
def s2PrivateStep109Spec : HmrSourceWalkStepLog := ⟨214,68,⟨214,213,69,67⟩,36,.early s2Step109CompleteLog⟩
def s2PrivateStep109Plan : HmrSourceStepPlan := .early s2Step109CompletePlan
theorem s2PrivateStep109_source : s2PrivateStep109Spec=s2ObservedLogs96[13] := rfl
theorem s2PrivateStep109_checked : compileHmrSourceStepLog s2PrivateStep109Arena s2PrivateStep109Bank
    s2PrivateStep109Spec.fgWidth s2PrivateStep109Spec.vWidth s2PrivateStep109Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880]
    6 498 109 s2PrivateStep109Spec.need none s2PrivateStep109Spec.log=some s2PrivateStep109Plan := by
  change compileHmrSourceStepLog s2Step109EntryFBefore s2Step109FrontBank 214 68 ⟨214,213,69,67⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 6 498 109 36 none (.early s2Step109CompleteLog)=some (.early s2Step109CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 109<498)]
  rw [s2Step109Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
