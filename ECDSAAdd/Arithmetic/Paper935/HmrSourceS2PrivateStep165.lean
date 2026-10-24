import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep163
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

private def s2Step165CompleteMoves : List (Wire × Wire) := []

private def s2Step165EarlyControlLog : HmrEarlyControlLog := ⟨[800, 810, 803, 793, 799],[785],[867],[877, 879, 882, 885, 888, 890],[]⟩

private def s2Step165FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [799], [], [811, 800]],[[785], [793], [810], [803]],[[], [], [], []]⟩,[849],[847],[867],[877],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882]⟩

private def s2Step165CompleteLog : HmrEarlyStepLog := ⟨s2Step165FrontLog,s2Step165CompleteMoves,s2Step165EarlyControlLog⟩

private def s2Step165ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩

private def s2Step165ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩

private def s2Step165ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185],769⟩

private def s2Step165ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811],771⟩

private def s2Step165FrontOut : WindowBank := ⟨s2Step165ExitFOut,s2Step165ExitGOut,s2Step165ExitFvOut,s2Step165ExitGvOut⟩

private def s2Step165CompleteOut : WindowBank := s2Step165FrontOut.repacked s2Step165CompleteMoves

private def s2Step165EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step165EarlyControlPositiveArena,[785],s2Step165EarlyControlEqualityArena,[867],⟨⟨849,false⟩,[⟨⟨785,false⟩,867⟩]⟩⟩

private def s2Step165EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step165EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step165EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,800⟩,⟨⟨774,false⟩,810⟩,⟨⟨775,false⟩,803⟩,⟨⟨776,false⟩,793⟩,⟨⟨777,false⟩,799⟩]⟩

private def s2Step165EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step165EarlyControlZeroArena,s2Step165EarlyControlZeroPlan,s2Step165EarlyControlClassPlan,s2Step165EarlyControlFlagArena,s2Step165EarlyControlFittedArena,s2Step165EarlyControlHistoryArena,s2Step165EarlyControlSigmaArena,s2Step165EarlyControlOutputArena,s2Step165EarlyControlLog⟩

private def s2Step165CounterWork : List Wire := [867, 877, 879, 882]

private theorem s2Step165Counter_bounded : s2Step165CounterWork.toFinset⊆arenaWires := by norm_num [s2Step165CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step165HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165CounterDuring : Arena := ⟨s2Step165HeadFvAfter.live∪s2Step165CounterWork.toFinset,Finset.union_subset s2Step165HeadFvAfter.bounded s2Step165Counter_bounded⟩

private def s2Step165EntryFFresh : List Wire := []

private def s2Step165EntryFvFresh : List Wire := []

private def s2Step165EntryGFresh : List Wire := [799]

private def s2Step165EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165EntryGvFresh : List Wire := [811, 800]

private def s2Step165ExitFExtra : List Wire := [793]

private def s2Step165ExitFvExtra : List Wire := [803]

private def s2Step165ExitGExtra : List Wire := [799, 785]

private def s2Step165ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165ExitGvExtra : List Wire := [800, 810]

private def s2Step165Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165Add0Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step165Add0_bounded : s2Step165Add0Work.toFinset⊆arenaWires := by
  have h : s2Step165Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step165Add0During : Arena := ⟨s2Step165Add0Arena.live∪s2Step165Add0Work.toFinset,Finset.union_subset s2Step165Add0Arena.bounded s2Step165Add0_bounded⟩

private def s2Step165Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165Add1Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step165Add1_bounded : s2Step165Add1Work.toFinset⊆arenaWires := by
  have h : s2Step165Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step165Add1During : Arena := ⟨s2Step165Add1Arena.live∪s2Step165Add1Work.toFinset,Finset.union_subset s2Step165Add1Arena.bounded s2Step165Add1_bounded⟩

private def s2Step165F4FlagArena : Arena := ⟨s2Step165HeadFvAfter.live∪{867},Finset.union_subset s2Step165HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step165F4Plan : HmrHybridF4Plan := ⟨s2Step165F4FlagArena,[867],s2Step165Add0Arena,[877],s2Step165Add0During,s2Step165Add0Work,s2Step165Add1During,s2Step165Add1Work⟩

private def s2Step165HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 793],768⟩

private def s2Step165HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803],770⟩

private def s2Step165HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 799, 785],769⟩

private def s2Step165HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 800, 810],771⟩

private def s2Step165FrontHead : WindowBank := ⟨s2Step165HeadFOut,s2Step165HeadGOut,s2Step165HeadFvOut,s2Step165HeadGvOut⟩

private def s2Step165EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩

private def s2Step165EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩

private def s2Step165EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 799],769⟩

private def s2Step165EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 800],771⟩

private def s2Step165FrontPair : WindowBank := ⟨s2Step165EntryFOut,s2Step165EntryGOut,s2Step165EntryFvOut,s2Step165EntryGvOut⟩

private def s2Step165FrontSigmaArena : Arena := ⟨s2Step165EntryGvAfter.live∪{849},Finset.union_subset s2Step165EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step165HeadFFresh : List Wire := [793]

private def s2Step165HeadFvFresh : List Wire := [803]

private def s2Step165HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165HeadGFresh : List Wire := [785]

private def s2Step165HeadGvFresh : List Wire := [810]

private def s2Step165FrontPlan : HmrSourceFront := ⟨s2Step165EntryGvAfter,s2Step165FrontPair,(growRow 768 s2Step165EntryFFresh ++ (growRow 769 s2Step165EntryGFresh ++ (growRow 770 s2Step165EntryFvFresh ++ (growRow 771 s2Step165EntryGvFresh ++ [])))),s2Step165FrontSigmaArena,[849],s2Step165HeadGBefore,[847],
  s2Step165HeadFvAfter,s2Step165FrontHead,(growRow 769 s2Step165HeadGFresh ++ (growRow 768 s2Step165HeadFFresh ++ (growRow 771 s2Step165HeadGvFresh ++ (growRow 770 s2Step165HeadFvFresh ++ [])))),s2Step165F4Plan,s2Step165CounterDuring,s2Step165CounterWork,s2Step165ExitGvAfter,s2Step165FrontOut,(shrinkRow 769 s2Step165ExitGExtra ++ (shrinkRow 768 s2Step165ExitFExtra ++ (shrinkRow 770 s2Step165ExitFvExtra ++ (shrinkRow 771 s2Step165ExitGvExtra ++ []))))⟩

private def s2Step165CompletePlan : HmrEarlyStepPlan := ⟨s2Step165FrontPlan,s2Step165EarlyControlArena,s2Step165EarlyControlPlan,s2Step165CompleteMoves⟩

private theorem s2Step165Complete_apart : List.Disjoint (s2Step165CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [849, 847, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step165CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[849, 847, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step165Complete_owned : (s2Step165CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step165EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step165EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165Complete_repack : s2Step165ExitGvAfter.checkRepack s2Step165CompleteMoves=some s2Step165EarlyControlArena := by rfl

private theorem s2Step165EarlyControl_branchOwned : ([847] : List Wire).toFinset⊆s2Step165EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step165EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165EarlyControl_branch : compileHmrBranchRetirement s2Step165EarlyControlSigmaArena 847=some s2Step165EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step165EarlyControl_branchOwned
  · ext q
    simp [s2Step165EarlyControlOutputArena,s2Step165EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step165EarlyControl_classEqualityBorrow : s2Step165EarlyControlPositiveArena.checkBorrow (([849, 785] : List Wire).length-1) s2Step165EarlyControlLog.classWork=some s2Step165EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step165EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step165EarlyControlPositiveArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step165EarlyControlEqualityArena,s2Step165EarlyControlPositiveArena,s2Step165EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step165EarlyControl_classEqualityOwned : ([849, 785] : List Wire).toFinset⊆s2Step165EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step165EarlyControlPositiveArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165EarlyControl_classEquality : compileHmrEqualityLog s2Step165EarlyControlPositiveArena [849, 785] 0 s2Step165EarlyControlLog.classWork=some (s2Step165EarlyControlEqualityArena,s2Step165EarlyControlLog.classWork,s2Step165EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step165EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step165EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step165EarlyControl_classOwned : ([777, 799, 849] : List Wire).toFinset⊆s2Step165EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step165EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165EarlyControl_positiveBorrow : s2Step165EarlyControlZeroArena.checkBorrow (1) s2Step165EarlyControlLog.positiveWork=some s2Step165EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step165EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step165EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step165EarlyControlPositiveArena,s2Step165EarlyControlZeroArena,s2Step165EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step165EarlyControl_class : compileHmrSourceClassLog s2Step165EarlyControlZeroArena false 777 s2Step165EarlyControlZeroPlan.top 0 849 s2Step165EarlyControlLog.positiveWork s2Step165EarlyControlLog.classWork=some s2Step165EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step165EarlyControlClassPlan s2Step165EarlyControlZeroArena false 777 s2Step165EarlyControlZeroPlan.top 0 849
  constructor
  · decide +kernel
  · exact s2Step165EarlyControl_classOwned
  · exact s2Step165EarlyControl_positiveBorrow
  · exact s2Step165EarlyControl_classEquality

private theorem s2Step165EarlyControl_entryRecordOwned : ([847, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step165EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step165EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165EarlyControl_entrySigmaOwned : ([849, 254] : List Wire).toFinset⊆s2Step165EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step165EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165EarlyControl_fitBorrow : s2Step165EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step165EarlyControlLog.recordFresh=some s2Step165EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step165EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step165EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
      decide +kernel
    · ext q
      simp [s2Step165EarlyControlFittedArena,s2Step165EarlyControlFlagArena,s2Step165EarlyControlLog,arenaWires]

private theorem s2Step165EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step165EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step165EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step165EarlyControl_fit : compileHmrRecordGrowLog s2Step165EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step165EarlyControlLog.recordFresh=some s2Step165EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step165EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step165EarlyControl_fitBorrow

private theorem s2Step165EarlyControl_flagsBorrow : s2Step165EarlyControlEqualityArena.checkBorrow (6) s2Step165EarlyControlLog.flagWork=some s2Step165EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step165EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step165EarlyControlEqualityArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step165EarlyControlFlagArena,s2Step165EarlyControlEqualityArena,s2Step165EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step165EarlyControl_flagsOwned : ([867, 253, 252, 251] : List Wire).toFinset⊆s2Step165EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step165EarlyControlEqualityArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165EarlyControl_flags : compileHmrFlagsLog s2Step165EarlyControlClassPlan.equalityArena s2Step165EarlyControlClassPlan.equality.top 253 252 251 s2Step165EarlyControlLog.flagWork=some s2Step165EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step165EarlyControl_flagsOwned⟩
  · exact s2Step165EarlyControl_flagsBorrow

private theorem s2Step165EarlyControl_historyBorrow : s2Step165EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step165EarlyControlLog.recordFresh=some s2Step165EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step165EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step165EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step165EarlyControlHistoryArena,s2Step165EarlyControlArena,s2Step165EarlyControlLog,arenaWires]

private theorem s2Step165EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step165EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step165EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165EarlyControl_history : compileHmrRecordGrowLog s2Step165EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step165EarlyControlLog.recordFresh=some s2Step165EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step165EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step165EarlyControl_historyBorrow

private theorem s2Step165EarlyControl_sigmaOwned : ([254, 849] : List Wire).toFinset⊆s2Step165EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step165EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165EarlyControl_sigmaReleaseOwned : ([849] : List Wire).toFinset⊆s2Step165EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step165EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165EarlyControl_sigmaRelease : s2Step165EarlyControlHistoryArena.release {849} (fun _ => false)=some s2Step165EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step165EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step165EarlyControlSigmaArena,s2Step165EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step165EarlyControl_sigma : compileHmrSigmaDropLog s2Step165EarlyControlHistoryArena false 0 0 254 849 []=some s2Step165EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step165EarlyControl_sigmaOwned⟩
  · exact s2Step165EarlyControl_sigmaRelease

private theorem s2Step165EarlyControl_zeroBorrow : s2Step165EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step165EarlyControlLog.zeroWork=some s2Step165EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step165EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step165EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step165EarlyControlZeroArena,s2Step165EarlyControlArena,s2Step165EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step165EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step165EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step165EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165EarlyControl_zero : compileHmrEqualityLog s2Step165EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step165EarlyControlLog.zeroWork=some (s2Step165EarlyControlZeroArena,s2Step165EarlyControlLog.zeroWork,s2Step165EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step165EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step165EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step165EarlyControl_logged : s2Step165EarlyControlPlan.Logged s2Step165EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 849 254 253 252 251 847 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step165EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step165EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step165EarlyControl_zero
  · exact s2Step165EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step165EarlyControl_flags
  · exact s2Step165EarlyControl_fit
  · exact s2Step165EarlyControl_history
  · exact s2Step165EarlyControl_sigma
  · exact s2Step165EarlyControl_branch

private theorem s2Step165EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step165EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 849 254 253 252 251 847 42 s2Step165EarlyControlLog=some s2Step165EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step165EarlyControlPlan s2Step165EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 849 254 253 252 251 847 42 s2Step165EarlyControl_logged

private def s2Step165EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩

private def s2Step165EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩

private def s2Step165EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185],769⟩

private def s2Step165EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808],771⟩

private def s2Step165FrontBank : WindowBank := ⟨s2Step165EntryFRow,s2Step165EntryGRow,s2Step165EntryFvRow,s2Step165EntryGvRow⟩

private def s2Step165Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 793, 768]

private def s2Step165Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 799, 785, 769]

private def s2Step165Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803, 770]

private def s2Step165Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 800, 810, 771]

private theorem s2Step165Counter_apart : Disjoint s2Step165HeadFvAfter.live s2Step165CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step165HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165Counter_borrowed : s2Step165HeadFvAfter.checkBorrow 4 s2Step165CounterWork=some s2Step165CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step165HeadFvAfter s2Step165CounterDuring s2Step165CounterWork.toFinset s2Step165Counter_bounded s2Step165Counter_apart rfl

private theorem s2Step165Counter_owned : (849::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step165HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step165HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165Counter_checked : compileHmrCounterStepLog s2Step165HeadFvAfter true 849 [772, 773, 774, 775, 776, 777] s2Step165CounterWork=some s2Step165CounterDuring := by
  have owned : ∀q∈849::[772, 773, 774, 775, 776, 777],q∈s2Step165HeadFvAfter.live := fun q hq => s2Step165Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step165Counter_borrowed

private def s2Step165EntryFAfter : Arena := s2Step165EntryFBefore

private theorem s2Step165EntryBank_incomingDistinct : ([s2Step165EntryFRow,s2Step165EntryGRow,s2Step165EntryFvRow,s2Step165EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165EntryF_Incoming : rowsOwned s2Step165EntryFBefore [s2Step165EntryFRow,s2Step165EntryGRow,s2Step165EntryFvRow,s2Step165EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step165EntryFRow,s2Step165EntryGRow,s2Step165EntryFvRow,s2Step165EntryGvRow] 0 s2Step165EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step165EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step165EntryBank_outgoingOwned : rowsOwned s2Step165EntryGvAfter [s2Step165EntryFOut,s2Step165EntryGOut,s2Step165EntryFvOut,s2Step165EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step165EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step165EntryF_Outgoing : rowsOwned s2Step165EntryGvAfter [s2Step165EntryFOut,s2Step165EntryGOut,s2Step165EntryFvOut,s2Step165EntryGvOut] :=
  hmrRows_owned_drop s2Step165EntryGvAfter [s2Step165EntryFOut,s2Step165EntryGOut,s2Step165EntryFvOut,s2Step165EntryGvOut] 0 s2Step165EntryBank_outgoingOwned

private theorem s2Step165EntryF_distinct : (s2Step165EntryFRow.sign::s2Step165EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165EntryF_owned : (s2Step165EntryFRow.sign::s2Step165EntryFRow.payload).toFinset⊆s2Step165EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step165EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165EntryF_reserved : s2Step165EntryFBefore.reserve s2Step165EntryFFresh.toFinset=some s2Step165EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step165EntryFFresh,arenaWires]
  · norm_num [s2Step165EntryFBefore,s2Step165EntryFFresh,arenaWires]
  · simp only [s2Step165EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step165EntryF_checked : planRowResizeLog s2Step165EntryFBefore s2Step165EntryFRow 187 s2Step165EntryFFresh=
    some (s2Step165EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩,growRow 768 s2Step165EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step165EntryFBefore s2Step165EntryFAfter s2Step165EntryFRow 187 s2Step165EntryFFresh
    s2Step165EntryF_distinct s2Step165EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step165EntryF_reserved
  have rowEq : WindowRow.mk (s2Step165EntryFRow.payload++s2Step165EntryFFresh) s2Step165EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step165EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165EntryFvAfter : Arena := s2Step165EntryGAfter

private def s2Step165EntryFvBefore : Arena := s2Step165EntryGAfter

private theorem s2Step165EntryFv_Incoming : rowsOwned s2Step165EntryFvBefore [s2Step165EntryFvRow,s2Step165EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step165EntryFRow,s2Step165EntryGRow,s2Step165EntryFvRow,s2Step165EntryGvRow] 2 s2Step165EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step165EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step165EntryFv_Outgoing : rowsOwned s2Step165EntryGvAfter [s2Step165EntryFvOut,s2Step165EntryGvOut] :=
  hmrRows_owned_drop s2Step165EntryGvAfter [s2Step165EntryFOut,s2Step165EntryGOut,s2Step165EntryFvOut,s2Step165EntryGvOut] 2 s2Step165EntryBank_outgoingOwned

private theorem s2Step165EntryFv_distinct : (s2Step165EntryFvRow.sign::s2Step165EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165EntryFv_owned : (s2Step165EntryFvRow.sign::s2Step165EntryFvRow.payload).toFinset⊆s2Step165EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step165EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165EntryFv_reserved : s2Step165EntryFvBefore.reserve s2Step165EntryFvFresh.toFinset=some s2Step165EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step165EntryFvFresh,arenaWires]
  · norm_num [s2Step165EntryFvBefore,s2Step165EntryGAfter,s2Step165EntryFvFresh,arenaWires]
  · simp only [s2Step165EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step165EntryFv_checked : planRowResizeLog s2Step165EntryFvBefore s2Step165EntryFvRow 98 s2Step165EntryFvFresh=
    some (s2Step165EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩,growRow 770 s2Step165EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step165EntryFvBefore s2Step165EntryFvAfter s2Step165EntryFvRow 98 s2Step165EntryFvFresh
    s2Step165EntryFv_distinct s2Step165EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step165EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step165EntryFvRow.payload++s2Step165EntryFvFresh) s2Step165EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step165EntryGBefore : Arena := s2Step165EntryFBefore

private theorem s2Step165EntryG_Incoming : rowsOwned s2Step165EntryGBefore [s2Step165EntryGRow,s2Step165EntryFvRow,s2Step165EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step165EntryFRow,s2Step165EntryGRow,s2Step165EntryFvRow,s2Step165EntryGvRow] 1 s2Step165EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step165EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step165EntryG_Outgoing : rowsOwned s2Step165EntryGvAfter [s2Step165EntryGOut,s2Step165EntryFvOut,s2Step165EntryGvOut] :=
  hmrRows_owned_drop s2Step165EntryGvAfter [s2Step165EntryFOut,s2Step165EntryGOut,s2Step165EntryFvOut,s2Step165EntryGvOut] 1 s2Step165EntryBank_outgoingOwned

private theorem s2Step165EntryG_distinct : (s2Step165EntryGRow.sign::s2Step165EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165EntryG_owned : (s2Step165EntryGRow.sign::s2Step165EntryGRow.payload).toFinset⊆s2Step165EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step165EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165EntryG_reserved : s2Step165EntryGBefore.reserve s2Step165EntryGFresh.toFinset=some s2Step165EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step165EntryGFresh,arenaWires]
  · norm_num [s2Step165EntryGBefore,s2Step165EntryFBefore,s2Step165EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step165EntryGAfter,s2Step165EntryGBefore,s2Step165EntryFBefore,s2Step165EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step165EntryG_checked : planRowResizeLog s2Step165EntryGBefore s2Step165EntryGRow 187 s2Step165EntryGFresh=
    some (s2Step165EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 799],769⟩,growRow 769 s2Step165EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step165EntryGBefore s2Step165EntryGAfter s2Step165EntryGRow 187 s2Step165EntryGFresh
    s2Step165EntryG_distinct s2Step165EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step165EntryG_reserved
  have rowEq : WindowRow.mk (s2Step165EntryGRow.payload++s2Step165EntryGFresh) s2Step165EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 799],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step165EntryGvBefore : Arena := s2Step165EntryGAfter

private theorem s2Step165EntryGv_Incoming : rowsOwned s2Step165EntryGvBefore [s2Step165EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step165EntryFRow,s2Step165EntryGRow,s2Step165EntryFvRow,s2Step165EntryGvRow] 3 s2Step165EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step165EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step165EntryGv_Outgoing : rowsOwned s2Step165EntryGvAfter [s2Step165EntryGvOut] :=
  hmrRows_owned_drop s2Step165EntryGvAfter [s2Step165EntryFOut,s2Step165EntryGOut,s2Step165EntryFvOut,s2Step165EntryGvOut] 3 s2Step165EntryBank_outgoingOwned

private theorem s2Step165EntryGv_distinct : (s2Step165EntryGvRow.sign::s2Step165EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165EntryGv_owned : (s2Step165EntryGvRow.sign::s2Step165EntryGvRow.payload).toFinset⊆s2Step165EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step165EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165EntryGv_reserved : s2Step165EntryGvBefore.reserve s2Step165EntryGvFresh.toFinset=some s2Step165EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step165EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step165EntryGvBefore,s2Step165EntryGAfter,s2Step165EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step165EntryGvAfter,s2Step165EntryGvBefore,s2Step165EntryGAfter,s2Step165EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step165EntryGv_checked : planRowResizeLog s2Step165EntryGvBefore s2Step165EntryGvRow 98 s2Step165EntryGvFresh=
    some (s2Step165EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 800],771⟩,growRow 771 s2Step165EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step165EntryGvBefore s2Step165EntryGvAfter s2Step165EntryGvRow 98 s2Step165EntryGvFresh
    s2Step165EntryGv_distinct s2Step165EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step165EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step165EntryGvRow.payload++s2Step165EntryGvFresh) s2Step165EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 800],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step165EntryBank_rows : planWindowRowsLog s2Step165EntryFBefore [(s2Step165EntryFRow,187),(s2Step165EntryGRow,187),(s2Step165EntryFvRow,98),(s2Step165EntryGvRow,98)] [s2Step165EntryFFresh,s2Step165EntryGFresh,s2Step165EntryFvFresh,s2Step165EntryGvFresh]=
    some (s2Step165EntryGvAfter,[s2Step165EntryFOut,s2Step165EntryGOut,s2Step165EntryFvOut,s2Step165EntryGvOut],(growRow 768 s2Step165EntryFFresh ++ (growRow 769 s2Step165EntryGFresh ++ (growRow 770 s2Step165EntryFvFresh ++ (growRow 771 s2Step165EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step165EntryGvAfter [] []=some (s2Step165EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step165EntryGvBefore s2Step165EntryGvAfter s2Step165EntryGvAfter
    s2Step165EntryGvRow s2Step165EntryGvOut 98 s2Step165EntryGvFresh [] [] []
    (growRow 771 s2Step165EntryGvFresh) ([]) s2Step165EntryGv_Incoming s2Step165EntryGv_checked h4 s2Step165EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step165EntryFvBefore s2Step165EntryFvAfter s2Step165EntryGvAfter
    s2Step165EntryFvRow s2Step165EntryFvOut 98 s2Step165EntryFvFresh [(s2Step165EntryGvRow,98)] [s2Step165EntryGvFresh] [s2Step165EntryGvOut]
    (growRow 770 s2Step165EntryFvFresh) ((growRow 771 s2Step165EntryGvFresh ++ [])) s2Step165EntryFv_Incoming s2Step165EntryFv_checked h3 s2Step165EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step165EntryGBefore s2Step165EntryGAfter s2Step165EntryGvAfter
    s2Step165EntryGRow s2Step165EntryGOut 187 s2Step165EntryGFresh [(s2Step165EntryFvRow,98),(s2Step165EntryGvRow,98)] [s2Step165EntryFvFresh,s2Step165EntryGvFresh] [s2Step165EntryFvOut,s2Step165EntryGvOut]
    (growRow 769 s2Step165EntryGFresh) ((growRow 770 s2Step165EntryFvFresh ++ (growRow 771 s2Step165EntryGvFresh ++ []))) s2Step165EntryG_Incoming s2Step165EntryG_checked h2 s2Step165EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step165EntryFBefore s2Step165EntryFAfter s2Step165EntryGvAfter
    s2Step165EntryFRow s2Step165EntryFOut 187 s2Step165EntryFFresh [(s2Step165EntryGRow,187),(s2Step165EntryFvRow,98),(s2Step165EntryGvRow,98)] [s2Step165EntryGFresh,s2Step165EntryFvFresh,s2Step165EntryGvFresh] [s2Step165EntryGOut,s2Step165EntryFvOut,s2Step165EntryGvOut]
    (growRow 768 s2Step165EntryFFresh) ((growRow 769 s2Step165EntryGFresh ++ (growRow 770 s2Step165EntryFvFresh ++ (growRow 771 s2Step165EntryGvFresh ++ [])))) s2Step165EntryF_Incoming s2Step165EntryF_checked h1 s2Step165EntryF_Outgoing
  exact h0

private theorem s2Step165EntryBank_checked : compileHmrBankResizeLog .entry s2Step165EntryFBefore ⟨s2Step165EntryFRow,s2Step165EntryGRow,s2Step165EntryFvRow,s2Step165EntryGvRow⟩ ⟨187,187,98,98⟩ [s2Step165EntryFFresh,s2Step165EntryGFresh,s2Step165EntryFvFresh,s2Step165EntryGvFresh]=
    some (s2Step165EntryGvAfter,⟨s2Step165EntryFOut,s2Step165EntryGOut,s2Step165EntryFvOut,s2Step165EntryGvOut⟩,(growRow 768 s2Step165EntryFFresh ++ (growRow 769 s2Step165EntryGFresh ++ (growRow 770 s2Step165EntryFvFresh ++ (growRow 771 s2Step165EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step165EntryBank_rows]
  rfl

private def s2Step165ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165ExitFBefore : Arena := s2Step165ExitGAfter

private def s2Step165ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 793],768⟩

private def s2Step165ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803],770⟩

private def s2Step165ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 799, 785],769⟩

private def s2Step165ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 800, 810],771⟩

private theorem s2Step165ExitBank_incomingDistinct : ([s2Step165ExitGRow,s2Step165ExitFRow,s2Step165ExitFvRow,s2Step165ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165ExitF_Incoming : rowsOwned s2Step165ExitFBefore [s2Step165ExitFRow,s2Step165ExitFvRow,s2Step165ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step165ExitGRow,s2Step165ExitFRow,s2Step165ExitFvRow,s2Step165ExitGvRow] 1 s2Step165ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step165ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step165ExitBank_outgoingOwned : rowsOwned s2Step165ExitGvAfter [s2Step165ExitGOut,s2Step165ExitFOut,s2Step165ExitFvOut,s2Step165ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step165ExitGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step165ExitF_Outgoing : rowsOwned s2Step165ExitGvAfter [s2Step165ExitFOut,s2Step165ExitFvOut,s2Step165ExitGvOut] :=
  hmrRows_owned_drop s2Step165ExitGvAfter [s2Step165ExitGOut,s2Step165ExitFOut,s2Step165ExitFvOut,s2Step165ExitGvOut] 1 s2Step165ExitBank_outgoingOwned

private theorem s2Step165ExitF_distinct : (s2Step165ExitFRow.sign::s2Step165ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165ExitF_owned : (s2Step165ExitFRow.sign::s2Step165ExitFRow.payload).toFinset⊆s2Step165ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step165ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165ExitF_retired : s2Step165ExitFBefore.retireSet s2Step165ExitFExtra.toFinset=s2Step165ExitFAfter := by
  unfold Arena.retireSet s2Step165ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step165ExitFBefore,s2Step165ExitGAfter,s2Step165ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step165ExitF_checked : planRowResizeLog s2Step165ExitFBefore s2Step165ExitFRow 187 []=
    some (s2Step165ExitFAfter,s2Step165ExitFOut,shrinkRow 768 s2Step165ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step165ExitFBefore s2Step165ExitFRow 187 s2Step165ExitF_distinct s2Step165ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step165ExitFRow.payload.take 187) s2Step165ExitFRow.sign=s2Step165ExitFOut := by decide +kernel
  have hi : s2Step165ExitFRow.payload.drop 187=s2Step165ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step165ExitF_retired] at result
  exact result

private def s2Step165ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165ExitFvBefore : Arena := s2Step165ExitFAfter

private theorem s2Step165ExitFv_Incoming : rowsOwned s2Step165ExitFvBefore [s2Step165ExitFvRow,s2Step165ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step165ExitGRow,s2Step165ExitFRow,s2Step165ExitFvRow,s2Step165ExitGvRow] 2 s2Step165ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step165ExitFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step165ExitFv_Outgoing : rowsOwned s2Step165ExitGvAfter [s2Step165ExitFvOut,s2Step165ExitGvOut] :=
  hmrRows_owned_drop s2Step165ExitGvAfter [s2Step165ExitGOut,s2Step165ExitFOut,s2Step165ExitFvOut,s2Step165ExitGvOut] 2 s2Step165ExitBank_outgoingOwned

private theorem s2Step165ExitFv_distinct : (s2Step165ExitFvRow.sign::s2Step165ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165ExitFv_owned : (s2Step165ExitFvRow.sign::s2Step165ExitFvRow.payload).toFinset⊆s2Step165ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step165ExitFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165ExitFv_retired : s2Step165ExitFvBefore.retireSet s2Step165ExitFvExtra.toFinset=s2Step165ExitFvAfter := by
  unfold Arena.retireSet s2Step165ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step165ExitFvBefore,s2Step165ExitFAfter,s2Step165ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step165ExitFv_checked : planRowResizeLog s2Step165ExitFvBefore s2Step165ExitFvRow 98 []=
    some (s2Step165ExitFvAfter,s2Step165ExitFvOut,shrinkRow 770 s2Step165ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step165ExitFvBefore s2Step165ExitFvRow 98 s2Step165ExitFv_distinct s2Step165ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step165ExitFvRow.payload.take 98) s2Step165ExitFvRow.sign=s2Step165ExitFvOut := by decide +kernel
  have hi : s2Step165ExitFvRow.payload.drop 98=s2Step165ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step165ExitFv_retired] at result
  exact result

private def s2Step165ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step165ExitG_Incoming : rowsOwned s2Step165ExitGBefore [s2Step165ExitGRow,s2Step165ExitFRow,s2Step165ExitFvRow,s2Step165ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step165ExitGRow,s2Step165ExitFRow,s2Step165ExitFvRow,s2Step165ExitGvRow] 0 s2Step165ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step165ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step165ExitG_Outgoing : rowsOwned s2Step165ExitGvAfter [s2Step165ExitGOut,s2Step165ExitFOut,s2Step165ExitFvOut,s2Step165ExitGvOut] :=
  hmrRows_owned_drop s2Step165ExitGvAfter [s2Step165ExitGOut,s2Step165ExitFOut,s2Step165ExitFvOut,s2Step165ExitGvOut] 0 s2Step165ExitBank_outgoingOwned

private theorem s2Step165ExitG_distinct : (s2Step165ExitGRow.sign::s2Step165ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165ExitG_owned : (s2Step165ExitGRow.sign::s2Step165ExitGRow.payload).toFinset⊆s2Step165ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step165ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165ExitG_retired : s2Step165ExitGBefore.retireSet s2Step165ExitGExtra.toFinset=s2Step165ExitGAfter := by
  unfold Arena.retireSet s2Step165ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step165ExitGBefore,s2Step165ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step165ExitG_checked : planRowResizeLog s2Step165ExitGBefore s2Step165ExitGRow 186 []=
    some (s2Step165ExitGAfter,s2Step165ExitGOut,shrinkRow 769 s2Step165ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step165ExitGBefore s2Step165ExitGRow 186 s2Step165ExitG_distinct s2Step165ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step165ExitGRow.payload.take 186) s2Step165ExitGRow.sign=s2Step165ExitGOut := by decide +kernel
  have hi : s2Step165ExitGRow.payload.drop 186=s2Step165ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step165ExitG_retired] at result
  exact result

private def s2Step165ExitGvBefore : Arena := s2Step165ExitFvAfter

private theorem s2Step165ExitGv_Incoming : rowsOwned s2Step165ExitGvBefore [s2Step165ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step165ExitGRow,s2Step165ExitFRow,s2Step165ExitFvRow,s2Step165ExitGvRow] 3 s2Step165ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step165ExitGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step165ExitGv_Outgoing : rowsOwned s2Step165ExitGvAfter [s2Step165ExitGvOut] :=
  hmrRows_owned_drop s2Step165ExitGvAfter [s2Step165ExitGOut,s2Step165ExitFOut,s2Step165ExitFvOut,s2Step165ExitGvOut] 3 s2Step165ExitBank_outgoingOwned

private theorem s2Step165ExitGv_distinct : (s2Step165ExitGvRow.sign::s2Step165ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165ExitGv_owned : (s2Step165ExitGvRow.sign::s2Step165ExitGvRow.payload).toFinset⊆s2Step165ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step165ExitGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165ExitGv_retired : s2Step165ExitGvBefore.retireSet s2Step165ExitGvExtra.toFinset=s2Step165ExitGvAfter := by
  unfold Arena.retireSet s2Step165ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step165ExitGvBefore,s2Step165ExitFvAfter,s2Step165ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step165ExitGv_checked : planRowResizeLog s2Step165ExitGvBefore s2Step165ExitGvRow 97 []=
    some (s2Step165ExitGvAfter,s2Step165ExitGvOut,shrinkRow 771 s2Step165ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step165ExitGvBefore s2Step165ExitGvRow 97 s2Step165ExitGv_distinct s2Step165ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step165ExitGvRow.payload.take 97) s2Step165ExitGvRow.sign=s2Step165ExitGvOut := by decide +kernel
  have hi : s2Step165ExitGvRow.payload.drop 97=s2Step165ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step165ExitGv_retired] at result
  exact result

private theorem s2Step165ExitBank_rows : planWindowRowsLog s2Step165ExitGBefore [(s2Step165ExitGRow,186),(s2Step165ExitFRow,187),(s2Step165ExitFvRow,98),(s2Step165ExitGvRow,97)] [[],[],[],[]]=
    some (s2Step165ExitGvAfter,[s2Step165ExitGOut,s2Step165ExitFOut,s2Step165ExitFvOut,s2Step165ExitGvOut],(shrinkRow 769 s2Step165ExitGExtra ++ (shrinkRow 768 s2Step165ExitFExtra ++ (shrinkRow 770 s2Step165ExitFvExtra ++ (shrinkRow 771 s2Step165ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step165ExitGvAfter [] []=some (s2Step165ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step165ExitGvBefore s2Step165ExitGvAfter s2Step165ExitGvAfter
    s2Step165ExitGvRow s2Step165ExitGvOut 97 [] [] [] []
    (shrinkRow 771 s2Step165ExitGvExtra) ([]) s2Step165ExitGv_Incoming s2Step165ExitGv_checked h4 s2Step165ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step165ExitFvBefore s2Step165ExitFvAfter s2Step165ExitGvAfter
    s2Step165ExitFvRow s2Step165ExitFvOut 98 [] [(s2Step165ExitGvRow,97)] [[]] [s2Step165ExitGvOut]
    (shrinkRow 770 s2Step165ExitFvExtra) ((shrinkRow 771 s2Step165ExitGvExtra ++ [])) s2Step165ExitFv_Incoming s2Step165ExitFv_checked h3 s2Step165ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step165ExitFBefore s2Step165ExitFAfter s2Step165ExitGvAfter
    s2Step165ExitFRow s2Step165ExitFOut 187 [] [(s2Step165ExitFvRow,98),(s2Step165ExitGvRow,97)] [[],[]] [s2Step165ExitFvOut,s2Step165ExitGvOut]
    (shrinkRow 768 s2Step165ExitFExtra) ((shrinkRow 770 s2Step165ExitFvExtra ++ (shrinkRow 771 s2Step165ExitGvExtra ++ []))) s2Step165ExitF_Incoming s2Step165ExitF_checked h2 s2Step165ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step165ExitGBefore s2Step165ExitGAfter s2Step165ExitGvAfter
    s2Step165ExitGRow s2Step165ExitGOut 186 [] [(s2Step165ExitFRow,187),(s2Step165ExitFvRow,98),(s2Step165ExitGvRow,97)] [[],[],[]] [s2Step165ExitFOut,s2Step165ExitFvOut,s2Step165ExitGvOut]
    (shrinkRow 769 s2Step165ExitGExtra) ((shrinkRow 768 s2Step165ExitFExtra ++ (shrinkRow 770 s2Step165ExitFvExtra ++ (shrinkRow 771 s2Step165ExitGvExtra ++ [])))) s2Step165ExitG_Incoming s2Step165ExitG_checked h1 s2Step165ExitG_Outgoing
  exact h0

private theorem s2Step165ExitBank_checked : compileHmrBankResizeLog .exit s2Step165ExitGBefore ⟨s2Step165ExitFRow,s2Step165ExitGRow,s2Step165ExitFvRow,s2Step165ExitGvRow⟩ ⟨187,186,98,97⟩ [[],[],[],[]]=
    some (s2Step165ExitGvAfter,⟨s2Step165ExitFOut,s2Step165ExitGOut,s2Step165ExitFvOut,s2Step165ExitGvOut⟩,(shrinkRow 769 s2Step165ExitGExtra ++ (shrinkRow 768 s2Step165ExitFExtra ++ (shrinkRow 770 s2Step165ExitFvExtra ++ (shrinkRow 771 s2Step165ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step165ExitBank_rows]
  rfl

private theorem s2Step165Add0_apart : Disjoint s2Step165Add0Arena.live s2Step165Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step165Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165Add0_card : s2Step165Add0Arena.live.card=886 := by
  decide +kernel

private theorem s2Step165Add0_borrowed : s2Step165Add0Arena.checkBorrow (hmrHybridCount s2Step165Add0Arena s2Step165Add0B.length) s2Step165Add0Work=some s2Step165Add0During := by
  have len : s2Step165Add0Work.length=hmrHybridCount s2Step165Add0Arena s2Step165Add0B.length := by
    rw [hmrHybridCount,s2Step165Add0_card]
    decide +kernel
  have nd : s2Step165Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step165Add0Arena s2Step165Add0During s2Step165Add0Work.toFinset s2Step165Add0_bounded s2Step165Add0_apart rfl

private theorem s2Step165Add0_distinct : (867::847::877::(s2Step165Add0A++s2Step165Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165Add0_owned : (867::847::877::(s2Step165Add0A++s2Step165Add0B)).toFinset⊆s2Step165Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step165Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165Add0_checked : compileHmrHybridCinLog s2Step165Add0Arena 847 867 877 s2Step165Add0A s2Step165Add0B s2Step165Add0Work=some s2Step165Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step165Add0Arena s2Step165Add0During 847 867 877 s2Step165Add0A s2Step165Add0B s2Step165Add0Work
    (by decide +kernel) (by decide +kernel) s2Step165Add0_distinct
    (fun q hq => s2Step165Add0_owned (List.mem_toFinset.mpr hq)) s2Step165Add0_borrowed

private theorem s2Step165Add1_apart : Disjoint s2Step165Add1Arena.live s2Step165Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step165Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165Add1_card : s2Step165Add1Arena.live.card=886 := by
  decide +kernel

private theorem s2Step165Add1_borrowed : s2Step165Add1Arena.checkBorrow (hmrHybridCount s2Step165Add1Arena s2Step165Add1B.length) s2Step165Add1Work=some s2Step165Add1During := by
  have len : s2Step165Add1Work.length=hmrHybridCount s2Step165Add1Arena s2Step165Add1B.length := by
    rw [hmrHybridCount,s2Step165Add1_card]
    decide +kernel
  have nd : s2Step165Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step165Add1Arena s2Step165Add1During s2Step165Add1Work.toFinset s2Step165Add1_bounded s2Step165Add1_apart rfl

private theorem s2Step165Add1_distinct : (867::847::877::(s2Step165Add1A++s2Step165Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165Add1_owned : (867::847::877::(s2Step165Add1A++s2Step165Add1B)).toFinset⊆s2Step165Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step165Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165Add1_checked : compileHmrHybridCinLog s2Step165Add1Arena 847 867 877 s2Step165Add1A s2Step165Add1B s2Step165Add1Work=some s2Step165Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step165Add1Arena s2Step165Add1During 847 867 877 s2Step165Add1A s2Step165Add1B s2Step165Add1Work
    (by decide +kernel) (by decide +kernel) s2Step165Add1_distinct
    (fun q hq => s2Step165Add1_owned (List.mem_toFinset.mpr hq)) s2Step165Add1_borrowed

private theorem s2Step165F4_apart : Disjoint (s2Step165Add0A++s2Step165Add0B).toFinset (s2Step165Add1A++s2Step165Add1B).toFinset := by
  have nd : ((s2Step165Add0A++s2Step165Add0B)++(s2Step165Add1A++s2Step165Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step165F4_carry : s2Step165F4FlagArena.checkBorrow 1 [877]=some s2Step165Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step165F4FlagArena,s2Step165HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step165F4FlagArena,s2Step165HeadFvAfter,s2Step165Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step165F4_distinct : (849::847::867::877::((s2Step165Add0A++s2Step165Add1A)++(s2Step165Add0B++s2Step165Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165F4_flag : s2Step165HeadFvAfter.checkBorrow 1 [867]=some s2Step165F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step165HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step165F4_owned : (849::847::((s2Step165Add0A++s2Step165Add1A)++(s2Step165Add0B++s2Step165Add1B))).toFinset⊆s2Step165HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step165HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165F4_checked : compileHmrHybridF4Log s2Step165HeadFvAfter 849 847 s2Step165Add0A s2Step165Add0B s2Step165Add1A s2Step165Add1B [867] [877] s2Step165Add0Work s2Step165Add1Work=some s2Step165F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step165HeadFvAfter s2Step165F4FlagArena s2Step165Add0Arena s2Step165Add0During s2Step165Add1During 849 847
    s2Step165Add0A s2Step165Add0B s2Step165Add1A s2Step165Add1B [867] [877] s2Step165Add0Work s2Step165Add1Work
    (fun q hq => s2Step165F4_owned (List.mem_toFinset.mpr hq)) s2Step165F4_flag s2Step165F4_carry
    s2Step165F4_distinct s2Step165F4_apart s2Step165Add0_checked s2Step165Add1_checked

private theorem s2Step165Front_branch : s2Step165FrontSigmaArena.checkBorrow 1 [847]=some s2Step165HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step165FrontSigmaArena,s2Step165EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step165FrontSigmaArena,s2Step165EntryGvAfter,s2Step165HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step165Front_entry : HmrFrontEntryValid s2Step165EntryFBefore s2Step165FrontBank 187 98 ⟨187,186,98,97⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step165FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step165EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step165EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step165FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step165Front_sigma : s2Step165EntryGvAfter.checkBorrow 1 [849]=some s2Step165FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step165EntryGvAfter,arenaWires]
  · rfl

private def s2Step165HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165HeadFBefore : Arena := s2Step165HeadGAfter

private def s2Step165HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩

private def s2Step165HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩

private def s2Step165HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 799],769⟩

private def s2Step165HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 800],771⟩

private theorem s2Step165HeadBank_incomingDistinct : ([s2Step165HeadGRow,s2Step165HeadFRow,s2Step165HeadGvRow,s2Step165HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165HeadF_Incoming : rowsOwned s2Step165HeadFBefore [s2Step165HeadFRow,s2Step165HeadGvRow,s2Step165HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step165HeadGRow,s2Step165HeadFRow,s2Step165HeadGvRow,s2Step165HeadFvRow] 1 s2Step165HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step165HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step165HeadBank_outgoingOwned : rowsOwned s2Step165HeadFvAfter [s2Step165HeadGOut,s2Step165HeadFOut,s2Step165HeadGvOut,s2Step165HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step165HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step165HeadF_Outgoing : rowsOwned s2Step165HeadFvAfter [s2Step165HeadFOut,s2Step165HeadGvOut,s2Step165HeadFvOut] :=
  hmrRows_owned_drop s2Step165HeadFvAfter [s2Step165HeadGOut,s2Step165HeadFOut,s2Step165HeadGvOut,s2Step165HeadFvOut] 1 s2Step165HeadBank_outgoingOwned

private theorem s2Step165HeadF_distinct : (s2Step165HeadFRow.sign::s2Step165HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165HeadF_owned : (s2Step165HeadFRow.sign::s2Step165HeadFRow.payload).toFinset⊆s2Step165HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step165HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165HeadF_reserved : s2Step165HeadFBefore.reserve s2Step165HeadFFresh.toFinset=some s2Step165HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step165HeadFFresh,arenaWires]
  · norm_num [s2Step165HeadFBefore,s2Step165HeadGAfter,s2Step165HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step165HeadFAfter,s2Step165HeadFBefore,s2Step165HeadGAfter,s2Step165HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step165HeadF_checked : planRowResizeLog s2Step165HeadFBefore s2Step165HeadFRow 188 s2Step165HeadFFresh=
    some (s2Step165HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 793],768⟩,growRow 768 s2Step165HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step165HeadFBefore s2Step165HeadFAfter s2Step165HeadFRow 188 s2Step165HeadFFresh
    s2Step165HeadF_distinct s2Step165HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step165HeadF_reserved
  have rowEq : WindowRow.mk (s2Step165HeadFRow.payload++s2Step165HeadFFresh) s2Step165HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 793],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step165HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step165HeadFvBefore : Arena := s2Step165HeadGvAfter

private theorem s2Step165HeadFv_Incoming : rowsOwned s2Step165HeadFvBefore [s2Step165HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step165HeadGRow,s2Step165HeadFRow,s2Step165HeadGvRow,s2Step165HeadFvRow] 3 s2Step165HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step165HeadFvBefore (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step165HeadFv_Outgoing : rowsOwned s2Step165HeadFvAfter [s2Step165HeadFvOut] :=
  hmrRows_owned_drop s2Step165HeadFvAfter [s2Step165HeadGOut,s2Step165HeadFOut,s2Step165HeadGvOut,s2Step165HeadFvOut] 3 s2Step165HeadBank_outgoingOwned

private theorem s2Step165HeadFv_distinct : (s2Step165HeadFvRow.sign::s2Step165HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165HeadFv_owned : (s2Step165HeadFvRow.sign::s2Step165HeadFvRow.payload).toFinset⊆s2Step165HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step165HeadFvBefore (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165HeadFv_reserved : s2Step165HeadFvBefore.reserve s2Step165HeadFvFresh.toFinset=some s2Step165HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step165HeadFvFresh,arenaWires]
  · norm_num [s2Step165HeadFvBefore,s2Step165HeadGvAfter,s2Step165HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step165HeadFvAfter,s2Step165HeadFvBefore,s2Step165HeadGvAfter,s2Step165HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step165HeadFv_checked : planRowResizeLog s2Step165HeadFvBefore s2Step165HeadFvRow 99 s2Step165HeadFvFresh=
    some (s2Step165HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803],770⟩,growRow 770 s2Step165HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step165HeadFvBefore s2Step165HeadFvAfter s2Step165HeadFvRow 99 s2Step165HeadFvFresh
    s2Step165HeadFv_distinct s2Step165HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step165HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step165HeadFvRow.payload++s2Step165HeadFvFresh) s2Step165HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step165HeadG_Incoming : rowsOwned s2Step165HeadGBefore [s2Step165HeadGRow,s2Step165HeadFRow,s2Step165HeadGvRow,s2Step165HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step165HeadGRow,s2Step165HeadFRow,s2Step165HeadGvRow,s2Step165HeadFvRow] 0 s2Step165HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step165HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step165HeadG_Outgoing : rowsOwned s2Step165HeadFvAfter [s2Step165HeadGOut,s2Step165HeadFOut,s2Step165HeadGvOut,s2Step165HeadFvOut] :=
  hmrRows_owned_drop s2Step165HeadFvAfter [s2Step165HeadGOut,s2Step165HeadFOut,s2Step165HeadGvOut,s2Step165HeadFvOut] 0 s2Step165HeadBank_outgoingOwned

private theorem s2Step165HeadG_distinct : (s2Step165HeadGRow.sign::s2Step165HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165HeadG_owned : (s2Step165HeadGRow.sign::s2Step165HeadGRow.payload).toFinset⊆s2Step165HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step165HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165HeadG_reserved : s2Step165HeadGBefore.reserve s2Step165HeadGFresh.toFinset=some s2Step165HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step165HeadGFresh,arenaWires]
  · norm_num [s2Step165HeadGBefore,s2Step165HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step165HeadGAfter,s2Step165HeadGBefore,s2Step165HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step165HeadG_checked : planRowResizeLog s2Step165HeadGBefore s2Step165HeadGRow 188 s2Step165HeadGFresh=
    some (s2Step165HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 799, 785],769⟩,growRow 769 s2Step165HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step165HeadGBefore s2Step165HeadGAfter s2Step165HeadGRow 188 s2Step165HeadGFresh
    s2Step165HeadG_distinct s2Step165HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step165HeadG_reserved
  have rowEq : WindowRow.mk (s2Step165HeadGRow.payload++s2Step165HeadGFresh) s2Step165HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 799, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step165HeadGvBefore : Arena := s2Step165HeadFAfter

private theorem s2Step165HeadGv_Incoming : rowsOwned s2Step165HeadGvBefore [s2Step165HeadGvRow,s2Step165HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step165HeadGRow,s2Step165HeadFRow,s2Step165HeadGvRow,s2Step165HeadFvRow] 2 s2Step165HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step165HeadGvBefore (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step165HeadGv_Outgoing : rowsOwned s2Step165HeadFvAfter [s2Step165HeadGvOut,s2Step165HeadFvOut] :=
  hmrRows_owned_drop s2Step165HeadFvAfter [s2Step165HeadGOut,s2Step165HeadFOut,s2Step165HeadGvOut,s2Step165HeadFvOut] 2 s2Step165HeadBank_outgoingOwned

private theorem s2Step165HeadGv_distinct : (s2Step165HeadGvRow.sign::s2Step165HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step165HeadGv_owned : (s2Step165HeadGvRow.sign::s2Step165HeadGvRow.payload).toFinset⊆s2Step165HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step165HeadGvBefore (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step165HeadGv_reserved : s2Step165HeadGvBefore.reserve s2Step165HeadGvFresh.toFinset=some s2Step165HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step165HeadGvFresh,arenaWires]
  · norm_num [s2Step165HeadGvBefore,s2Step165HeadFAfter,s2Step165HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step165HeadGvAfter,s2Step165HeadGvBefore,s2Step165HeadFAfter,s2Step165HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step165HeadGv_checked : planRowResizeLog s2Step165HeadGvBefore s2Step165HeadGvRow 99 s2Step165HeadGvFresh=
    some (s2Step165HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 800, 810],771⟩,growRow 771 s2Step165HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step165HeadGvBefore s2Step165HeadGvAfter s2Step165HeadGvRow 99 s2Step165HeadGvFresh
    s2Step165HeadGv_distinct s2Step165HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step165HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step165HeadGvRow.payload++s2Step165HeadGvFresh) s2Step165HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 800, 810],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step165HeadBank_rows : planWindowRowsLog s2Step165HeadGBefore [(s2Step165HeadGRow,188),(s2Step165HeadFRow,188),(s2Step165HeadGvRow,99),(s2Step165HeadFvRow,99)] [s2Step165HeadGFresh,s2Step165HeadFFresh,s2Step165HeadGvFresh,s2Step165HeadFvFresh]=
    some (s2Step165HeadFvAfter,[s2Step165HeadGOut,s2Step165HeadFOut,s2Step165HeadGvOut,s2Step165HeadFvOut],(growRow 769 s2Step165HeadGFresh ++ (growRow 768 s2Step165HeadFFresh ++ (growRow 771 s2Step165HeadGvFresh ++ (growRow 770 s2Step165HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step165HeadFvAfter [] []=some (s2Step165HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step165HeadFvBefore s2Step165HeadFvAfter s2Step165HeadFvAfter
    s2Step165HeadFvRow s2Step165HeadFvOut 99 s2Step165HeadFvFresh [] [] []
    (growRow 770 s2Step165HeadFvFresh) ([]) s2Step165HeadFv_Incoming s2Step165HeadFv_checked h4 s2Step165HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step165HeadGvBefore s2Step165HeadGvAfter s2Step165HeadFvAfter
    s2Step165HeadGvRow s2Step165HeadGvOut 99 s2Step165HeadGvFresh [(s2Step165HeadFvRow,99)] [s2Step165HeadFvFresh] [s2Step165HeadFvOut]
    (growRow 771 s2Step165HeadGvFresh) ((growRow 770 s2Step165HeadFvFresh ++ [])) s2Step165HeadGv_Incoming s2Step165HeadGv_checked h3 s2Step165HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step165HeadFBefore s2Step165HeadFAfter s2Step165HeadFvAfter
    s2Step165HeadFRow s2Step165HeadFOut 188 s2Step165HeadFFresh [(s2Step165HeadGvRow,99),(s2Step165HeadFvRow,99)] [s2Step165HeadGvFresh,s2Step165HeadFvFresh] [s2Step165HeadGvOut,s2Step165HeadFvOut]
    (growRow 768 s2Step165HeadFFresh) ((growRow 771 s2Step165HeadGvFresh ++ (growRow 770 s2Step165HeadFvFresh ++ []))) s2Step165HeadF_Incoming s2Step165HeadF_checked h2 s2Step165HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step165HeadGBefore s2Step165HeadGAfter s2Step165HeadFvAfter
    s2Step165HeadGRow s2Step165HeadGOut 188 s2Step165HeadGFresh [(s2Step165HeadFRow,188),(s2Step165HeadGvRow,99),(s2Step165HeadFvRow,99)] [s2Step165HeadFFresh,s2Step165HeadGvFresh,s2Step165HeadFvFresh] [s2Step165HeadFOut,s2Step165HeadGvOut,s2Step165HeadFvOut]
    (growRow 769 s2Step165HeadGFresh) ((growRow 768 s2Step165HeadFFresh ++ (growRow 771 s2Step165HeadGvFresh ++ (growRow 770 s2Step165HeadFvFresh ++ [])))) s2Step165HeadG_Incoming s2Step165HeadG_checked h1 s2Step165HeadG_Outgoing
  exact h0

private theorem s2Step165HeadBank_checked : compileHmrBankResizeLog .headroom s2Step165HeadGBefore ⟨s2Step165HeadFRow,s2Step165HeadGRow,s2Step165HeadFvRow,s2Step165HeadGvRow⟩ ⟨188,188,99,99⟩ [s2Step165HeadGFresh,s2Step165HeadFFresh,s2Step165HeadGvFresh,s2Step165HeadFvFresh]=
    some (s2Step165HeadFvAfter,⟨s2Step165HeadFOut,s2Step165HeadGOut,s2Step165HeadFvOut,s2Step165HeadGvOut⟩,(growRow 769 s2Step165HeadGFresh ++ (growRow 768 s2Step165HeadFFresh ++ (growRow 771 s2Step165HeadGvFresh ++ (growRow 770 s2Step165HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step165HeadBank_rows]
  rfl

private theorem s2Step165Front_checked : compileHmrSourceFrontLog s2Step165EntryFBefore s2Step165FrontBank 187 98 ⟨187,186,98,97⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step165FrontLog=some s2Step165FrontPlan := by
  have pairEq : s2Step165FrontPair=⟨s2Step165HeadFRow,s2Step165HeadGRow,s2Step165HeadFvRow,s2Step165HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step165FrontHead=⟨s2Step165ExitFRow,s2Step165ExitGRow,s2Step165ExitFvRow,s2Step165ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step165Add0A=s2Step165FrontHead.f.wires := by decide +kernel
  have gEq : s2Step165Add0B=s2Step165FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step165Add1A=s2Step165FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step165Add1B=s2Step165FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step165EntryFBefore s2Step165FrontBank 187 98 ⟨187,186,98,97⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step165FrontLog s2Step165FrontPlan
  · exact s2Step165Front_entry
  · exact s2Step165EntryBank_checked
  · exact s2Step165Front_sigma
  · rfl
  · exact s2Step165Front_branch
  · rfl
  · simpa only [s2Step165FrontPlan,pairEq] using s2Step165HeadBank_checked
  · simpa only [s2Step165FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step165F4_checked
  · exact s2Step165Counter_checked
  · rfl
  · simpa only [s2Step165FrontPlan,headEq] using s2Step165ExitBank_checked

private theorem s2Step165Complete_explicit_checked : compileHmrEarlyStepLog s2Step165EntryFBefore s2Step165FrontBank 187 98 ⟨187,186,98,97⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step165CompleteLog=some s2Step165CompletePlan := by
  let Q := s2Step165EarlyControlPlan
  have hq := s2Step165EarlyControl_plan_checked
  have fv1 : s2Step165CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step165CompleteOut.fv.payload[2]?.getD s2Step165CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step165CompleteOut.fv.payload[3]?.getD s2Step165CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step165CompleteOut.fv.payload[4]?.getD s2Step165CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step165EntryFBefore s2Step165EarlyControlArena s2Step165FrontBank 187 98 ⟨187,186,98,97⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step165CompleteLog s2Step165FrontPlan Q
    s2Step165Front_checked s2Step165Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step165Complete_owned s2Step165Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step165EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 849 s2Step165CompleteOut.fv.second (s2Step165CompleteOut.fv.payload[2]?.getD s2Step165CompleteOut.fv.sign) (s2Step165CompleteOut.fv.payload[3]?.getD s2Step165CompleteOut.fv.sign) (s2Step165CompleteOut.fv.payload[4]?.getD s2Step165CompleteOut.fv.sign) 847 42 s2Step165EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep165Arena : Arena := s2Step165EntryFBefore
def s2PrivateStep165Bank : WindowBank := s2Step165FrontBank
def s2PrivateStep165Spec : HmrSourceWalkStepLog := ⟨187,98,⟨187,186,98,97⟩,42,.early s2Step165CompleteLog⟩
def s2PrivateStep165Plan : HmrSourceStepPlan := .early s2Step165CompletePlan
theorem s2PrivateStep165_source : s2PrivateStep165Spec=s2ObservedLogs160[5] := rfl
theorem s2PrivateStep165_checked : compileHmrSourceStepLog s2PrivateStep165Arena s2PrivateStep165Bank
    s2PrivateStep165Spec.fgWidth s2PrivateStep165Spec.vWidth s2PrivateStep165Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 165 s2PrivateStep165Spec.need none s2PrivateStep165Spec.log=some s2PrivateStep165Plan := by
  change compileHmrSourceStepLog s2Step165EntryFBefore s2Step165FrontBank 187 98 ⟨187,186,98,97⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 165 42 none (.early s2Step165CompleteLog)=some (.early s2Step165CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 165<498)]
  rw [s2Step165Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
