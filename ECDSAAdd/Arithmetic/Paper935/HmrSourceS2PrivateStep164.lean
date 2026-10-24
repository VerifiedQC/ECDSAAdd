import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep162
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

private def s2Step164CompleteMoves : List (Wire × Wire) := [(800,699)]

private def s2Step164EarlyControlLog : HmrEarlyControlLog := ⟨[800, 849, 847, 785, 793],[810],[803],[867, 877, 879, 882, 885, 888],[]⟩

private def s2Step164FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [793, 810], [], [808, 849]],[[803], [785], [847], [780]],[[], [], [], []]⟩,[811],[799],[867],[877],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882]⟩

private def s2Step164CompleteLog : HmrEarlyStepLog := ⟨s2Step164FrontLog,s2Step164CompleteMoves,s2Step164EarlyControlLog⟩

private def s2Step164ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩

private def s2Step164ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩

private def s2Step164ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185],769⟩

private def s2Step164ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808],771⟩

private def s2Step164FrontOut : WindowBank := ⟨s2Step164ExitFOut,s2Step164ExitGOut,s2Step164ExitFvOut,s2Step164ExitGvOut⟩

private def s2Step164CompleteOut : WindowBank := s2Step164FrontOut.repacked s2Step164CompleteMoves

private def s2Step164EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step164EarlyControlPositiveArena,[810],s2Step164EarlyControlEqualityArena,[803],⟨⟨811,false⟩,[⟨⟨810,false⟩,803⟩]⟩⟩

private def s2Step164EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,800⟩,⟨⟨774,false⟩,849⟩,⟨⟨775,false⟩,847⟩,⟨⟨776,false⟩,785⟩,⟨⟨777,false⟩,793⟩]⟩

private def s2Step164EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step164EarlyControlZeroArena,s2Step164EarlyControlZeroPlan,s2Step164EarlyControlClassPlan,s2Step164EarlyControlFlagArena,s2Step164EarlyControlFittedArena,s2Step164EarlyControlHistoryArena,s2Step164EarlyControlSigmaArena,s2Step164EarlyControlOutputArena,s2Step164EarlyControlLog⟩

private def s2Step164CounterWork : List Wire := [867, 877, 879, 882]

private theorem s2Step164Counter_bounded : s2Step164CounterWork.toFinset⊆arenaWires := by norm_num [s2Step164CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step164HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164CounterDuring : Arena := ⟨s2Step164HeadFvAfter.live∪s2Step164CounterWork.toFinset,Finset.union_subset s2Step164HeadFvAfter.bounded s2Step164Counter_bounded⟩

private def s2Step164EntryFFresh : List Wire := []

private def s2Step164EntryFvFresh : List Wire := []

private def s2Step164EntryGFresh : List Wire := [793, 810]

private def s2Step164EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164EntryGvFresh : List Wire := [808, 849]

private def s2Step164ExitFExtra : List Wire := [699, 785]

private def s2Step164ExitGExtra : List Wire := [793, 810, 803]

private def s2Step164ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<699) ∨ (700≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164ExitGvExtra : List Wire := [849, 847]

private def s2Step164Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164Add0Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step164Add0_bounded : s2Step164Add0Work.toFinset⊆arenaWires := by
  have h : s2Step164Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step164Add0During : Arena := ⟨s2Step164Add0Arena.live∪s2Step164Add0Work.toFinset,Finset.union_subset s2Step164Add0Arena.bounded s2Step164Add0_bounded⟩

private def s2Step164Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164Add1Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step164Add1_bounded : s2Step164Add1Work.toFinset⊆arenaWires := by
  have h : s2Step164Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step164Add1During : Arena := ⟨s2Step164Add1Arena.live∪s2Step164Add1Work.toFinset,Finset.union_subset s2Step164Add1Arena.bounded s2Step164Add1_bounded⟩

private def s2Step164F4FlagArena : Arena := ⟨s2Step164HeadFvAfter.live∪{867},Finset.union_subset s2Step164HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step164F4Plan : HmrHybridF4Plan := ⟨s2Step164F4FlagArena,[867],s2Step164Add0Arena,[877],s2Step164Add0During,s2Step164Add0Work,s2Step164Add1During,s2Step164Add1Work⟩

private def s2Step164HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 785],768⟩

private def s2Step164HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩

private def s2Step164HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 793, 810, 803],769⟩

private def s2Step164HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 849, 847],771⟩

private def s2Step164FrontHead : WindowBank := ⟨s2Step164HeadFOut,s2Step164HeadGOut,s2Step164HeadFvOut,s2Step164HeadGvOut⟩

private def s2Step164EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩

private def s2Step164EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797],770⟩

private def s2Step164EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 793, 810],769⟩

private def s2Step164EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 849],771⟩

private def s2Step164FrontPair : WindowBank := ⟨s2Step164EntryFOut,s2Step164EntryGOut,s2Step164EntryFvOut,s2Step164EntryGvOut⟩

private def s2Step164FrontSigmaArena : Arena := ⟨s2Step164EntryGvAfter.live∪{811},Finset.union_subset s2Step164EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step164HeadFFresh : List Wire := [785]

private def s2Step164HeadFvFresh : List Wire := [780]

private def s2Step164HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164HeadGFresh : List Wire := [803]

private def s2Step164HeadGvFresh : List Wire := [847]

private def s2Step164FrontPlan : HmrSourceFront := ⟨s2Step164EntryGvAfter,s2Step164FrontPair,(growRow 768 s2Step164EntryFFresh ++ (growRow 769 s2Step164EntryGFresh ++ (growRow 770 s2Step164EntryFvFresh ++ (growRow 771 s2Step164EntryGvFresh ++ [])))),s2Step164FrontSigmaArena,[811],s2Step164HeadGBefore,[799],
  s2Step164HeadFvAfter,s2Step164FrontHead,(growRow 769 s2Step164HeadGFresh ++ (growRow 768 s2Step164HeadFFresh ++ (growRow 771 s2Step164HeadGvFresh ++ (growRow 770 s2Step164HeadFvFresh ++ [])))),s2Step164F4Plan,s2Step164CounterDuring,s2Step164CounterWork,s2Step164ExitGvAfter,s2Step164FrontOut,(shrinkRow 769 s2Step164ExitGExtra ++ (shrinkRow 768 s2Step164ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step164ExitGvExtra ++ []))))⟩

private def s2Step164CompletePlan : HmrEarlyStepPlan := ⟨s2Step164FrontPlan,s2Step164EarlyControlArena,s2Step164EarlyControlPlan,s2Step164CompleteMoves⟩

private theorem s2Step164Complete_apart : List.Disjoint (s2Step164CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [811, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step164CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[811, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step164Complete_owned : (s2Step164CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step164EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step164EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step164CompleteMoveArena : Arena := ⟨s2Step164ExitGvAfter.live∪{699},Finset.union_subset s2Step164ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step164Complete_repack : s2Step164ExitGvAfter.checkRepack s2Step164CompleteMoves=some s2Step164EarlyControlArena := by
  have owned : 800∈s2Step164ExitGvAfter.live := by norm_num [s2Step164ExitGvAfter,arenaWires]
  have reserve : s2Step164ExitGvAfter.reserve {699}=some s2Step164CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step164ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step164CompleteMoveArena.retireSet {800}=s2Step164EarlyControlArena := by
    unfold Arena.retireSet s2Step164EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step164CompleteMoveArena,s2Step164ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step164CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step164CompleteMoveArena.retireSet {800}).checkRepack []=some s2Step164EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step164EarlyControl_branchOwned : ([799] : List Wire).toFinset⊆s2Step164EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step164EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164EarlyControl_branch : compileHmrBranchRetirement s2Step164EarlyControlSigmaArena 799=some s2Step164EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step164EarlyControl_branchOwned
  · ext q
    simp [s2Step164EarlyControlOutputArena,s2Step164EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step164EarlyControl_classEqualityBorrow : s2Step164EarlyControlPositiveArena.checkBorrow (([811, 810] : List Wire).length-1) s2Step164EarlyControlLog.classWork=some s2Step164EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step164EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step164EarlyControlPositiveArena (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step164EarlyControlEqualityArena,s2Step164EarlyControlPositiveArena,s2Step164EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step164EarlyControl_classEqualityOwned : ([811, 810] : List Wire).toFinset⊆s2Step164EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step164EarlyControlPositiveArena (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164EarlyControl_classEquality : compileHmrEqualityLog s2Step164EarlyControlPositiveArena [811, 810] 0 s2Step164EarlyControlLog.classWork=some (s2Step164EarlyControlEqualityArena,s2Step164EarlyControlLog.classWork,s2Step164EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step164EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step164EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step164EarlyControl_classOwned : ([777, 793, 811] : List Wire).toFinset⊆s2Step164EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step164EarlyControlZeroArena (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164EarlyControl_positiveBorrow : s2Step164EarlyControlZeroArena.checkBorrow (1) s2Step164EarlyControlLog.positiveWork=some s2Step164EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step164EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step164EarlyControlZeroArena (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step164EarlyControlPositiveArena,s2Step164EarlyControlZeroArena,s2Step164EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step164EarlyControl_class : compileHmrSourceClassLog s2Step164EarlyControlZeroArena false 777 s2Step164EarlyControlZeroPlan.top 0 811 s2Step164EarlyControlLog.positiveWork s2Step164EarlyControlLog.classWork=some s2Step164EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step164EarlyControlClassPlan s2Step164EarlyControlZeroArena false 777 s2Step164EarlyControlZeroPlan.top 0 811
  constructor
  · decide +kernel
  · exact s2Step164EarlyControl_classOwned
  · exact s2Step164EarlyControl_positiveBorrow
  · exact s2Step164EarlyControl_classEquality

private theorem s2Step164EarlyControl_entryRecordOwned : ([799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step164EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step164EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164EarlyControl_entrySigmaOwned : ([811, 254] : List Wire).toFinset⊆s2Step164EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step164EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164EarlyControl_fitBorrow : s2Step164EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step164EarlyControlLog.recordFresh=some s2Step164EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step164EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step164EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step164EarlyControlFittedArena,s2Step164EarlyControlFlagArena,s2Step164EarlyControlLog,arenaWires]

private theorem s2Step164EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step164EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step164EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164EarlyControl_fit : compileHmrRecordGrowLog s2Step164EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step164EarlyControlLog.recordFresh=some s2Step164EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step164EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step164EarlyControl_fitBorrow

private theorem s2Step164EarlyControl_flagsBorrow : s2Step164EarlyControlEqualityArena.checkBorrow (6) s2Step164EarlyControlLog.flagWork=some s2Step164EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step164EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step164EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step164EarlyControlFlagArena,s2Step164EarlyControlEqualityArena,s2Step164EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step164EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s2Step164EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step164EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164EarlyControl_flags : compileHmrFlagsLog s2Step164EarlyControlClassPlan.equalityArena s2Step164EarlyControlClassPlan.equality.top 253 252 251 s2Step164EarlyControlLog.flagWork=some s2Step164EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step164EarlyControl_flagsOwned⟩
  · exact s2Step164EarlyControl_flagsBorrow

private theorem s2Step164EarlyControl_historyBorrow : s2Step164EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step164EarlyControlLog.recordFresh=some s2Step164EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step164EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step164EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step164EarlyControlHistoryArena,s2Step164EarlyControlArena,s2Step164EarlyControlLog,arenaWires]

private theorem s2Step164EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step164EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step164EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164EarlyControl_history : compileHmrRecordGrowLog s2Step164EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step164EarlyControlLog.recordFresh=some s2Step164EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step164EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step164EarlyControl_historyBorrow

private theorem s2Step164EarlyControl_sigmaOwned : ([254, 811] : List Wire).toFinset⊆s2Step164EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step164EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164EarlyControl_sigmaReleaseOwned : ([811] : List Wire).toFinset⊆s2Step164EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step164EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164EarlyControl_sigmaRelease : s2Step164EarlyControlHistoryArena.release {811} (fun _ => false)=some s2Step164EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step164EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step164EarlyControlSigmaArena,s2Step164EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step164EarlyControl_sigma : compileHmrSigmaDropLog s2Step164EarlyControlHistoryArena false 0 0 254 811 []=some s2Step164EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step164EarlyControl_sigmaOwned⟩
  · exact s2Step164EarlyControl_sigmaRelease

private theorem s2Step164EarlyControl_zeroBorrow : s2Step164EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step164EarlyControlLog.zeroWork=some s2Step164EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step164EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step164EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step164EarlyControlZeroArena,s2Step164EarlyControlArena,s2Step164EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step164EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step164EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step164EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164EarlyControl_zero : compileHmrEqualityLog s2Step164EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step164EarlyControlLog.zeroWork=some (s2Step164EarlyControlZeroArena,s2Step164EarlyControlLog.zeroWork,s2Step164EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step164EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step164EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step164EarlyControl_logged : s2Step164EarlyControlPlan.Logged s2Step164EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 811 254 253 252 251 799 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step164EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step164EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step164EarlyControl_zero
  · exact s2Step164EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step164EarlyControl_flags
  · exact s2Step164EarlyControl_fit
  · exact s2Step164EarlyControl_history
  · exact s2Step164EarlyControl_sigma
  · exact s2Step164EarlyControl_branch

private theorem s2Step164EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step164EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 811 254 253 252 251 799 42 s2Step164EarlyControlLog=some s2Step164EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step164EarlyControlPlan s2Step164EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 811 254 253 252 251 799 42 s2Step164EarlyControl_logged

private def s2Step164EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩

private def s2Step164EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797],770⟩

private def s2Step164EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185],769⟩

private def s2Step164EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778],771⟩

private def s2Step164FrontBank : WindowBank := ⟨s2Step164EntryFRow,s2Step164EntryGRow,s2Step164EntryFvRow,s2Step164EntryGvRow⟩

private def s2Step164Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 785, 768]

private def s2Step164Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 793, 810, 803, 769]

private def s2Step164Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 770]

private def s2Step164Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 849, 847, 771]

private theorem s2Step164Counter_apart : Disjoint s2Step164HeadFvAfter.live s2Step164CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step164HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164Counter_borrowed : s2Step164HeadFvAfter.checkBorrow 4 s2Step164CounterWork=some s2Step164CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step164HeadFvAfter s2Step164CounterDuring s2Step164CounterWork.toFinset s2Step164Counter_bounded s2Step164Counter_apart rfl

private theorem s2Step164Counter_owned : (811::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step164HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step164HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164Counter_checked : compileHmrCounterStepLog s2Step164HeadFvAfter true 811 [772, 773, 774, 775, 776, 777] s2Step164CounterWork=some s2Step164CounterDuring := by
  have owned : ∀q∈811::[772, 773, 774, 775, 776, 777],q∈s2Step164HeadFvAfter.live := fun q hq => s2Step164Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step164Counter_borrowed

private def s2Step164EntryFAfter : Arena := s2Step164EntryFBefore

private theorem s2Step164EntryBank_incomingDistinct : ([s2Step164EntryFRow,s2Step164EntryGRow,s2Step164EntryFvRow,s2Step164EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164EntryF_Incoming : rowsOwned s2Step164EntryFBefore [s2Step164EntryFRow,s2Step164EntryGRow,s2Step164EntryFvRow,s2Step164EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step164EntryFRow,s2Step164EntryGRow,s2Step164EntryFvRow,s2Step164EntryGvRow] 0 s2Step164EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step164EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step164EntryBank_outgoingOwned : rowsOwned s2Step164EntryGvAfter [s2Step164EntryFOut,s2Step164EntryGOut,s2Step164EntryFvOut,s2Step164EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step164EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step164EntryF_Outgoing : rowsOwned s2Step164EntryGvAfter [s2Step164EntryFOut,s2Step164EntryGOut,s2Step164EntryFvOut,s2Step164EntryGvOut] :=
  hmrRows_owned_drop s2Step164EntryGvAfter [s2Step164EntryFOut,s2Step164EntryGOut,s2Step164EntryFvOut,s2Step164EntryGvOut] 0 s2Step164EntryBank_outgoingOwned

private theorem s2Step164EntryF_distinct : (s2Step164EntryFRow.sign::s2Step164EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164EntryF_owned : (s2Step164EntryFRow.sign::s2Step164EntryFRow.payload).toFinset⊆s2Step164EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step164EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164EntryF_reserved : s2Step164EntryFBefore.reserve s2Step164EntryFFresh.toFinset=some s2Step164EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step164EntryFFresh,arenaWires]
  · norm_num [s2Step164EntryFBefore,s2Step164EntryFFresh,arenaWires]
  · simp only [s2Step164EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step164EntryF_checked : planRowResizeLog s2Step164EntryFBefore s2Step164EntryFRow 188 s2Step164EntryFFresh=
    some (s2Step164EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩,growRow 768 s2Step164EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step164EntryFBefore s2Step164EntryFAfter s2Step164EntryFRow 188 s2Step164EntryFFresh
    s2Step164EntryF_distinct s2Step164EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step164EntryF_reserved
  have rowEq : WindowRow.mk (s2Step164EntryFRow.payload++s2Step164EntryFFresh) s2Step164EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step164EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164EntryFvAfter : Arena := s2Step164EntryGAfter

private def s2Step164EntryFvBefore : Arena := s2Step164EntryGAfter

private theorem s2Step164EntryFv_Incoming : rowsOwned s2Step164EntryFvBefore [s2Step164EntryFvRow,s2Step164EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step164EntryFRow,s2Step164EntryGRow,s2Step164EntryFvRow,s2Step164EntryGvRow] 2 s2Step164EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step164EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step164EntryFv_Outgoing : rowsOwned s2Step164EntryGvAfter [s2Step164EntryFvOut,s2Step164EntryGvOut] :=
  hmrRows_owned_drop s2Step164EntryGvAfter [s2Step164EntryFOut,s2Step164EntryGOut,s2Step164EntryFvOut,s2Step164EntryGvOut] 2 s2Step164EntryBank_outgoingOwned

private theorem s2Step164EntryFv_distinct : (s2Step164EntryFvRow.sign::s2Step164EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164EntryFv_owned : (s2Step164EntryFvRow.sign::s2Step164EntryFvRow.payload).toFinset⊆s2Step164EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step164EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164EntryFv_reserved : s2Step164EntryFvBefore.reserve s2Step164EntryFvFresh.toFinset=some s2Step164EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step164EntryFvFresh,arenaWires]
  · norm_num [s2Step164EntryFvBefore,s2Step164EntryGAfter,s2Step164EntryFvFresh,arenaWires]
  · simp only [s2Step164EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step164EntryFv_checked : planRowResizeLog s2Step164EntryFvBefore s2Step164EntryFvRow 97 s2Step164EntryFvFresh=
    some (s2Step164EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797],770⟩,growRow 770 s2Step164EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step164EntryFvBefore s2Step164EntryFvAfter s2Step164EntryFvRow 97 s2Step164EntryFvFresh
    s2Step164EntryFv_distinct s2Step164EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step164EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step164EntryFvRow.payload++s2Step164EntryFvFresh) s2Step164EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step164EntryGBefore : Arena := s2Step164EntryFBefore

private theorem s2Step164EntryG_Incoming : rowsOwned s2Step164EntryGBefore [s2Step164EntryGRow,s2Step164EntryFvRow,s2Step164EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step164EntryFRow,s2Step164EntryGRow,s2Step164EntryFvRow,s2Step164EntryGvRow] 1 s2Step164EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step164EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step164EntryG_Outgoing : rowsOwned s2Step164EntryGvAfter [s2Step164EntryGOut,s2Step164EntryFvOut,s2Step164EntryGvOut] :=
  hmrRows_owned_drop s2Step164EntryGvAfter [s2Step164EntryFOut,s2Step164EntryGOut,s2Step164EntryFvOut,s2Step164EntryGvOut] 1 s2Step164EntryBank_outgoingOwned

private theorem s2Step164EntryG_distinct : (s2Step164EntryGRow.sign::s2Step164EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164EntryG_owned : (s2Step164EntryGRow.sign::s2Step164EntryGRow.payload).toFinset⊆s2Step164EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step164EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164EntryG_reserved : s2Step164EntryGBefore.reserve s2Step164EntryGFresh.toFinset=some s2Step164EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step164EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step164EntryGBefore,s2Step164EntryFBefore,s2Step164EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step164EntryGAfter,s2Step164EntryGBefore,s2Step164EntryFBefore,s2Step164EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step164EntryG_checked : planRowResizeLog s2Step164EntryGBefore s2Step164EntryGRow 188 s2Step164EntryGFresh=
    some (s2Step164EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 793, 810],769⟩,growRow 769 s2Step164EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step164EntryGBefore s2Step164EntryGAfter s2Step164EntryGRow 188 s2Step164EntryGFresh
    s2Step164EntryG_distinct s2Step164EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step164EntryG_reserved
  have rowEq : WindowRow.mk (s2Step164EntryGRow.payload++s2Step164EntryGFresh) s2Step164EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 793, 810],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step164EntryGvBefore : Arena := s2Step164EntryGAfter

private theorem s2Step164EntryGv_Incoming : rowsOwned s2Step164EntryGvBefore [s2Step164EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step164EntryFRow,s2Step164EntryGRow,s2Step164EntryFvRow,s2Step164EntryGvRow] 3 s2Step164EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step164EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step164EntryGv_Outgoing : rowsOwned s2Step164EntryGvAfter [s2Step164EntryGvOut] :=
  hmrRows_owned_drop s2Step164EntryGvAfter [s2Step164EntryFOut,s2Step164EntryGOut,s2Step164EntryFvOut,s2Step164EntryGvOut] 3 s2Step164EntryBank_outgoingOwned

private theorem s2Step164EntryGv_distinct : (s2Step164EntryGvRow.sign::s2Step164EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164EntryGv_owned : (s2Step164EntryGvRow.sign::s2Step164EntryGvRow.payload).toFinset⊆s2Step164EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step164EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164EntryGv_reserved : s2Step164EntryGvBefore.reserve s2Step164EntryGvFresh.toFinset=some s2Step164EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step164EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step164EntryGvBefore,s2Step164EntryGAfter,s2Step164EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step164EntryGvAfter,s2Step164EntryGvBefore,s2Step164EntryGAfter,s2Step164EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step164EntryGv_checked : planRowResizeLog s2Step164EntryGvBefore s2Step164EntryGvRow 97 s2Step164EntryGvFresh=
    some (s2Step164EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 849],771⟩,growRow 771 s2Step164EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step164EntryGvBefore s2Step164EntryGvAfter s2Step164EntryGvRow 97 s2Step164EntryGvFresh
    s2Step164EntryGv_distinct s2Step164EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step164EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step164EntryGvRow.payload++s2Step164EntryGvFresh) s2Step164EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 849],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step164EntryBank_rows : planWindowRowsLog s2Step164EntryFBefore [(s2Step164EntryFRow,188),(s2Step164EntryGRow,188),(s2Step164EntryFvRow,97),(s2Step164EntryGvRow,97)] [s2Step164EntryFFresh,s2Step164EntryGFresh,s2Step164EntryFvFresh,s2Step164EntryGvFresh]=
    some (s2Step164EntryGvAfter,[s2Step164EntryFOut,s2Step164EntryGOut,s2Step164EntryFvOut,s2Step164EntryGvOut],(growRow 768 s2Step164EntryFFresh ++ (growRow 769 s2Step164EntryGFresh ++ (growRow 770 s2Step164EntryFvFresh ++ (growRow 771 s2Step164EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step164EntryGvAfter [] []=some (s2Step164EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step164EntryGvBefore s2Step164EntryGvAfter s2Step164EntryGvAfter
    s2Step164EntryGvRow s2Step164EntryGvOut 97 s2Step164EntryGvFresh [] [] []
    (growRow 771 s2Step164EntryGvFresh) ([]) s2Step164EntryGv_Incoming s2Step164EntryGv_checked h4 s2Step164EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step164EntryFvBefore s2Step164EntryFvAfter s2Step164EntryGvAfter
    s2Step164EntryFvRow s2Step164EntryFvOut 97 s2Step164EntryFvFresh [(s2Step164EntryGvRow,97)] [s2Step164EntryGvFresh] [s2Step164EntryGvOut]
    (growRow 770 s2Step164EntryFvFresh) ((growRow 771 s2Step164EntryGvFresh ++ [])) s2Step164EntryFv_Incoming s2Step164EntryFv_checked h3 s2Step164EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step164EntryGBefore s2Step164EntryGAfter s2Step164EntryGvAfter
    s2Step164EntryGRow s2Step164EntryGOut 188 s2Step164EntryGFresh [(s2Step164EntryFvRow,97),(s2Step164EntryGvRow,97)] [s2Step164EntryFvFresh,s2Step164EntryGvFresh] [s2Step164EntryFvOut,s2Step164EntryGvOut]
    (growRow 769 s2Step164EntryGFresh) ((growRow 770 s2Step164EntryFvFresh ++ (growRow 771 s2Step164EntryGvFresh ++ []))) s2Step164EntryG_Incoming s2Step164EntryG_checked h2 s2Step164EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step164EntryFBefore s2Step164EntryFAfter s2Step164EntryGvAfter
    s2Step164EntryFRow s2Step164EntryFOut 188 s2Step164EntryFFresh [(s2Step164EntryGRow,188),(s2Step164EntryFvRow,97),(s2Step164EntryGvRow,97)] [s2Step164EntryGFresh,s2Step164EntryFvFresh,s2Step164EntryGvFresh] [s2Step164EntryGOut,s2Step164EntryFvOut,s2Step164EntryGvOut]
    (growRow 768 s2Step164EntryFFresh) ((growRow 769 s2Step164EntryGFresh ++ (growRow 770 s2Step164EntryFvFresh ++ (growRow 771 s2Step164EntryGvFresh ++ [])))) s2Step164EntryF_Incoming s2Step164EntryF_checked h1 s2Step164EntryF_Outgoing
  exact h0

private theorem s2Step164EntryBank_checked : compileHmrBankResizeLog .entry s2Step164EntryFBefore ⟨s2Step164EntryFRow,s2Step164EntryGRow,s2Step164EntryFvRow,s2Step164EntryGvRow⟩ ⟨188,188,97,97⟩ [s2Step164EntryFFresh,s2Step164EntryGFresh,s2Step164EntryFvFresh,s2Step164EntryGvFresh]=
    some (s2Step164EntryGvAfter,⟨s2Step164EntryFOut,s2Step164EntryGOut,s2Step164EntryFvOut,s2Step164EntryGvOut⟩,(growRow 768 s2Step164EntryFFresh ++ (growRow 769 s2Step164EntryGFresh ++ (growRow 770 s2Step164EntryFvFresh ++ (growRow 771 s2Step164EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step164EntryBank_rows]
  rfl

private def s2Step164ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<699) ∨ (700≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164ExitFBefore : Arena := s2Step164ExitGAfter

private def s2Step164ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 785],768⟩

private def s2Step164ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩

private def s2Step164ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 793, 810, 803],769⟩

private def s2Step164ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 849, 847],771⟩

private theorem s2Step164ExitBank_incomingDistinct : ([s2Step164ExitGRow,s2Step164ExitFRow,s2Step164ExitFvRow,s2Step164ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164ExitF_Incoming : rowsOwned s2Step164ExitFBefore [s2Step164ExitFRow,s2Step164ExitFvRow,s2Step164ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step164ExitGRow,s2Step164ExitFRow,s2Step164ExitFvRow,s2Step164ExitGvRow] 1 s2Step164ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step164ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step164ExitBank_outgoingOwned : rowsOwned s2Step164ExitGvAfter [s2Step164ExitGOut,s2Step164ExitFOut,s2Step164ExitFvOut,s2Step164ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step164ExitGvAfter (fun q => (0≤q ∧ q<699) ∨ (700≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step164ExitF_Outgoing : rowsOwned s2Step164ExitGvAfter [s2Step164ExitFOut,s2Step164ExitFvOut,s2Step164ExitGvOut] :=
  hmrRows_owned_drop s2Step164ExitGvAfter [s2Step164ExitGOut,s2Step164ExitFOut,s2Step164ExitFvOut,s2Step164ExitGvOut] 1 s2Step164ExitBank_outgoingOwned

private theorem s2Step164ExitF_distinct : (s2Step164ExitFRow.sign::s2Step164ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164ExitF_owned : (s2Step164ExitFRow.sign::s2Step164ExitFRow.payload).toFinset⊆s2Step164ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step164ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164ExitF_retired : s2Step164ExitFBefore.retireSet s2Step164ExitFExtra.toFinset=s2Step164ExitFAfter := by
  unfold Arena.retireSet s2Step164ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step164ExitFBefore,s2Step164ExitGAfter,s2Step164ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step164ExitF_checked : planRowResizeLog s2Step164ExitFBefore s2Step164ExitFRow 187 []=
    some (s2Step164ExitFAfter,s2Step164ExitFOut,shrinkRow 768 s2Step164ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step164ExitFBefore s2Step164ExitFRow 187 s2Step164ExitF_distinct s2Step164ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step164ExitFRow.payload.take 187) s2Step164ExitFRow.sign=s2Step164ExitFOut := by decide +kernel
  have hi : s2Step164ExitFRow.payload.drop 187=s2Step164ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step164ExitF_retired] at result
  exact result

private def s2Step164ExitFvAfter : Arena := s2Step164ExitFAfter

private def s2Step164ExitFvBefore : Arena := s2Step164ExitFAfter

private theorem s2Step164ExitFv_Incoming : rowsOwned s2Step164ExitFvBefore [s2Step164ExitFvRow,s2Step164ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step164ExitGRow,s2Step164ExitFRow,s2Step164ExitFvRow,s2Step164ExitGvRow] 2 s2Step164ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step164ExitFvBefore (fun q => (0≤q ∧ q<699) ∨ (700≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step164ExitFv_Outgoing : rowsOwned s2Step164ExitGvAfter [s2Step164ExitFvOut,s2Step164ExitGvOut] :=
  hmrRows_owned_drop s2Step164ExitGvAfter [s2Step164ExitGOut,s2Step164ExitFOut,s2Step164ExitFvOut,s2Step164ExitGvOut] 2 s2Step164ExitBank_outgoingOwned

private theorem s2Step164ExitFv_distinct : (s2Step164ExitFvRow.sign::s2Step164ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164ExitFv_owned : (s2Step164ExitFvRow.sign::s2Step164ExitFvRow.payload).toFinset⊆s2Step164ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step164ExitFvBefore (fun q => (0≤q ∧ q<699) ∨ (700≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164ExitFv_reserved : s2Step164ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step164ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step164ExitFv_checked : planRowResizeLog s2Step164ExitFvBefore s2Step164ExitFvRow 98 []=
    some (s2Step164ExitFvAfter,s2Step164ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step164ExitFvBefore s2Step164ExitFvAfter s2Step164ExitFvRow 98 []
    s2Step164ExitFv_distinct s2Step164ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step164ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step164ExitFvRow.payload++[]) s2Step164ExitFvRow.sign=s2Step164ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step164ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step164ExitG_Incoming : rowsOwned s2Step164ExitGBefore [s2Step164ExitGRow,s2Step164ExitFRow,s2Step164ExitFvRow,s2Step164ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step164ExitGRow,s2Step164ExitFRow,s2Step164ExitFvRow,s2Step164ExitGvRow] 0 s2Step164ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step164ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step164ExitG_Outgoing : rowsOwned s2Step164ExitGvAfter [s2Step164ExitGOut,s2Step164ExitFOut,s2Step164ExitFvOut,s2Step164ExitGvOut] :=
  hmrRows_owned_drop s2Step164ExitGvAfter [s2Step164ExitGOut,s2Step164ExitFOut,s2Step164ExitFvOut,s2Step164ExitGvOut] 0 s2Step164ExitBank_outgoingOwned

private theorem s2Step164ExitG_distinct : (s2Step164ExitGRow.sign::s2Step164ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164ExitG_owned : (s2Step164ExitGRow.sign::s2Step164ExitGRow.payload).toFinset⊆s2Step164ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step164ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164ExitG_retired : s2Step164ExitGBefore.retireSet s2Step164ExitGExtra.toFinset=s2Step164ExitGAfter := by
  unfold Arena.retireSet s2Step164ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step164ExitGBefore,s2Step164ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step164ExitG_checked : planRowResizeLog s2Step164ExitGBefore s2Step164ExitGRow 186 []=
    some (s2Step164ExitGAfter,s2Step164ExitGOut,shrinkRow 769 s2Step164ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step164ExitGBefore s2Step164ExitGRow 186 s2Step164ExitG_distinct s2Step164ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step164ExitGRow.payload.take 186) s2Step164ExitGRow.sign=s2Step164ExitGOut := by decide +kernel
  have hi : s2Step164ExitGRow.payload.drop 186=s2Step164ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step164ExitG_retired] at result
  exact result

private def s2Step164ExitGvBefore : Arena := s2Step164ExitFAfter

private theorem s2Step164ExitGv_Incoming : rowsOwned s2Step164ExitGvBefore [s2Step164ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step164ExitGRow,s2Step164ExitFRow,s2Step164ExitFvRow,s2Step164ExitGvRow] 3 s2Step164ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step164ExitGvBefore (fun q => (0≤q ∧ q<699) ∨ (700≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step164ExitGv_Outgoing : rowsOwned s2Step164ExitGvAfter [s2Step164ExitGvOut] :=
  hmrRows_owned_drop s2Step164ExitGvAfter [s2Step164ExitGOut,s2Step164ExitFOut,s2Step164ExitFvOut,s2Step164ExitGvOut] 3 s2Step164ExitBank_outgoingOwned

private theorem s2Step164ExitGv_distinct : (s2Step164ExitGvRow.sign::s2Step164ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164ExitGv_owned : (s2Step164ExitGvRow.sign::s2Step164ExitGvRow.payload).toFinset⊆s2Step164ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step164ExitGvBefore (fun q => (0≤q ∧ q<699) ∨ (700≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164ExitGv_retired : s2Step164ExitGvBefore.retireSet s2Step164ExitGvExtra.toFinset=s2Step164ExitGvAfter := by
  unfold Arena.retireSet s2Step164ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step164ExitGvBefore,s2Step164ExitFAfter,s2Step164ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step164ExitGv_checked : planRowResizeLog s2Step164ExitGvBefore s2Step164ExitGvRow 96 []=
    some (s2Step164ExitGvAfter,s2Step164ExitGvOut,shrinkRow 771 s2Step164ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step164ExitGvBefore s2Step164ExitGvRow 96 s2Step164ExitGv_distinct s2Step164ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step164ExitGvRow.payload.take 96) s2Step164ExitGvRow.sign=s2Step164ExitGvOut := by decide +kernel
  have hi : s2Step164ExitGvRow.payload.drop 96=s2Step164ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step164ExitGv_retired] at result
  exact result

private theorem s2Step164ExitBank_rows : planWindowRowsLog s2Step164ExitGBefore [(s2Step164ExitGRow,186),(s2Step164ExitFRow,187),(s2Step164ExitFvRow,98),(s2Step164ExitGvRow,96)] [[],[],[],[]]=
    some (s2Step164ExitGvAfter,[s2Step164ExitGOut,s2Step164ExitFOut,s2Step164ExitFvOut,s2Step164ExitGvOut],(shrinkRow 769 s2Step164ExitGExtra ++ (shrinkRow 768 s2Step164ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step164ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step164ExitGvAfter [] []=some (s2Step164ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step164ExitGvBefore s2Step164ExitGvAfter s2Step164ExitGvAfter
    s2Step164ExitGvRow s2Step164ExitGvOut 96 [] [] [] []
    (shrinkRow 771 s2Step164ExitGvExtra) ([]) s2Step164ExitGv_Incoming s2Step164ExitGv_checked h4 s2Step164ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step164ExitFvBefore s2Step164ExitFvAfter s2Step164ExitGvAfter
    s2Step164ExitFvRow s2Step164ExitFvOut 98 [] [(s2Step164ExitGvRow,96)] [[]] [s2Step164ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step164ExitGvExtra ++ [])) s2Step164ExitFv_Incoming s2Step164ExitFv_checked h3 s2Step164ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step164ExitFBefore s2Step164ExitFAfter s2Step164ExitGvAfter
    s2Step164ExitFRow s2Step164ExitFOut 187 [] [(s2Step164ExitFvRow,98),(s2Step164ExitGvRow,96)] [[],[]] [s2Step164ExitFvOut,s2Step164ExitGvOut]
    (shrinkRow 768 s2Step164ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step164ExitGvExtra ++ []))) s2Step164ExitF_Incoming s2Step164ExitF_checked h2 s2Step164ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step164ExitGBefore s2Step164ExitGAfter s2Step164ExitGvAfter
    s2Step164ExitGRow s2Step164ExitGOut 186 [] [(s2Step164ExitFRow,187),(s2Step164ExitFvRow,98),(s2Step164ExitGvRow,96)] [[],[],[]] [s2Step164ExitFOut,s2Step164ExitFvOut,s2Step164ExitGvOut]
    (shrinkRow 769 s2Step164ExitGExtra) ((shrinkRow 768 s2Step164ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step164ExitGvExtra ++ [])))) s2Step164ExitG_Incoming s2Step164ExitG_checked h1 s2Step164ExitG_Outgoing
  exact h0

private theorem s2Step164ExitBank_checked : compileHmrBankResizeLog .exit s2Step164ExitGBefore ⟨s2Step164ExitFRow,s2Step164ExitGRow,s2Step164ExitFvRow,s2Step164ExitGvRow⟩ ⟨187,186,98,96⟩ [[],[],[],[]]=
    some (s2Step164ExitGvAfter,⟨s2Step164ExitFOut,s2Step164ExitGOut,s2Step164ExitFvOut,s2Step164ExitGvOut⟩,(shrinkRow 769 s2Step164ExitGExtra ++ (shrinkRow 768 s2Step164ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step164ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step164ExitBank_rows]
  rfl

private theorem s2Step164Add0_apart : Disjoint s2Step164Add0Arena.live s2Step164Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step164Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164Add0_card : s2Step164Add0Arena.live.card=886 := by
  decide +kernel

private theorem s2Step164Add0_borrowed : s2Step164Add0Arena.checkBorrow (hmrHybridCount s2Step164Add0Arena s2Step164Add0B.length) s2Step164Add0Work=some s2Step164Add0During := by
  have len : s2Step164Add0Work.length=hmrHybridCount s2Step164Add0Arena s2Step164Add0B.length := by
    rw [hmrHybridCount,s2Step164Add0_card]
    decide +kernel
  have nd : s2Step164Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step164Add0Arena s2Step164Add0During s2Step164Add0Work.toFinset s2Step164Add0_bounded s2Step164Add0_apart rfl

private theorem s2Step164Add0_distinct : (867::799::877::(s2Step164Add0A++s2Step164Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164Add0_owned : (867::799::877::(s2Step164Add0A++s2Step164Add0B)).toFinset⊆s2Step164Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step164Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164Add0_checked : compileHmrHybridCinLog s2Step164Add0Arena 799 867 877 s2Step164Add0A s2Step164Add0B s2Step164Add0Work=some s2Step164Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step164Add0Arena s2Step164Add0During 799 867 877 s2Step164Add0A s2Step164Add0B s2Step164Add0Work
    (by decide +kernel) (by decide +kernel) s2Step164Add0_distinct
    (fun q hq => s2Step164Add0_owned (List.mem_toFinset.mpr hq)) s2Step164Add0_borrowed

private theorem s2Step164Add1_apart : Disjoint s2Step164Add1Arena.live s2Step164Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step164Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164Add1_card : s2Step164Add1Arena.live.card=886 := by
  decide +kernel

private theorem s2Step164Add1_borrowed : s2Step164Add1Arena.checkBorrow (hmrHybridCount s2Step164Add1Arena s2Step164Add1B.length) s2Step164Add1Work=some s2Step164Add1During := by
  have len : s2Step164Add1Work.length=hmrHybridCount s2Step164Add1Arena s2Step164Add1B.length := by
    rw [hmrHybridCount,s2Step164Add1_card]
    decide +kernel
  have nd : s2Step164Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step164Add1Arena s2Step164Add1During s2Step164Add1Work.toFinset s2Step164Add1_bounded s2Step164Add1_apart rfl

private theorem s2Step164Add1_distinct : (867::799::877::(s2Step164Add1A++s2Step164Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164Add1_owned : (867::799::877::(s2Step164Add1A++s2Step164Add1B)).toFinset⊆s2Step164Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step164Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164Add1_checked : compileHmrHybridCinLog s2Step164Add1Arena 799 867 877 s2Step164Add1A s2Step164Add1B s2Step164Add1Work=some s2Step164Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step164Add1Arena s2Step164Add1During 799 867 877 s2Step164Add1A s2Step164Add1B s2Step164Add1Work
    (by decide +kernel) (by decide +kernel) s2Step164Add1_distinct
    (fun q hq => s2Step164Add1_owned (List.mem_toFinset.mpr hq)) s2Step164Add1_borrowed

private theorem s2Step164F4_apart : Disjoint (s2Step164Add0A++s2Step164Add0B).toFinset (s2Step164Add1A++s2Step164Add1B).toFinset := by
  have nd : ((s2Step164Add0A++s2Step164Add0B)++(s2Step164Add1A++s2Step164Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step164F4_carry : s2Step164F4FlagArena.checkBorrow 1 [877]=some s2Step164Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step164F4FlagArena,s2Step164HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step164F4FlagArena,s2Step164HeadFvAfter,s2Step164Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step164F4_distinct : (811::799::867::877::((s2Step164Add0A++s2Step164Add1A)++(s2Step164Add0B++s2Step164Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164F4_flag : s2Step164HeadFvAfter.checkBorrow 1 [867]=some s2Step164F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step164HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step164F4_owned : (811::799::((s2Step164Add0A++s2Step164Add1A)++(s2Step164Add0B++s2Step164Add1B))).toFinset⊆s2Step164HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step164HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164F4_checked : compileHmrHybridF4Log s2Step164HeadFvAfter 811 799 s2Step164Add0A s2Step164Add0B s2Step164Add1A s2Step164Add1B [867] [877] s2Step164Add0Work s2Step164Add1Work=some s2Step164F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step164HeadFvAfter s2Step164F4FlagArena s2Step164Add0Arena s2Step164Add0During s2Step164Add1During 811 799
    s2Step164Add0A s2Step164Add0B s2Step164Add1A s2Step164Add1B [867] [877] s2Step164Add0Work s2Step164Add1Work
    (fun q hq => s2Step164F4_owned (List.mem_toFinset.mpr hq)) s2Step164F4_flag s2Step164F4_carry
    s2Step164F4_distinct s2Step164F4_apart s2Step164Add0_checked s2Step164Add1_checked

private theorem s2Step164Front_branch : s2Step164FrontSigmaArena.checkBorrow 1 [799]=some s2Step164HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step164FrontSigmaArena,s2Step164EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step164FrontSigmaArena,s2Step164EntryGvAfter,s2Step164HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step164Front_entry : HmrFrontEntryValid s2Step164EntryFBefore s2Step164FrontBank 188 97 ⟨187,186,98,96⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step164FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step164EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step164EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step164FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step164Front_sigma : s2Step164EntryGvAfter.checkBorrow 1 [811]=some s2Step164FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step164EntryGvAfter,arenaWires]
  · rfl

private def s2Step164HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164HeadFBefore : Arena := s2Step164HeadGAfter

private def s2Step164HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩

private def s2Step164HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797],770⟩

private def s2Step164HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 793, 810],769⟩

private def s2Step164HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 849],771⟩

private theorem s2Step164HeadBank_incomingDistinct : ([s2Step164HeadGRow,s2Step164HeadFRow,s2Step164HeadGvRow,s2Step164HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164HeadF_Incoming : rowsOwned s2Step164HeadFBefore [s2Step164HeadFRow,s2Step164HeadGvRow,s2Step164HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step164HeadGRow,s2Step164HeadFRow,s2Step164HeadGvRow,s2Step164HeadFvRow] 1 s2Step164HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step164HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step164HeadBank_outgoingOwned : rowsOwned s2Step164HeadFvAfter [s2Step164HeadGOut,s2Step164HeadFOut,s2Step164HeadGvOut,s2Step164HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step164HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step164HeadF_Outgoing : rowsOwned s2Step164HeadFvAfter [s2Step164HeadFOut,s2Step164HeadGvOut,s2Step164HeadFvOut] :=
  hmrRows_owned_drop s2Step164HeadFvAfter [s2Step164HeadGOut,s2Step164HeadFOut,s2Step164HeadGvOut,s2Step164HeadFvOut] 1 s2Step164HeadBank_outgoingOwned

private theorem s2Step164HeadF_distinct : (s2Step164HeadFRow.sign::s2Step164HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164HeadF_owned : (s2Step164HeadFRow.sign::s2Step164HeadFRow.payload).toFinset⊆s2Step164HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step164HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164HeadF_reserved : s2Step164HeadFBefore.reserve s2Step164HeadFFresh.toFinset=some s2Step164HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step164HeadFFresh,arenaWires]
  · norm_num [s2Step164HeadFBefore,s2Step164HeadGAfter,s2Step164HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step164HeadFAfter,s2Step164HeadFBefore,s2Step164HeadGAfter,s2Step164HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step164HeadF_checked : planRowResizeLog s2Step164HeadFBefore s2Step164HeadFRow 189 s2Step164HeadFFresh=
    some (s2Step164HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 785],768⟩,growRow 768 s2Step164HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step164HeadFBefore s2Step164HeadFAfter s2Step164HeadFRow 189 s2Step164HeadFFresh
    s2Step164HeadF_distinct s2Step164HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step164HeadF_reserved
  have rowEq : WindowRow.mk (s2Step164HeadFRow.payload++s2Step164HeadFFresh) s2Step164HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 785],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step164HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step164HeadFvBefore : Arena := s2Step164HeadGvAfter

private theorem s2Step164HeadFv_Incoming : rowsOwned s2Step164HeadFvBefore [s2Step164HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step164HeadGRow,s2Step164HeadFRow,s2Step164HeadGvRow,s2Step164HeadFvRow] 3 s2Step164HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step164HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step164HeadFv_Outgoing : rowsOwned s2Step164HeadFvAfter [s2Step164HeadFvOut] :=
  hmrRows_owned_drop s2Step164HeadFvAfter [s2Step164HeadGOut,s2Step164HeadFOut,s2Step164HeadGvOut,s2Step164HeadFvOut] 3 s2Step164HeadBank_outgoingOwned

private theorem s2Step164HeadFv_distinct : (s2Step164HeadFvRow.sign::s2Step164HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164HeadFv_owned : (s2Step164HeadFvRow.sign::s2Step164HeadFvRow.payload).toFinset⊆s2Step164HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step164HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164HeadFv_reserved : s2Step164HeadFvBefore.reserve s2Step164HeadFvFresh.toFinset=some s2Step164HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step164HeadFvFresh,arenaWires]
  · norm_num [s2Step164HeadFvBefore,s2Step164HeadGvAfter,s2Step164HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step164HeadFvAfter,s2Step164HeadFvBefore,s2Step164HeadGvAfter,s2Step164HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step164HeadFv_checked : planRowResizeLog s2Step164HeadFvBefore s2Step164HeadFvRow 98 s2Step164HeadFvFresh=
    some (s2Step164HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩,growRow 770 s2Step164HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step164HeadFvBefore s2Step164HeadFvAfter s2Step164HeadFvRow 98 s2Step164HeadFvFresh
    s2Step164HeadFv_distinct s2Step164HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step164HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step164HeadFvRow.payload++s2Step164HeadFvFresh) s2Step164HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step164HeadG_Incoming : rowsOwned s2Step164HeadGBefore [s2Step164HeadGRow,s2Step164HeadFRow,s2Step164HeadGvRow,s2Step164HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step164HeadGRow,s2Step164HeadFRow,s2Step164HeadGvRow,s2Step164HeadFvRow] 0 s2Step164HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step164HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step164HeadG_Outgoing : rowsOwned s2Step164HeadFvAfter [s2Step164HeadGOut,s2Step164HeadFOut,s2Step164HeadGvOut,s2Step164HeadFvOut] :=
  hmrRows_owned_drop s2Step164HeadFvAfter [s2Step164HeadGOut,s2Step164HeadFOut,s2Step164HeadGvOut,s2Step164HeadFvOut] 0 s2Step164HeadBank_outgoingOwned

private theorem s2Step164HeadG_distinct : (s2Step164HeadGRow.sign::s2Step164HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164HeadG_owned : (s2Step164HeadGRow.sign::s2Step164HeadGRow.payload).toFinset⊆s2Step164HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step164HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164HeadG_reserved : s2Step164HeadGBefore.reserve s2Step164HeadGFresh.toFinset=some s2Step164HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step164HeadGFresh,arenaWires]
  · norm_num [s2Step164HeadGBefore,s2Step164HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step164HeadGAfter,s2Step164HeadGBefore,s2Step164HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step164HeadG_checked : planRowResizeLog s2Step164HeadGBefore s2Step164HeadGRow 189 s2Step164HeadGFresh=
    some (s2Step164HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 793, 810, 803],769⟩,growRow 769 s2Step164HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step164HeadGBefore s2Step164HeadGAfter s2Step164HeadGRow 189 s2Step164HeadGFresh
    s2Step164HeadG_distinct s2Step164HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step164HeadG_reserved
  have rowEq : WindowRow.mk (s2Step164HeadGRow.payload++s2Step164HeadGFresh) s2Step164HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 793, 810, 803],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step164HeadGvBefore : Arena := s2Step164HeadFAfter

private theorem s2Step164HeadGv_Incoming : rowsOwned s2Step164HeadGvBefore [s2Step164HeadGvRow,s2Step164HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step164HeadGRow,s2Step164HeadFRow,s2Step164HeadGvRow,s2Step164HeadFvRow] 2 s2Step164HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step164HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step164HeadGv_Outgoing : rowsOwned s2Step164HeadFvAfter [s2Step164HeadGvOut,s2Step164HeadFvOut] :=
  hmrRows_owned_drop s2Step164HeadFvAfter [s2Step164HeadGOut,s2Step164HeadFOut,s2Step164HeadGvOut,s2Step164HeadFvOut] 2 s2Step164HeadBank_outgoingOwned

private theorem s2Step164HeadGv_distinct : (s2Step164HeadGvRow.sign::s2Step164HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step164HeadGv_owned : (s2Step164HeadGvRow.sign::s2Step164HeadGvRow.payload).toFinset⊆s2Step164HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step164HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step164HeadGv_reserved : s2Step164HeadGvBefore.reserve s2Step164HeadGvFresh.toFinset=some s2Step164HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step164HeadGvFresh,arenaWires]
  · norm_num [s2Step164HeadGvBefore,s2Step164HeadFAfter,s2Step164HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step164HeadGvAfter,s2Step164HeadGvBefore,s2Step164HeadFAfter,s2Step164HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step164HeadGv_checked : planRowResizeLog s2Step164HeadGvBefore s2Step164HeadGvRow 98 s2Step164HeadGvFresh=
    some (s2Step164HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 849, 847],771⟩,growRow 771 s2Step164HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step164HeadGvBefore s2Step164HeadGvAfter s2Step164HeadGvRow 98 s2Step164HeadGvFresh
    s2Step164HeadGv_distinct s2Step164HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step164HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step164HeadGvRow.payload++s2Step164HeadGvFresh) s2Step164HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 849, 847],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step164HeadBank_rows : planWindowRowsLog s2Step164HeadGBefore [(s2Step164HeadGRow,189),(s2Step164HeadFRow,189),(s2Step164HeadGvRow,98),(s2Step164HeadFvRow,98)] [s2Step164HeadGFresh,s2Step164HeadFFresh,s2Step164HeadGvFresh,s2Step164HeadFvFresh]=
    some (s2Step164HeadFvAfter,[s2Step164HeadGOut,s2Step164HeadFOut,s2Step164HeadGvOut,s2Step164HeadFvOut],(growRow 769 s2Step164HeadGFresh ++ (growRow 768 s2Step164HeadFFresh ++ (growRow 771 s2Step164HeadGvFresh ++ (growRow 770 s2Step164HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step164HeadFvAfter [] []=some (s2Step164HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step164HeadFvBefore s2Step164HeadFvAfter s2Step164HeadFvAfter
    s2Step164HeadFvRow s2Step164HeadFvOut 98 s2Step164HeadFvFresh [] [] []
    (growRow 770 s2Step164HeadFvFresh) ([]) s2Step164HeadFv_Incoming s2Step164HeadFv_checked h4 s2Step164HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step164HeadGvBefore s2Step164HeadGvAfter s2Step164HeadFvAfter
    s2Step164HeadGvRow s2Step164HeadGvOut 98 s2Step164HeadGvFresh [(s2Step164HeadFvRow,98)] [s2Step164HeadFvFresh] [s2Step164HeadFvOut]
    (growRow 771 s2Step164HeadGvFresh) ((growRow 770 s2Step164HeadFvFresh ++ [])) s2Step164HeadGv_Incoming s2Step164HeadGv_checked h3 s2Step164HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step164HeadFBefore s2Step164HeadFAfter s2Step164HeadFvAfter
    s2Step164HeadFRow s2Step164HeadFOut 189 s2Step164HeadFFresh [(s2Step164HeadGvRow,98),(s2Step164HeadFvRow,98)] [s2Step164HeadGvFresh,s2Step164HeadFvFresh] [s2Step164HeadGvOut,s2Step164HeadFvOut]
    (growRow 768 s2Step164HeadFFresh) ((growRow 771 s2Step164HeadGvFresh ++ (growRow 770 s2Step164HeadFvFresh ++ []))) s2Step164HeadF_Incoming s2Step164HeadF_checked h2 s2Step164HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step164HeadGBefore s2Step164HeadGAfter s2Step164HeadFvAfter
    s2Step164HeadGRow s2Step164HeadGOut 189 s2Step164HeadGFresh [(s2Step164HeadFRow,189),(s2Step164HeadGvRow,98),(s2Step164HeadFvRow,98)] [s2Step164HeadFFresh,s2Step164HeadGvFresh,s2Step164HeadFvFresh] [s2Step164HeadFOut,s2Step164HeadGvOut,s2Step164HeadFvOut]
    (growRow 769 s2Step164HeadGFresh) ((growRow 768 s2Step164HeadFFresh ++ (growRow 771 s2Step164HeadGvFresh ++ (growRow 770 s2Step164HeadFvFresh ++ [])))) s2Step164HeadG_Incoming s2Step164HeadG_checked h1 s2Step164HeadG_Outgoing
  exact h0

private theorem s2Step164HeadBank_checked : compileHmrBankResizeLog .headroom s2Step164HeadGBefore ⟨s2Step164HeadFRow,s2Step164HeadGRow,s2Step164HeadFvRow,s2Step164HeadGvRow⟩ ⟨189,189,98,98⟩ [s2Step164HeadGFresh,s2Step164HeadFFresh,s2Step164HeadGvFresh,s2Step164HeadFvFresh]=
    some (s2Step164HeadFvAfter,⟨s2Step164HeadFOut,s2Step164HeadGOut,s2Step164HeadFvOut,s2Step164HeadGvOut⟩,(growRow 769 s2Step164HeadGFresh ++ (growRow 768 s2Step164HeadFFresh ++ (growRow 771 s2Step164HeadGvFresh ++ (growRow 770 s2Step164HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step164HeadBank_rows]
  rfl

private theorem s2Step164Front_checked : compileHmrSourceFrontLog s2Step164EntryFBefore s2Step164FrontBank 188 97 ⟨187,186,98,96⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step164FrontLog=some s2Step164FrontPlan := by
  have pairEq : s2Step164FrontPair=⟨s2Step164HeadFRow,s2Step164HeadGRow,s2Step164HeadFvRow,s2Step164HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step164FrontHead=⟨s2Step164ExitFRow,s2Step164ExitGRow,s2Step164ExitFvRow,s2Step164ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step164Add0A=s2Step164FrontHead.f.wires := by decide +kernel
  have gEq : s2Step164Add0B=s2Step164FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step164Add1A=s2Step164FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step164Add1B=s2Step164FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step164EntryFBefore s2Step164FrontBank 188 97 ⟨187,186,98,96⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step164FrontLog s2Step164FrontPlan
  · exact s2Step164Front_entry
  · exact s2Step164EntryBank_checked
  · exact s2Step164Front_sigma
  · rfl
  · exact s2Step164Front_branch
  · rfl
  · simpa only [s2Step164FrontPlan,pairEq] using s2Step164HeadBank_checked
  · simpa only [s2Step164FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step164F4_checked
  · exact s2Step164Counter_checked
  · rfl
  · simpa only [s2Step164FrontPlan,headEq] using s2Step164ExitBank_checked

private theorem s2Step164Complete_explicit_checked : compileHmrEarlyStepLog s2Step164EntryFBefore s2Step164FrontBank 188 97 ⟨187,186,98,96⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step164CompleteLog=some s2Step164CompletePlan := by
  let Q := s2Step164EarlyControlPlan
  have hq := s2Step164EarlyControl_plan_checked
  have fv1 : s2Step164CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step164CompleteOut.fv.payload[2]?.getD s2Step164CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step164CompleteOut.fv.payload[3]?.getD s2Step164CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step164CompleteOut.fv.payload[4]?.getD s2Step164CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step164EntryFBefore s2Step164EarlyControlArena s2Step164FrontBank 188 97 ⟨187,186,98,96⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step164CompleteLog s2Step164FrontPlan Q
    s2Step164Front_checked s2Step164Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step164Complete_owned s2Step164Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step164EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 811 s2Step164CompleteOut.fv.second (s2Step164CompleteOut.fv.payload[2]?.getD s2Step164CompleteOut.fv.sign) (s2Step164CompleteOut.fv.payload[3]?.getD s2Step164CompleteOut.fv.sign) (s2Step164CompleteOut.fv.payload[4]?.getD s2Step164CompleteOut.fv.sign) 799 42 s2Step164EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep164Arena : Arena := s2Step164EntryFBefore
def s2PrivateStep164Bank : WindowBank := s2Step164FrontBank
def s2PrivateStep164Spec : HmrSourceWalkStepLog := ⟨188,97,⟨187,186,98,96⟩,42,.early s2Step164CompleteLog⟩
def s2PrivateStep164Plan : HmrSourceStepPlan := .early s2Step164CompletePlan
theorem s2PrivateStep164_source : s2PrivateStep164Spec=s2ObservedLogs160[4] := rfl
theorem s2PrivateStep164_checked : compileHmrSourceStepLog s2PrivateStep164Arena s2PrivateStep164Bank
    s2PrivateStep164Spec.fgWidth s2PrivateStep164Spec.vWidth s2PrivateStep164Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 164 s2PrivateStep164Spec.need none s2PrivateStep164Spec.log=some s2PrivateStep164Plan := by
  change compileHmrSourceStepLog s2Step164EntryFBefore s2Step164FrontBank 188 97 ⟨187,186,98,96⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 164 42 none (.early s2Step164CompleteLog)=some (.early s2Step164CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 164<498)]
  rw [s2Step164Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
