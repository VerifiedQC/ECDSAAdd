import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep161
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

private def s2Step163CompleteMoves : List (Wire × Wire) := [(808,186)]

private def s2Step163EarlyControlLog : HmrEarlyControlLog := ⟨[808, 849, 811, 799, 803],[785],[847],[780, 867, 877, 879, 882, 885],[]⟩

private def s2Step163FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [803], [], [849]],[[785], [799], [811], [797]],[[], [], [], []]⟩,[810],[793],[847],[780],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[847, 780, 867, 877]⟩

private def s2Step163CompleteLog : HmrEarlyStepLog := ⟨s2Step163FrontLog,s2Step163CompleteMoves,s2Step163EarlyControlLog⟩

private def s2Step163ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩

private def s2Step163ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797],770⟩

private def s2Step163ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185],769⟩

private def s2Step163ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778],771⟩

private def s2Step163FrontOut : WindowBank := ⟨s2Step163ExitFOut,s2Step163ExitGOut,s2Step163ExitFvOut,s2Step163ExitGvOut⟩

private def s2Step163CompleteOut : WindowBank := s2Step163FrontOut.repacked s2Step163CompleteMoves

private def s2Step163EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step163EarlyControlPositiveArena,[785],s2Step163EarlyControlEqualityArena,[847],⟨⟨810,false⟩,[⟨⟨785,false⟩,847⟩]⟩⟩

private def s2Step163EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,808⟩,⟨⟨774,false⟩,849⟩,⟨⟨775,false⟩,811⟩,⟨⟨776,false⟩,799⟩,⟨⟨777,false⟩,803⟩]⟩

private def s2Step163EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step163EarlyControlZeroArena,s2Step163EarlyControlZeroPlan,s2Step163EarlyControlClassPlan,s2Step163EarlyControlFlagArena,s2Step163EarlyControlFittedArena,s2Step163EarlyControlHistoryArena,s2Step163EarlyControlSigmaArena,s2Step163EarlyControlOutputArena,s2Step163EarlyControlLog⟩

private def s2Step163CounterWork : List Wire := [847, 780, 867, 877]

private theorem s2Step163Counter_bounded : s2Step163CounterWork.toFinset⊆arenaWires := by norm_num [s2Step163CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step163HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163CounterDuring : Arena := ⟨s2Step163HeadFvAfter.live∪s2Step163CounterWork.toFinset,Finset.union_subset s2Step163HeadFvAfter.bounded s2Step163Counter_bounded⟩

private def s2Step163EntryFFresh : List Wire := []

private def s2Step163EntryFvFresh : List Wire := []

private def s2Step163EntryGFresh : List Wire := [803]

private def s2Step163EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163EntryGvFresh : List Wire := [849]

private def s2Step163ExitFExtra : List Wire := [799]

private def s2Step163ExitGExtra : List Wire := [186, 803, 785]

private def s2Step163ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<186) ∨ (187≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163ExitGvExtra : List Wire := [849, 811]

private def s2Step163Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163Add0Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step163Add0_bounded : s2Step163Add0Work.toFinset⊆arenaWires := by
  have h : s2Step163Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step163Add0During : Arena := ⟨s2Step163Add0Arena.live∪s2Step163Add0Work.toFinset,Finset.union_subset s2Step163Add0Arena.bounded s2Step163Add0_bounded⟩

private def s2Step163Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163Add1Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step163Add1_bounded : s2Step163Add1Work.toFinset⊆arenaWires := by
  have h : s2Step163Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step163Add1During : Arena := ⟨s2Step163Add1Arena.live∪s2Step163Add1Work.toFinset,Finset.union_subset s2Step163Add1Arena.bounded s2Step163Add1_bounded⟩

private def s2Step163F4FlagArena : Arena := ⟨s2Step163HeadFvAfter.live∪{847},Finset.union_subset s2Step163HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step163F4Plan : HmrHybridF4Plan := ⟨s2Step163F4FlagArena,[847],s2Step163Add0Arena,[780],s2Step163Add0During,s2Step163Add0Work,s2Step163Add1During,s2Step163Add1Work⟩

private def s2Step163HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 799],768⟩

private def s2Step163HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797],770⟩

private def s2Step163HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 803, 785],769⟩

private def s2Step163HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 849, 811],771⟩

private def s2Step163FrontHead : WindowBank := ⟨s2Step163HeadFOut,s2Step163HeadGOut,s2Step163HeadFvOut,s2Step163HeadGvOut⟩

private def s2Step163EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩

private def s2Step163EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804],770⟩

private def s2Step163EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 803],769⟩

private def s2Step163EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 849],771⟩

private def s2Step163FrontPair : WindowBank := ⟨s2Step163EntryFOut,s2Step163EntryGOut,s2Step163EntryFvOut,s2Step163EntryGvOut⟩

private def s2Step163FrontSigmaArena : Arena := ⟨s2Step163EntryGvAfter.live∪{810},Finset.union_subset s2Step163EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step163HeadFFresh : List Wire := [799]

private def s2Step163HeadFvFresh : List Wire := [797]

private def s2Step163HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163HeadGFresh : List Wire := [785]

private def s2Step163HeadGvFresh : List Wire := [811]

private def s2Step163FrontPlan : HmrSourceFront := ⟨s2Step163EntryGvAfter,s2Step163FrontPair,(growRow 768 s2Step163EntryFFresh ++ (growRow 769 s2Step163EntryGFresh ++ (growRow 770 s2Step163EntryFvFresh ++ (growRow 771 s2Step163EntryGvFresh ++ [])))),s2Step163FrontSigmaArena,[810],s2Step163HeadGBefore,[793],
  s2Step163HeadFvAfter,s2Step163FrontHead,(growRow 769 s2Step163HeadGFresh ++ (growRow 768 s2Step163HeadFFresh ++ (growRow 771 s2Step163HeadGvFresh ++ (growRow 770 s2Step163HeadFvFresh ++ [])))),s2Step163F4Plan,s2Step163CounterDuring,s2Step163CounterWork,s2Step163ExitGvAfter,s2Step163FrontOut,(shrinkRow 769 s2Step163ExitGExtra ++ (shrinkRow 768 s2Step163ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step163ExitGvExtra ++ []))))⟩

private def s2Step163CompletePlan : HmrEarlyStepPlan := ⟨s2Step163FrontPlan,s2Step163EarlyControlArena,s2Step163EarlyControlPlan,s2Step163CompleteMoves⟩

private theorem s2Step163Complete_apart : List.Disjoint (s2Step163CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [810, 793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step163CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[810, 793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step163Complete_owned : (s2Step163CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step163EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step163EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step163CompleteMoveArena : Arena := ⟨s2Step163ExitGvAfter.live∪{186},Finset.union_subset s2Step163ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step163Complete_repack : s2Step163ExitGvAfter.checkRepack s2Step163CompleteMoves=some s2Step163EarlyControlArena := by
  have owned : 808∈s2Step163ExitGvAfter.live := by norm_num [s2Step163ExitGvAfter,arenaWires]
  have reserve : s2Step163ExitGvAfter.reserve {186}=some s2Step163CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step163ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step163CompleteMoveArena.retireSet {808}=s2Step163EarlyControlArena := by
    unfold Arena.retireSet s2Step163EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step163CompleteMoveArena,s2Step163ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step163CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step163CompleteMoveArena.retireSet {808}).checkRepack []=some s2Step163EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step163EarlyControl_branchOwned : ([793] : List Wire).toFinset⊆s2Step163EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step163EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163EarlyControl_branch : compileHmrBranchRetirement s2Step163EarlyControlSigmaArena 793=some s2Step163EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step163EarlyControl_branchOwned
  · ext q
    simp [s2Step163EarlyControlOutputArena,s2Step163EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step163EarlyControl_classEqualityBorrow : s2Step163EarlyControlPositiveArena.checkBorrow (([810, 785] : List Wire).length-1) s2Step163EarlyControlLog.classWork=some s2Step163EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step163EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step163EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step163EarlyControlEqualityArena,s2Step163EarlyControlPositiveArena,s2Step163EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step163EarlyControl_classEqualityOwned : ([810, 785] : List Wire).toFinset⊆s2Step163EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step163EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163EarlyControl_classEquality : compileHmrEqualityLog s2Step163EarlyControlPositiveArena [810, 785] 0 s2Step163EarlyControlLog.classWork=some (s2Step163EarlyControlEqualityArena,s2Step163EarlyControlLog.classWork,s2Step163EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step163EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step163EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step163EarlyControl_classOwned : ([777, 803, 810] : List Wire).toFinset⊆s2Step163EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step163EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163EarlyControl_positiveBorrow : s2Step163EarlyControlZeroArena.checkBorrow (1) s2Step163EarlyControlLog.positiveWork=some s2Step163EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step163EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step163EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step163EarlyControlPositiveArena,s2Step163EarlyControlZeroArena,s2Step163EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step163EarlyControl_class : compileHmrSourceClassLog s2Step163EarlyControlZeroArena false 777 s2Step163EarlyControlZeroPlan.top 0 810 s2Step163EarlyControlLog.positiveWork s2Step163EarlyControlLog.classWork=some s2Step163EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step163EarlyControlClassPlan s2Step163EarlyControlZeroArena false 777 s2Step163EarlyControlZeroPlan.top 0 810
  constructor
  · decide +kernel
  · exact s2Step163EarlyControl_classOwned
  · exact s2Step163EarlyControl_positiveBorrow
  · exact s2Step163EarlyControl_classEquality

private theorem s2Step163EarlyControl_entryRecordOwned : ([793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step163EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step163EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163EarlyControl_entrySigmaOwned : ([810, 254] : List Wire).toFinset⊆s2Step163EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step163EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163EarlyControl_fitBorrow : s2Step163EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step163EarlyControlLog.recordFresh=some s2Step163EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step163EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step163EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step163EarlyControlFittedArena,s2Step163EarlyControlFlagArena,s2Step163EarlyControlLog,arenaWires]

private theorem s2Step163EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step163EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step163EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163EarlyControl_fit : compileHmrRecordGrowLog s2Step163EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step163EarlyControlLog.recordFresh=some s2Step163EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step163EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step163EarlyControl_fitBorrow

private theorem s2Step163EarlyControl_flagsBorrow : s2Step163EarlyControlEqualityArena.checkBorrow (6) s2Step163EarlyControlLog.flagWork=some s2Step163EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step163EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step163EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step163EarlyControlFlagArena,s2Step163EarlyControlEqualityArena,s2Step163EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step163EarlyControl_flagsOwned : ([847, 253, 252, 251] : List Wire).toFinset⊆s2Step163EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step163EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163EarlyControl_flags : compileHmrFlagsLog s2Step163EarlyControlClassPlan.equalityArena s2Step163EarlyControlClassPlan.equality.top 253 252 251 s2Step163EarlyControlLog.flagWork=some s2Step163EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step163EarlyControl_flagsOwned⟩
  · exact s2Step163EarlyControl_flagsBorrow

private theorem s2Step163EarlyControl_historyBorrow : s2Step163EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step163EarlyControlLog.recordFresh=some s2Step163EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step163EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step163EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step163EarlyControlHistoryArena,s2Step163EarlyControlArena,s2Step163EarlyControlLog,arenaWires]

private theorem s2Step163EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step163EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step163EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163EarlyControl_history : compileHmrRecordGrowLog s2Step163EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step163EarlyControlLog.recordFresh=some s2Step163EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step163EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step163EarlyControl_historyBorrow

private theorem s2Step163EarlyControl_sigmaOwned : ([254, 810] : List Wire).toFinset⊆s2Step163EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step163EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163EarlyControl_sigmaReleaseOwned : ([810] : List Wire).toFinset⊆s2Step163EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step163EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163EarlyControl_sigmaRelease : s2Step163EarlyControlHistoryArena.release {810} (fun _ => false)=some s2Step163EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step163EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step163EarlyControlSigmaArena,s2Step163EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step163EarlyControl_sigma : compileHmrSigmaDropLog s2Step163EarlyControlHistoryArena false 0 0 254 810 []=some s2Step163EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step163EarlyControl_sigmaOwned⟩
  · exact s2Step163EarlyControl_sigmaRelease

private theorem s2Step163EarlyControl_zeroBorrow : s2Step163EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step163EarlyControlLog.zeroWork=some s2Step163EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step163EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step163EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step163EarlyControlZeroArena,s2Step163EarlyControlArena,s2Step163EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step163EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step163EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step163EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163EarlyControl_zero : compileHmrEqualityLog s2Step163EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step163EarlyControlLog.zeroWork=some (s2Step163EarlyControlZeroArena,s2Step163EarlyControlLog.zeroWork,s2Step163EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step163EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step163EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step163EarlyControl_logged : s2Step163EarlyControlPlan.Logged s2Step163EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 810 254 253 252 251 793 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step163EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step163EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step163EarlyControl_zero
  · exact s2Step163EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step163EarlyControl_flags
  · exact s2Step163EarlyControl_fit
  · exact s2Step163EarlyControl_history
  · exact s2Step163EarlyControl_sigma
  · exact s2Step163EarlyControl_branch

private theorem s2Step163EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step163EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 810 254 253 252 251 793 42 s2Step163EarlyControlLog=some s2Step163EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step163EarlyControlPlan s2Step163EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 810 254 253 252 251 793 42 s2Step163EarlyControl_logged

private def s2Step163EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩

private def s2Step163EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804],770⟩

private def s2Step163EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186],769⟩

private def s2Step163EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778],771⟩

private def s2Step163FrontBank : WindowBank := ⟨s2Step163EntryFRow,s2Step163EntryGRow,s2Step163EntryFvRow,s2Step163EntryGvRow⟩

private def s2Step163Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 799, 768]

private def s2Step163Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 803, 785, 769]

private def s2Step163Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 770]

private def s2Step163Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 849, 811, 771]

private theorem s2Step163Counter_apart : Disjoint s2Step163HeadFvAfter.live s2Step163CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step163HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163Counter_borrowed : s2Step163HeadFvAfter.checkBorrow 4 s2Step163CounterWork=some s2Step163CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step163HeadFvAfter s2Step163CounterDuring s2Step163CounterWork.toFinset s2Step163Counter_bounded s2Step163Counter_apart rfl

private theorem s2Step163Counter_owned : (810::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step163HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step163HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163Counter_checked : compileHmrCounterStepLog s2Step163HeadFvAfter true 810 [772, 773, 774, 775, 776, 777] s2Step163CounterWork=some s2Step163CounterDuring := by
  have owned : ∀q∈810::[772, 773, 774, 775, 776, 777],q∈s2Step163HeadFvAfter.live := fun q hq => s2Step163Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step163Counter_borrowed

private def s2Step163EntryFAfter : Arena := s2Step163EntryFBefore

private theorem s2Step163EntryBank_incomingDistinct : ([s2Step163EntryFRow,s2Step163EntryGRow,s2Step163EntryFvRow,s2Step163EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163EntryF_Incoming : rowsOwned s2Step163EntryFBefore [s2Step163EntryFRow,s2Step163EntryGRow,s2Step163EntryFvRow,s2Step163EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step163EntryFRow,s2Step163EntryGRow,s2Step163EntryFvRow,s2Step163EntryGvRow] 0 s2Step163EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step163EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step163EntryBank_outgoingOwned : rowsOwned s2Step163EntryGvAfter [s2Step163EntryFOut,s2Step163EntryGOut,s2Step163EntryFvOut,s2Step163EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step163EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step163EntryF_Outgoing : rowsOwned s2Step163EntryGvAfter [s2Step163EntryFOut,s2Step163EntryGOut,s2Step163EntryFvOut,s2Step163EntryGvOut] :=
  hmrRows_owned_drop s2Step163EntryGvAfter [s2Step163EntryFOut,s2Step163EntryGOut,s2Step163EntryFvOut,s2Step163EntryGvOut] 0 s2Step163EntryBank_outgoingOwned

private theorem s2Step163EntryF_distinct : (s2Step163EntryFRow.sign::s2Step163EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163EntryF_owned : (s2Step163EntryFRow.sign::s2Step163EntryFRow.payload).toFinset⊆s2Step163EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step163EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163EntryF_reserved : s2Step163EntryFBefore.reserve s2Step163EntryFFresh.toFinset=some s2Step163EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step163EntryFFresh,arenaWires]
  · norm_num [s2Step163EntryFBefore,s2Step163EntryFFresh,arenaWires]
  · simp only [s2Step163EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step163EntryF_checked : planRowResizeLog s2Step163EntryFBefore s2Step163EntryFRow 188 s2Step163EntryFFresh=
    some (s2Step163EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩,growRow 768 s2Step163EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step163EntryFBefore s2Step163EntryFAfter s2Step163EntryFRow 188 s2Step163EntryFFresh
    s2Step163EntryF_distinct s2Step163EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step163EntryF_reserved
  have rowEq : WindowRow.mk (s2Step163EntryFRow.payload++s2Step163EntryFFresh) s2Step163EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step163EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163EntryFvAfter : Arena := s2Step163EntryGAfter

private def s2Step163EntryFvBefore : Arena := s2Step163EntryGAfter

private theorem s2Step163EntryFv_Incoming : rowsOwned s2Step163EntryFvBefore [s2Step163EntryFvRow,s2Step163EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step163EntryFRow,s2Step163EntryGRow,s2Step163EntryFvRow,s2Step163EntryGvRow] 2 s2Step163EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step163EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step163EntryFv_Outgoing : rowsOwned s2Step163EntryGvAfter [s2Step163EntryFvOut,s2Step163EntryGvOut] :=
  hmrRows_owned_drop s2Step163EntryGvAfter [s2Step163EntryFOut,s2Step163EntryGOut,s2Step163EntryFvOut,s2Step163EntryGvOut] 2 s2Step163EntryBank_outgoingOwned

private theorem s2Step163EntryFv_distinct : (s2Step163EntryFvRow.sign::s2Step163EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163EntryFv_owned : (s2Step163EntryFvRow.sign::s2Step163EntryFvRow.payload).toFinset⊆s2Step163EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step163EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163EntryFv_reserved : s2Step163EntryFvBefore.reserve s2Step163EntryFvFresh.toFinset=some s2Step163EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step163EntryFvFresh,arenaWires]
  · norm_num [s2Step163EntryFvBefore,s2Step163EntryGAfter,s2Step163EntryFvFresh,arenaWires]
  · simp only [s2Step163EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step163EntryFv_checked : planRowResizeLog s2Step163EntryFvBefore s2Step163EntryFvRow 96 s2Step163EntryFvFresh=
    some (s2Step163EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804],770⟩,growRow 770 s2Step163EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step163EntryFvBefore s2Step163EntryFvAfter s2Step163EntryFvRow 96 s2Step163EntryFvFresh
    s2Step163EntryFv_distinct s2Step163EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step163EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step163EntryFvRow.payload++s2Step163EntryFvFresh) s2Step163EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step163EntryGBefore : Arena := s2Step163EntryFBefore

private theorem s2Step163EntryG_Incoming : rowsOwned s2Step163EntryGBefore [s2Step163EntryGRow,s2Step163EntryFvRow,s2Step163EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step163EntryFRow,s2Step163EntryGRow,s2Step163EntryFvRow,s2Step163EntryGvRow] 1 s2Step163EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step163EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step163EntryG_Outgoing : rowsOwned s2Step163EntryGvAfter [s2Step163EntryGOut,s2Step163EntryFvOut,s2Step163EntryGvOut] :=
  hmrRows_owned_drop s2Step163EntryGvAfter [s2Step163EntryFOut,s2Step163EntryGOut,s2Step163EntryFvOut,s2Step163EntryGvOut] 1 s2Step163EntryBank_outgoingOwned

private theorem s2Step163EntryG_distinct : (s2Step163EntryGRow.sign::s2Step163EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163EntryG_owned : (s2Step163EntryGRow.sign::s2Step163EntryGRow.payload).toFinset⊆s2Step163EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step163EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163EntryG_reserved : s2Step163EntryGBefore.reserve s2Step163EntryGFresh.toFinset=some s2Step163EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step163EntryGFresh,arenaWires]
  · norm_num [s2Step163EntryGBefore,s2Step163EntryFBefore,s2Step163EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step163EntryGAfter,s2Step163EntryGBefore,s2Step163EntryFBefore,s2Step163EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step163EntryG_checked : planRowResizeLog s2Step163EntryGBefore s2Step163EntryGRow 188 s2Step163EntryGFresh=
    some (s2Step163EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 803],769⟩,growRow 769 s2Step163EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step163EntryGBefore s2Step163EntryGAfter s2Step163EntryGRow 188 s2Step163EntryGFresh
    s2Step163EntryG_distinct s2Step163EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step163EntryG_reserved
  have rowEq : WindowRow.mk (s2Step163EntryGRow.payload++s2Step163EntryGFresh) s2Step163EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 803],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step163EntryGvBefore : Arena := s2Step163EntryGAfter

private theorem s2Step163EntryGv_Incoming : rowsOwned s2Step163EntryGvBefore [s2Step163EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step163EntryFRow,s2Step163EntryGRow,s2Step163EntryFvRow,s2Step163EntryGvRow] 3 s2Step163EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step163EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step163EntryGv_Outgoing : rowsOwned s2Step163EntryGvAfter [s2Step163EntryGvOut] :=
  hmrRows_owned_drop s2Step163EntryGvAfter [s2Step163EntryFOut,s2Step163EntryGOut,s2Step163EntryFvOut,s2Step163EntryGvOut] 3 s2Step163EntryBank_outgoingOwned

private theorem s2Step163EntryGv_distinct : (s2Step163EntryGvRow.sign::s2Step163EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163EntryGv_owned : (s2Step163EntryGvRow.sign::s2Step163EntryGvRow.payload).toFinset⊆s2Step163EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step163EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163EntryGv_reserved : s2Step163EntryGvBefore.reserve s2Step163EntryGvFresh.toFinset=some s2Step163EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step163EntryGvFresh,arenaWires]
  · norm_num [s2Step163EntryGvBefore,s2Step163EntryGAfter,s2Step163EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step163EntryGvAfter,s2Step163EntryGvBefore,s2Step163EntryGAfter,s2Step163EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step163EntryGv_checked : planRowResizeLog s2Step163EntryGvBefore s2Step163EntryGvRow 96 s2Step163EntryGvFresh=
    some (s2Step163EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 849],771⟩,growRow 771 s2Step163EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step163EntryGvBefore s2Step163EntryGvAfter s2Step163EntryGvRow 96 s2Step163EntryGvFresh
    s2Step163EntryGv_distinct s2Step163EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step163EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step163EntryGvRow.payload++s2Step163EntryGvFresh) s2Step163EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 849],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step163EntryBank_rows : planWindowRowsLog s2Step163EntryFBefore [(s2Step163EntryFRow,188),(s2Step163EntryGRow,188),(s2Step163EntryFvRow,96),(s2Step163EntryGvRow,96)] [s2Step163EntryFFresh,s2Step163EntryGFresh,s2Step163EntryFvFresh,s2Step163EntryGvFresh]=
    some (s2Step163EntryGvAfter,[s2Step163EntryFOut,s2Step163EntryGOut,s2Step163EntryFvOut,s2Step163EntryGvOut],(growRow 768 s2Step163EntryFFresh ++ (growRow 769 s2Step163EntryGFresh ++ (growRow 770 s2Step163EntryFvFresh ++ (growRow 771 s2Step163EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step163EntryGvAfter [] []=some (s2Step163EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step163EntryGvBefore s2Step163EntryGvAfter s2Step163EntryGvAfter
    s2Step163EntryGvRow s2Step163EntryGvOut 96 s2Step163EntryGvFresh [] [] []
    (growRow 771 s2Step163EntryGvFresh) ([]) s2Step163EntryGv_Incoming s2Step163EntryGv_checked h4 s2Step163EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step163EntryFvBefore s2Step163EntryFvAfter s2Step163EntryGvAfter
    s2Step163EntryFvRow s2Step163EntryFvOut 96 s2Step163EntryFvFresh [(s2Step163EntryGvRow,96)] [s2Step163EntryGvFresh] [s2Step163EntryGvOut]
    (growRow 770 s2Step163EntryFvFresh) ((growRow 771 s2Step163EntryGvFresh ++ [])) s2Step163EntryFv_Incoming s2Step163EntryFv_checked h3 s2Step163EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step163EntryGBefore s2Step163EntryGAfter s2Step163EntryGvAfter
    s2Step163EntryGRow s2Step163EntryGOut 188 s2Step163EntryGFresh [(s2Step163EntryFvRow,96),(s2Step163EntryGvRow,96)] [s2Step163EntryFvFresh,s2Step163EntryGvFresh] [s2Step163EntryFvOut,s2Step163EntryGvOut]
    (growRow 769 s2Step163EntryGFresh) ((growRow 770 s2Step163EntryFvFresh ++ (growRow 771 s2Step163EntryGvFresh ++ []))) s2Step163EntryG_Incoming s2Step163EntryG_checked h2 s2Step163EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step163EntryFBefore s2Step163EntryFAfter s2Step163EntryGvAfter
    s2Step163EntryFRow s2Step163EntryFOut 188 s2Step163EntryFFresh [(s2Step163EntryGRow,188),(s2Step163EntryFvRow,96),(s2Step163EntryGvRow,96)] [s2Step163EntryGFresh,s2Step163EntryFvFresh,s2Step163EntryGvFresh] [s2Step163EntryGOut,s2Step163EntryFvOut,s2Step163EntryGvOut]
    (growRow 768 s2Step163EntryFFresh) ((growRow 769 s2Step163EntryGFresh ++ (growRow 770 s2Step163EntryFvFresh ++ (growRow 771 s2Step163EntryGvFresh ++ [])))) s2Step163EntryF_Incoming s2Step163EntryF_checked h1 s2Step163EntryF_Outgoing
  exact h0

private theorem s2Step163EntryBank_checked : compileHmrBankResizeLog .entry s2Step163EntryFBefore ⟨s2Step163EntryFRow,s2Step163EntryGRow,s2Step163EntryFvRow,s2Step163EntryGvRow⟩ ⟨188,188,96,96⟩ [s2Step163EntryFFresh,s2Step163EntryGFresh,s2Step163EntryFvFresh,s2Step163EntryGvFresh]=
    some (s2Step163EntryGvAfter,⟨s2Step163EntryFOut,s2Step163EntryGOut,s2Step163EntryFvOut,s2Step163EntryGvOut⟩,(growRow 768 s2Step163EntryFFresh ++ (growRow 769 s2Step163EntryGFresh ++ (growRow 770 s2Step163EntryFvFresh ++ (growRow 771 s2Step163EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step163EntryBank_rows]
  rfl

private def s2Step163ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<186) ∨ (187≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<186) ∨ (187≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163ExitFBefore : Arena := s2Step163ExitGAfter

private def s2Step163ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 799],768⟩

private def s2Step163ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797],770⟩

private def s2Step163ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 803, 785],769⟩

private def s2Step163ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 849, 811],771⟩

private theorem s2Step163ExitBank_incomingDistinct : ([s2Step163ExitGRow,s2Step163ExitFRow,s2Step163ExitFvRow,s2Step163ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163ExitF_Incoming : rowsOwned s2Step163ExitFBefore [s2Step163ExitFRow,s2Step163ExitFvRow,s2Step163ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step163ExitGRow,s2Step163ExitFRow,s2Step163ExitFvRow,s2Step163ExitGvRow] 1 s2Step163ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step163ExitFBefore (fun q => (0≤q ∧ q<186) ∨ (187≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step163ExitBank_outgoingOwned : rowsOwned s2Step163ExitGvAfter [s2Step163ExitGOut,s2Step163ExitFOut,s2Step163ExitFvOut,s2Step163ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step163ExitGvAfter (fun q => (0≤q ∧ q<186) ∨ (187≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step163ExitF_Outgoing : rowsOwned s2Step163ExitGvAfter [s2Step163ExitFOut,s2Step163ExitFvOut,s2Step163ExitGvOut] :=
  hmrRows_owned_drop s2Step163ExitGvAfter [s2Step163ExitGOut,s2Step163ExitFOut,s2Step163ExitFvOut,s2Step163ExitGvOut] 1 s2Step163ExitBank_outgoingOwned

private theorem s2Step163ExitF_distinct : (s2Step163ExitFRow.sign::s2Step163ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163ExitF_owned : (s2Step163ExitFRow.sign::s2Step163ExitFRow.payload).toFinset⊆s2Step163ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step163ExitFBefore (fun q => (0≤q ∧ q<186) ∨ (187≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163ExitF_retired : s2Step163ExitFBefore.retireSet s2Step163ExitFExtra.toFinset=s2Step163ExitFAfter := by
  unfold Arena.retireSet s2Step163ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step163ExitFBefore,s2Step163ExitGAfter,s2Step163ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step163ExitF_checked : planRowResizeLog s2Step163ExitFBefore s2Step163ExitFRow 188 []=
    some (s2Step163ExitFAfter,s2Step163ExitFOut,shrinkRow 768 s2Step163ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step163ExitFBefore s2Step163ExitFRow 188 s2Step163ExitF_distinct s2Step163ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step163ExitFRow.payload.take 188) s2Step163ExitFRow.sign=s2Step163ExitFOut := by decide +kernel
  have hi : s2Step163ExitFRow.payload.drop 188=s2Step163ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step163ExitF_retired] at result
  exact result

private def s2Step163ExitFvAfter : Arena := s2Step163ExitFAfter

private def s2Step163ExitFvBefore : Arena := s2Step163ExitFAfter

private theorem s2Step163ExitFv_Incoming : rowsOwned s2Step163ExitFvBefore [s2Step163ExitFvRow,s2Step163ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step163ExitGRow,s2Step163ExitFRow,s2Step163ExitFvRow,s2Step163ExitGvRow] 2 s2Step163ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step163ExitFvBefore (fun q => (0≤q ∧ q<186) ∨ (187≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step163ExitFv_Outgoing : rowsOwned s2Step163ExitGvAfter [s2Step163ExitFvOut,s2Step163ExitGvOut] :=
  hmrRows_owned_drop s2Step163ExitGvAfter [s2Step163ExitGOut,s2Step163ExitFOut,s2Step163ExitFvOut,s2Step163ExitGvOut] 2 s2Step163ExitBank_outgoingOwned

private theorem s2Step163ExitFv_distinct : (s2Step163ExitFvRow.sign::s2Step163ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163ExitFv_owned : (s2Step163ExitFvRow.sign::s2Step163ExitFvRow.payload).toFinset⊆s2Step163ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step163ExitFvBefore (fun q => (0≤q ∧ q<186) ∨ (187≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163ExitFv_reserved : s2Step163ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step163ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step163ExitFv_checked : planRowResizeLog s2Step163ExitFvBefore s2Step163ExitFvRow 97 []=
    some (s2Step163ExitFvAfter,s2Step163ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step163ExitFvBefore s2Step163ExitFvAfter s2Step163ExitFvRow 97 []
    s2Step163ExitFv_distinct s2Step163ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step163ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step163ExitFvRow.payload++[]) s2Step163ExitFvRow.sign=s2Step163ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step163ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step163ExitG_Incoming : rowsOwned s2Step163ExitGBefore [s2Step163ExitGRow,s2Step163ExitFRow,s2Step163ExitFvRow,s2Step163ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step163ExitGRow,s2Step163ExitFRow,s2Step163ExitFvRow,s2Step163ExitGvRow] 0 s2Step163ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step163ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step163ExitG_Outgoing : rowsOwned s2Step163ExitGvAfter [s2Step163ExitGOut,s2Step163ExitFOut,s2Step163ExitFvOut,s2Step163ExitGvOut] :=
  hmrRows_owned_drop s2Step163ExitGvAfter [s2Step163ExitGOut,s2Step163ExitFOut,s2Step163ExitFvOut,s2Step163ExitGvOut] 0 s2Step163ExitBank_outgoingOwned

private theorem s2Step163ExitG_distinct : (s2Step163ExitGRow.sign::s2Step163ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163ExitG_owned : (s2Step163ExitGRow.sign::s2Step163ExitGRow.payload).toFinset⊆s2Step163ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step163ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163ExitG_retired : s2Step163ExitGBefore.retireSet s2Step163ExitGExtra.toFinset=s2Step163ExitGAfter := by
  unfold Arena.retireSet s2Step163ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step163ExitGBefore,s2Step163ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step163ExitG_checked : planRowResizeLog s2Step163ExitGBefore s2Step163ExitGRow 186 []=
    some (s2Step163ExitGAfter,s2Step163ExitGOut,shrinkRow 769 s2Step163ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step163ExitGBefore s2Step163ExitGRow 186 s2Step163ExitG_distinct s2Step163ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step163ExitGRow.payload.take 186) s2Step163ExitGRow.sign=s2Step163ExitGOut := by decide +kernel
  have hi : s2Step163ExitGRow.payload.drop 186=s2Step163ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step163ExitG_retired] at result
  exact result

private def s2Step163ExitGvBefore : Arena := s2Step163ExitFAfter

private theorem s2Step163ExitGv_Incoming : rowsOwned s2Step163ExitGvBefore [s2Step163ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step163ExitGRow,s2Step163ExitFRow,s2Step163ExitFvRow,s2Step163ExitGvRow] 3 s2Step163ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step163ExitGvBefore (fun q => (0≤q ∧ q<186) ∨ (187≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step163ExitGv_Outgoing : rowsOwned s2Step163ExitGvAfter [s2Step163ExitGvOut] :=
  hmrRows_owned_drop s2Step163ExitGvAfter [s2Step163ExitGOut,s2Step163ExitFOut,s2Step163ExitFvOut,s2Step163ExitGvOut] 3 s2Step163ExitBank_outgoingOwned

private theorem s2Step163ExitGv_distinct : (s2Step163ExitGvRow.sign::s2Step163ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163ExitGv_owned : (s2Step163ExitGvRow.sign::s2Step163ExitGvRow.payload).toFinset⊆s2Step163ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step163ExitGvBefore (fun q => (0≤q ∧ q<186) ∨ (187≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163ExitGv_retired : s2Step163ExitGvBefore.retireSet s2Step163ExitGvExtra.toFinset=s2Step163ExitGvAfter := by
  unfold Arena.retireSet s2Step163ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step163ExitGvBefore,s2Step163ExitFAfter,s2Step163ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step163ExitGv_checked : planRowResizeLog s2Step163ExitGvBefore s2Step163ExitGvRow 95 []=
    some (s2Step163ExitGvAfter,s2Step163ExitGvOut,shrinkRow 771 s2Step163ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step163ExitGvBefore s2Step163ExitGvRow 95 s2Step163ExitGv_distinct s2Step163ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step163ExitGvRow.payload.take 95) s2Step163ExitGvRow.sign=s2Step163ExitGvOut := by decide +kernel
  have hi : s2Step163ExitGvRow.payload.drop 95=s2Step163ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step163ExitGv_retired] at result
  exact result

private theorem s2Step163ExitBank_rows : planWindowRowsLog s2Step163ExitGBefore [(s2Step163ExitGRow,186),(s2Step163ExitFRow,188),(s2Step163ExitFvRow,97),(s2Step163ExitGvRow,95)] [[],[],[],[]]=
    some (s2Step163ExitGvAfter,[s2Step163ExitGOut,s2Step163ExitFOut,s2Step163ExitFvOut,s2Step163ExitGvOut],(shrinkRow 769 s2Step163ExitGExtra ++ (shrinkRow 768 s2Step163ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step163ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step163ExitGvAfter [] []=some (s2Step163ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step163ExitGvBefore s2Step163ExitGvAfter s2Step163ExitGvAfter
    s2Step163ExitGvRow s2Step163ExitGvOut 95 [] [] [] []
    (shrinkRow 771 s2Step163ExitGvExtra) ([]) s2Step163ExitGv_Incoming s2Step163ExitGv_checked h4 s2Step163ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step163ExitFvBefore s2Step163ExitFvAfter s2Step163ExitGvAfter
    s2Step163ExitFvRow s2Step163ExitFvOut 97 [] [(s2Step163ExitGvRow,95)] [[]] [s2Step163ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step163ExitGvExtra ++ [])) s2Step163ExitFv_Incoming s2Step163ExitFv_checked h3 s2Step163ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step163ExitFBefore s2Step163ExitFAfter s2Step163ExitGvAfter
    s2Step163ExitFRow s2Step163ExitFOut 188 [] [(s2Step163ExitFvRow,97),(s2Step163ExitGvRow,95)] [[],[]] [s2Step163ExitFvOut,s2Step163ExitGvOut]
    (shrinkRow 768 s2Step163ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step163ExitGvExtra ++ []))) s2Step163ExitF_Incoming s2Step163ExitF_checked h2 s2Step163ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step163ExitGBefore s2Step163ExitGAfter s2Step163ExitGvAfter
    s2Step163ExitGRow s2Step163ExitGOut 186 [] [(s2Step163ExitFRow,188),(s2Step163ExitFvRow,97),(s2Step163ExitGvRow,95)] [[],[],[]] [s2Step163ExitFOut,s2Step163ExitFvOut,s2Step163ExitGvOut]
    (shrinkRow 769 s2Step163ExitGExtra) ((shrinkRow 768 s2Step163ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step163ExitGvExtra ++ [])))) s2Step163ExitG_Incoming s2Step163ExitG_checked h1 s2Step163ExitG_Outgoing
  exact h0

private theorem s2Step163ExitBank_checked : compileHmrBankResizeLog .exit s2Step163ExitGBefore ⟨s2Step163ExitFRow,s2Step163ExitGRow,s2Step163ExitFvRow,s2Step163ExitGvRow⟩ ⟨188,186,97,95⟩ [[],[],[],[]]=
    some (s2Step163ExitGvAfter,⟨s2Step163ExitFOut,s2Step163ExitGOut,s2Step163ExitFvOut,s2Step163ExitGvOut⟩,(shrinkRow 769 s2Step163ExitGExtra ++ (shrinkRow 768 s2Step163ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step163ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step163ExitBank_rows]
  rfl

private theorem s2Step163Add0_apart : Disjoint s2Step163Add0Arena.live s2Step163Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step163Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163Add0_card : s2Step163Add0Arena.live.card=884 := by
  decide +kernel

private theorem s2Step163Add0_borrowed : s2Step163Add0Arena.checkBorrow (hmrHybridCount s2Step163Add0Arena s2Step163Add0B.length) s2Step163Add0Work=some s2Step163Add0During := by
  have len : s2Step163Add0Work.length=hmrHybridCount s2Step163Add0Arena s2Step163Add0B.length := by
    rw [hmrHybridCount,s2Step163Add0_card]
    decide +kernel
  have nd : s2Step163Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step163Add0Arena s2Step163Add0During s2Step163Add0Work.toFinset s2Step163Add0_bounded s2Step163Add0_apart rfl

private theorem s2Step163Add0_distinct : (847::793::780::(s2Step163Add0A++s2Step163Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163Add0_owned : (847::793::780::(s2Step163Add0A++s2Step163Add0B)).toFinset⊆s2Step163Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step163Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163Add0_checked : compileHmrHybridCinLog s2Step163Add0Arena 793 847 780 s2Step163Add0A s2Step163Add0B s2Step163Add0Work=some s2Step163Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step163Add0Arena s2Step163Add0During 793 847 780 s2Step163Add0A s2Step163Add0B s2Step163Add0Work
    (by decide +kernel) (by decide +kernel) s2Step163Add0_distinct
    (fun q hq => s2Step163Add0_owned (List.mem_toFinset.mpr hq)) s2Step163Add0_borrowed

private theorem s2Step163Add1_apart : Disjoint s2Step163Add1Arena.live s2Step163Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step163Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163Add1_card : s2Step163Add1Arena.live.card=884 := by
  decide +kernel

private theorem s2Step163Add1_borrowed : s2Step163Add1Arena.checkBorrow (hmrHybridCount s2Step163Add1Arena s2Step163Add1B.length) s2Step163Add1Work=some s2Step163Add1During := by
  have len : s2Step163Add1Work.length=hmrHybridCount s2Step163Add1Arena s2Step163Add1B.length := by
    rw [hmrHybridCount,s2Step163Add1_card]
    decide +kernel
  have nd : s2Step163Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step163Add1Arena s2Step163Add1During s2Step163Add1Work.toFinset s2Step163Add1_bounded s2Step163Add1_apart rfl

private theorem s2Step163Add1_distinct : (847::793::780::(s2Step163Add1A++s2Step163Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163Add1_owned : (847::793::780::(s2Step163Add1A++s2Step163Add1B)).toFinset⊆s2Step163Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step163Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163Add1_checked : compileHmrHybridCinLog s2Step163Add1Arena 793 847 780 s2Step163Add1A s2Step163Add1B s2Step163Add1Work=some s2Step163Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step163Add1Arena s2Step163Add1During 793 847 780 s2Step163Add1A s2Step163Add1B s2Step163Add1Work
    (by decide +kernel) (by decide +kernel) s2Step163Add1_distinct
    (fun q hq => s2Step163Add1_owned (List.mem_toFinset.mpr hq)) s2Step163Add1_borrowed

private theorem s2Step163F4_apart : Disjoint (s2Step163Add0A++s2Step163Add0B).toFinset (s2Step163Add1A++s2Step163Add1B).toFinset := by
  have nd : ((s2Step163Add0A++s2Step163Add0B)++(s2Step163Add1A++s2Step163Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step163F4_carry : s2Step163F4FlagArena.checkBorrow 1 [780]=some s2Step163Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step163F4FlagArena,s2Step163HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step163F4FlagArena,s2Step163HeadFvAfter,s2Step163Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step163F4_distinct : (810::793::847::780::((s2Step163Add0A++s2Step163Add1A)++(s2Step163Add0B++s2Step163Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163F4_flag : s2Step163HeadFvAfter.checkBorrow 1 [847]=some s2Step163F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step163HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step163F4_owned : (810::793::((s2Step163Add0A++s2Step163Add1A)++(s2Step163Add0B++s2Step163Add1B))).toFinset⊆s2Step163HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step163HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163F4_checked : compileHmrHybridF4Log s2Step163HeadFvAfter 810 793 s2Step163Add0A s2Step163Add0B s2Step163Add1A s2Step163Add1B [847] [780] s2Step163Add0Work s2Step163Add1Work=some s2Step163F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step163HeadFvAfter s2Step163F4FlagArena s2Step163Add0Arena s2Step163Add0During s2Step163Add1During 810 793
    s2Step163Add0A s2Step163Add0B s2Step163Add1A s2Step163Add1B [847] [780] s2Step163Add0Work s2Step163Add1Work
    (fun q hq => s2Step163F4_owned (List.mem_toFinset.mpr hq)) s2Step163F4_flag s2Step163F4_carry
    s2Step163F4_distinct s2Step163F4_apart s2Step163Add0_checked s2Step163Add1_checked

private theorem s2Step163Front_branch : s2Step163FrontSigmaArena.checkBorrow 1 [793]=some s2Step163HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step163FrontSigmaArena,s2Step163EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step163FrontSigmaArena,s2Step163EntryGvAfter,s2Step163HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step163Front_entry : HmrFrontEntryValid s2Step163EntryFBefore s2Step163FrontBank 188 96 ⟨188,186,97,95⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step163FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step163EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step163EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step163FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step163Front_sigma : s2Step163EntryGvAfter.checkBorrow 1 [810]=some s2Step163FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step163EntryGvAfter,arenaWires]
  · rfl

private def s2Step163HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163HeadFBefore : Arena := s2Step163HeadGAfter

private def s2Step163HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩

private def s2Step163HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804],770⟩

private def s2Step163HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 803],769⟩

private def s2Step163HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 849],771⟩

private theorem s2Step163HeadBank_incomingDistinct : ([s2Step163HeadGRow,s2Step163HeadFRow,s2Step163HeadGvRow,s2Step163HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163HeadF_Incoming : rowsOwned s2Step163HeadFBefore [s2Step163HeadFRow,s2Step163HeadGvRow,s2Step163HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step163HeadGRow,s2Step163HeadFRow,s2Step163HeadGvRow,s2Step163HeadFvRow] 1 s2Step163HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step163HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step163HeadBank_outgoingOwned : rowsOwned s2Step163HeadFvAfter [s2Step163HeadGOut,s2Step163HeadFOut,s2Step163HeadGvOut,s2Step163HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step163HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step163HeadF_Outgoing : rowsOwned s2Step163HeadFvAfter [s2Step163HeadFOut,s2Step163HeadGvOut,s2Step163HeadFvOut] :=
  hmrRows_owned_drop s2Step163HeadFvAfter [s2Step163HeadGOut,s2Step163HeadFOut,s2Step163HeadGvOut,s2Step163HeadFvOut] 1 s2Step163HeadBank_outgoingOwned

private theorem s2Step163HeadF_distinct : (s2Step163HeadFRow.sign::s2Step163HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163HeadF_owned : (s2Step163HeadFRow.sign::s2Step163HeadFRow.payload).toFinset⊆s2Step163HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step163HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163HeadF_reserved : s2Step163HeadFBefore.reserve s2Step163HeadFFresh.toFinset=some s2Step163HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step163HeadFFresh,arenaWires]
  · norm_num [s2Step163HeadFBefore,s2Step163HeadGAfter,s2Step163HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step163HeadFAfter,s2Step163HeadFBefore,s2Step163HeadGAfter,s2Step163HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step163HeadF_checked : planRowResizeLog s2Step163HeadFBefore s2Step163HeadFRow 189 s2Step163HeadFFresh=
    some (s2Step163HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 799],768⟩,growRow 768 s2Step163HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step163HeadFBefore s2Step163HeadFAfter s2Step163HeadFRow 189 s2Step163HeadFFresh
    s2Step163HeadF_distinct s2Step163HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step163HeadF_reserved
  have rowEq : WindowRow.mk (s2Step163HeadFRow.payload++s2Step163HeadFFresh) s2Step163HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 799],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step163HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step163HeadFvBefore : Arena := s2Step163HeadGvAfter

private theorem s2Step163HeadFv_Incoming : rowsOwned s2Step163HeadFvBefore [s2Step163HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step163HeadGRow,s2Step163HeadFRow,s2Step163HeadGvRow,s2Step163HeadFvRow] 3 s2Step163HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step163HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step163HeadFv_Outgoing : rowsOwned s2Step163HeadFvAfter [s2Step163HeadFvOut] :=
  hmrRows_owned_drop s2Step163HeadFvAfter [s2Step163HeadGOut,s2Step163HeadFOut,s2Step163HeadGvOut,s2Step163HeadFvOut] 3 s2Step163HeadBank_outgoingOwned

private theorem s2Step163HeadFv_distinct : (s2Step163HeadFvRow.sign::s2Step163HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163HeadFv_owned : (s2Step163HeadFvRow.sign::s2Step163HeadFvRow.payload).toFinset⊆s2Step163HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step163HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163HeadFv_reserved : s2Step163HeadFvBefore.reserve s2Step163HeadFvFresh.toFinset=some s2Step163HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step163HeadFvFresh,arenaWires]
  · norm_num [s2Step163HeadFvBefore,s2Step163HeadGvAfter,s2Step163HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step163HeadFvAfter,s2Step163HeadFvBefore,s2Step163HeadGvAfter,s2Step163HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step163HeadFv_checked : planRowResizeLog s2Step163HeadFvBefore s2Step163HeadFvRow 97 s2Step163HeadFvFresh=
    some (s2Step163HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797],770⟩,growRow 770 s2Step163HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step163HeadFvBefore s2Step163HeadFvAfter s2Step163HeadFvRow 97 s2Step163HeadFvFresh
    s2Step163HeadFv_distinct s2Step163HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step163HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step163HeadFvRow.payload++s2Step163HeadFvFresh) s2Step163HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step163HeadG_Incoming : rowsOwned s2Step163HeadGBefore [s2Step163HeadGRow,s2Step163HeadFRow,s2Step163HeadGvRow,s2Step163HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step163HeadGRow,s2Step163HeadFRow,s2Step163HeadGvRow,s2Step163HeadFvRow] 0 s2Step163HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step163HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step163HeadG_Outgoing : rowsOwned s2Step163HeadFvAfter [s2Step163HeadGOut,s2Step163HeadFOut,s2Step163HeadGvOut,s2Step163HeadFvOut] :=
  hmrRows_owned_drop s2Step163HeadFvAfter [s2Step163HeadGOut,s2Step163HeadFOut,s2Step163HeadGvOut,s2Step163HeadFvOut] 0 s2Step163HeadBank_outgoingOwned

private theorem s2Step163HeadG_distinct : (s2Step163HeadGRow.sign::s2Step163HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163HeadG_owned : (s2Step163HeadGRow.sign::s2Step163HeadGRow.payload).toFinset⊆s2Step163HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step163HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163HeadG_reserved : s2Step163HeadGBefore.reserve s2Step163HeadGFresh.toFinset=some s2Step163HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step163HeadGFresh,arenaWires]
  · norm_num [s2Step163HeadGBefore,s2Step163HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step163HeadGAfter,s2Step163HeadGBefore,s2Step163HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step163HeadG_checked : planRowResizeLog s2Step163HeadGBefore s2Step163HeadGRow 189 s2Step163HeadGFresh=
    some (s2Step163HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 803, 785],769⟩,growRow 769 s2Step163HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step163HeadGBefore s2Step163HeadGAfter s2Step163HeadGRow 189 s2Step163HeadGFresh
    s2Step163HeadG_distinct s2Step163HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step163HeadG_reserved
  have rowEq : WindowRow.mk (s2Step163HeadGRow.payload++s2Step163HeadGFresh) s2Step163HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 803, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step163HeadGvBefore : Arena := s2Step163HeadFAfter

private theorem s2Step163HeadGv_Incoming : rowsOwned s2Step163HeadGvBefore [s2Step163HeadGvRow,s2Step163HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step163HeadGRow,s2Step163HeadFRow,s2Step163HeadGvRow,s2Step163HeadFvRow] 2 s2Step163HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step163HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step163HeadGv_Outgoing : rowsOwned s2Step163HeadFvAfter [s2Step163HeadGvOut,s2Step163HeadFvOut] :=
  hmrRows_owned_drop s2Step163HeadFvAfter [s2Step163HeadGOut,s2Step163HeadFOut,s2Step163HeadGvOut,s2Step163HeadFvOut] 2 s2Step163HeadBank_outgoingOwned

private theorem s2Step163HeadGv_distinct : (s2Step163HeadGvRow.sign::s2Step163HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step163HeadGv_owned : (s2Step163HeadGvRow.sign::s2Step163HeadGvRow.payload).toFinset⊆s2Step163HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step163HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step163HeadGv_reserved : s2Step163HeadGvBefore.reserve s2Step163HeadGvFresh.toFinset=some s2Step163HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step163HeadGvFresh,arenaWires]
  · norm_num [s2Step163HeadGvBefore,s2Step163HeadFAfter,s2Step163HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step163HeadGvAfter,s2Step163HeadGvBefore,s2Step163HeadFAfter,s2Step163HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step163HeadGv_checked : planRowResizeLog s2Step163HeadGvBefore s2Step163HeadGvRow 97 s2Step163HeadGvFresh=
    some (s2Step163HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 849, 811],771⟩,growRow 771 s2Step163HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step163HeadGvBefore s2Step163HeadGvAfter s2Step163HeadGvRow 97 s2Step163HeadGvFresh
    s2Step163HeadGv_distinct s2Step163HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step163HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step163HeadGvRow.payload++s2Step163HeadGvFresh) s2Step163HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 849, 811],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step163HeadBank_rows : planWindowRowsLog s2Step163HeadGBefore [(s2Step163HeadGRow,189),(s2Step163HeadFRow,189),(s2Step163HeadGvRow,97),(s2Step163HeadFvRow,97)] [s2Step163HeadGFresh,s2Step163HeadFFresh,s2Step163HeadGvFresh,s2Step163HeadFvFresh]=
    some (s2Step163HeadFvAfter,[s2Step163HeadGOut,s2Step163HeadFOut,s2Step163HeadGvOut,s2Step163HeadFvOut],(growRow 769 s2Step163HeadGFresh ++ (growRow 768 s2Step163HeadFFresh ++ (growRow 771 s2Step163HeadGvFresh ++ (growRow 770 s2Step163HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step163HeadFvAfter [] []=some (s2Step163HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step163HeadFvBefore s2Step163HeadFvAfter s2Step163HeadFvAfter
    s2Step163HeadFvRow s2Step163HeadFvOut 97 s2Step163HeadFvFresh [] [] []
    (growRow 770 s2Step163HeadFvFresh) ([]) s2Step163HeadFv_Incoming s2Step163HeadFv_checked h4 s2Step163HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step163HeadGvBefore s2Step163HeadGvAfter s2Step163HeadFvAfter
    s2Step163HeadGvRow s2Step163HeadGvOut 97 s2Step163HeadGvFresh [(s2Step163HeadFvRow,97)] [s2Step163HeadFvFresh] [s2Step163HeadFvOut]
    (growRow 771 s2Step163HeadGvFresh) ((growRow 770 s2Step163HeadFvFresh ++ [])) s2Step163HeadGv_Incoming s2Step163HeadGv_checked h3 s2Step163HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step163HeadFBefore s2Step163HeadFAfter s2Step163HeadFvAfter
    s2Step163HeadFRow s2Step163HeadFOut 189 s2Step163HeadFFresh [(s2Step163HeadGvRow,97),(s2Step163HeadFvRow,97)] [s2Step163HeadGvFresh,s2Step163HeadFvFresh] [s2Step163HeadGvOut,s2Step163HeadFvOut]
    (growRow 768 s2Step163HeadFFresh) ((growRow 771 s2Step163HeadGvFresh ++ (growRow 770 s2Step163HeadFvFresh ++ []))) s2Step163HeadF_Incoming s2Step163HeadF_checked h2 s2Step163HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step163HeadGBefore s2Step163HeadGAfter s2Step163HeadFvAfter
    s2Step163HeadGRow s2Step163HeadGOut 189 s2Step163HeadGFresh [(s2Step163HeadFRow,189),(s2Step163HeadGvRow,97),(s2Step163HeadFvRow,97)] [s2Step163HeadFFresh,s2Step163HeadGvFresh,s2Step163HeadFvFresh] [s2Step163HeadFOut,s2Step163HeadGvOut,s2Step163HeadFvOut]
    (growRow 769 s2Step163HeadGFresh) ((growRow 768 s2Step163HeadFFresh ++ (growRow 771 s2Step163HeadGvFresh ++ (growRow 770 s2Step163HeadFvFresh ++ [])))) s2Step163HeadG_Incoming s2Step163HeadG_checked h1 s2Step163HeadG_Outgoing
  exact h0

private theorem s2Step163HeadBank_checked : compileHmrBankResizeLog .headroom s2Step163HeadGBefore ⟨s2Step163HeadFRow,s2Step163HeadGRow,s2Step163HeadFvRow,s2Step163HeadGvRow⟩ ⟨189,189,97,97⟩ [s2Step163HeadGFresh,s2Step163HeadFFresh,s2Step163HeadGvFresh,s2Step163HeadFvFresh]=
    some (s2Step163HeadFvAfter,⟨s2Step163HeadFOut,s2Step163HeadGOut,s2Step163HeadFvOut,s2Step163HeadGvOut⟩,(growRow 769 s2Step163HeadGFresh ++ (growRow 768 s2Step163HeadFFresh ++ (growRow 771 s2Step163HeadGvFresh ++ (growRow 770 s2Step163HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step163HeadBank_rows]
  rfl

private theorem s2Step163Front_checked : compileHmrSourceFrontLog s2Step163EntryFBefore s2Step163FrontBank 188 96 ⟨188,186,97,95⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step163FrontLog=some s2Step163FrontPlan := by
  have pairEq : s2Step163FrontPair=⟨s2Step163HeadFRow,s2Step163HeadGRow,s2Step163HeadFvRow,s2Step163HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step163FrontHead=⟨s2Step163ExitFRow,s2Step163ExitGRow,s2Step163ExitFvRow,s2Step163ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step163Add0A=s2Step163FrontHead.f.wires := by decide +kernel
  have gEq : s2Step163Add0B=s2Step163FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step163Add1A=s2Step163FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step163Add1B=s2Step163FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step163EntryFBefore s2Step163FrontBank 188 96 ⟨188,186,97,95⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step163FrontLog s2Step163FrontPlan
  · exact s2Step163Front_entry
  · exact s2Step163EntryBank_checked
  · exact s2Step163Front_sigma
  · rfl
  · exact s2Step163Front_branch
  · rfl
  · simpa only [s2Step163FrontPlan,pairEq] using s2Step163HeadBank_checked
  · simpa only [s2Step163FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step163F4_checked
  · exact s2Step163Counter_checked
  · rfl
  · simpa only [s2Step163FrontPlan,headEq] using s2Step163ExitBank_checked

private theorem s2Step163Complete_explicit_checked : compileHmrEarlyStepLog s2Step163EntryFBefore s2Step163FrontBank 188 96 ⟨188,186,97,95⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step163CompleteLog=some s2Step163CompletePlan := by
  let Q := s2Step163EarlyControlPlan
  have hq := s2Step163EarlyControl_plan_checked
  have fv1 : s2Step163CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step163CompleteOut.fv.payload[2]?.getD s2Step163CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step163CompleteOut.fv.payload[3]?.getD s2Step163CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step163CompleteOut.fv.payload[4]?.getD s2Step163CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step163EntryFBefore s2Step163EarlyControlArena s2Step163FrontBank 188 96 ⟨188,186,97,95⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step163CompleteLog s2Step163FrontPlan Q
    s2Step163Front_checked s2Step163Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step163Complete_owned s2Step163Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step163EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 810 s2Step163CompleteOut.fv.second (s2Step163CompleteOut.fv.payload[2]?.getD s2Step163CompleteOut.fv.sign) (s2Step163CompleteOut.fv.payload[3]?.getD s2Step163CompleteOut.fv.sign) (s2Step163CompleteOut.fv.payload[4]?.getD s2Step163CompleteOut.fv.sign) 793 42 s2Step163EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep163Arena : Arena := s2Step163EntryFBefore
def s2PrivateStep163Bank : WindowBank := s2Step163FrontBank
def s2PrivateStep163Spec : HmrSourceWalkStepLog := ⟨188,96,⟨188,186,97,95⟩,42,.early s2Step163CompleteLog⟩
def s2PrivateStep163Plan : HmrSourceStepPlan := .early s2Step163CompletePlan
theorem s2PrivateStep163_source : s2PrivateStep163Spec=s2ObservedLogs160[3] := rfl
theorem s2PrivateStep163_checked : compileHmrSourceStepLog s2PrivateStep163Arena s2PrivateStep163Bank
    s2PrivateStep163Spec.fgWidth s2PrivateStep163Spec.vWidth s2PrivateStep163Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 163 s2PrivateStep163Spec.need none s2PrivateStep163Spec.log=some s2PrivateStep163Plan := by
  change compileHmrSourceStepLog s2Step163EntryFBefore s2Step163FrontBank 188 96 ⟨188,186,97,95⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 163 42 none (.early s2Step163CompleteLog)=some (.early s2Step163CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 163<498)]
  rw [s2Step163Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
