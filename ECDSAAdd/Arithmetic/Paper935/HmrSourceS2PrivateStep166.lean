import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep164
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

private def s2Step166CompleteMoves : List (Wire × Wire) := []

private def s2Step166EarlyControlLog : HmrEarlyControlLog := ⟨[799, 785, 793, 847, 803],[867],[877],[879, 882, 885, 888, 890, 891],[]⟩

private def s2Step166FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [847], [], [849]],[[803], [793], [799], [785]],[[], [], [], []]⟩,[800],[810],[867],[877],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882]⟩

private def s2Step166CompleteLog : HmrEarlyStepLog := ⟨s2Step166FrontLog,s2Step166CompleteMoves,s2Step166EarlyControlLog⟩

private def s2Step166ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩

private def s2Step166ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩

private def s2Step166ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185],769⟩

private def s2Step166ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849],771⟩

private def s2Step166FrontOut : WindowBank := ⟨s2Step166ExitFOut,s2Step166ExitGOut,s2Step166ExitFvOut,s2Step166ExitGvOut⟩

private def s2Step166CompleteOut : WindowBank := s2Step166FrontOut.repacked s2Step166CompleteMoves

private def s2Step166EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step166EarlyControlPositiveArena,[867],s2Step166EarlyControlEqualityArena,[877],⟨⟨800,false⟩,[⟨⟨867,false⟩,877⟩]⟩⟩

private def s2Step166EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<892)),Finset.filter_subset _ _⟩

private def s2Step166EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<892)),Finset.filter_subset _ _⟩

private def s2Step166EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,799⟩,⟨⟨774,false⟩,785⟩,⟨⟨775,false⟩,793⟩,⟨⟨776,false⟩,847⟩,⟨⟨777,false⟩,803⟩]⟩

private def s2Step166EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step166EarlyControlZeroArena,s2Step166EarlyControlZeroPlan,s2Step166EarlyControlClassPlan,s2Step166EarlyControlFlagArena,s2Step166EarlyControlFittedArena,s2Step166EarlyControlHistoryArena,s2Step166EarlyControlSigmaArena,s2Step166EarlyControlOutputArena,s2Step166EarlyControlLog⟩

private def s2Step166CounterWork : List Wire := [867, 877, 879, 882]

private theorem s2Step166Counter_bounded : s2Step166CounterWork.toFinset⊆arenaWires := by norm_num [s2Step166CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step166HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166CounterDuring : Arena := ⟨s2Step166HeadFvAfter.live∪s2Step166CounterWork.toFinset,Finset.union_subset s2Step166HeadFvAfter.bounded s2Step166Counter_bounded⟩

private def s2Step166EntryFFresh : List Wire := []

private def s2Step166EntryFvFresh : List Wire := []

private def s2Step166EntryGFresh : List Wire := [847]

private def s2Step166EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166EntryGvFresh : List Wire := [849]

private def s2Step166ExitFExtra : List Wire := [793]

private def s2Step166ExitFvExtra : List Wire := [785]

private def s2Step166ExitGExtra : List Wire := [847, 803]

private def s2Step166ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166ExitGvExtra : List Wire := [799]

private def s2Step166Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166Add0Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step166Add0_bounded : s2Step166Add0Work.toFinset⊆arenaWires := by
  have h : s2Step166Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step166Add0During : Arena := ⟨s2Step166Add0Arena.live∪s2Step166Add0Work.toFinset,Finset.union_subset s2Step166Add0Arena.bounded s2Step166Add0_bounded⟩

private def s2Step166Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166Add1Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step166Add1_bounded : s2Step166Add1Work.toFinset⊆arenaWires := by
  have h : s2Step166Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step166Add1During : Arena := ⟨s2Step166Add1Arena.live∪s2Step166Add1Work.toFinset,Finset.union_subset s2Step166Add1Arena.bounded s2Step166Add1_bounded⟩

private def s2Step166F4FlagArena : Arena := ⟨s2Step166HeadFvAfter.live∪{867},Finset.union_subset s2Step166HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step166F4Plan : HmrHybridF4Plan := ⟨s2Step166F4FlagArena,[867],s2Step166Add0Arena,[877],s2Step166Add0During,s2Step166Add0Work,s2Step166Add1During,s2Step166Add1Work⟩

private def s2Step166HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 793],768⟩

private def s2Step166HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 785],770⟩

private def s2Step166HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 847, 803],769⟩

private def s2Step166HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 799],771⟩

private def s2Step166FrontHead : WindowBank := ⟨s2Step166HeadFOut,s2Step166HeadGOut,s2Step166HeadFvOut,s2Step166HeadGvOut⟩

private def s2Step166EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩

private def s2Step166EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩

private def s2Step166EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 847],769⟩

private def s2Step166EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849],771⟩

private def s2Step166FrontPair : WindowBank := ⟨s2Step166EntryFOut,s2Step166EntryGOut,s2Step166EntryFvOut,s2Step166EntryGvOut⟩

private def s2Step166FrontSigmaArena : Arena := ⟨s2Step166EntryGvAfter.live∪{800},Finset.union_subset s2Step166EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step166HeadFFresh : List Wire := [793]

private def s2Step166HeadFvFresh : List Wire := [785]

private def s2Step166HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166HeadGFresh : List Wire := [803]

private def s2Step166HeadGvFresh : List Wire := [799]

private def s2Step166FrontPlan : HmrSourceFront := ⟨s2Step166EntryGvAfter,s2Step166FrontPair,(growRow 768 s2Step166EntryFFresh ++ (growRow 769 s2Step166EntryGFresh ++ (growRow 770 s2Step166EntryFvFresh ++ (growRow 771 s2Step166EntryGvFresh ++ [])))),s2Step166FrontSigmaArena,[800],s2Step166HeadGBefore,[810],
  s2Step166HeadFvAfter,s2Step166FrontHead,(growRow 769 s2Step166HeadGFresh ++ (growRow 768 s2Step166HeadFFresh ++ (growRow 771 s2Step166HeadGvFresh ++ (growRow 770 s2Step166HeadFvFresh ++ [])))),s2Step166F4Plan,s2Step166CounterDuring,s2Step166CounterWork,s2Step166ExitGvAfter,s2Step166FrontOut,(shrinkRow 769 s2Step166ExitGExtra ++ (shrinkRow 768 s2Step166ExitFExtra ++ (shrinkRow 770 s2Step166ExitFvExtra ++ (shrinkRow 771 s2Step166ExitGvExtra ++ []))))⟩

private def s2Step166CompletePlan : HmrEarlyStepPlan := ⟨s2Step166FrontPlan,s2Step166EarlyControlArena,s2Step166EarlyControlPlan,s2Step166CompleteMoves⟩

private theorem s2Step166Complete_apart : List.Disjoint (s2Step166CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [800, 810, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step166CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[800, 810, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step166Complete_owned : (s2Step166CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step166EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step166EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166Complete_repack : s2Step166ExitGvAfter.checkRepack s2Step166CompleteMoves=some s2Step166EarlyControlArena := by rfl

private theorem s2Step166EarlyControl_branchOwned : ([810] : List Wire).toFinset⊆s2Step166EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step166EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166EarlyControl_branch : compileHmrBranchRetirement s2Step166EarlyControlSigmaArena 810=some s2Step166EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step166EarlyControl_branchOwned
  · ext q
    simp [s2Step166EarlyControlOutputArena,s2Step166EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step166EarlyControl_classEqualityBorrow : s2Step166EarlyControlPositiveArena.checkBorrow (([800, 867] : List Wire).length-1) s2Step166EarlyControlLog.classWork=some s2Step166EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step166EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step166EarlyControlPositiveArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step166EarlyControlEqualityArena,s2Step166EarlyControlPositiveArena,s2Step166EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step166EarlyControl_classEqualityOwned : ([800, 867] : List Wire).toFinset⊆s2Step166EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step166EarlyControlPositiveArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166EarlyControl_classEquality : compileHmrEqualityLog s2Step166EarlyControlPositiveArena [800, 867] 0 s2Step166EarlyControlLog.classWork=some (s2Step166EarlyControlEqualityArena,s2Step166EarlyControlLog.classWork,s2Step166EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step166EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step166EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step166EarlyControl_classOwned : ([777, 803, 800] : List Wire).toFinset⊆s2Step166EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step166EarlyControlZeroArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166EarlyControl_positiveBorrow : s2Step166EarlyControlZeroArena.checkBorrow (1) s2Step166EarlyControlLog.positiveWork=some s2Step166EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step166EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step166EarlyControlZeroArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step166EarlyControlPositiveArena,s2Step166EarlyControlZeroArena,s2Step166EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step166EarlyControl_class : compileHmrSourceClassLog s2Step166EarlyControlZeroArena false 777 s2Step166EarlyControlZeroPlan.top 0 800 s2Step166EarlyControlLog.positiveWork s2Step166EarlyControlLog.classWork=some s2Step166EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step166EarlyControlClassPlan s2Step166EarlyControlZeroArena false 777 s2Step166EarlyControlZeroPlan.top 0 800
  constructor
  · decide +kernel
  · exact s2Step166EarlyControl_classOwned
  · exact s2Step166EarlyControl_positiveBorrow
  · exact s2Step166EarlyControl_classEquality

private theorem s2Step166EarlyControl_entryRecordOwned : ([810, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step166EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step166EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166EarlyControl_entrySigmaOwned : ([800, 254] : List Wire).toFinset⊆s2Step166EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step166EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166EarlyControl_fitBorrow : s2Step166EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step166EarlyControlLog.recordFresh=some s2Step166EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step166EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step166EarlyControlFlagArena (fun q => (0≤q ∧ q<892)) rfl
      decide +kernel
    · ext q
      simp [s2Step166EarlyControlFittedArena,s2Step166EarlyControlFlagArena,s2Step166EarlyControlLog,arenaWires]

private theorem s2Step166EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step166EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step166EarlyControlFlagArena (fun q => (0≤q ∧ q<892)) rfl
  decide +kernel

private theorem s2Step166EarlyControl_fit : compileHmrRecordGrowLog s2Step166EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step166EarlyControlLog.recordFresh=some s2Step166EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step166EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step166EarlyControl_fitBorrow

private theorem s2Step166EarlyControl_flagsBorrow : s2Step166EarlyControlEqualityArena.checkBorrow (6) s2Step166EarlyControlLog.flagWork=some s2Step166EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step166EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step166EarlyControlEqualityArena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step166EarlyControlFlagArena,s2Step166EarlyControlEqualityArena,s2Step166EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step166EarlyControl_flagsOwned : ([877, 253, 252, 251] : List Wire).toFinset⊆s2Step166EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step166EarlyControlEqualityArena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166EarlyControl_flags : compileHmrFlagsLog s2Step166EarlyControlClassPlan.equalityArena s2Step166EarlyControlClassPlan.equality.top 253 252 251 s2Step166EarlyControlLog.flagWork=some s2Step166EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step166EarlyControl_flagsOwned⟩
  · exact s2Step166EarlyControl_flagsBorrow

private theorem s2Step166EarlyControl_historyBorrow : s2Step166EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step166EarlyControlLog.recordFresh=some s2Step166EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step166EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step166EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step166EarlyControlHistoryArena,s2Step166EarlyControlArena,s2Step166EarlyControlLog,arenaWires]

private theorem s2Step166EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step166EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step166EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166EarlyControl_history : compileHmrRecordGrowLog s2Step166EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step166EarlyControlLog.recordFresh=some s2Step166EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step166EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step166EarlyControl_historyBorrow

private theorem s2Step166EarlyControl_sigmaOwned : ([254, 800] : List Wire).toFinset⊆s2Step166EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step166EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166EarlyControl_sigmaReleaseOwned : ([800] : List Wire).toFinset⊆s2Step166EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step166EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166EarlyControl_sigmaRelease : s2Step166EarlyControlHistoryArena.release {800} (fun _ => false)=some s2Step166EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step166EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step166EarlyControlSigmaArena,s2Step166EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step166EarlyControl_sigma : compileHmrSigmaDropLog s2Step166EarlyControlHistoryArena false 0 0 254 800 []=some s2Step166EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step166EarlyControl_sigmaOwned⟩
  · exact s2Step166EarlyControl_sigmaRelease

private theorem s2Step166EarlyControl_zeroBorrow : s2Step166EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step166EarlyControlLog.zeroWork=some s2Step166EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step166EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step166EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step166EarlyControlZeroArena,s2Step166EarlyControlArena,s2Step166EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step166EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step166EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step166EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166EarlyControl_zero : compileHmrEqualityLog s2Step166EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step166EarlyControlLog.zeroWork=some (s2Step166EarlyControlZeroArena,s2Step166EarlyControlLog.zeroWork,s2Step166EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step166EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step166EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step166EarlyControl_logged : s2Step166EarlyControlPlan.Logged s2Step166EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 800 254 253 252 251 810 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step166EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step166EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step166EarlyControl_zero
  · exact s2Step166EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step166EarlyControl_flags
  · exact s2Step166EarlyControl_fit
  · exact s2Step166EarlyControl_history
  · exact s2Step166EarlyControl_sigma
  · exact s2Step166EarlyControl_branch

private theorem s2Step166EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step166EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 800 254 253 252 251 810 42 s2Step166EarlyControlLog=some s2Step166EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step166EarlyControlPlan s2Step166EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 800 254 253 252 251 810 42 s2Step166EarlyControl_logged

private def s2Step166EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩

private def s2Step166EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩

private def s2Step166EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185],769⟩

private def s2Step166EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811],771⟩

private def s2Step166FrontBank : WindowBank := ⟨s2Step166EntryFRow,s2Step166EntryGRow,s2Step166EntryFvRow,s2Step166EntryGvRow⟩

private def s2Step166Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 793, 768]

private def s2Step166Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 847, 803, 769]

private def s2Step166Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 785, 770]

private def s2Step166Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 799, 771]

private theorem s2Step166Counter_apart : Disjoint s2Step166HeadFvAfter.live s2Step166CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step166HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166Counter_borrowed : s2Step166HeadFvAfter.checkBorrow 4 s2Step166CounterWork=some s2Step166CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step166HeadFvAfter s2Step166CounterDuring s2Step166CounterWork.toFinset s2Step166Counter_bounded s2Step166Counter_apart rfl

private theorem s2Step166Counter_owned : (800::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step166HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step166HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166Counter_checked : compileHmrCounterStepLog s2Step166HeadFvAfter true 800 [772, 773, 774, 775, 776, 777] s2Step166CounterWork=some s2Step166CounterDuring := by
  have owned : ∀q∈800::[772, 773, 774, 775, 776, 777],q∈s2Step166HeadFvAfter.live := fun q hq => s2Step166Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step166Counter_borrowed

private def s2Step166EntryFAfter : Arena := s2Step166EntryFBefore

private theorem s2Step166EntryBank_incomingDistinct : ([s2Step166EntryFRow,s2Step166EntryGRow,s2Step166EntryFvRow,s2Step166EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166EntryF_Incoming : rowsOwned s2Step166EntryFBefore [s2Step166EntryFRow,s2Step166EntryGRow,s2Step166EntryFvRow,s2Step166EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step166EntryFRow,s2Step166EntryGRow,s2Step166EntryFvRow,s2Step166EntryGvRow] 0 s2Step166EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step166EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step166EntryBank_outgoingOwned : rowsOwned s2Step166EntryGvAfter [s2Step166EntryFOut,s2Step166EntryGOut,s2Step166EntryFvOut,s2Step166EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step166EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step166EntryF_Outgoing : rowsOwned s2Step166EntryGvAfter [s2Step166EntryFOut,s2Step166EntryGOut,s2Step166EntryFvOut,s2Step166EntryGvOut] :=
  hmrRows_owned_drop s2Step166EntryGvAfter [s2Step166EntryFOut,s2Step166EntryGOut,s2Step166EntryFvOut,s2Step166EntryGvOut] 0 s2Step166EntryBank_outgoingOwned

private theorem s2Step166EntryF_distinct : (s2Step166EntryFRow.sign::s2Step166EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166EntryF_owned : (s2Step166EntryFRow.sign::s2Step166EntryFRow.payload).toFinset⊆s2Step166EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step166EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166EntryF_reserved : s2Step166EntryFBefore.reserve s2Step166EntryFFresh.toFinset=some s2Step166EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step166EntryFFresh,arenaWires]
  · norm_num [s2Step166EntryFBefore,s2Step166EntryFFresh,arenaWires]
  · simp only [s2Step166EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step166EntryF_checked : planRowResizeLog s2Step166EntryFBefore s2Step166EntryFRow 187 s2Step166EntryFFresh=
    some (s2Step166EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩,growRow 768 s2Step166EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step166EntryFBefore s2Step166EntryFAfter s2Step166EntryFRow 187 s2Step166EntryFFresh
    s2Step166EntryF_distinct s2Step166EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step166EntryF_reserved
  have rowEq : WindowRow.mk (s2Step166EntryFRow.payload++s2Step166EntryFFresh) s2Step166EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step166EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166EntryFvAfter : Arena := s2Step166EntryGAfter

private def s2Step166EntryFvBefore : Arena := s2Step166EntryGAfter

private theorem s2Step166EntryFv_Incoming : rowsOwned s2Step166EntryFvBefore [s2Step166EntryFvRow,s2Step166EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step166EntryFRow,s2Step166EntryGRow,s2Step166EntryFvRow,s2Step166EntryGvRow] 2 s2Step166EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step166EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step166EntryFv_Outgoing : rowsOwned s2Step166EntryGvAfter [s2Step166EntryFvOut,s2Step166EntryGvOut] :=
  hmrRows_owned_drop s2Step166EntryGvAfter [s2Step166EntryFOut,s2Step166EntryGOut,s2Step166EntryFvOut,s2Step166EntryGvOut] 2 s2Step166EntryBank_outgoingOwned

private theorem s2Step166EntryFv_distinct : (s2Step166EntryFvRow.sign::s2Step166EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166EntryFv_owned : (s2Step166EntryFvRow.sign::s2Step166EntryFvRow.payload).toFinset⊆s2Step166EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step166EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166EntryFv_reserved : s2Step166EntryFvBefore.reserve s2Step166EntryFvFresh.toFinset=some s2Step166EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step166EntryFvFresh,arenaWires]
  · norm_num [s2Step166EntryFvBefore,s2Step166EntryGAfter,s2Step166EntryFvFresh,arenaWires]
  · simp only [s2Step166EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step166EntryFv_checked : planRowResizeLog s2Step166EntryFvBefore s2Step166EntryFvRow 98 s2Step166EntryFvFresh=
    some (s2Step166EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩,growRow 770 s2Step166EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step166EntryFvBefore s2Step166EntryFvAfter s2Step166EntryFvRow 98 s2Step166EntryFvFresh
    s2Step166EntryFv_distinct s2Step166EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step166EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step166EntryFvRow.payload++s2Step166EntryFvFresh) s2Step166EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step166EntryGBefore : Arena := s2Step166EntryFBefore

private theorem s2Step166EntryG_Incoming : rowsOwned s2Step166EntryGBefore [s2Step166EntryGRow,s2Step166EntryFvRow,s2Step166EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step166EntryFRow,s2Step166EntryGRow,s2Step166EntryFvRow,s2Step166EntryGvRow] 1 s2Step166EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step166EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step166EntryG_Outgoing : rowsOwned s2Step166EntryGvAfter [s2Step166EntryGOut,s2Step166EntryFvOut,s2Step166EntryGvOut] :=
  hmrRows_owned_drop s2Step166EntryGvAfter [s2Step166EntryFOut,s2Step166EntryGOut,s2Step166EntryFvOut,s2Step166EntryGvOut] 1 s2Step166EntryBank_outgoingOwned

private theorem s2Step166EntryG_distinct : (s2Step166EntryGRow.sign::s2Step166EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166EntryG_owned : (s2Step166EntryGRow.sign::s2Step166EntryGRow.payload).toFinset⊆s2Step166EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step166EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166EntryG_reserved : s2Step166EntryGBefore.reserve s2Step166EntryGFresh.toFinset=some s2Step166EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step166EntryGFresh,arenaWires]
  · norm_num [s2Step166EntryGBefore,s2Step166EntryFBefore,s2Step166EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step166EntryGAfter,s2Step166EntryGBefore,s2Step166EntryFBefore,s2Step166EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step166EntryG_checked : planRowResizeLog s2Step166EntryGBefore s2Step166EntryGRow 187 s2Step166EntryGFresh=
    some (s2Step166EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 847],769⟩,growRow 769 s2Step166EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step166EntryGBefore s2Step166EntryGAfter s2Step166EntryGRow 187 s2Step166EntryGFresh
    s2Step166EntryG_distinct s2Step166EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step166EntryG_reserved
  have rowEq : WindowRow.mk (s2Step166EntryGRow.payload++s2Step166EntryGFresh) s2Step166EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 847],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step166EntryGvBefore : Arena := s2Step166EntryGAfter

private theorem s2Step166EntryGv_Incoming : rowsOwned s2Step166EntryGvBefore [s2Step166EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step166EntryFRow,s2Step166EntryGRow,s2Step166EntryFvRow,s2Step166EntryGvRow] 3 s2Step166EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step166EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step166EntryGv_Outgoing : rowsOwned s2Step166EntryGvAfter [s2Step166EntryGvOut] :=
  hmrRows_owned_drop s2Step166EntryGvAfter [s2Step166EntryFOut,s2Step166EntryGOut,s2Step166EntryFvOut,s2Step166EntryGvOut] 3 s2Step166EntryBank_outgoingOwned

private theorem s2Step166EntryGv_distinct : (s2Step166EntryGvRow.sign::s2Step166EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166EntryGv_owned : (s2Step166EntryGvRow.sign::s2Step166EntryGvRow.payload).toFinset⊆s2Step166EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step166EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166EntryGv_reserved : s2Step166EntryGvBefore.reserve s2Step166EntryGvFresh.toFinset=some s2Step166EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step166EntryGvFresh,arenaWires]
  · norm_num [s2Step166EntryGvBefore,s2Step166EntryGAfter,s2Step166EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step166EntryGvAfter,s2Step166EntryGvBefore,s2Step166EntryGAfter,s2Step166EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step166EntryGv_checked : planRowResizeLog s2Step166EntryGvBefore s2Step166EntryGvRow 98 s2Step166EntryGvFresh=
    some (s2Step166EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849],771⟩,growRow 771 s2Step166EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step166EntryGvBefore s2Step166EntryGvAfter s2Step166EntryGvRow 98 s2Step166EntryGvFresh
    s2Step166EntryGv_distinct s2Step166EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step166EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step166EntryGvRow.payload++s2Step166EntryGvFresh) s2Step166EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step166EntryBank_rows : planWindowRowsLog s2Step166EntryFBefore [(s2Step166EntryFRow,187),(s2Step166EntryGRow,187),(s2Step166EntryFvRow,98),(s2Step166EntryGvRow,98)] [s2Step166EntryFFresh,s2Step166EntryGFresh,s2Step166EntryFvFresh,s2Step166EntryGvFresh]=
    some (s2Step166EntryGvAfter,[s2Step166EntryFOut,s2Step166EntryGOut,s2Step166EntryFvOut,s2Step166EntryGvOut],(growRow 768 s2Step166EntryFFresh ++ (growRow 769 s2Step166EntryGFresh ++ (growRow 770 s2Step166EntryFvFresh ++ (growRow 771 s2Step166EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step166EntryGvAfter [] []=some (s2Step166EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step166EntryGvBefore s2Step166EntryGvAfter s2Step166EntryGvAfter
    s2Step166EntryGvRow s2Step166EntryGvOut 98 s2Step166EntryGvFresh [] [] []
    (growRow 771 s2Step166EntryGvFresh) ([]) s2Step166EntryGv_Incoming s2Step166EntryGv_checked h4 s2Step166EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step166EntryFvBefore s2Step166EntryFvAfter s2Step166EntryGvAfter
    s2Step166EntryFvRow s2Step166EntryFvOut 98 s2Step166EntryFvFresh [(s2Step166EntryGvRow,98)] [s2Step166EntryGvFresh] [s2Step166EntryGvOut]
    (growRow 770 s2Step166EntryFvFresh) ((growRow 771 s2Step166EntryGvFresh ++ [])) s2Step166EntryFv_Incoming s2Step166EntryFv_checked h3 s2Step166EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step166EntryGBefore s2Step166EntryGAfter s2Step166EntryGvAfter
    s2Step166EntryGRow s2Step166EntryGOut 187 s2Step166EntryGFresh [(s2Step166EntryFvRow,98),(s2Step166EntryGvRow,98)] [s2Step166EntryFvFresh,s2Step166EntryGvFresh] [s2Step166EntryFvOut,s2Step166EntryGvOut]
    (growRow 769 s2Step166EntryGFresh) ((growRow 770 s2Step166EntryFvFresh ++ (growRow 771 s2Step166EntryGvFresh ++ []))) s2Step166EntryG_Incoming s2Step166EntryG_checked h2 s2Step166EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step166EntryFBefore s2Step166EntryFAfter s2Step166EntryGvAfter
    s2Step166EntryFRow s2Step166EntryFOut 187 s2Step166EntryFFresh [(s2Step166EntryGRow,187),(s2Step166EntryFvRow,98),(s2Step166EntryGvRow,98)] [s2Step166EntryGFresh,s2Step166EntryFvFresh,s2Step166EntryGvFresh] [s2Step166EntryGOut,s2Step166EntryFvOut,s2Step166EntryGvOut]
    (growRow 768 s2Step166EntryFFresh) ((growRow 769 s2Step166EntryGFresh ++ (growRow 770 s2Step166EntryFvFresh ++ (growRow 771 s2Step166EntryGvFresh ++ [])))) s2Step166EntryF_Incoming s2Step166EntryF_checked h1 s2Step166EntryF_Outgoing
  exact h0

private theorem s2Step166EntryBank_checked : compileHmrBankResizeLog .entry s2Step166EntryFBefore ⟨s2Step166EntryFRow,s2Step166EntryGRow,s2Step166EntryFvRow,s2Step166EntryGvRow⟩ ⟨187,187,98,98⟩ [s2Step166EntryFFresh,s2Step166EntryGFresh,s2Step166EntryFvFresh,s2Step166EntryGvFresh]=
    some (s2Step166EntryGvAfter,⟨s2Step166EntryFOut,s2Step166EntryGOut,s2Step166EntryFvOut,s2Step166EntryGvOut⟩,(growRow 768 s2Step166EntryFFresh ++ (growRow 769 s2Step166EntryGFresh ++ (growRow 770 s2Step166EntryFvFresh ++ (growRow 771 s2Step166EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step166EntryBank_rows]
  rfl

private def s2Step166ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166ExitFBefore : Arena := s2Step166ExitGAfter

private def s2Step166ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 793],768⟩

private def s2Step166ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 785],770⟩

private def s2Step166ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 847, 803],769⟩

private def s2Step166ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 799],771⟩

private theorem s2Step166ExitBank_incomingDistinct : ([s2Step166ExitGRow,s2Step166ExitFRow,s2Step166ExitFvRow,s2Step166ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166ExitF_Incoming : rowsOwned s2Step166ExitFBefore [s2Step166ExitFRow,s2Step166ExitFvRow,s2Step166ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step166ExitGRow,s2Step166ExitFRow,s2Step166ExitFvRow,s2Step166ExitGvRow] 1 s2Step166ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step166ExitFBefore (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step166ExitBank_outgoingOwned : rowsOwned s2Step166ExitGvAfter [s2Step166ExitGOut,s2Step166ExitFOut,s2Step166ExitFvOut,s2Step166ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step166ExitGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step166ExitF_Outgoing : rowsOwned s2Step166ExitGvAfter [s2Step166ExitFOut,s2Step166ExitFvOut,s2Step166ExitGvOut] :=
  hmrRows_owned_drop s2Step166ExitGvAfter [s2Step166ExitGOut,s2Step166ExitFOut,s2Step166ExitFvOut,s2Step166ExitGvOut] 1 s2Step166ExitBank_outgoingOwned

private theorem s2Step166ExitF_distinct : (s2Step166ExitFRow.sign::s2Step166ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166ExitF_owned : (s2Step166ExitFRow.sign::s2Step166ExitFRow.payload).toFinset⊆s2Step166ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step166ExitFBefore (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166ExitF_retired : s2Step166ExitFBefore.retireSet s2Step166ExitFExtra.toFinset=s2Step166ExitFAfter := by
  unfold Arena.retireSet s2Step166ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step166ExitFBefore,s2Step166ExitGAfter,s2Step166ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step166ExitF_checked : planRowResizeLog s2Step166ExitFBefore s2Step166ExitFRow 187 []=
    some (s2Step166ExitFAfter,s2Step166ExitFOut,shrinkRow 768 s2Step166ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step166ExitFBefore s2Step166ExitFRow 187 s2Step166ExitF_distinct s2Step166ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step166ExitFRow.payload.take 187) s2Step166ExitFRow.sign=s2Step166ExitFOut := by decide +kernel
  have hi : s2Step166ExitFRow.payload.drop 187=s2Step166ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step166ExitF_retired] at result
  exact result

private def s2Step166ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166ExitFvBefore : Arena := s2Step166ExitFAfter

private theorem s2Step166ExitFv_Incoming : rowsOwned s2Step166ExitFvBefore [s2Step166ExitFvRow,s2Step166ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step166ExitGRow,s2Step166ExitFRow,s2Step166ExitFvRow,s2Step166ExitGvRow] 2 s2Step166ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step166ExitFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step166ExitFv_Outgoing : rowsOwned s2Step166ExitGvAfter [s2Step166ExitFvOut,s2Step166ExitGvOut] :=
  hmrRows_owned_drop s2Step166ExitGvAfter [s2Step166ExitGOut,s2Step166ExitFOut,s2Step166ExitFvOut,s2Step166ExitGvOut] 2 s2Step166ExitBank_outgoingOwned

private theorem s2Step166ExitFv_distinct : (s2Step166ExitFvRow.sign::s2Step166ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166ExitFv_owned : (s2Step166ExitFvRow.sign::s2Step166ExitFvRow.payload).toFinset⊆s2Step166ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step166ExitFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166ExitFv_retired : s2Step166ExitFvBefore.retireSet s2Step166ExitFvExtra.toFinset=s2Step166ExitFvAfter := by
  unfold Arena.retireSet s2Step166ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step166ExitFvBefore,s2Step166ExitFAfter,s2Step166ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step166ExitFv_checked : planRowResizeLog s2Step166ExitFvBefore s2Step166ExitFvRow 98 []=
    some (s2Step166ExitFvAfter,s2Step166ExitFvOut,shrinkRow 770 s2Step166ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step166ExitFvBefore s2Step166ExitFvRow 98 s2Step166ExitFv_distinct s2Step166ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step166ExitFvRow.payload.take 98) s2Step166ExitFvRow.sign=s2Step166ExitFvOut := by decide +kernel
  have hi : s2Step166ExitFvRow.payload.drop 98=s2Step166ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step166ExitFv_retired] at result
  exact result

private def s2Step166ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step166ExitG_Incoming : rowsOwned s2Step166ExitGBefore [s2Step166ExitGRow,s2Step166ExitFRow,s2Step166ExitFvRow,s2Step166ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step166ExitGRow,s2Step166ExitFRow,s2Step166ExitFvRow,s2Step166ExitGvRow] 0 s2Step166ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step166ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step166ExitG_Outgoing : rowsOwned s2Step166ExitGvAfter [s2Step166ExitGOut,s2Step166ExitFOut,s2Step166ExitFvOut,s2Step166ExitGvOut] :=
  hmrRows_owned_drop s2Step166ExitGvAfter [s2Step166ExitGOut,s2Step166ExitFOut,s2Step166ExitFvOut,s2Step166ExitGvOut] 0 s2Step166ExitBank_outgoingOwned

private theorem s2Step166ExitG_distinct : (s2Step166ExitGRow.sign::s2Step166ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166ExitG_owned : (s2Step166ExitGRow.sign::s2Step166ExitGRow.payload).toFinset⊆s2Step166ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step166ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166ExitG_retired : s2Step166ExitGBefore.retireSet s2Step166ExitGExtra.toFinset=s2Step166ExitGAfter := by
  unfold Arena.retireSet s2Step166ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step166ExitGBefore,s2Step166ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step166ExitG_checked : planRowResizeLog s2Step166ExitGBefore s2Step166ExitGRow 186 []=
    some (s2Step166ExitGAfter,s2Step166ExitGOut,shrinkRow 769 s2Step166ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step166ExitGBefore s2Step166ExitGRow 186 s2Step166ExitG_distinct s2Step166ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step166ExitGRow.payload.take 186) s2Step166ExitGRow.sign=s2Step166ExitGOut := by decide +kernel
  have hi : s2Step166ExitGRow.payload.drop 186=s2Step166ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step166ExitG_retired] at result
  exact result

private def s2Step166ExitGvBefore : Arena := s2Step166ExitFvAfter

private theorem s2Step166ExitGv_Incoming : rowsOwned s2Step166ExitGvBefore [s2Step166ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step166ExitGRow,s2Step166ExitFRow,s2Step166ExitFvRow,s2Step166ExitGvRow] 3 s2Step166ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step166ExitGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step166ExitGv_Outgoing : rowsOwned s2Step166ExitGvAfter [s2Step166ExitGvOut] :=
  hmrRows_owned_drop s2Step166ExitGvAfter [s2Step166ExitGOut,s2Step166ExitFOut,s2Step166ExitFvOut,s2Step166ExitGvOut] 3 s2Step166ExitBank_outgoingOwned

private theorem s2Step166ExitGv_distinct : (s2Step166ExitGvRow.sign::s2Step166ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166ExitGv_owned : (s2Step166ExitGvRow.sign::s2Step166ExitGvRow.payload).toFinset⊆s2Step166ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step166ExitGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166ExitGv_retired : s2Step166ExitGvBefore.retireSet s2Step166ExitGvExtra.toFinset=s2Step166ExitGvAfter := by
  unfold Arena.retireSet s2Step166ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step166ExitGvBefore,s2Step166ExitFvAfter,s2Step166ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step166ExitGv_checked : planRowResizeLog s2Step166ExitGvBefore s2Step166ExitGvRow 98 []=
    some (s2Step166ExitGvAfter,s2Step166ExitGvOut,shrinkRow 771 s2Step166ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step166ExitGvBefore s2Step166ExitGvRow 98 s2Step166ExitGv_distinct s2Step166ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step166ExitGvRow.payload.take 98) s2Step166ExitGvRow.sign=s2Step166ExitGvOut := by decide +kernel
  have hi : s2Step166ExitGvRow.payload.drop 98=s2Step166ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step166ExitGv_retired] at result
  exact result

private theorem s2Step166ExitBank_rows : planWindowRowsLog s2Step166ExitGBefore [(s2Step166ExitGRow,186),(s2Step166ExitFRow,187),(s2Step166ExitFvRow,98),(s2Step166ExitGvRow,98)] [[],[],[],[]]=
    some (s2Step166ExitGvAfter,[s2Step166ExitGOut,s2Step166ExitFOut,s2Step166ExitFvOut,s2Step166ExitGvOut],(shrinkRow 769 s2Step166ExitGExtra ++ (shrinkRow 768 s2Step166ExitFExtra ++ (shrinkRow 770 s2Step166ExitFvExtra ++ (shrinkRow 771 s2Step166ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step166ExitGvAfter [] []=some (s2Step166ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step166ExitGvBefore s2Step166ExitGvAfter s2Step166ExitGvAfter
    s2Step166ExitGvRow s2Step166ExitGvOut 98 [] [] [] []
    (shrinkRow 771 s2Step166ExitGvExtra) ([]) s2Step166ExitGv_Incoming s2Step166ExitGv_checked h4 s2Step166ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step166ExitFvBefore s2Step166ExitFvAfter s2Step166ExitGvAfter
    s2Step166ExitFvRow s2Step166ExitFvOut 98 [] [(s2Step166ExitGvRow,98)] [[]] [s2Step166ExitGvOut]
    (shrinkRow 770 s2Step166ExitFvExtra) ((shrinkRow 771 s2Step166ExitGvExtra ++ [])) s2Step166ExitFv_Incoming s2Step166ExitFv_checked h3 s2Step166ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step166ExitFBefore s2Step166ExitFAfter s2Step166ExitGvAfter
    s2Step166ExitFRow s2Step166ExitFOut 187 [] [(s2Step166ExitFvRow,98),(s2Step166ExitGvRow,98)] [[],[]] [s2Step166ExitFvOut,s2Step166ExitGvOut]
    (shrinkRow 768 s2Step166ExitFExtra) ((shrinkRow 770 s2Step166ExitFvExtra ++ (shrinkRow 771 s2Step166ExitGvExtra ++ []))) s2Step166ExitF_Incoming s2Step166ExitF_checked h2 s2Step166ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step166ExitGBefore s2Step166ExitGAfter s2Step166ExitGvAfter
    s2Step166ExitGRow s2Step166ExitGOut 186 [] [(s2Step166ExitFRow,187),(s2Step166ExitFvRow,98),(s2Step166ExitGvRow,98)] [[],[],[]] [s2Step166ExitFOut,s2Step166ExitFvOut,s2Step166ExitGvOut]
    (shrinkRow 769 s2Step166ExitGExtra) ((shrinkRow 768 s2Step166ExitFExtra ++ (shrinkRow 770 s2Step166ExitFvExtra ++ (shrinkRow 771 s2Step166ExitGvExtra ++ [])))) s2Step166ExitG_Incoming s2Step166ExitG_checked h1 s2Step166ExitG_Outgoing
  exact h0

private theorem s2Step166ExitBank_checked : compileHmrBankResizeLog .exit s2Step166ExitGBefore ⟨s2Step166ExitFRow,s2Step166ExitGRow,s2Step166ExitFvRow,s2Step166ExitGvRow⟩ ⟨187,186,98,98⟩ [[],[],[],[]]=
    some (s2Step166ExitGvAfter,⟨s2Step166ExitFOut,s2Step166ExitGOut,s2Step166ExitFvOut,s2Step166ExitGvOut⟩,(shrinkRow 769 s2Step166ExitGExtra ++ (shrinkRow 768 s2Step166ExitFExtra ++ (shrinkRow 770 s2Step166ExitFvExtra ++ (shrinkRow 771 s2Step166ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step166ExitBank_rows]
  rfl

private theorem s2Step166Add0_apart : Disjoint s2Step166Add0Arena.live s2Step166Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step166Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166Add0_card : s2Step166Add0Arena.live.card=886 := by
  decide +kernel

private theorem s2Step166Add0_borrowed : s2Step166Add0Arena.checkBorrow (hmrHybridCount s2Step166Add0Arena s2Step166Add0B.length) s2Step166Add0Work=some s2Step166Add0During := by
  have len : s2Step166Add0Work.length=hmrHybridCount s2Step166Add0Arena s2Step166Add0B.length := by
    rw [hmrHybridCount,s2Step166Add0_card]
    decide +kernel
  have nd : s2Step166Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step166Add0Arena s2Step166Add0During s2Step166Add0Work.toFinset s2Step166Add0_bounded s2Step166Add0_apart rfl

private theorem s2Step166Add0_distinct : (867::810::877::(s2Step166Add0A++s2Step166Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166Add0_owned : (867::810::877::(s2Step166Add0A++s2Step166Add0B)).toFinset⊆s2Step166Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step166Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166Add0_checked : compileHmrHybridCinLog s2Step166Add0Arena 810 867 877 s2Step166Add0A s2Step166Add0B s2Step166Add0Work=some s2Step166Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step166Add0Arena s2Step166Add0During 810 867 877 s2Step166Add0A s2Step166Add0B s2Step166Add0Work
    (by decide +kernel) (by decide +kernel) s2Step166Add0_distinct
    (fun q hq => s2Step166Add0_owned (List.mem_toFinset.mpr hq)) s2Step166Add0_borrowed

private theorem s2Step166Add1_apart : Disjoint s2Step166Add1Arena.live s2Step166Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step166Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166Add1_card : s2Step166Add1Arena.live.card=886 := by
  decide +kernel

private theorem s2Step166Add1_borrowed : s2Step166Add1Arena.checkBorrow (hmrHybridCount s2Step166Add1Arena s2Step166Add1B.length) s2Step166Add1Work=some s2Step166Add1During := by
  have len : s2Step166Add1Work.length=hmrHybridCount s2Step166Add1Arena s2Step166Add1B.length := by
    rw [hmrHybridCount,s2Step166Add1_card]
    decide +kernel
  have nd : s2Step166Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step166Add1Arena s2Step166Add1During s2Step166Add1Work.toFinset s2Step166Add1_bounded s2Step166Add1_apart rfl

private theorem s2Step166Add1_distinct : (867::810::877::(s2Step166Add1A++s2Step166Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166Add1_owned : (867::810::877::(s2Step166Add1A++s2Step166Add1B)).toFinset⊆s2Step166Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step166Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166Add1_checked : compileHmrHybridCinLog s2Step166Add1Arena 810 867 877 s2Step166Add1A s2Step166Add1B s2Step166Add1Work=some s2Step166Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step166Add1Arena s2Step166Add1During 810 867 877 s2Step166Add1A s2Step166Add1B s2Step166Add1Work
    (by decide +kernel) (by decide +kernel) s2Step166Add1_distinct
    (fun q hq => s2Step166Add1_owned (List.mem_toFinset.mpr hq)) s2Step166Add1_borrowed

private theorem s2Step166F4_apart : Disjoint (s2Step166Add0A++s2Step166Add0B).toFinset (s2Step166Add1A++s2Step166Add1B).toFinset := by
  have nd : ((s2Step166Add0A++s2Step166Add0B)++(s2Step166Add1A++s2Step166Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step166F4_carry : s2Step166F4FlagArena.checkBorrow 1 [877]=some s2Step166Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step166F4FlagArena,s2Step166HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step166F4FlagArena,s2Step166HeadFvAfter,s2Step166Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step166F4_distinct : (800::810::867::877::((s2Step166Add0A++s2Step166Add1A)++(s2Step166Add0B++s2Step166Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166F4_flag : s2Step166HeadFvAfter.checkBorrow 1 [867]=some s2Step166F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step166HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step166F4_owned : (800::810::((s2Step166Add0A++s2Step166Add1A)++(s2Step166Add0B++s2Step166Add1B))).toFinset⊆s2Step166HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step166HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166F4_checked : compileHmrHybridF4Log s2Step166HeadFvAfter 800 810 s2Step166Add0A s2Step166Add0B s2Step166Add1A s2Step166Add1B [867] [877] s2Step166Add0Work s2Step166Add1Work=some s2Step166F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step166HeadFvAfter s2Step166F4FlagArena s2Step166Add0Arena s2Step166Add0During s2Step166Add1During 800 810
    s2Step166Add0A s2Step166Add0B s2Step166Add1A s2Step166Add1B [867] [877] s2Step166Add0Work s2Step166Add1Work
    (fun q hq => s2Step166F4_owned (List.mem_toFinset.mpr hq)) s2Step166F4_flag s2Step166F4_carry
    s2Step166F4_distinct s2Step166F4_apart s2Step166Add0_checked s2Step166Add1_checked

private theorem s2Step166Front_branch : s2Step166FrontSigmaArena.checkBorrow 1 [810]=some s2Step166HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step166FrontSigmaArena,s2Step166EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step166FrontSigmaArena,s2Step166EntryGvAfter,s2Step166HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step166Front_entry : HmrFrontEntryValid s2Step166EntryFBefore s2Step166FrontBank 187 98 ⟨187,186,98,98⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step166FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step166EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step166EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step166FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step166Front_sigma : s2Step166EntryGvAfter.checkBorrow 1 [800]=some s2Step166FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step166EntryGvAfter,arenaWires]
  · rfl

private def s2Step166HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166HeadFBefore : Arena := s2Step166HeadGAfter

private def s2Step166HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩

private def s2Step166HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩

private def s2Step166HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 847],769⟩

private def s2Step166HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849],771⟩

private theorem s2Step166HeadBank_incomingDistinct : ([s2Step166HeadGRow,s2Step166HeadFRow,s2Step166HeadGvRow,s2Step166HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166HeadF_Incoming : rowsOwned s2Step166HeadFBefore [s2Step166HeadFRow,s2Step166HeadGvRow,s2Step166HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step166HeadGRow,s2Step166HeadFRow,s2Step166HeadGvRow,s2Step166HeadFvRow] 1 s2Step166HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step166HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step166HeadBank_outgoingOwned : rowsOwned s2Step166HeadFvAfter [s2Step166HeadGOut,s2Step166HeadFOut,s2Step166HeadGvOut,s2Step166HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step166HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step166HeadF_Outgoing : rowsOwned s2Step166HeadFvAfter [s2Step166HeadFOut,s2Step166HeadGvOut,s2Step166HeadFvOut] :=
  hmrRows_owned_drop s2Step166HeadFvAfter [s2Step166HeadGOut,s2Step166HeadFOut,s2Step166HeadGvOut,s2Step166HeadFvOut] 1 s2Step166HeadBank_outgoingOwned

private theorem s2Step166HeadF_distinct : (s2Step166HeadFRow.sign::s2Step166HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166HeadF_owned : (s2Step166HeadFRow.sign::s2Step166HeadFRow.payload).toFinset⊆s2Step166HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step166HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166HeadF_reserved : s2Step166HeadFBefore.reserve s2Step166HeadFFresh.toFinset=some s2Step166HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step166HeadFFresh,arenaWires]
  · norm_num [s2Step166HeadFBefore,s2Step166HeadGAfter,s2Step166HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step166HeadFAfter,s2Step166HeadFBefore,s2Step166HeadGAfter,s2Step166HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step166HeadF_checked : planRowResizeLog s2Step166HeadFBefore s2Step166HeadFRow 188 s2Step166HeadFFresh=
    some (s2Step166HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 793],768⟩,growRow 768 s2Step166HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step166HeadFBefore s2Step166HeadFAfter s2Step166HeadFRow 188 s2Step166HeadFFresh
    s2Step166HeadF_distinct s2Step166HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step166HeadF_reserved
  have rowEq : WindowRow.mk (s2Step166HeadFRow.payload++s2Step166HeadFFresh) s2Step166HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 793],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step166HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step166HeadFvBefore : Arena := s2Step166HeadGvAfter

private theorem s2Step166HeadFv_Incoming : rowsOwned s2Step166HeadFvBefore [s2Step166HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step166HeadGRow,s2Step166HeadFRow,s2Step166HeadGvRow,s2Step166HeadFvRow] 3 s2Step166HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step166HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step166HeadFv_Outgoing : rowsOwned s2Step166HeadFvAfter [s2Step166HeadFvOut] :=
  hmrRows_owned_drop s2Step166HeadFvAfter [s2Step166HeadGOut,s2Step166HeadFOut,s2Step166HeadGvOut,s2Step166HeadFvOut] 3 s2Step166HeadBank_outgoingOwned

private theorem s2Step166HeadFv_distinct : (s2Step166HeadFvRow.sign::s2Step166HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166HeadFv_owned : (s2Step166HeadFvRow.sign::s2Step166HeadFvRow.payload).toFinset⊆s2Step166HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step166HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166HeadFv_reserved : s2Step166HeadFvBefore.reserve s2Step166HeadFvFresh.toFinset=some s2Step166HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step166HeadFvFresh,arenaWires]
  · norm_num [s2Step166HeadFvBefore,s2Step166HeadGvAfter,s2Step166HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step166HeadFvAfter,s2Step166HeadFvBefore,s2Step166HeadGvAfter,s2Step166HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step166HeadFv_checked : planRowResizeLog s2Step166HeadFvBefore s2Step166HeadFvRow 99 s2Step166HeadFvFresh=
    some (s2Step166HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 785],770⟩,growRow 770 s2Step166HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step166HeadFvBefore s2Step166HeadFvAfter s2Step166HeadFvRow 99 s2Step166HeadFvFresh
    s2Step166HeadFv_distinct s2Step166HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step166HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step166HeadFvRow.payload++s2Step166HeadFvFresh) s2Step166HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step166HeadG_Incoming : rowsOwned s2Step166HeadGBefore [s2Step166HeadGRow,s2Step166HeadFRow,s2Step166HeadGvRow,s2Step166HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step166HeadGRow,s2Step166HeadFRow,s2Step166HeadGvRow,s2Step166HeadFvRow] 0 s2Step166HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step166HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step166HeadG_Outgoing : rowsOwned s2Step166HeadFvAfter [s2Step166HeadGOut,s2Step166HeadFOut,s2Step166HeadGvOut,s2Step166HeadFvOut] :=
  hmrRows_owned_drop s2Step166HeadFvAfter [s2Step166HeadGOut,s2Step166HeadFOut,s2Step166HeadGvOut,s2Step166HeadFvOut] 0 s2Step166HeadBank_outgoingOwned

private theorem s2Step166HeadG_distinct : (s2Step166HeadGRow.sign::s2Step166HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166HeadG_owned : (s2Step166HeadGRow.sign::s2Step166HeadGRow.payload).toFinset⊆s2Step166HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step166HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166HeadG_reserved : s2Step166HeadGBefore.reserve s2Step166HeadGFresh.toFinset=some s2Step166HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step166HeadGFresh,arenaWires]
  · norm_num [s2Step166HeadGBefore,s2Step166HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step166HeadGAfter,s2Step166HeadGBefore,s2Step166HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step166HeadG_checked : planRowResizeLog s2Step166HeadGBefore s2Step166HeadGRow 188 s2Step166HeadGFresh=
    some (s2Step166HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 847, 803],769⟩,growRow 769 s2Step166HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step166HeadGBefore s2Step166HeadGAfter s2Step166HeadGRow 188 s2Step166HeadGFresh
    s2Step166HeadG_distinct s2Step166HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step166HeadG_reserved
  have rowEq : WindowRow.mk (s2Step166HeadGRow.payload++s2Step166HeadGFresh) s2Step166HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 847, 803],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step166HeadGvBefore : Arena := s2Step166HeadFAfter

private theorem s2Step166HeadGv_Incoming : rowsOwned s2Step166HeadGvBefore [s2Step166HeadGvRow,s2Step166HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step166HeadGRow,s2Step166HeadFRow,s2Step166HeadGvRow,s2Step166HeadFvRow] 2 s2Step166HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step166HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step166HeadGv_Outgoing : rowsOwned s2Step166HeadFvAfter [s2Step166HeadGvOut,s2Step166HeadFvOut] :=
  hmrRows_owned_drop s2Step166HeadFvAfter [s2Step166HeadGOut,s2Step166HeadFOut,s2Step166HeadGvOut,s2Step166HeadFvOut] 2 s2Step166HeadBank_outgoingOwned

private theorem s2Step166HeadGv_distinct : (s2Step166HeadGvRow.sign::s2Step166HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step166HeadGv_owned : (s2Step166HeadGvRow.sign::s2Step166HeadGvRow.payload).toFinset⊆s2Step166HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step166HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step166HeadGv_reserved : s2Step166HeadGvBefore.reserve s2Step166HeadGvFresh.toFinset=some s2Step166HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step166HeadGvFresh,arenaWires]
  · norm_num [s2Step166HeadGvBefore,s2Step166HeadFAfter,s2Step166HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step166HeadGvAfter,s2Step166HeadGvBefore,s2Step166HeadFAfter,s2Step166HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step166HeadGv_checked : planRowResizeLog s2Step166HeadGvBefore s2Step166HeadGvRow 99 s2Step166HeadGvFresh=
    some (s2Step166HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 799],771⟩,growRow 771 s2Step166HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step166HeadGvBefore s2Step166HeadGvAfter s2Step166HeadGvRow 99 s2Step166HeadGvFresh
    s2Step166HeadGv_distinct s2Step166HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step166HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step166HeadGvRow.payload++s2Step166HeadGvFresh) s2Step166HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 799],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step166HeadBank_rows : planWindowRowsLog s2Step166HeadGBefore [(s2Step166HeadGRow,188),(s2Step166HeadFRow,188),(s2Step166HeadGvRow,99),(s2Step166HeadFvRow,99)] [s2Step166HeadGFresh,s2Step166HeadFFresh,s2Step166HeadGvFresh,s2Step166HeadFvFresh]=
    some (s2Step166HeadFvAfter,[s2Step166HeadGOut,s2Step166HeadFOut,s2Step166HeadGvOut,s2Step166HeadFvOut],(growRow 769 s2Step166HeadGFresh ++ (growRow 768 s2Step166HeadFFresh ++ (growRow 771 s2Step166HeadGvFresh ++ (growRow 770 s2Step166HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step166HeadFvAfter [] []=some (s2Step166HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step166HeadFvBefore s2Step166HeadFvAfter s2Step166HeadFvAfter
    s2Step166HeadFvRow s2Step166HeadFvOut 99 s2Step166HeadFvFresh [] [] []
    (growRow 770 s2Step166HeadFvFresh) ([]) s2Step166HeadFv_Incoming s2Step166HeadFv_checked h4 s2Step166HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step166HeadGvBefore s2Step166HeadGvAfter s2Step166HeadFvAfter
    s2Step166HeadGvRow s2Step166HeadGvOut 99 s2Step166HeadGvFresh [(s2Step166HeadFvRow,99)] [s2Step166HeadFvFresh] [s2Step166HeadFvOut]
    (growRow 771 s2Step166HeadGvFresh) ((growRow 770 s2Step166HeadFvFresh ++ [])) s2Step166HeadGv_Incoming s2Step166HeadGv_checked h3 s2Step166HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step166HeadFBefore s2Step166HeadFAfter s2Step166HeadFvAfter
    s2Step166HeadFRow s2Step166HeadFOut 188 s2Step166HeadFFresh [(s2Step166HeadGvRow,99),(s2Step166HeadFvRow,99)] [s2Step166HeadGvFresh,s2Step166HeadFvFresh] [s2Step166HeadGvOut,s2Step166HeadFvOut]
    (growRow 768 s2Step166HeadFFresh) ((growRow 771 s2Step166HeadGvFresh ++ (growRow 770 s2Step166HeadFvFresh ++ []))) s2Step166HeadF_Incoming s2Step166HeadF_checked h2 s2Step166HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step166HeadGBefore s2Step166HeadGAfter s2Step166HeadFvAfter
    s2Step166HeadGRow s2Step166HeadGOut 188 s2Step166HeadGFresh [(s2Step166HeadFRow,188),(s2Step166HeadGvRow,99),(s2Step166HeadFvRow,99)] [s2Step166HeadFFresh,s2Step166HeadGvFresh,s2Step166HeadFvFresh] [s2Step166HeadFOut,s2Step166HeadGvOut,s2Step166HeadFvOut]
    (growRow 769 s2Step166HeadGFresh) ((growRow 768 s2Step166HeadFFresh ++ (growRow 771 s2Step166HeadGvFresh ++ (growRow 770 s2Step166HeadFvFresh ++ [])))) s2Step166HeadG_Incoming s2Step166HeadG_checked h1 s2Step166HeadG_Outgoing
  exact h0

private theorem s2Step166HeadBank_checked : compileHmrBankResizeLog .headroom s2Step166HeadGBefore ⟨s2Step166HeadFRow,s2Step166HeadGRow,s2Step166HeadFvRow,s2Step166HeadGvRow⟩ ⟨188,188,99,99⟩ [s2Step166HeadGFresh,s2Step166HeadFFresh,s2Step166HeadGvFresh,s2Step166HeadFvFresh]=
    some (s2Step166HeadFvAfter,⟨s2Step166HeadFOut,s2Step166HeadGOut,s2Step166HeadFvOut,s2Step166HeadGvOut⟩,(growRow 769 s2Step166HeadGFresh ++ (growRow 768 s2Step166HeadFFresh ++ (growRow 771 s2Step166HeadGvFresh ++ (growRow 770 s2Step166HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step166HeadBank_rows]
  rfl

private theorem s2Step166Front_checked : compileHmrSourceFrontLog s2Step166EntryFBefore s2Step166FrontBank 187 98 ⟨187,186,98,98⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step166FrontLog=some s2Step166FrontPlan := by
  have pairEq : s2Step166FrontPair=⟨s2Step166HeadFRow,s2Step166HeadGRow,s2Step166HeadFvRow,s2Step166HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step166FrontHead=⟨s2Step166ExitFRow,s2Step166ExitGRow,s2Step166ExitFvRow,s2Step166ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step166Add0A=s2Step166FrontHead.f.wires := by decide +kernel
  have gEq : s2Step166Add0B=s2Step166FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step166Add1A=s2Step166FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step166Add1B=s2Step166FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step166EntryFBefore s2Step166FrontBank 187 98 ⟨187,186,98,98⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step166FrontLog s2Step166FrontPlan
  · exact s2Step166Front_entry
  · exact s2Step166EntryBank_checked
  · exact s2Step166Front_sigma
  · rfl
  · exact s2Step166Front_branch
  · rfl
  · simpa only [s2Step166FrontPlan,pairEq] using s2Step166HeadBank_checked
  · simpa only [s2Step166FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step166F4_checked
  · exact s2Step166Counter_checked
  · rfl
  · simpa only [s2Step166FrontPlan,headEq] using s2Step166ExitBank_checked

private theorem s2Step166Complete_explicit_checked : compileHmrEarlyStepLog s2Step166EntryFBefore s2Step166FrontBank 187 98 ⟨187,186,98,98⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step166CompleteLog=some s2Step166CompletePlan := by
  let Q := s2Step166EarlyControlPlan
  have hq := s2Step166EarlyControl_plan_checked
  have fv1 : s2Step166CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step166CompleteOut.fv.payload[2]?.getD s2Step166CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step166CompleteOut.fv.payload[3]?.getD s2Step166CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step166CompleteOut.fv.payload[4]?.getD s2Step166CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step166EntryFBefore s2Step166EarlyControlArena s2Step166FrontBank 187 98 ⟨187,186,98,98⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step166CompleteLog s2Step166FrontPlan Q
    s2Step166Front_checked s2Step166Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step166Complete_owned s2Step166Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step166EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 800 s2Step166CompleteOut.fv.second (s2Step166CompleteOut.fv.payload[2]?.getD s2Step166CompleteOut.fv.sign) (s2Step166CompleteOut.fv.payload[3]?.getD s2Step166CompleteOut.fv.sign) (s2Step166CompleteOut.fv.payload[4]?.getD s2Step166CompleteOut.fv.sign) 810 42 s2Step166EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep166Arena : Arena := s2Step166EntryFBefore
def s2PrivateStep166Bank : WindowBank := s2Step166FrontBank
def s2PrivateStep166Spec : HmrSourceWalkStepLog := ⟨187,98,⟨187,186,98,98⟩,42,.early s2Step166CompleteLog⟩
def s2PrivateStep166Plan : HmrSourceStepPlan := .early s2Step166CompletePlan
theorem s2PrivateStep166_source : s2PrivateStep166Spec=s2ObservedLogs160[6] := rfl
theorem s2PrivateStep166_checked : compileHmrSourceStepLog s2PrivateStep166Arena s2PrivateStep166Bank
    s2PrivateStep166Spec.fgWidth s2PrivateStep166Spec.vWidth s2PrivateStep166Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 166 s2PrivateStep166Spec.need none s2PrivateStep166Spec.log=some s2PrivateStep166Plan := by
  change compileHmrSourceStepLog s2Step166EntryFBefore s2Step166FrontBank 187 98 ⟨187,186,98,98⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 166 42 none (.early s2Step166CompleteLog)=some (.early s2Step166CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 166<498)]
  rw [s2Step166Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
