import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep168
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

private def s2Step170CompleteMoves : List (Wire × Wire) := [(809,184)]

private def s2Step170EarlyControlLog : HmrEarlyControlLog := ⟨[809, 803, 793, 785, 799],[847],[867],[877, 879, 882, 885, 888, 890],[]⟩

private def s2Step170FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[785], [793], [803], [810]],[[], [], [], []]⟩,[820],[787],[799],[847],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[799, 847, 867, 877]⟩

private def s2Step170CompleteLog : HmrEarlyStepLog := ⟨s2Step170FrontLog,s2Step170CompleteMoves,s2Step170EarlyControlLog⟩

private def s2Step170ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩

private def s2Step170ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810],770⟩

private def s2Step170ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183],769⟩

private def s2Step170ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩

private def s2Step170FrontOut : WindowBank := ⟨s2Step170ExitFOut,s2Step170ExitGOut,s2Step170ExitFvOut,s2Step170ExitGvOut⟩

private def s2Step170CompleteOut : WindowBank := s2Step170FrontOut.repacked s2Step170CompleteMoves

private def s2Step170EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step170EarlyControlPositiveArena,[847],s2Step170EarlyControlEqualityArena,[867],⟨⟨820,false⟩,[⟨⟨847,false⟩,867⟩]⟩⟩

private def s2Step170EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step170EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step170EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,809⟩,⟨⟨774,false⟩,803⟩,⟨⟨775,false⟩,793⟩,⟨⟨776,false⟩,785⟩,⟨⟨777,false⟩,799⟩]⟩

private def s2Step170EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step170EarlyControlZeroArena,s2Step170EarlyControlZeroPlan,s2Step170EarlyControlClassPlan,s2Step170EarlyControlFlagArena,s2Step170EarlyControlFittedArena,s2Step170EarlyControlHistoryArena,s2Step170EarlyControlSigmaArena,s2Step170EarlyControlOutputArena,s2Step170EarlyControlLog⟩

private def s2Step170CounterWork : List Wire := [799, 847, 867, 877]

private theorem s2Step170Counter_bounded : s2Step170CounterWork.toFinset⊆arenaWires := by norm_num [s2Step170CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step170HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170CounterDuring : Arena := ⟨s2Step170HeadFvAfter.live∪s2Step170CounterWork.toFinset,Finset.union_subset s2Step170HeadFvAfter.bounded s2Step170Counter_bounded⟩

private def s2Step170EntryFFresh : List Wire := []

private def s2Step170EntryFvFresh : List Wire := []

private def s2Step170EntryGFresh : List Wire := []

private def s2Step170EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170EntryGvAfter : Arena := s2Step170EntryFBefore

private def s2Step170EntryGvFresh : List Wire := []

private def s2Step170ExitFExtra : List Wire := [793]

private def s2Step170ExitGExtra : List Wire := [184, 785]

private def s2Step170ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<184) ∨ (185≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170ExitGvExtra : List Wire := [803]

private def s2Step170Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170Add0Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step170Add0_bounded : s2Step170Add0Work.toFinset⊆arenaWires := by
  have h : s2Step170Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step170Add0During : Arena := ⟨s2Step170Add0Arena.live∪s2Step170Add0Work.toFinset,Finset.union_subset s2Step170Add0Arena.bounded s2Step170Add0_bounded⟩

private def s2Step170Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170Add1Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step170Add1_bounded : s2Step170Add1Work.toFinset⊆arenaWires := by
  have h : s2Step170Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step170Add1During : Arena := ⟨s2Step170Add1Arena.live∪s2Step170Add1Work.toFinset,Finset.union_subset s2Step170Add1Arena.bounded s2Step170Add1_bounded⟩

private def s2Step170F4FlagArena : Arena := ⟨s2Step170HeadFvAfter.live∪{799},Finset.union_subset s2Step170HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step170F4Plan : HmrHybridF4Plan := ⟨s2Step170F4FlagArena,[799],s2Step170Add0Arena,[847],s2Step170Add0During,s2Step170Add0Work,s2Step170Add1During,s2Step170Add1Work⟩

private def s2Step170HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 793],768⟩

private def s2Step170HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810],770⟩

private def s2Step170HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 785],769⟩

private def s2Step170HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 803],771⟩

private def s2Step170FrontHead : WindowBank := ⟨s2Step170HeadFOut,s2Step170HeadGOut,s2Step170HeadFvOut,s2Step170HeadGvOut⟩

private def s2Step170EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩

private def s2Step170EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812],770⟩

private def s2Step170EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],769⟩

private def s2Step170EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩

private def s2Step170FrontPair : WindowBank := ⟨s2Step170EntryFOut,s2Step170EntryGOut,s2Step170EntryFvOut,s2Step170EntryGvOut⟩

private def s2Step170FrontSigmaArena : Arena := ⟨s2Step170EntryGvAfter.live∪{820},Finset.union_subset s2Step170EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step170HeadFFresh : List Wire := [793]

private def s2Step170HeadFvFresh : List Wire := [810]

private def s2Step170HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170HeadGFresh : List Wire := [785]

private def s2Step170HeadGvFresh : List Wire := [803]

private def s2Step170FrontPlan : HmrSourceFront := ⟨s2Step170EntryGvAfter,s2Step170FrontPair,(growRow 768 s2Step170EntryFFresh ++ (growRow 769 s2Step170EntryGFresh ++ (growRow 770 s2Step170EntryFvFresh ++ (growRow 771 s2Step170EntryGvFresh ++ [])))),s2Step170FrontSigmaArena,[820],s2Step170HeadGBefore,[787],
  s2Step170HeadFvAfter,s2Step170FrontHead,(growRow 769 s2Step170HeadGFresh ++ (growRow 768 s2Step170HeadFFresh ++ (growRow 771 s2Step170HeadGvFresh ++ (growRow 770 s2Step170HeadFvFresh ++ [])))),s2Step170F4Plan,s2Step170CounterDuring,s2Step170CounterWork,s2Step170ExitGvAfter,s2Step170FrontOut,(shrinkRow 769 s2Step170ExitGExtra ++ (shrinkRow 768 s2Step170ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step170ExitGvExtra ++ []))))⟩

private def s2Step170CompletePlan : HmrEarlyStepPlan := ⟨s2Step170FrontPlan,s2Step170EarlyControlArena,s2Step170EarlyControlPlan,s2Step170CompleteMoves⟩

private theorem s2Step170Complete_apart : List.Disjoint (s2Step170CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [820, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step170CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[820, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step170Complete_owned : (s2Step170CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step170EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step170EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step170CompleteMoveArena : Arena := ⟨s2Step170ExitGvAfter.live∪{184},Finset.union_subset s2Step170ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step170Complete_repack : s2Step170ExitGvAfter.checkRepack s2Step170CompleteMoves=some s2Step170EarlyControlArena := by
  have owned : 809∈s2Step170ExitGvAfter.live := by norm_num [s2Step170ExitGvAfter,arenaWires]
  have reserve : s2Step170ExitGvAfter.reserve {184}=some s2Step170CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step170ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step170CompleteMoveArena.retireSet {809}=s2Step170EarlyControlArena := by
    unfold Arena.retireSet s2Step170EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step170CompleteMoveArena,s2Step170ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step170CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step170CompleteMoveArena.retireSet {809}).checkRepack []=some s2Step170EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step170EarlyControl_branchOwned : ([787] : List Wire).toFinset⊆s2Step170EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step170EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170EarlyControl_branch : compileHmrBranchRetirement s2Step170EarlyControlSigmaArena 787=some s2Step170EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step170EarlyControl_branchOwned
  · ext q
    simp [s2Step170EarlyControlOutputArena,s2Step170EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step170EarlyControl_classEqualityBorrow : s2Step170EarlyControlPositiveArena.checkBorrow (([820, 847] : List Wire).length-1) s2Step170EarlyControlLog.classWork=some s2Step170EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step170EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step170EarlyControlPositiveArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step170EarlyControlEqualityArena,s2Step170EarlyControlPositiveArena,s2Step170EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step170EarlyControl_classEqualityOwned : ([820, 847] : List Wire).toFinset⊆s2Step170EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step170EarlyControlPositiveArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170EarlyControl_classEquality : compileHmrEqualityLog s2Step170EarlyControlPositiveArena [820, 847] 0 s2Step170EarlyControlLog.classWork=some (s2Step170EarlyControlEqualityArena,s2Step170EarlyControlLog.classWork,s2Step170EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step170EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step170EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step170EarlyControl_classOwned : ([777, 799, 820] : List Wire).toFinset⊆s2Step170EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step170EarlyControlZeroArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170EarlyControl_positiveBorrow : s2Step170EarlyControlZeroArena.checkBorrow (1) s2Step170EarlyControlLog.positiveWork=some s2Step170EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step170EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step170EarlyControlZeroArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step170EarlyControlPositiveArena,s2Step170EarlyControlZeroArena,s2Step170EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step170EarlyControl_class : compileHmrSourceClassLog s2Step170EarlyControlZeroArena false 777 s2Step170EarlyControlZeroPlan.top 0 820 s2Step170EarlyControlLog.positiveWork s2Step170EarlyControlLog.classWork=some s2Step170EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step170EarlyControlClassPlan s2Step170EarlyControlZeroArena false 777 s2Step170EarlyControlZeroPlan.top 0 820
  constructor
  · decide +kernel
  · exact s2Step170EarlyControl_classOwned
  · exact s2Step170EarlyControl_positiveBorrow
  · exact s2Step170EarlyControl_classEquality

private theorem s2Step170EarlyControl_entryRecordOwned : ([787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step170EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step170EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170EarlyControl_entrySigmaOwned : ([820, 254] : List Wire).toFinset⊆s2Step170EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step170EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170EarlyControl_fitBorrow : s2Step170EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step170EarlyControlLog.recordFresh=some s2Step170EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step170EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step170EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
      decide +kernel
    · ext q
      simp [s2Step170EarlyControlFittedArena,s2Step170EarlyControlFlagArena,s2Step170EarlyControlLog,arenaWires]

private theorem s2Step170EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step170EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step170EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step170EarlyControl_fit : compileHmrRecordGrowLog s2Step170EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step170EarlyControlLog.recordFresh=some s2Step170EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step170EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step170EarlyControl_fitBorrow

private theorem s2Step170EarlyControl_flagsBorrow : s2Step170EarlyControlEqualityArena.checkBorrow (6) s2Step170EarlyControlLog.flagWork=some s2Step170EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step170EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step170EarlyControlEqualityArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step170EarlyControlFlagArena,s2Step170EarlyControlEqualityArena,s2Step170EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step170EarlyControl_flagsOwned : ([867, 253, 252, 251] : List Wire).toFinset⊆s2Step170EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step170EarlyControlEqualityArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170EarlyControl_flags : compileHmrFlagsLog s2Step170EarlyControlClassPlan.equalityArena s2Step170EarlyControlClassPlan.equality.top 253 252 251 s2Step170EarlyControlLog.flagWork=some s2Step170EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step170EarlyControl_flagsOwned⟩
  · exact s2Step170EarlyControl_flagsBorrow

private theorem s2Step170EarlyControl_historyBorrow : s2Step170EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step170EarlyControlLog.recordFresh=some s2Step170EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step170EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step170EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step170EarlyControlHistoryArena,s2Step170EarlyControlArena,s2Step170EarlyControlLog,arenaWires]

private theorem s2Step170EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step170EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step170EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170EarlyControl_history : compileHmrRecordGrowLog s2Step170EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step170EarlyControlLog.recordFresh=some s2Step170EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step170EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step170EarlyControl_historyBorrow

private theorem s2Step170EarlyControl_sigmaOwned : ([254, 820] : List Wire).toFinset⊆s2Step170EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step170EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170EarlyControl_sigmaReleaseOwned : ([820] : List Wire).toFinset⊆s2Step170EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step170EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170EarlyControl_sigmaRelease : s2Step170EarlyControlHistoryArena.release {820} (fun _ => false)=some s2Step170EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step170EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step170EarlyControlSigmaArena,s2Step170EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step170EarlyControl_sigma : compileHmrSigmaDropLog s2Step170EarlyControlHistoryArena false 0 0 254 820 []=some s2Step170EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step170EarlyControl_sigmaOwned⟩
  · exact s2Step170EarlyControl_sigmaRelease

private theorem s2Step170EarlyControl_zeroBorrow : s2Step170EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step170EarlyControlLog.zeroWork=some s2Step170EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step170EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step170EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step170EarlyControlZeroArena,s2Step170EarlyControlArena,s2Step170EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step170EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step170EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step170EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170EarlyControl_zero : compileHmrEqualityLog s2Step170EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step170EarlyControlLog.zeroWork=some (s2Step170EarlyControlZeroArena,s2Step170EarlyControlLog.zeroWork,s2Step170EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step170EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step170EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step170EarlyControl_logged : s2Step170EarlyControlPlan.Logged s2Step170EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 820 254 253 252 251 787 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step170EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step170EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step170EarlyControl_zero
  · exact s2Step170EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step170EarlyControl_flags
  · exact s2Step170EarlyControl_fit
  · exact s2Step170EarlyControl_history
  · exact s2Step170EarlyControl_sigma
  · exact s2Step170EarlyControl_branch

private theorem s2Step170EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step170EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 820 254 253 252 251 787 42 s2Step170EarlyControlLog=some s2Step170EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step170EarlyControlPlan s2Step170EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 820 254 253 252 251 787 42 s2Step170EarlyControl_logged

private def s2Step170EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩

private def s2Step170EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812],770⟩

private def s2Step170EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],769⟩

private def s2Step170EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩

private def s2Step170FrontBank : WindowBank := ⟨s2Step170EntryFRow,s2Step170EntryGRow,s2Step170EntryFvRow,s2Step170EntryGvRow⟩

private def s2Step170Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 793, 768]

private def s2Step170Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 785, 769]

private def s2Step170Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 770]

private def s2Step170Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 803, 771]

private theorem s2Step170Counter_apart : Disjoint s2Step170HeadFvAfter.live s2Step170CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step170HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170Counter_borrowed : s2Step170HeadFvAfter.checkBorrow 4 s2Step170CounterWork=some s2Step170CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step170HeadFvAfter s2Step170CounterDuring s2Step170CounterWork.toFinset s2Step170Counter_bounded s2Step170Counter_apart rfl

private theorem s2Step170Counter_owned : (820::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step170HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step170HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170Counter_checked : compileHmrCounterStepLog s2Step170HeadFvAfter true 820 [772, 773, 774, 775, 776, 777] s2Step170CounterWork=some s2Step170CounterDuring := by
  have owned : ∀q∈820::[772, 773, 774, 775, 776, 777],q∈s2Step170HeadFvAfter.live := fun q hq => s2Step170Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step170Counter_borrowed

private def s2Step170EntryFAfter : Arena := s2Step170EntryFBefore

private theorem s2Step170EntryBank_incomingDistinct : ([s2Step170EntryFRow,s2Step170EntryGRow,s2Step170EntryFvRow,s2Step170EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170EntryF_Incoming : rowsOwned s2Step170EntryFBefore [s2Step170EntryFRow,s2Step170EntryGRow,s2Step170EntryFvRow,s2Step170EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step170EntryFRow,s2Step170EntryGRow,s2Step170EntryFvRow,s2Step170EntryGvRow] 0 s2Step170EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step170EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step170EntryBank_outgoingOwned : rowsOwned s2Step170EntryGvAfter [s2Step170EntryFOut,s2Step170EntryGOut,s2Step170EntryFvOut,s2Step170EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step170EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step170EntryF_Outgoing : rowsOwned s2Step170EntryGvAfter [s2Step170EntryFOut,s2Step170EntryGOut,s2Step170EntryFvOut,s2Step170EntryGvOut] :=
  hmrRows_owned_drop s2Step170EntryGvAfter [s2Step170EntryFOut,s2Step170EntryGOut,s2Step170EntryFvOut,s2Step170EntryGvOut] 0 s2Step170EntryBank_outgoingOwned

private theorem s2Step170EntryF_distinct : (s2Step170EntryFRow.sign::s2Step170EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170EntryF_owned : (s2Step170EntryFRow.sign::s2Step170EntryFRow.payload).toFinset⊆s2Step170EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step170EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170EntryF_reserved : s2Step170EntryFBefore.reserve s2Step170EntryFFresh.toFinset=some s2Step170EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step170EntryFFresh,arenaWires]
  · norm_num [s2Step170EntryFBefore,s2Step170EntryFFresh,arenaWires]
  · simp only [s2Step170EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step170EntryF_checked : planRowResizeLog s2Step170EntryFBefore s2Step170EntryFRow 185 s2Step170EntryFFresh=
    some (s2Step170EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩,growRow 768 s2Step170EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step170EntryFBefore s2Step170EntryFAfter s2Step170EntryFRow 185 s2Step170EntryFFresh
    s2Step170EntryF_distinct s2Step170EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step170EntryF_reserved
  have rowEq : WindowRow.mk (s2Step170EntryFRow.payload++s2Step170EntryFFresh) s2Step170EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step170EntryFvAfter : Arena := s2Step170EntryFBefore

private def s2Step170EntryFvBefore : Arena := s2Step170EntryFBefore

private theorem s2Step170EntryFv_Incoming : rowsOwned s2Step170EntryFvBefore [s2Step170EntryFvRow,s2Step170EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step170EntryFRow,s2Step170EntryGRow,s2Step170EntryFvRow,s2Step170EntryGvRow] 2 s2Step170EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step170EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step170EntryFv_Outgoing : rowsOwned s2Step170EntryGvAfter [s2Step170EntryFvOut,s2Step170EntryGvOut] :=
  hmrRows_owned_drop s2Step170EntryGvAfter [s2Step170EntryFOut,s2Step170EntryGOut,s2Step170EntryFvOut,s2Step170EntryGvOut] 2 s2Step170EntryBank_outgoingOwned

private theorem s2Step170EntryFv_distinct : (s2Step170EntryFvRow.sign::s2Step170EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170EntryFv_owned : (s2Step170EntryFvRow.sign::s2Step170EntryFvRow.payload).toFinset⊆s2Step170EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step170EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170EntryFv_reserved : s2Step170EntryFvBefore.reserve s2Step170EntryFvFresh.toFinset=some s2Step170EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step170EntryFvFresh,arenaWires]
  · norm_num [s2Step170EntryFvBefore,s2Step170EntryFBefore,s2Step170EntryFvFresh,arenaWires]
  · simp only [s2Step170EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step170EntryFv_checked : planRowResizeLog s2Step170EntryFvBefore s2Step170EntryFvRow 99 s2Step170EntryFvFresh=
    some (s2Step170EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812],770⟩,growRow 770 s2Step170EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step170EntryFvBefore s2Step170EntryFvAfter s2Step170EntryFvRow 99 s2Step170EntryFvFresh
    s2Step170EntryFv_distinct s2Step170EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step170EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step170EntryFvRow.payload++s2Step170EntryFvFresh) s2Step170EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step170EntryGAfter : Arena := s2Step170EntryFBefore

private def s2Step170EntryGBefore : Arena := s2Step170EntryFBefore

private theorem s2Step170EntryG_Incoming : rowsOwned s2Step170EntryGBefore [s2Step170EntryGRow,s2Step170EntryFvRow,s2Step170EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step170EntryFRow,s2Step170EntryGRow,s2Step170EntryFvRow,s2Step170EntryGvRow] 1 s2Step170EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step170EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step170EntryG_Outgoing : rowsOwned s2Step170EntryGvAfter [s2Step170EntryGOut,s2Step170EntryFvOut,s2Step170EntryGvOut] :=
  hmrRows_owned_drop s2Step170EntryGvAfter [s2Step170EntryFOut,s2Step170EntryGOut,s2Step170EntryFvOut,s2Step170EntryGvOut] 1 s2Step170EntryBank_outgoingOwned

private theorem s2Step170EntryG_distinct : (s2Step170EntryGRow.sign::s2Step170EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170EntryG_owned : (s2Step170EntryGRow.sign::s2Step170EntryGRow.payload).toFinset⊆s2Step170EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step170EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170EntryG_reserved : s2Step170EntryGBefore.reserve s2Step170EntryGFresh.toFinset=some s2Step170EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step170EntryGFresh,arenaWires]
  · norm_num [s2Step170EntryGBefore,s2Step170EntryFBefore,s2Step170EntryGFresh,arenaWires]
  · simp only [s2Step170EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step170EntryG_checked : planRowResizeLog s2Step170EntryGBefore s2Step170EntryGRow 185 s2Step170EntryGFresh=
    some (s2Step170EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],769⟩,growRow 769 s2Step170EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step170EntryGBefore s2Step170EntryGAfter s2Step170EntryGRow 185 s2Step170EntryGFresh
    s2Step170EntryG_distinct s2Step170EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step170EntryG_reserved
  have rowEq : WindowRow.mk (s2Step170EntryGRow.payload++s2Step170EntryGFresh) s2Step170EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step170EntryGvBefore : Arena := s2Step170EntryFBefore

private theorem s2Step170EntryGv_Incoming : rowsOwned s2Step170EntryGvBefore [s2Step170EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step170EntryFRow,s2Step170EntryGRow,s2Step170EntryFvRow,s2Step170EntryGvRow] 3 s2Step170EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step170EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step170EntryGv_Outgoing : rowsOwned s2Step170EntryGvAfter [s2Step170EntryGvOut] :=
  hmrRows_owned_drop s2Step170EntryGvAfter [s2Step170EntryFOut,s2Step170EntryGOut,s2Step170EntryFvOut,s2Step170EntryGvOut] 3 s2Step170EntryBank_outgoingOwned

private theorem s2Step170EntryGv_distinct : (s2Step170EntryGvRow.sign::s2Step170EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170EntryGv_owned : (s2Step170EntryGvRow.sign::s2Step170EntryGvRow.payload).toFinset⊆s2Step170EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step170EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170EntryGv_reserved : s2Step170EntryGvBefore.reserve s2Step170EntryGvFresh.toFinset=some s2Step170EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step170EntryGvFresh,arenaWires]
  · norm_num [s2Step170EntryGvBefore,s2Step170EntryFBefore,s2Step170EntryGvFresh,arenaWires]
  · simp only [s2Step170EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step170EntryGv_checked : planRowResizeLog s2Step170EntryGvBefore s2Step170EntryGvRow 99 s2Step170EntryGvFresh=
    some (s2Step170EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩,growRow 771 s2Step170EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step170EntryGvBefore s2Step170EntryGvAfter s2Step170EntryGvRow 99 s2Step170EntryGvFresh
    s2Step170EntryGv_distinct s2Step170EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step170EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step170EntryGvRow.payload++s2Step170EntryGvFresh) s2Step170EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step170EntryBank_rows : planWindowRowsLog s2Step170EntryFBefore [(s2Step170EntryFRow,185),(s2Step170EntryGRow,185),(s2Step170EntryFvRow,99),(s2Step170EntryGvRow,99)] [s2Step170EntryFFresh,s2Step170EntryGFresh,s2Step170EntryFvFresh,s2Step170EntryGvFresh]=
    some (s2Step170EntryGvAfter,[s2Step170EntryFOut,s2Step170EntryGOut,s2Step170EntryFvOut,s2Step170EntryGvOut],(growRow 768 s2Step170EntryFFresh ++ (growRow 769 s2Step170EntryGFresh ++ (growRow 770 s2Step170EntryFvFresh ++ (growRow 771 s2Step170EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step170EntryGvAfter [] []=some (s2Step170EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step170EntryGvBefore s2Step170EntryGvAfter s2Step170EntryGvAfter
    s2Step170EntryGvRow s2Step170EntryGvOut 99 s2Step170EntryGvFresh [] [] []
    (growRow 771 s2Step170EntryGvFresh) ([]) s2Step170EntryGv_Incoming s2Step170EntryGv_checked h4 s2Step170EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step170EntryFvBefore s2Step170EntryFvAfter s2Step170EntryGvAfter
    s2Step170EntryFvRow s2Step170EntryFvOut 99 s2Step170EntryFvFresh [(s2Step170EntryGvRow,99)] [s2Step170EntryGvFresh] [s2Step170EntryGvOut]
    (growRow 770 s2Step170EntryFvFresh) ((growRow 771 s2Step170EntryGvFresh ++ [])) s2Step170EntryFv_Incoming s2Step170EntryFv_checked h3 s2Step170EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step170EntryGBefore s2Step170EntryGAfter s2Step170EntryGvAfter
    s2Step170EntryGRow s2Step170EntryGOut 185 s2Step170EntryGFresh [(s2Step170EntryFvRow,99),(s2Step170EntryGvRow,99)] [s2Step170EntryFvFresh,s2Step170EntryGvFresh] [s2Step170EntryFvOut,s2Step170EntryGvOut]
    (growRow 769 s2Step170EntryGFresh) ((growRow 770 s2Step170EntryFvFresh ++ (growRow 771 s2Step170EntryGvFresh ++ []))) s2Step170EntryG_Incoming s2Step170EntryG_checked h2 s2Step170EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step170EntryFBefore s2Step170EntryFAfter s2Step170EntryGvAfter
    s2Step170EntryFRow s2Step170EntryFOut 185 s2Step170EntryFFresh [(s2Step170EntryGRow,185),(s2Step170EntryFvRow,99),(s2Step170EntryGvRow,99)] [s2Step170EntryGFresh,s2Step170EntryFvFresh,s2Step170EntryGvFresh] [s2Step170EntryGOut,s2Step170EntryFvOut,s2Step170EntryGvOut]
    (growRow 768 s2Step170EntryFFresh) ((growRow 769 s2Step170EntryGFresh ++ (growRow 770 s2Step170EntryFvFresh ++ (growRow 771 s2Step170EntryGvFresh ++ [])))) s2Step170EntryF_Incoming s2Step170EntryF_checked h1 s2Step170EntryF_Outgoing
  exact h0

private theorem s2Step170EntryBank_checked : compileHmrBankResizeLog .entry s2Step170EntryFBefore ⟨s2Step170EntryFRow,s2Step170EntryGRow,s2Step170EntryFvRow,s2Step170EntryGvRow⟩ ⟨185,185,99,99⟩ [s2Step170EntryFFresh,s2Step170EntryGFresh,s2Step170EntryFvFresh,s2Step170EntryGvFresh]=
    some (s2Step170EntryGvAfter,⟨s2Step170EntryFOut,s2Step170EntryGOut,s2Step170EntryFvOut,s2Step170EntryGvOut⟩,(growRow 768 s2Step170EntryFFresh ++ (growRow 769 s2Step170EntryGFresh ++ (growRow 770 s2Step170EntryFvFresh ++ (growRow 771 s2Step170EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step170EntryBank_rows]
  rfl

private def s2Step170ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<184) ∨ (185≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<184) ∨ (185≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170ExitFBefore : Arena := s2Step170ExitGAfter

private def s2Step170ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 793],768⟩

private def s2Step170ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810],770⟩

private def s2Step170ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 785],769⟩

private def s2Step170ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 803],771⟩

private theorem s2Step170ExitBank_incomingDistinct : ([s2Step170ExitGRow,s2Step170ExitFRow,s2Step170ExitFvRow,s2Step170ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170ExitF_Incoming : rowsOwned s2Step170ExitFBefore [s2Step170ExitFRow,s2Step170ExitFvRow,s2Step170ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step170ExitGRow,s2Step170ExitFRow,s2Step170ExitFvRow,s2Step170ExitGvRow] 1 s2Step170ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step170ExitFBefore (fun q => (0≤q ∧ q<184) ∨ (185≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step170ExitBank_outgoingOwned : rowsOwned s2Step170ExitGvAfter [s2Step170ExitGOut,s2Step170ExitFOut,s2Step170ExitFvOut,s2Step170ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step170ExitGvAfter (fun q => (0≤q ∧ q<184) ∨ (185≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step170ExitF_Outgoing : rowsOwned s2Step170ExitGvAfter [s2Step170ExitFOut,s2Step170ExitFvOut,s2Step170ExitGvOut] :=
  hmrRows_owned_drop s2Step170ExitGvAfter [s2Step170ExitGOut,s2Step170ExitFOut,s2Step170ExitFvOut,s2Step170ExitGvOut] 1 s2Step170ExitBank_outgoingOwned

private theorem s2Step170ExitF_distinct : (s2Step170ExitFRow.sign::s2Step170ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170ExitF_owned : (s2Step170ExitFRow.sign::s2Step170ExitFRow.payload).toFinset⊆s2Step170ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step170ExitFBefore (fun q => (0≤q ∧ q<184) ∨ (185≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170ExitF_retired : s2Step170ExitFBefore.retireSet s2Step170ExitFExtra.toFinset=s2Step170ExitFAfter := by
  unfold Arena.retireSet s2Step170ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step170ExitFBefore,s2Step170ExitGAfter,s2Step170ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step170ExitF_checked : planRowResizeLog s2Step170ExitFBefore s2Step170ExitFRow 185 []=
    some (s2Step170ExitFAfter,s2Step170ExitFOut,shrinkRow 768 s2Step170ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step170ExitFBefore s2Step170ExitFRow 185 s2Step170ExitF_distinct s2Step170ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step170ExitFRow.payload.take 185) s2Step170ExitFRow.sign=s2Step170ExitFOut := by decide +kernel
  have hi : s2Step170ExitFRow.payload.drop 185=s2Step170ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step170ExitF_retired] at result
  exact result

private def s2Step170ExitFvAfter : Arena := s2Step170ExitFAfter

private def s2Step170ExitFvBefore : Arena := s2Step170ExitFAfter

private theorem s2Step170ExitFv_Incoming : rowsOwned s2Step170ExitFvBefore [s2Step170ExitFvRow,s2Step170ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step170ExitGRow,s2Step170ExitFRow,s2Step170ExitFvRow,s2Step170ExitGvRow] 2 s2Step170ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step170ExitFvBefore (fun q => (0≤q ∧ q<184) ∨ (185≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step170ExitFv_Outgoing : rowsOwned s2Step170ExitGvAfter [s2Step170ExitFvOut,s2Step170ExitGvOut] :=
  hmrRows_owned_drop s2Step170ExitGvAfter [s2Step170ExitGOut,s2Step170ExitFOut,s2Step170ExitFvOut,s2Step170ExitGvOut] 2 s2Step170ExitBank_outgoingOwned

private theorem s2Step170ExitFv_distinct : (s2Step170ExitFvRow.sign::s2Step170ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170ExitFv_owned : (s2Step170ExitFvRow.sign::s2Step170ExitFvRow.payload).toFinset⊆s2Step170ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step170ExitFvBefore (fun q => (0≤q ∧ q<184) ∨ (185≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170ExitFv_reserved : s2Step170ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step170ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step170ExitFv_checked : planRowResizeLog s2Step170ExitFvBefore s2Step170ExitFvRow 100 []=
    some (s2Step170ExitFvAfter,s2Step170ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step170ExitFvBefore s2Step170ExitFvAfter s2Step170ExitFvRow 100 []
    s2Step170ExitFv_distinct s2Step170ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step170ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step170ExitFvRow.payload++[]) s2Step170ExitFvRow.sign=s2Step170ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step170ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step170ExitG_Incoming : rowsOwned s2Step170ExitGBefore [s2Step170ExitGRow,s2Step170ExitFRow,s2Step170ExitFvRow,s2Step170ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step170ExitGRow,s2Step170ExitFRow,s2Step170ExitFvRow,s2Step170ExitGvRow] 0 s2Step170ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step170ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step170ExitG_Outgoing : rowsOwned s2Step170ExitGvAfter [s2Step170ExitGOut,s2Step170ExitFOut,s2Step170ExitFvOut,s2Step170ExitGvOut] :=
  hmrRows_owned_drop s2Step170ExitGvAfter [s2Step170ExitGOut,s2Step170ExitFOut,s2Step170ExitFvOut,s2Step170ExitGvOut] 0 s2Step170ExitBank_outgoingOwned

private theorem s2Step170ExitG_distinct : (s2Step170ExitGRow.sign::s2Step170ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170ExitG_owned : (s2Step170ExitGRow.sign::s2Step170ExitGRow.payload).toFinset⊆s2Step170ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step170ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170ExitG_retired : s2Step170ExitGBefore.retireSet s2Step170ExitGExtra.toFinset=s2Step170ExitGAfter := by
  unfold Arena.retireSet s2Step170ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step170ExitGBefore,s2Step170ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step170ExitG_checked : planRowResizeLog s2Step170ExitGBefore s2Step170ExitGRow 184 []=
    some (s2Step170ExitGAfter,s2Step170ExitGOut,shrinkRow 769 s2Step170ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step170ExitGBefore s2Step170ExitGRow 184 s2Step170ExitG_distinct s2Step170ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step170ExitGRow.payload.take 184) s2Step170ExitGRow.sign=s2Step170ExitGOut := by decide +kernel
  have hi : s2Step170ExitGRow.payload.drop 184=s2Step170ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step170ExitG_retired] at result
  exact result

private def s2Step170ExitGvBefore : Arena := s2Step170ExitFAfter

private theorem s2Step170ExitGv_Incoming : rowsOwned s2Step170ExitGvBefore [s2Step170ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step170ExitGRow,s2Step170ExitFRow,s2Step170ExitFvRow,s2Step170ExitGvRow] 3 s2Step170ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step170ExitGvBefore (fun q => (0≤q ∧ q<184) ∨ (185≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step170ExitGv_Outgoing : rowsOwned s2Step170ExitGvAfter [s2Step170ExitGvOut] :=
  hmrRows_owned_drop s2Step170ExitGvAfter [s2Step170ExitGOut,s2Step170ExitFOut,s2Step170ExitFvOut,s2Step170ExitGvOut] 3 s2Step170ExitBank_outgoingOwned

private theorem s2Step170ExitGv_distinct : (s2Step170ExitGvRow.sign::s2Step170ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170ExitGv_owned : (s2Step170ExitGvRow.sign::s2Step170ExitGvRow.payload).toFinset⊆s2Step170ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step170ExitGvBefore (fun q => (0≤q ∧ q<184) ∨ (185≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170ExitGv_retired : s2Step170ExitGvBefore.retireSet s2Step170ExitGvExtra.toFinset=s2Step170ExitGvAfter := by
  unfold Arena.retireSet s2Step170ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step170ExitGvBefore,s2Step170ExitFAfter,s2Step170ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step170ExitGv_checked : planRowResizeLog s2Step170ExitGvBefore s2Step170ExitGvRow 99 []=
    some (s2Step170ExitGvAfter,s2Step170ExitGvOut,shrinkRow 771 s2Step170ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step170ExitGvBefore s2Step170ExitGvRow 99 s2Step170ExitGv_distinct s2Step170ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step170ExitGvRow.payload.take 99) s2Step170ExitGvRow.sign=s2Step170ExitGvOut := by decide +kernel
  have hi : s2Step170ExitGvRow.payload.drop 99=s2Step170ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step170ExitGv_retired] at result
  exact result

private theorem s2Step170ExitBank_rows : planWindowRowsLog s2Step170ExitGBefore [(s2Step170ExitGRow,184),(s2Step170ExitFRow,185),(s2Step170ExitFvRow,100),(s2Step170ExitGvRow,99)] [[],[],[],[]]=
    some (s2Step170ExitGvAfter,[s2Step170ExitGOut,s2Step170ExitFOut,s2Step170ExitFvOut,s2Step170ExitGvOut],(shrinkRow 769 s2Step170ExitGExtra ++ (shrinkRow 768 s2Step170ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step170ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step170ExitGvAfter [] []=some (s2Step170ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step170ExitGvBefore s2Step170ExitGvAfter s2Step170ExitGvAfter
    s2Step170ExitGvRow s2Step170ExitGvOut 99 [] [] [] []
    (shrinkRow 771 s2Step170ExitGvExtra) ([]) s2Step170ExitGv_Incoming s2Step170ExitGv_checked h4 s2Step170ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step170ExitFvBefore s2Step170ExitFvAfter s2Step170ExitGvAfter
    s2Step170ExitFvRow s2Step170ExitFvOut 100 [] [(s2Step170ExitGvRow,99)] [[]] [s2Step170ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step170ExitGvExtra ++ [])) s2Step170ExitFv_Incoming s2Step170ExitFv_checked h3 s2Step170ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step170ExitFBefore s2Step170ExitFAfter s2Step170ExitGvAfter
    s2Step170ExitFRow s2Step170ExitFOut 185 [] [(s2Step170ExitFvRow,100),(s2Step170ExitGvRow,99)] [[],[]] [s2Step170ExitFvOut,s2Step170ExitGvOut]
    (shrinkRow 768 s2Step170ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step170ExitGvExtra ++ []))) s2Step170ExitF_Incoming s2Step170ExitF_checked h2 s2Step170ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step170ExitGBefore s2Step170ExitGAfter s2Step170ExitGvAfter
    s2Step170ExitGRow s2Step170ExitGOut 184 [] [(s2Step170ExitFRow,185),(s2Step170ExitFvRow,100),(s2Step170ExitGvRow,99)] [[],[],[]] [s2Step170ExitFOut,s2Step170ExitFvOut,s2Step170ExitGvOut]
    (shrinkRow 769 s2Step170ExitGExtra) ((shrinkRow 768 s2Step170ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step170ExitGvExtra ++ [])))) s2Step170ExitG_Incoming s2Step170ExitG_checked h1 s2Step170ExitG_Outgoing
  exact h0

private theorem s2Step170ExitBank_checked : compileHmrBankResizeLog .exit s2Step170ExitGBefore ⟨s2Step170ExitFRow,s2Step170ExitGRow,s2Step170ExitFvRow,s2Step170ExitGvRow⟩ ⟨185,184,100,99⟩ [[],[],[],[]]=
    some (s2Step170ExitGvAfter,⟨s2Step170ExitFOut,s2Step170ExitGOut,s2Step170ExitFvOut,s2Step170ExitGvOut⟩,(shrinkRow 769 s2Step170ExitGExtra ++ (shrinkRow 768 s2Step170ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step170ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step170ExitBank_rows]
  rfl

private theorem s2Step170Add0_apart : Disjoint s2Step170Add0Arena.live s2Step170Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step170Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170Add0_card : s2Step170Add0Arena.live.card=884 := by
  decide +kernel

private theorem s2Step170Add0_borrowed : s2Step170Add0Arena.checkBorrow (hmrHybridCount s2Step170Add0Arena s2Step170Add0B.length) s2Step170Add0Work=some s2Step170Add0During := by
  have len : s2Step170Add0Work.length=hmrHybridCount s2Step170Add0Arena s2Step170Add0B.length := by
    rw [hmrHybridCount,s2Step170Add0_card]
    decide +kernel
  have nd : s2Step170Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step170Add0Arena s2Step170Add0During s2Step170Add0Work.toFinset s2Step170Add0_bounded s2Step170Add0_apart rfl

private theorem s2Step170Add0_distinct : (799::787::847::(s2Step170Add0A++s2Step170Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170Add0_owned : (799::787::847::(s2Step170Add0A++s2Step170Add0B)).toFinset⊆s2Step170Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step170Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170Add0_checked : compileHmrHybridCinLog s2Step170Add0Arena 787 799 847 s2Step170Add0A s2Step170Add0B s2Step170Add0Work=some s2Step170Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step170Add0Arena s2Step170Add0During 787 799 847 s2Step170Add0A s2Step170Add0B s2Step170Add0Work
    (by decide +kernel) (by decide +kernel) s2Step170Add0_distinct
    (fun q hq => s2Step170Add0_owned (List.mem_toFinset.mpr hq)) s2Step170Add0_borrowed

private theorem s2Step170Add1_apart : Disjoint s2Step170Add1Arena.live s2Step170Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step170Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170Add1_card : s2Step170Add1Arena.live.card=884 := by
  decide +kernel

private theorem s2Step170Add1_borrowed : s2Step170Add1Arena.checkBorrow (hmrHybridCount s2Step170Add1Arena s2Step170Add1B.length) s2Step170Add1Work=some s2Step170Add1During := by
  have len : s2Step170Add1Work.length=hmrHybridCount s2Step170Add1Arena s2Step170Add1B.length := by
    rw [hmrHybridCount,s2Step170Add1_card]
    decide +kernel
  have nd : s2Step170Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step170Add1Arena s2Step170Add1During s2Step170Add1Work.toFinset s2Step170Add1_bounded s2Step170Add1_apart rfl

private theorem s2Step170Add1_distinct : (799::787::847::(s2Step170Add1A++s2Step170Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170Add1_owned : (799::787::847::(s2Step170Add1A++s2Step170Add1B)).toFinset⊆s2Step170Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step170Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170Add1_checked : compileHmrHybridCinLog s2Step170Add1Arena 787 799 847 s2Step170Add1A s2Step170Add1B s2Step170Add1Work=some s2Step170Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step170Add1Arena s2Step170Add1During 787 799 847 s2Step170Add1A s2Step170Add1B s2Step170Add1Work
    (by decide +kernel) (by decide +kernel) s2Step170Add1_distinct
    (fun q hq => s2Step170Add1_owned (List.mem_toFinset.mpr hq)) s2Step170Add1_borrowed

private theorem s2Step170F4_apart : Disjoint (s2Step170Add0A++s2Step170Add0B).toFinset (s2Step170Add1A++s2Step170Add1B).toFinset := by
  have nd : ((s2Step170Add0A++s2Step170Add0B)++(s2Step170Add1A++s2Step170Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step170F4_carry : s2Step170F4FlagArena.checkBorrow 1 [847]=some s2Step170Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step170F4FlagArena,s2Step170HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step170F4FlagArena,s2Step170HeadFvAfter,s2Step170Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step170F4_distinct : (820::787::799::847::((s2Step170Add0A++s2Step170Add1A)++(s2Step170Add0B++s2Step170Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170F4_flag : s2Step170HeadFvAfter.checkBorrow 1 [799]=some s2Step170F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step170HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step170F4_owned : (820::787::((s2Step170Add0A++s2Step170Add1A)++(s2Step170Add0B++s2Step170Add1B))).toFinset⊆s2Step170HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step170HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170F4_checked : compileHmrHybridF4Log s2Step170HeadFvAfter 820 787 s2Step170Add0A s2Step170Add0B s2Step170Add1A s2Step170Add1B [799] [847] s2Step170Add0Work s2Step170Add1Work=some s2Step170F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step170HeadFvAfter s2Step170F4FlagArena s2Step170Add0Arena s2Step170Add0During s2Step170Add1During 820 787
    s2Step170Add0A s2Step170Add0B s2Step170Add1A s2Step170Add1B [799] [847] s2Step170Add0Work s2Step170Add1Work
    (fun q hq => s2Step170F4_owned (List.mem_toFinset.mpr hq)) s2Step170F4_flag s2Step170F4_carry
    s2Step170F4_distinct s2Step170F4_apart s2Step170Add0_checked s2Step170Add1_checked

private theorem s2Step170Front_branch : s2Step170FrontSigmaArena.checkBorrow 1 [787]=some s2Step170HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step170FrontSigmaArena,s2Step170EntryGvAfter,s2Step170EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step170FrontSigmaArena,s2Step170EntryGvAfter,s2Step170EntryFBefore,s2Step170HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step170Front_entry : HmrFrontEntryValid s2Step170EntryFBefore s2Step170FrontBank 185 99 ⟨185,184,100,99⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step170FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step170EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step170EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step170FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step170Front_sigma : s2Step170EntryGvAfter.checkBorrow 1 [820]=some s2Step170FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step170EntryGvAfter,s2Step170EntryFBefore,arenaWires]
  · rfl

private def s2Step170HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170HeadFBefore : Arena := s2Step170HeadGAfter

private def s2Step170HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩

private def s2Step170HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812],770⟩

private def s2Step170HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],769⟩

private def s2Step170HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩

private theorem s2Step170HeadBank_incomingDistinct : ([s2Step170HeadGRow,s2Step170HeadFRow,s2Step170HeadGvRow,s2Step170HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170HeadF_Incoming : rowsOwned s2Step170HeadFBefore [s2Step170HeadFRow,s2Step170HeadGvRow,s2Step170HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step170HeadGRow,s2Step170HeadFRow,s2Step170HeadGvRow,s2Step170HeadFvRow] 1 s2Step170HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step170HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step170HeadBank_outgoingOwned : rowsOwned s2Step170HeadFvAfter [s2Step170HeadGOut,s2Step170HeadFOut,s2Step170HeadGvOut,s2Step170HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step170HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step170HeadF_Outgoing : rowsOwned s2Step170HeadFvAfter [s2Step170HeadFOut,s2Step170HeadGvOut,s2Step170HeadFvOut] :=
  hmrRows_owned_drop s2Step170HeadFvAfter [s2Step170HeadGOut,s2Step170HeadFOut,s2Step170HeadGvOut,s2Step170HeadFvOut] 1 s2Step170HeadBank_outgoingOwned

private theorem s2Step170HeadF_distinct : (s2Step170HeadFRow.sign::s2Step170HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170HeadF_owned : (s2Step170HeadFRow.sign::s2Step170HeadFRow.payload).toFinset⊆s2Step170HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step170HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170HeadF_reserved : s2Step170HeadFBefore.reserve s2Step170HeadFFresh.toFinset=some s2Step170HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step170HeadFFresh,arenaWires]
  · norm_num [s2Step170HeadFBefore,s2Step170HeadGAfter,s2Step170HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step170HeadFAfter,s2Step170HeadFBefore,s2Step170HeadGAfter,s2Step170HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step170HeadF_checked : planRowResizeLog s2Step170HeadFBefore s2Step170HeadFRow 186 s2Step170HeadFFresh=
    some (s2Step170HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 793],768⟩,growRow 768 s2Step170HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step170HeadFBefore s2Step170HeadFAfter s2Step170HeadFRow 186 s2Step170HeadFFresh
    s2Step170HeadF_distinct s2Step170HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step170HeadF_reserved
  have rowEq : WindowRow.mk (s2Step170HeadFRow.payload++s2Step170HeadFFresh) s2Step170HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 793],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step170HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step170HeadFvBefore : Arena := s2Step170HeadGvAfter

private theorem s2Step170HeadFv_Incoming : rowsOwned s2Step170HeadFvBefore [s2Step170HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step170HeadGRow,s2Step170HeadFRow,s2Step170HeadGvRow,s2Step170HeadFvRow] 3 s2Step170HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step170HeadFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step170HeadFv_Outgoing : rowsOwned s2Step170HeadFvAfter [s2Step170HeadFvOut] :=
  hmrRows_owned_drop s2Step170HeadFvAfter [s2Step170HeadGOut,s2Step170HeadFOut,s2Step170HeadGvOut,s2Step170HeadFvOut] 3 s2Step170HeadBank_outgoingOwned

private theorem s2Step170HeadFv_distinct : (s2Step170HeadFvRow.sign::s2Step170HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170HeadFv_owned : (s2Step170HeadFvRow.sign::s2Step170HeadFvRow.payload).toFinset⊆s2Step170HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step170HeadFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170HeadFv_reserved : s2Step170HeadFvBefore.reserve s2Step170HeadFvFresh.toFinset=some s2Step170HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step170HeadFvFresh,arenaWires]
  · norm_num [s2Step170HeadFvBefore,s2Step170HeadGvAfter,s2Step170HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step170HeadFvAfter,s2Step170HeadFvBefore,s2Step170HeadGvAfter,s2Step170HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step170HeadFv_checked : planRowResizeLog s2Step170HeadFvBefore s2Step170HeadFvRow 100 s2Step170HeadFvFresh=
    some (s2Step170HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810],770⟩,growRow 770 s2Step170HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step170HeadFvBefore s2Step170HeadFvAfter s2Step170HeadFvRow 100 s2Step170HeadFvFresh
    s2Step170HeadFv_distinct s2Step170HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step170HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step170HeadFvRow.payload++s2Step170HeadFvFresh) s2Step170HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step170HeadG_Incoming : rowsOwned s2Step170HeadGBefore [s2Step170HeadGRow,s2Step170HeadFRow,s2Step170HeadGvRow,s2Step170HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step170HeadGRow,s2Step170HeadFRow,s2Step170HeadGvRow,s2Step170HeadFvRow] 0 s2Step170HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step170HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step170HeadG_Outgoing : rowsOwned s2Step170HeadFvAfter [s2Step170HeadGOut,s2Step170HeadFOut,s2Step170HeadGvOut,s2Step170HeadFvOut] :=
  hmrRows_owned_drop s2Step170HeadFvAfter [s2Step170HeadGOut,s2Step170HeadFOut,s2Step170HeadGvOut,s2Step170HeadFvOut] 0 s2Step170HeadBank_outgoingOwned

private theorem s2Step170HeadG_distinct : (s2Step170HeadGRow.sign::s2Step170HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170HeadG_owned : (s2Step170HeadGRow.sign::s2Step170HeadGRow.payload).toFinset⊆s2Step170HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step170HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170HeadG_reserved : s2Step170HeadGBefore.reserve s2Step170HeadGFresh.toFinset=some s2Step170HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step170HeadGFresh,arenaWires]
  · norm_num [s2Step170HeadGBefore,s2Step170HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step170HeadGAfter,s2Step170HeadGBefore,s2Step170HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step170HeadG_checked : planRowResizeLog s2Step170HeadGBefore s2Step170HeadGRow 186 s2Step170HeadGFresh=
    some (s2Step170HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 785],769⟩,growRow 769 s2Step170HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step170HeadGBefore s2Step170HeadGAfter s2Step170HeadGRow 186 s2Step170HeadGFresh
    s2Step170HeadG_distinct s2Step170HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step170HeadG_reserved
  have rowEq : WindowRow.mk (s2Step170HeadGRow.payload++s2Step170HeadGFresh) s2Step170HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step170HeadGvBefore : Arena := s2Step170HeadFAfter

private theorem s2Step170HeadGv_Incoming : rowsOwned s2Step170HeadGvBefore [s2Step170HeadGvRow,s2Step170HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step170HeadGRow,s2Step170HeadFRow,s2Step170HeadGvRow,s2Step170HeadFvRow] 2 s2Step170HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step170HeadGvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step170HeadGv_Outgoing : rowsOwned s2Step170HeadFvAfter [s2Step170HeadGvOut,s2Step170HeadFvOut] :=
  hmrRows_owned_drop s2Step170HeadFvAfter [s2Step170HeadGOut,s2Step170HeadFOut,s2Step170HeadGvOut,s2Step170HeadFvOut] 2 s2Step170HeadBank_outgoingOwned

private theorem s2Step170HeadGv_distinct : (s2Step170HeadGvRow.sign::s2Step170HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step170HeadGv_owned : (s2Step170HeadGvRow.sign::s2Step170HeadGvRow.payload).toFinset⊆s2Step170HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step170HeadGvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step170HeadGv_reserved : s2Step170HeadGvBefore.reserve s2Step170HeadGvFresh.toFinset=some s2Step170HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step170HeadGvFresh,arenaWires]
  · norm_num [s2Step170HeadGvBefore,s2Step170HeadFAfter,s2Step170HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step170HeadGvAfter,s2Step170HeadGvBefore,s2Step170HeadFAfter,s2Step170HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step170HeadGv_checked : planRowResizeLog s2Step170HeadGvBefore s2Step170HeadGvRow 100 s2Step170HeadGvFresh=
    some (s2Step170HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 803],771⟩,growRow 771 s2Step170HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step170HeadGvBefore s2Step170HeadGvAfter s2Step170HeadGvRow 100 s2Step170HeadGvFresh
    s2Step170HeadGv_distinct s2Step170HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step170HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step170HeadGvRow.payload++s2Step170HeadGvFresh) s2Step170HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 803],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step170HeadBank_rows : planWindowRowsLog s2Step170HeadGBefore [(s2Step170HeadGRow,186),(s2Step170HeadFRow,186),(s2Step170HeadGvRow,100),(s2Step170HeadFvRow,100)] [s2Step170HeadGFresh,s2Step170HeadFFresh,s2Step170HeadGvFresh,s2Step170HeadFvFresh]=
    some (s2Step170HeadFvAfter,[s2Step170HeadGOut,s2Step170HeadFOut,s2Step170HeadGvOut,s2Step170HeadFvOut],(growRow 769 s2Step170HeadGFresh ++ (growRow 768 s2Step170HeadFFresh ++ (growRow 771 s2Step170HeadGvFresh ++ (growRow 770 s2Step170HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step170HeadFvAfter [] []=some (s2Step170HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step170HeadFvBefore s2Step170HeadFvAfter s2Step170HeadFvAfter
    s2Step170HeadFvRow s2Step170HeadFvOut 100 s2Step170HeadFvFresh [] [] []
    (growRow 770 s2Step170HeadFvFresh) ([]) s2Step170HeadFv_Incoming s2Step170HeadFv_checked h4 s2Step170HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step170HeadGvBefore s2Step170HeadGvAfter s2Step170HeadFvAfter
    s2Step170HeadGvRow s2Step170HeadGvOut 100 s2Step170HeadGvFresh [(s2Step170HeadFvRow,100)] [s2Step170HeadFvFresh] [s2Step170HeadFvOut]
    (growRow 771 s2Step170HeadGvFresh) ((growRow 770 s2Step170HeadFvFresh ++ [])) s2Step170HeadGv_Incoming s2Step170HeadGv_checked h3 s2Step170HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step170HeadFBefore s2Step170HeadFAfter s2Step170HeadFvAfter
    s2Step170HeadFRow s2Step170HeadFOut 186 s2Step170HeadFFresh [(s2Step170HeadGvRow,100),(s2Step170HeadFvRow,100)] [s2Step170HeadGvFresh,s2Step170HeadFvFresh] [s2Step170HeadGvOut,s2Step170HeadFvOut]
    (growRow 768 s2Step170HeadFFresh) ((growRow 771 s2Step170HeadGvFresh ++ (growRow 770 s2Step170HeadFvFresh ++ []))) s2Step170HeadF_Incoming s2Step170HeadF_checked h2 s2Step170HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step170HeadGBefore s2Step170HeadGAfter s2Step170HeadFvAfter
    s2Step170HeadGRow s2Step170HeadGOut 186 s2Step170HeadGFresh [(s2Step170HeadFRow,186),(s2Step170HeadGvRow,100),(s2Step170HeadFvRow,100)] [s2Step170HeadFFresh,s2Step170HeadGvFresh,s2Step170HeadFvFresh] [s2Step170HeadFOut,s2Step170HeadGvOut,s2Step170HeadFvOut]
    (growRow 769 s2Step170HeadGFresh) ((growRow 768 s2Step170HeadFFresh ++ (growRow 771 s2Step170HeadGvFresh ++ (growRow 770 s2Step170HeadFvFresh ++ [])))) s2Step170HeadG_Incoming s2Step170HeadG_checked h1 s2Step170HeadG_Outgoing
  exact h0

private theorem s2Step170HeadBank_checked : compileHmrBankResizeLog .headroom s2Step170HeadGBefore ⟨s2Step170HeadFRow,s2Step170HeadGRow,s2Step170HeadFvRow,s2Step170HeadGvRow⟩ ⟨186,186,100,100⟩ [s2Step170HeadGFresh,s2Step170HeadFFresh,s2Step170HeadGvFresh,s2Step170HeadFvFresh]=
    some (s2Step170HeadFvAfter,⟨s2Step170HeadFOut,s2Step170HeadGOut,s2Step170HeadFvOut,s2Step170HeadGvOut⟩,(growRow 769 s2Step170HeadGFresh ++ (growRow 768 s2Step170HeadFFresh ++ (growRow 771 s2Step170HeadGvFresh ++ (growRow 770 s2Step170HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step170HeadBank_rows]
  rfl

private theorem s2Step170Front_checked : compileHmrSourceFrontLog s2Step170EntryFBefore s2Step170FrontBank 185 99 ⟨185,184,100,99⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step170FrontLog=some s2Step170FrontPlan := by
  have pairEq : s2Step170FrontPair=⟨s2Step170HeadFRow,s2Step170HeadGRow,s2Step170HeadFvRow,s2Step170HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step170FrontHead=⟨s2Step170ExitFRow,s2Step170ExitGRow,s2Step170ExitFvRow,s2Step170ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step170Add0A=s2Step170FrontHead.f.wires := by decide +kernel
  have gEq : s2Step170Add0B=s2Step170FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step170Add1A=s2Step170FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step170Add1B=s2Step170FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step170EntryFBefore s2Step170FrontBank 185 99 ⟨185,184,100,99⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step170FrontLog s2Step170FrontPlan
  · exact s2Step170Front_entry
  · exact s2Step170EntryBank_checked
  · exact s2Step170Front_sigma
  · rfl
  · exact s2Step170Front_branch
  · rfl
  · simpa only [s2Step170FrontPlan,pairEq] using s2Step170HeadBank_checked
  · simpa only [s2Step170FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step170F4_checked
  · exact s2Step170Counter_checked
  · rfl
  · simpa only [s2Step170FrontPlan,headEq] using s2Step170ExitBank_checked

private theorem s2Step170Complete_explicit_checked : compileHmrEarlyStepLog s2Step170EntryFBefore s2Step170FrontBank 185 99 ⟨185,184,100,99⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step170CompleteLog=some s2Step170CompletePlan := by
  let Q := s2Step170EarlyControlPlan
  have hq := s2Step170EarlyControl_plan_checked
  have fv1 : s2Step170CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step170CompleteOut.fv.payload[2]?.getD s2Step170CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step170CompleteOut.fv.payload[3]?.getD s2Step170CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step170CompleteOut.fv.payload[4]?.getD s2Step170CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step170EntryFBefore s2Step170EarlyControlArena s2Step170FrontBank 185 99 ⟨185,184,100,99⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step170CompleteLog s2Step170FrontPlan Q
    s2Step170Front_checked s2Step170Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step170Complete_owned s2Step170Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step170EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 820 s2Step170CompleteOut.fv.second (s2Step170CompleteOut.fv.payload[2]?.getD s2Step170CompleteOut.fv.sign) (s2Step170CompleteOut.fv.payload[3]?.getD s2Step170CompleteOut.fv.sign) (s2Step170CompleteOut.fv.payload[4]?.getD s2Step170CompleteOut.fv.sign) 787 42 s2Step170EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep170Arena : Arena := s2Step170EntryFBefore
def s2PrivateStep170Bank : WindowBank := s2Step170FrontBank
def s2PrivateStep170Spec : HmrSourceWalkStepLog := ⟨185,99,⟨185,184,100,99⟩,42,.early s2Step170CompleteLog⟩
def s2PrivateStep170Plan : HmrSourceStepPlan := .early s2Step170CompletePlan
theorem s2PrivateStep170_source : s2PrivateStep170Spec=s2ObservedLogs160[10] := rfl
theorem s2PrivateStep170_checked : compileHmrSourceStepLog s2PrivateStep170Arena s2PrivateStep170Bank
    s2PrivateStep170Spec.fgWidth s2PrivateStep170Spec.vWidth s2PrivateStep170Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 170 s2PrivateStep170Spec.need none s2PrivateStep170Spec.log=some s2PrivateStep170Plan := by
  change compileHmrSourceStepLog s2Step170EntryFBefore s2Step170FrontBank 185 99 ⟨185,184,100,99⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 170 42 none (.early s2Step170CompleteLog)=some (.early s2Step170CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 170<498)]
  rw [s2Step170Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
