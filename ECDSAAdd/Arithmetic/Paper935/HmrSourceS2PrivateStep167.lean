import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep165
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

private def s2Step167CompleteMoves : List (Wire × Wire) := [(812,185),(787,698)]

private def s2Step167EarlyControlLog : HmrEarlyControlLog := ⟨[787, 812, 847, 793, 810],[785],[867],[877, 879, 882, 885, 888, 890],[]⟩

private def s2Step167FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [810], [], []],[[785], [793], [847], [803]],[[], [], [], []]⟩,[800],[799],[867],[877],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882]⟩

private def s2Step167CompleteLog : HmrEarlyStepLog := ⟨s2Step167FrontLog,s2Step167CompleteMoves,s2Step167EarlyControlLog⟩

private def s2Step167ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697],768⟩

private def s2Step167ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803],770⟩

private def s2Step167ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],769⟩

private def s2Step167ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849],771⟩

private def s2Step167FrontOut : WindowBank := ⟨s2Step167ExitFOut,s2Step167ExitGOut,s2Step167ExitFvOut,s2Step167ExitGvOut⟩

private def s2Step167CompleteOut : WindowBank := s2Step167FrontOut.repacked s2Step167CompleteMoves

private def s2Step167EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step167EarlyControlPositiveArena,[785],s2Step167EarlyControlEqualityArena,[867],⟨⟨800,false⟩,[⟨⟨785,false⟩,867⟩]⟩⟩

private def s2Step167EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step167EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step167EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,787⟩,⟨⟨774,false⟩,812⟩,⟨⟨775,false⟩,847⟩,⟨⟨776,false⟩,793⟩,⟨⟨777,false⟩,810⟩]⟩

private def s2Step167EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step167EarlyControlZeroArena,s2Step167EarlyControlZeroPlan,s2Step167EarlyControlClassPlan,s2Step167EarlyControlFlagArena,s2Step167EarlyControlFittedArena,s2Step167EarlyControlHistoryArena,s2Step167EarlyControlSigmaArena,s2Step167EarlyControlOutputArena,s2Step167EarlyControlLog⟩

private def s2Step167CounterWork : List Wire := [867, 877, 879, 882]

private theorem s2Step167Counter_bounded : s2Step167CounterWork.toFinset⊆arenaWires := by norm_num [s2Step167CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step167HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167CounterDuring : Arena := ⟨s2Step167HeadFvAfter.live∪s2Step167CounterWork.toFinset,Finset.union_subset s2Step167HeadFvAfter.bounded s2Step167Counter_bounded⟩

private def s2Step167EntryFFresh : List Wire := []

private def s2Step167EntryFvFresh : List Wire := []

private def s2Step167EntryGFresh : List Wire := [810]

private def s2Step167EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167EntryGvAfter : Arena := s2Step167EntryGAfter

private def s2Step167EntryGvFresh : List Wire := []

private def s2Step167ExitFExtra : List Wire := [698, 793]

private def s2Step167ExitGExtra : List Wire := [185, 810, 785]

private def s2Step167ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<185) ∨ (186≤q ∧ q<698) ∨ (699≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167ExitGvExtra : List Wire := [847]

private def s2Step167Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167Add0Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step167Add0_bounded : s2Step167Add0Work.toFinset⊆arenaWires := by
  have h : s2Step167Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step167Add0During : Arena := ⟨s2Step167Add0Arena.live∪s2Step167Add0Work.toFinset,Finset.union_subset s2Step167Add0Arena.bounded s2Step167Add0_bounded⟩

private def s2Step167Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167Add1Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step167Add1_bounded : s2Step167Add1Work.toFinset⊆arenaWires := by
  have h : s2Step167Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step167Add1During : Arena := ⟨s2Step167Add1Arena.live∪s2Step167Add1Work.toFinset,Finset.union_subset s2Step167Add1Arena.bounded s2Step167Add1_bounded⟩

private def s2Step167F4FlagArena : Arena := ⟨s2Step167HeadFvAfter.live∪{867},Finset.union_subset s2Step167HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step167F4Plan : HmrHybridF4Plan := ⟨s2Step167F4FlagArena,[867],s2Step167Add0Arena,[877],s2Step167Add0During,s2Step167Add0Work,s2Step167Add1During,s2Step167Add1Work⟩

private def s2Step167HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 793],768⟩

private def s2Step167HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803],770⟩

private def s2Step167HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 810, 785],769⟩

private def s2Step167HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 847],771⟩

private def s2Step167FrontHead : WindowBank := ⟨s2Step167HeadFOut,s2Step167HeadGOut,s2Step167HeadFvOut,s2Step167HeadGvOut⟩

private def s2Step167EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩

private def s2Step167EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩

private def s2Step167EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 810],769⟩

private def s2Step167EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849],771⟩

private def s2Step167FrontPair : WindowBank := ⟨s2Step167EntryFOut,s2Step167EntryGOut,s2Step167EntryFvOut,s2Step167EntryGvOut⟩

private def s2Step167FrontSigmaArena : Arena := ⟨s2Step167EntryGvAfter.live∪{800},Finset.union_subset s2Step167EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step167HeadFFresh : List Wire := [793]

private def s2Step167HeadFvFresh : List Wire := [803]

private def s2Step167HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167HeadGFresh : List Wire := [785]

private def s2Step167HeadGvFresh : List Wire := [847]

private def s2Step167FrontPlan : HmrSourceFront := ⟨s2Step167EntryGvAfter,s2Step167FrontPair,(growRow 768 s2Step167EntryFFresh ++ (growRow 769 s2Step167EntryGFresh ++ (growRow 770 s2Step167EntryFvFresh ++ (growRow 771 s2Step167EntryGvFresh ++ [])))),s2Step167FrontSigmaArena,[800],s2Step167HeadGBefore,[799],
  s2Step167HeadFvAfter,s2Step167FrontHead,(growRow 769 s2Step167HeadGFresh ++ (growRow 768 s2Step167HeadFFresh ++ (growRow 771 s2Step167HeadGvFresh ++ (growRow 770 s2Step167HeadFvFresh ++ [])))),s2Step167F4Plan,s2Step167CounterDuring,s2Step167CounterWork,s2Step167ExitGvAfter,s2Step167FrontOut,(shrinkRow 769 s2Step167ExitGExtra ++ (shrinkRow 768 s2Step167ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step167ExitGvExtra ++ []))))⟩

private def s2Step167CompletePlan : HmrEarlyStepPlan := ⟨s2Step167FrontPlan,s2Step167EarlyControlArena,s2Step167EarlyControlPlan,s2Step167CompleteMoves⟩

private theorem s2Step167Complete_apart : List.Disjoint (s2Step167CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [800, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step167CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[800, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step167Complete_owned : (s2Step167CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step167EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step167EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step167CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,698),(699,785),(786,793),(794,810),(811,812),(813,847),(848,867),(868,877),(878,879),(880,882),(883,885),(886,888),(889,890)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step167CompleteRelocationMove0Borrowed : Arena := ⟨s2Step167ExitGvAfter.live∪{185},Finset.union_subset s2Step167ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step167CompleteRelocationMove1Borrowed : Arena := ⟨s2Step167CompleteRelocationMove0After.live∪{698},Finset.union_subset s2Step167CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step167CompleteRelocation_move0_owned : 812∈s2Step167ExitGvAfter.live := by norm_num [s2Step167ExitGvAfter,arenaWires]

private theorem s2Step167CompleteRelocation_move0_reserve : s2Step167ExitGvAfter.reserve {185}=some s2Step167CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step167ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step167CompleteRelocation_move0_retire : s2Step167CompleteRelocationMove0Borrowed.retireSet {812}=s2Step167CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step167CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step167CompleteRelocationMove0Borrowed,s2Step167ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step167CompleteRelocation_move1_owned : 787∈s2Step167CompleteRelocationMove0After.live := by norm_num [s2Step167CompleteRelocationMove0After,arenaWires]

private theorem s2Step167CompleteRelocation_move1_reserve : s2Step167CompleteRelocationMove0After.reserve {698}=some s2Step167CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step167CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step167CompleteRelocation_move1_retire : s2Step167CompleteRelocationMove1Borrowed.retireSet {787}=s2Step167EarlyControlArena := by
  unfold Arena.retireSet s2Step167EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step167CompleteRelocationMove1Borrowed,s2Step167CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step167CompleteRelocation_checked : s2Step167ExitGvAfter.checkRepack [(812,185),(787,698)]=some s2Step167EarlyControlArena := by
  have tail2 : s2Step167EarlyControlArena.checkRepack []=some s2Step167EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step167CompleteRelocationMove0After s2Step167CompleteRelocationMove1Borrowed s2Step167EarlyControlArena s2Step167EarlyControlArena 787 698 []
    s2Step167CompleteRelocation_move1_owned s2Step167CompleteRelocation_move1_reserve s2Step167CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step167ExitGvAfter s2Step167CompleteRelocationMove0Borrowed s2Step167CompleteRelocationMove0After s2Step167EarlyControlArena 812 185 [(787,698)]
    s2Step167CompleteRelocation_move0_owned s2Step167CompleteRelocation_move0_reserve s2Step167CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step167Complete_repack : s2Step167ExitGvAfter.checkRepack s2Step167CompleteMoves=some s2Step167EarlyControlArena := by
  simpa only [s2Step167CompleteMoves] using s2Step167CompleteRelocation_checked

private theorem s2Step167EarlyControl_branchOwned : ([799] : List Wire).toFinset⊆s2Step167EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step167EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167EarlyControl_branch : compileHmrBranchRetirement s2Step167EarlyControlSigmaArena 799=some s2Step167EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step167EarlyControl_branchOwned
  · ext q
    simp [s2Step167EarlyControlOutputArena,s2Step167EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step167EarlyControl_classEqualityBorrow : s2Step167EarlyControlPositiveArena.checkBorrow (([800, 785] : List Wire).length-1) s2Step167EarlyControlLog.classWork=some s2Step167EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step167EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step167EarlyControlPositiveArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step167EarlyControlEqualityArena,s2Step167EarlyControlPositiveArena,s2Step167EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step167EarlyControl_classEqualityOwned : ([800, 785] : List Wire).toFinset⊆s2Step167EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step167EarlyControlPositiveArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167EarlyControl_classEquality : compileHmrEqualityLog s2Step167EarlyControlPositiveArena [800, 785] 0 s2Step167EarlyControlLog.classWork=some (s2Step167EarlyControlEqualityArena,s2Step167EarlyControlLog.classWork,s2Step167EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step167EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step167EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step167EarlyControl_classOwned : ([777, 810, 800] : List Wire).toFinset⊆s2Step167EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step167EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167EarlyControl_positiveBorrow : s2Step167EarlyControlZeroArena.checkBorrow (1) s2Step167EarlyControlLog.positiveWork=some s2Step167EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step167EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step167EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step167EarlyControlPositiveArena,s2Step167EarlyControlZeroArena,s2Step167EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step167EarlyControl_class : compileHmrSourceClassLog s2Step167EarlyControlZeroArena false 777 s2Step167EarlyControlZeroPlan.top 0 800 s2Step167EarlyControlLog.positiveWork s2Step167EarlyControlLog.classWork=some s2Step167EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step167EarlyControlClassPlan s2Step167EarlyControlZeroArena false 777 s2Step167EarlyControlZeroPlan.top 0 800
  constructor
  · decide +kernel
  · exact s2Step167EarlyControl_classOwned
  · exact s2Step167EarlyControl_positiveBorrow
  · exact s2Step167EarlyControl_classEquality

private theorem s2Step167EarlyControl_entryRecordOwned : ([799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step167EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step167EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167EarlyControl_entrySigmaOwned : ([800, 254] : List Wire).toFinset⊆s2Step167EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step167EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167EarlyControl_fitBorrow : s2Step167EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step167EarlyControlLog.recordFresh=some s2Step167EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step167EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step167EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
      decide +kernel
    · ext q
      simp [s2Step167EarlyControlFittedArena,s2Step167EarlyControlFlagArena,s2Step167EarlyControlLog,arenaWires]

private theorem s2Step167EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step167EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step167EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step167EarlyControl_fit : compileHmrRecordGrowLog s2Step167EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step167EarlyControlLog.recordFresh=some s2Step167EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step167EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step167EarlyControl_fitBorrow

private theorem s2Step167EarlyControl_flagsBorrow : s2Step167EarlyControlEqualityArena.checkBorrow (6) s2Step167EarlyControlLog.flagWork=some s2Step167EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step167EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step167EarlyControlEqualityArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step167EarlyControlFlagArena,s2Step167EarlyControlEqualityArena,s2Step167EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step167EarlyControl_flagsOwned : ([867, 253, 252, 251] : List Wire).toFinset⊆s2Step167EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step167EarlyControlEqualityArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167EarlyControl_flags : compileHmrFlagsLog s2Step167EarlyControlClassPlan.equalityArena s2Step167EarlyControlClassPlan.equality.top 253 252 251 s2Step167EarlyControlLog.flagWork=some s2Step167EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step167EarlyControl_flagsOwned⟩
  · exact s2Step167EarlyControl_flagsBorrow

private theorem s2Step167EarlyControl_historyBorrow : s2Step167EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step167EarlyControlLog.recordFresh=some s2Step167EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step167EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step167EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step167EarlyControlHistoryArena,s2Step167EarlyControlArena,s2Step167EarlyControlLog,arenaWires]

private theorem s2Step167EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step167EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step167EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167EarlyControl_history : compileHmrRecordGrowLog s2Step167EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step167EarlyControlLog.recordFresh=some s2Step167EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step167EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step167EarlyControl_historyBorrow

private theorem s2Step167EarlyControl_sigmaOwned : ([254, 800] : List Wire).toFinset⊆s2Step167EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step167EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167EarlyControl_sigmaReleaseOwned : ([800] : List Wire).toFinset⊆s2Step167EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step167EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167EarlyControl_sigmaRelease : s2Step167EarlyControlHistoryArena.release {800} (fun _ => false)=some s2Step167EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step167EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step167EarlyControlSigmaArena,s2Step167EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step167EarlyControl_sigma : compileHmrSigmaDropLog s2Step167EarlyControlHistoryArena false 0 0 254 800 []=some s2Step167EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step167EarlyControl_sigmaOwned⟩
  · exact s2Step167EarlyControl_sigmaRelease

private theorem s2Step167EarlyControl_zeroBorrow : s2Step167EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step167EarlyControlLog.zeroWork=some s2Step167EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step167EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step167EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step167EarlyControlZeroArena,s2Step167EarlyControlArena,s2Step167EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step167EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step167EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step167EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167EarlyControl_zero : compileHmrEqualityLog s2Step167EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step167EarlyControlLog.zeroWork=some (s2Step167EarlyControlZeroArena,s2Step167EarlyControlLog.zeroWork,s2Step167EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step167EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step167EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step167EarlyControl_logged : s2Step167EarlyControlPlan.Logged s2Step167EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 800 254 253 252 251 799 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step167EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step167EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step167EarlyControl_zero
  · exact s2Step167EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step167EarlyControl_flags
  · exact s2Step167EarlyControl_fit
  · exact s2Step167EarlyControl_history
  · exact s2Step167EarlyControl_sigma
  · exact s2Step167EarlyControl_branch

private theorem s2Step167EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step167EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 800 254 253 252 251 799 42 s2Step167EarlyControlLog=some s2Step167EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step167EarlyControlPlan s2Step167EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 800 254 253 252 251 799 42 s2Step167EarlyControl_logged

private def s2Step167EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩

private def s2Step167EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩

private def s2Step167EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185],769⟩

private def s2Step167EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849],771⟩

private def s2Step167FrontBank : WindowBank := ⟨s2Step167EntryFRow,s2Step167EntryGRow,s2Step167EntryFvRow,s2Step167EntryGvRow⟩

private def s2Step167Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 793, 768]

private def s2Step167Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 810, 785, 769]

private def s2Step167Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803, 770]

private def s2Step167Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 847, 771]

private theorem s2Step167Counter_apart : Disjoint s2Step167HeadFvAfter.live s2Step167CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step167HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167Counter_borrowed : s2Step167HeadFvAfter.checkBorrow 4 s2Step167CounterWork=some s2Step167CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step167HeadFvAfter s2Step167CounterDuring s2Step167CounterWork.toFinset s2Step167Counter_bounded s2Step167Counter_apart rfl

private theorem s2Step167Counter_owned : (800::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step167HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step167HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167Counter_checked : compileHmrCounterStepLog s2Step167HeadFvAfter true 800 [772, 773, 774, 775, 776, 777] s2Step167CounterWork=some s2Step167CounterDuring := by
  have owned : ∀q∈800::[772, 773, 774, 775, 776, 777],q∈s2Step167HeadFvAfter.live := fun q hq => s2Step167Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step167Counter_borrowed

private def s2Step167EntryFAfter : Arena := s2Step167EntryFBefore

private theorem s2Step167EntryBank_incomingDistinct : ([s2Step167EntryFRow,s2Step167EntryGRow,s2Step167EntryFvRow,s2Step167EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167EntryF_Incoming : rowsOwned s2Step167EntryFBefore [s2Step167EntryFRow,s2Step167EntryGRow,s2Step167EntryFvRow,s2Step167EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step167EntryFRow,s2Step167EntryGRow,s2Step167EntryFvRow,s2Step167EntryGvRow] 0 s2Step167EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step167EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step167EntryBank_outgoingOwned : rowsOwned s2Step167EntryGvAfter [s2Step167EntryFOut,s2Step167EntryGOut,s2Step167EntryFvOut,s2Step167EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step167EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step167EntryF_Outgoing : rowsOwned s2Step167EntryGvAfter [s2Step167EntryFOut,s2Step167EntryGOut,s2Step167EntryFvOut,s2Step167EntryGvOut] :=
  hmrRows_owned_drop s2Step167EntryGvAfter [s2Step167EntryFOut,s2Step167EntryGOut,s2Step167EntryFvOut,s2Step167EntryGvOut] 0 s2Step167EntryBank_outgoingOwned

private theorem s2Step167EntryF_distinct : (s2Step167EntryFRow.sign::s2Step167EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167EntryF_owned : (s2Step167EntryFRow.sign::s2Step167EntryFRow.payload).toFinset⊆s2Step167EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step167EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167EntryF_reserved : s2Step167EntryFBefore.reserve s2Step167EntryFFresh.toFinset=some s2Step167EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step167EntryFFresh,arenaWires]
  · norm_num [s2Step167EntryFBefore,s2Step167EntryFFresh,arenaWires]
  · simp only [s2Step167EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step167EntryF_checked : planRowResizeLog s2Step167EntryFBefore s2Step167EntryFRow 187 s2Step167EntryFFresh=
    some (s2Step167EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩,growRow 768 s2Step167EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step167EntryFBefore s2Step167EntryFAfter s2Step167EntryFRow 187 s2Step167EntryFFresh
    s2Step167EntryF_distinct s2Step167EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step167EntryF_reserved
  have rowEq : WindowRow.mk (s2Step167EntryFRow.payload++s2Step167EntryFFresh) s2Step167EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step167EntryFvAfter : Arena := s2Step167EntryGAfter

private def s2Step167EntryFvBefore : Arena := s2Step167EntryGAfter

private theorem s2Step167EntryFv_Incoming : rowsOwned s2Step167EntryFvBefore [s2Step167EntryFvRow,s2Step167EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step167EntryFRow,s2Step167EntryGRow,s2Step167EntryFvRow,s2Step167EntryGvRow] 2 s2Step167EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step167EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step167EntryFv_Outgoing : rowsOwned s2Step167EntryGvAfter [s2Step167EntryFvOut,s2Step167EntryGvOut] :=
  hmrRows_owned_drop s2Step167EntryGvAfter [s2Step167EntryFOut,s2Step167EntryGOut,s2Step167EntryFvOut,s2Step167EntryGvOut] 2 s2Step167EntryBank_outgoingOwned

private theorem s2Step167EntryFv_distinct : (s2Step167EntryFvRow.sign::s2Step167EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167EntryFv_owned : (s2Step167EntryFvRow.sign::s2Step167EntryFvRow.payload).toFinset⊆s2Step167EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step167EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167EntryFv_reserved : s2Step167EntryFvBefore.reserve s2Step167EntryFvFresh.toFinset=some s2Step167EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step167EntryFvFresh,arenaWires]
  · norm_num [s2Step167EntryFvBefore,s2Step167EntryGAfter,s2Step167EntryFvFresh,arenaWires]
  · simp only [s2Step167EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step167EntryFv_checked : planRowResizeLog s2Step167EntryFvBefore s2Step167EntryFvRow 98 s2Step167EntryFvFresh=
    some (s2Step167EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩,growRow 770 s2Step167EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step167EntryFvBefore s2Step167EntryFvAfter s2Step167EntryFvRow 98 s2Step167EntryFvFresh
    s2Step167EntryFv_distinct s2Step167EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step167EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step167EntryFvRow.payload++s2Step167EntryFvFresh) s2Step167EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step167EntryGBefore : Arena := s2Step167EntryFBefore

private theorem s2Step167EntryG_Incoming : rowsOwned s2Step167EntryGBefore [s2Step167EntryGRow,s2Step167EntryFvRow,s2Step167EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step167EntryFRow,s2Step167EntryGRow,s2Step167EntryFvRow,s2Step167EntryGvRow] 1 s2Step167EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step167EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step167EntryG_Outgoing : rowsOwned s2Step167EntryGvAfter [s2Step167EntryGOut,s2Step167EntryFvOut,s2Step167EntryGvOut] :=
  hmrRows_owned_drop s2Step167EntryGvAfter [s2Step167EntryFOut,s2Step167EntryGOut,s2Step167EntryFvOut,s2Step167EntryGvOut] 1 s2Step167EntryBank_outgoingOwned

private theorem s2Step167EntryG_distinct : (s2Step167EntryGRow.sign::s2Step167EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167EntryG_owned : (s2Step167EntryGRow.sign::s2Step167EntryGRow.payload).toFinset⊆s2Step167EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step167EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167EntryG_reserved : s2Step167EntryGBefore.reserve s2Step167EntryGFresh.toFinset=some s2Step167EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step167EntryGFresh,arenaWires]
  · norm_num [s2Step167EntryGBefore,s2Step167EntryFBefore,s2Step167EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step167EntryGAfter,s2Step167EntryGBefore,s2Step167EntryFBefore,s2Step167EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step167EntryG_checked : planRowResizeLog s2Step167EntryGBefore s2Step167EntryGRow 187 s2Step167EntryGFresh=
    some (s2Step167EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 810],769⟩,growRow 769 s2Step167EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step167EntryGBefore s2Step167EntryGAfter s2Step167EntryGRow 187 s2Step167EntryGFresh
    s2Step167EntryG_distinct s2Step167EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step167EntryG_reserved
  have rowEq : WindowRow.mk (s2Step167EntryGRow.payload++s2Step167EntryGFresh) s2Step167EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 810],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step167EntryGvBefore : Arena := s2Step167EntryGAfter

private theorem s2Step167EntryGv_Incoming : rowsOwned s2Step167EntryGvBefore [s2Step167EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step167EntryFRow,s2Step167EntryGRow,s2Step167EntryFvRow,s2Step167EntryGvRow] 3 s2Step167EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step167EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step167EntryGv_Outgoing : rowsOwned s2Step167EntryGvAfter [s2Step167EntryGvOut] :=
  hmrRows_owned_drop s2Step167EntryGvAfter [s2Step167EntryFOut,s2Step167EntryGOut,s2Step167EntryFvOut,s2Step167EntryGvOut] 3 s2Step167EntryBank_outgoingOwned

private theorem s2Step167EntryGv_distinct : (s2Step167EntryGvRow.sign::s2Step167EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167EntryGv_owned : (s2Step167EntryGvRow.sign::s2Step167EntryGvRow.payload).toFinset⊆s2Step167EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step167EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167EntryGv_reserved : s2Step167EntryGvBefore.reserve s2Step167EntryGvFresh.toFinset=some s2Step167EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step167EntryGvFresh,arenaWires]
  · norm_num [s2Step167EntryGvBefore,s2Step167EntryGAfter,s2Step167EntryGvFresh,arenaWires]
  · simp only [s2Step167EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step167EntryGv_checked : planRowResizeLog s2Step167EntryGvBefore s2Step167EntryGvRow 98 s2Step167EntryGvFresh=
    some (s2Step167EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849],771⟩,growRow 771 s2Step167EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step167EntryGvBefore s2Step167EntryGvAfter s2Step167EntryGvRow 98 s2Step167EntryGvFresh
    s2Step167EntryGv_distinct s2Step167EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step167EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step167EntryGvRow.payload++s2Step167EntryGvFresh) s2Step167EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step167EntryBank_rows : planWindowRowsLog s2Step167EntryFBefore [(s2Step167EntryFRow,187),(s2Step167EntryGRow,187),(s2Step167EntryFvRow,98),(s2Step167EntryGvRow,98)] [s2Step167EntryFFresh,s2Step167EntryGFresh,s2Step167EntryFvFresh,s2Step167EntryGvFresh]=
    some (s2Step167EntryGvAfter,[s2Step167EntryFOut,s2Step167EntryGOut,s2Step167EntryFvOut,s2Step167EntryGvOut],(growRow 768 s2Step167EntryFFresh ++ (growRow 769 s2Step167EntryGFresh ++ (growRow 770 s2Step167EntryFvFresh ++ (growRow 771 s2Step167EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step167EntryGvAfter [] []=some (s2Step167EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step167EntryGvBefore s2Step167EntryGvAfter s2Step167EntryGvAfter
    s2Step167EntryGvRow s2Step167EntryGvOut 98 s2Step167EntryGvFresh [] [] []
    (growRow 771 s2Step167EntryGvFresh) ([]) s2Step167EntryGv_Incoming s2Step167EntryGv_checked h4 s2Step167EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step167EntryFvBefore s2Step167EntryFvAfter s2Step167EntryGvAfter
    s2Step167EntryFvRow s2Step167EntryFvOut 98 s2Step167EntryFvFresh [(s2Step167EntryGvRow,98)] [s2Step167EntryGvFresh] [s2Step167EntryGvOut]
    (growRow 770 s2Step167EntryFvFresh) ((growRow 771 s2Step167EntryGvFresh ++ [])) s2Step167EntryFv_Incoming s2Step167EntryFv_checked h3 s2Step167EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step167EntryGBefore s2Step167EntryGAfter s2Step167EntryGvAfter
    s2Step167EntryGRow s2Step167EntryGOut 187 s2Step167EntryGFresh [(s2Step167EntryFvRow,98),(s2Step167EntryGvRow,98)] [s2Step167EntryFvFresh,s2Step167EntryGvFresh] [s2Step167EntryFvOut,s2Step167EntryGvOut]
    (growRow 769 s2Step167EntryGFresh) ((growRow 770 s2Step167EntryFvFresh ++ (growRow 771 s2Step167EntryGvFresh ++ []))) s2Step167EntryG_Incoming s2Step167EntryG_checked h2 s2Step167EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step167EntryFBefore s2Step167EntryFAfter s2Step167EntryGvAfter
    s2Step167EntryFRow s2Step167EntryFOut 187 s2Step167EntryFFresh [(s2Step167EntryGRow,187),(s2Step167EntryFvRow,98),(s2Step167EntryGvRow,98)] [s2Step167EntryGFresh,s2Step167EntryFvFresh,s2Step167EntryGvFresh] [s2Step167EntryGOut,s2Step167EntryFvOut,s2Step167EntryGvOut]
    (growRow 768 s2Step167EntryFFresh) ((growRow 769 s2Step167EntryGFresh ++ (growRow 770 s2Step167EntryFvFresh ++ (growRow 771 s2Step167EntryGvFresh ++ [])))) s2Step167EntryF_Incoming s2Step167EntryF_checked h1 s2Step167EntryF_Outgoing
  exact h0

private theorem s2Step167EntryBank_checked : compileHmrBankResizeLog .entry s2Step167EntryFBefore ⟨s2Step167EntryFRow,s2Step167EntryGRow,s2Step167EntryFvRow,s2Step167EntryGvRow⟩ ⟨187,187,98,98⟩ [s2Step167EntryFFresh,s2Step167EntryGFresh,s2Step167EntryFvFresh,s2Step167EntryGvFresh]=
    some (s2Step167EntryGvAfter,⟨s2Step167EntryFOut,s2Step167EntryGOut,s2Step167EntryFvOut,s2Step167EntryGvOut⟩,(growRow 768 s2Step167EntryFFresh ++ (growRow 769 s2Step167EntryGFresh ++ (growRow 770 s2Step167EntryFvFresh ++ (growRow 771 s2Step167EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step167EntryBank_rows]
  rfl

private def s2Step167ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<185) ∨ (186≤q ∧ q<698) ∨ (699≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<185) ∨ (186≤q ∧ q<785) ∨ (786≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167ExitFBefore : Arena := s2Step167ExitGAfter

private def s2Step167ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 793],768⟩

private def s2Step167ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803],770⟩

private def s2Step167ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 810, 785],769⟩

private def s2Step167ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 847],771⟩

private theorem s2Step167ExitBank_incomingDistinct : ([s2Step167ExitGRow,s2Step167ExitFRow,s2Step167ExitFvRow,s2Step167ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167ExitF_Incoming : rowsOwned s2Step167ExitFBefore [s2Step167ExitFRow,s2Step167ExitFvRow,s2Step167ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step167ExitGRow,s2Step167ExitFRow,s2Step167ExitFvRow,s2Step167ExitGvRow] 1 s2Step167ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step167ExitFBefore (fun q => (0≤q ∧ q<185) ∨ (186≤q ∧ q<785) ∨ (786≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step167ExitBank_outgoingOwned : rowsOwned s2Step167ExitGvAfter [s2Step167ExitGOut,s2Step167ExitFOut,s2Step167ExitFvOut,s2Step167ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step167ExitGvAfter (fun q => (0≤q ∧ q<185) ∨ (186≤q ∧ q<698) ∨ (699≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step167ExitF_Outgoing : rowsOwned s2Step167ExitGvAfter [s2Step167ExitFOut,s2Step167ExitFvOut,s2Step167ExitGvOut] :=
  hmrRows_owned_drop s2Step167ExitGvAfter [s2Step167ExitGOut,s2Step167ExitFOut,s2Step167ExitFvOut,s2Step167ExitGvOut] 1 s2Step167ExitBank_outgoingOwned

private theorem s2Step167ExitF_distinct : (s2Step167ExitFRow.sign::s2Step167ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167ExitF_owned : (s2Step167ExitFRow.sign::s2Step167ExitFRow.payload).toFinset⊆s2Step167ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step167ExitFBefore (fun q => (0≤q ∧ q<185) ∨ (186≤q ∧ q<785) ∨ (786≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167ExitF_retired : s2Step167ExitFBefore.retireSet s2Step167ExitFExtra.toFinset=s2Step167ExitFAfter := by
  unfold Arena.retireSet s2Step167ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step167ExitFBefore,s2Step167ExitGAfter,s2Step167ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step167ExitF_checked : planRowResizeLog s2Step167ExitFBefore s2Step167ExitFRow 186 []=
    some (s2Step167ExitFAfter,s2Step167ExitFOut,shrinkRow 768 s2Step167ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step167ExitFBefore s2Step167ExitFRow 186 s2Step167ExitF_distinct s2Step167ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step167ExitFRow.payload.take 186) s2Step167ExitFRow.sign=s2Step167ExitFOut := by decide +kernel
  have hi : s2Step167ExitFRow.payload.drop 186=s2Step167ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step167ExitF_retired] at result
  exact result

private def s2Step167ExitFvAfter : Arena := s2Step167ExitFAfter

private def s2Step167ExitFvBefore : Arena := s2Step167ExitFAfter

private theorem s2Step167ExitFv_Incoming : rowsOwned s2Step167ExitFvBefore [s2Step167ExitFvRow,s2Step167ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step167ExitGRow,s2Step167ExitFRow,s2Step167ExitFvRow,s2Step167ExitGvRow] 2 s2Step167ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step167ExitFvBefore (fun q => (0≤q ∧ q<185) ∨ (186≤q ∧ q<698) ∨ (699≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step167ExitFv_Outgoing : rowsOwned s2Step167ExitGvAfter [s2Step167ExitFvOut,s2Step167ExitGvOut] :=
  hmrRows_owned_drop s2Step167ExitGvAfter [s2Step167ExitGOut,s2Step167ExitFOut,s2Step167ExitFvOut,s2Step167ExitGvOut] 2 s2Step167ExitBank_outgoingOwned

private theorem s2Step167ExitFv_distinct : (s2Step167ExitFvRow.sign::s2Step167ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167ExitFv_owned : (s2Step167ExitFvRow.sign::s2Step167ExitFvRow.payload).toFinset⊆s2Step167ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step167ExitFvBefore (fun q => (0≤q ∧ q<185) ∨ (186≤q ∧ q<698) ∨ (699≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167ExitFv_reserved : s2Step167ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step167ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step167ExitFv_checked : planRowResizeLog s2Step167ExitFvBefore s2Step167ExitFvRow 99 []=
    some (s2Step167ExitFvAfter,s2Step167ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step167ExitFvBefore s2Step167ExitFvAfter s2Step167ExitFvRow 99 []
    s2Step167ExitFv_distinct s2Step167ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step167ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step167ExitFvRow.payload++[]) s2Step167ExitFvRow.sign=s2Step167ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step167ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step167ExitG_Incoming : rowsOwned s2Step167ExitGBefore [s2Step167ExitGRow,s2Step167ExitFRow,s2Step167ExitFvRow,s2Step167ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step167ExitGRow,s2Step167ExitFRow,s2Step167ExitFvRow,s2Step167ExitGvRow] 0 s2Step167ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step167ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step167ExitG_Outgoing : rowsOwned s2Step167ExitGvAfter [s2Step167ExitGOut,s2Step167ExitFOut,s2Step167ExitFvOut,s2Step167ExitGvOut] :=
  hmrRows_owned_drop s2Step167ExitGvAfter [s2Step167ExitGOut,s2Step167ExitFOut,s2Step167ExitFvOut,s2Step167ExitGvOut] 0 s2Step167ExitBank_outgoingOwned

private theorem s2Step167ExitG_distinct : (s2Step167ExitGRow.sign::s2Step167ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167ExitG_owned : (s2Step167ExitGRow.sign::s2Step167ExitGRow.payload).toFinset⊆s2Step167ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step167ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167ExitG_retired : s2Step167ExitGBefore.retireSet s2Step167ExitGExtra.toFinset=s2Step167ExitGAfter := by
  unfold Arena.retireSet s2Step167ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step167ExitGBefore,s2Step167ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step167ExitG_checked : planRowResizeLog s2Step167ExitGBefore s2Step167ExitGRow 185 []=
    some (s2Step167ExitGAfter,s2Step167ExitGOut,shrinkRow 769 s2Step167ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step167ExitGBefore s2Step167ExitGRow 185 s2Step167ExitG_distinct s2Step167ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step167ExitGRow.payload.take 185) s2Step167ExitGRow.sign=s2Step167ExitGOut := by decide +kernel
  have hi : s2Step167ExitGRow.payload.drop 185=s2Step167ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step167ExitG_retired] at result
  exact result

private def s2Step167ExitGvBefore : Arena := s2Step167ExitFAfter

private theorem s2Step167ExitGv_Incoming : rowsOwned s2Step167ExitGvBefore [s2Step167ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step167ExitGRow,s2Step167ExitFRow,s2Step167ExitFvRow,s2Step167ExitGvRow] 3 s2Step167ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step167ExitGvBefore (fun q => (0≤q ∧ q<185) ∨ (186≤q ∧ q<698) ∨ (699≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step167ExitGv_Outgoing : rowsOwned s2Step167ExitGvAfter [s2Step167ExitGvOut] :=
  hmrRows_owned_drop s2Step167ExitGvAfter [s2Step167ExitGOut,s2Step167ExitFOut,s2Step167ExitFvOut,s2Step167ExitGvOut] 3 s2Step167ExitBank_outgoingOwned

private theorem s2Step167ExitGv_distinct : (s2Step167ExitGvRow.sign::s2Step167ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167ExitGv_owned : (s2Step167ExitGvRow.sign::s2Step167ExitGvRow.payload).toFinset⊆s2Step167ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step167ExitGvBefore (fun q => (0≤q ∧ q<185) ∨ (186≤q ∧ q<698) ∨ (699≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167ExitGv_retired : s2Step167ExitGvBefore.retireSet s2Step167ExitGvExtra.toFinset=s2Step167ExitGvAfter := by
  unfold Arena.retireSet s2Step167ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step167ExitGvBefore,s2Step167ExitFAfter,s2Step167ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step167ExitGv_checked : planRowResizeLog s2Step167ExitGvBefore s2Step167ExitGvRow 98 []=
    some (s2Step167ExitGvAfter,s2Step167ExitGvOut,shrinkRow 771 s2Step167ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step167ExitGvBefore s2Step167ExitGvRow 98 s2Step167ExitGv_distinct s2Step167ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step167ExitGvRow.payload.take 98) s2Step167ExitGvRow.sign=s2Step167ExitGvOut := by decide +kernel
  have hi : s2Step167ExitGvRow.payload.drop 98=s2Step167ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step167ExitGv_retired] at result
  exact result

private theorem s2Step167ExitBank_rows : planWindowRowsLog s2Step167ExitGBefore [(s2Step167ExitGRow,185),(s2Step167ExitFRow,186),(s2Step167ExitFvRow,99),(s2Step167ExitGvRow,98)] [[],[],[],[]]=
    some (s2Step167ExitGvAfter,[s2Step167ExitGOut,s2Step167ExitFOut,s2Step167ExitFvOut,s2Step167ExitGvOut],(shrinkRow 769 s2Step167ExitGExtra ++ (shrinkRow 768 s2Step167ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step167ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step167ExitGvAfter [] []=some (s2Step167ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step167ExitGvBefore s2Step167ExitGvAfter s2Step167ExitGvAfter
    s2Step167ExitGvRow s2Step167ExitGvOut 98 [] [] [] []
    (shrinkRow 771 s2Step167ExitGvExtra) ([]) s2Step167ExitGv_Incoming s2Step167ExitGv_checked h4 s2Step167ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step167ExitFvBefore s2Step167ExitFvAfter s2Step167ExitGvAfter
    s2Step167ExitFvRow s2Step167ExitFvOut 99 [] [(s2Step167ExitGvRow,98)] [[]] [s2Step167ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step167ExitGvExtra ++ [])) s2Step167ExitFv_Incoming s2Step167ExitFv_checked h3 s2Step167ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step167ExitFBefore s2Step167ExitFAfter s2Step167ExitGvAfter
    s2Step167ExitFRow s2Step167ExitFOut 186 [] [(s2Step167ExitFvRow,99),(s2Step167ExitGvRow,98)] [[],[]] [s2Step167ExitFvOut,s2Step167ExitGvOut]
    (shrinkRow 768 s2Step167ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step167ExitGvExtra ++ []))) s2Step167ExitF_Incoming s2Step167ExitF_checked h2 s2Step167ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step167ExitGBefore s2Step167ExitGAfter s2Step167ExitGvAfter
    s2Step167ExitGRow s2Step167ExitGOut 185 [] [(s2Step167ExitFRow,186),(s2Step167ExitFvRow,99),(s2Step167ExitGvRow,98)] [[],[],[]] [s2Step167ExitFOut,s2Step167ExitFvOut,s2Step167ExitGvOut]
    (shrinkRow 769 s2Step167ExitGExtra) ((shrinkRow 768 s2Step167ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step167ExitGvExtra ++ [])))) s2Step167ExitG_Incoming s2Step167ExitG_checked h1 s2Step167ExitG_Outgoing
  exact h0

private theorem s2Step167ExitBank_checked : compileHmrBankResizeLog .exit s2Step167ExitGBefore ⟨s2Step167ExitFRow,s2Step167ExitGRow,s2Step167ExitFvRow,s2Step167ExitGvRow⟩ ⟨186,185,99,98⟩ [[],[],[],[]]=
    some (s2Step167ExitGvAfter,⟨s2Step167ExitFOut,s2Step167ExitGOut,s2Step167ExitFvOut,s2Step167ExitGvOut⟩,(shrinkRow 769 s2Step167ExitGExtra ++ (shrinkRow 768 s2Step167ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step167ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step167ExitBank_rows]
  rfl

private theorem s2Step167Add0_apart : Disjoint s2Step167Add0Arena.live s2Step167Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step167Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167Add0_card : s2Step167Add0Arena.live.card=886 := by
  decide +kernel

private theorem s2Step167Add0_borrowed : s2Step167Add0Arena.checkBorrow (hmrHybridCount s2Step167Add0Arena s2Step167Add0B.length) s2Step167Add0Work=some s2Step167Add0During := by
  have len : s2Step167Add0Work.length=hmrHybridCount s2Step167Add0Arena s2Step167Add0B.length := by
    rw [hmrHybridCount,s2Step167Add0_card]
    decide +kernel
  have nd : s2Step167Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step167Add0Arena s2Step167Add0During s2Step167Add0Work.toFinset s2Step167Add0_bounded s2Step167Add0_apart rfl

private theorem s2Step167Add0_distinct : (867::799::877::(s2Step167Add0A++s2Step167Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167Add0_owned : (867::799::877::(s2Step167Add0A++s2Step167Add0B)).toFinset⊆s2Step167Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step167Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167Add0_checked : compileHmrHybridCinLog s2Step167Add0Arena 799 867 877 s2Step167Add0A s2Step167Add0B s2Step167Add0Work=some s2Step167Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step167Add0Arena s2Step167Add0During 799 867 877 s2Step167Add0A s2Step167Add0B s2Step167Add0Work
    (by decide +kernel) (by decide +kernel) s2Step167Add0_distinct
    (fun q hq => s2Step167Add0_owned (List.mem_toFinset.mpr hq)) s2Step167Add0_borrowed

private theorem s2Step167Add1_apart : Disjoint s2Step167Add1Arena.live s2Step167Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step167Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167Add1_card : s2Step167Add1Arena.live.card=886 := by
  decide +kernel

private theorem s2Step167Add1_borrowed : s2Step167Add1Arena.checkBorrow (hmrHybridCount s2Step167Add1Arena s2Step167Add1B.length) s2Step167Add1Work=some s2Step167Add1During := by
  have len : s2Step167Add1Work.length=hmrHybridCount s2Step167Add1Arena s2Step167Add1B.length := by
    rw [hmrHybridCount,s2Step167Add1_card]
    decide +kernel
  have nd : s2Step167Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step167Add1Arena s2Step167Add1During s2Step167Add1Work.toFinset s2Step167Add1_bounded s2Step167Add1_apart rfl

private theorem s2Step167Add1_distinct : (867::799::877::(s2Step167Add1A++s2Step167Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167Add1_owned : (867::799::877::(s2Step167Add1A++s2Step167Add1B)).toFinset⊆s2Step167Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step167Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167Add1_checked : compileHmrHybridCinLog s2Step167Add1Arena 799 867 877 s2Step167Add1A s2Step167Add1B s2Step167Add1Work=some s2Step167Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step167Add1Arena s2Step167Add1During 799 867 877 s2Step167Add1A s2Step167Add1B s2Step167Add1Work
    (by decide +kernel) (by decide +kernel) s2Step167Add1_distinct
    (fun q hq => s2Step167Add1_owned (List.mem_toFinset.mpr hq)) s2Step167Add1_borrowed

private theorem s2Step167F4_apart : Disjoint (s2Step167Add0A++s2Step167Add0B).toFinset (s2Step167Add1A++s2Step167Add1B).toFinset := by
  have nd : ((s2Step167Add0A++s2Step167Add0B)++(s2Step167Add1A++s2Step167Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step167F4_carry : s2Step167F4FlagArena.checkBorrow 1 [877]=some s2Step167Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step167F4FlagArena,s2Step167HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step167F4FlagArena,s2Step167HeadFvAfter,s2Step167Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step167F4_distinct : (800::799::867::877::((s2Step167Add0A++s2Step167Add1A)++(s2Step167Add0B++s2Step167Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167F4_flag : s2Step167HeadFvAfter.checkBorrow 1 [867]=some s2Step167F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step167HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step167F4_owned : (800::799::((s2Step167Add0A++s2Step167Add1A)++(s2Step167Add0B++s2Step167Add1B))).toFinset⊆s2Step167HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step167HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167F4_checked : compileHmrHybridF4Log s2Step167HeadFvAfter 800 799 s2Step167Add0A s2Step167Add0B s2Step167Add1A s2Step167Add1B [867] [877] s2Step167Add0Work s2Step167Add1Work=some s2Step167F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step167HeadFvAfter s2Step167F4FlagArena s2Step167Add0Arena s2Step167Add0During s2Step167Add1During 800 799
    s2Step167Add0A s2Step167Add0B s2Step167Add1A s2Step167Add1B [867] [877] s2Step167Add0Work s2Step167Add1Work
    (fun q hq => s2Step167F4_owned (List.mem_toFinset.mpr hq)) s2Step167F4_flag s2Step167F4_carry
    s2Step167F4_distinct s2Step167F4_apart s2Step167Add0_checked s2Step167Add1_checked

private theorem s2Step167Front_branch : s2Step167FrontSigmaArena.checkBorrow 1 [799]=some s2Step167HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step167FrontSigmaArena,s2Step167EntryGvAfter,s2Step167EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step167FrontSigmaArena,s2Step167EntryGvAfter,s2Step167EntryGAfter,s2Step167HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step167Front_entry : HmrFrontEntryValid s2Step167EntryFBefore s2Step167FrontBank 187 98 ⟨186,185,99,98⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step167FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step167EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step167EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step167FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step167Front_sigma : s2Step167EntryGvAfter.checkBorrow 1 [800]=some s2Step167FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step167EntryGvAfter,s2Step167EntryGAfter,arenaWires]
  · rfl

private def s2Step167HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167HeadFBefore : Arena := s2Step167HeadGAfter

private def s2Step167HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698],768⟩

private def s2Step167HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩

private def s2Step167HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 810],769⟩

private def s2Step167HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849],771⟩

private theorem s2Step167HeadBank_incomingDistinct : ([s2Step167HeadGRow,s2Step167HeadFRow,s2Step167HeadGvRow,s2Step167HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167HeadF_Incoming : rowsOwned s2Step167HeadFBefore [s2Step167HeadFRow,s2Step167HeadGvRow,s2Step167HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step167HeadGRow,s2Step167HeadFRow,s2Step167HeadGvRow,s2Step167HeadFvRow] 1 s2Step167HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step167HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step167HeadBank_outgoingOwned : rowsOwned s2Step167HeadFvAfter [s2Step167HeadGOut,s2Step167HeadFOut,s2Step167HeadGvOut,s2Step167HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step167HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step167HeadF_Outgoing : rowsOwned s2Step167HeadFvAfter [s2Step167HeadFOut,s2Step167HeadGvOut,s2Step167HeadFvOut] :=
  hmrRows_owned_drop s2Step167HeadFvAfter [s2Step167HeadGOut,s2Step167HeadFOut,s2Step167HeadGvOut,s2Step167HeadFvOut] 1 s2Step167HeadBank_outgoingOwned

private theorem s2Step167HeadF_distinct : (s2Step167HeadFRow.sign::s2Step167HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167HeadF_owned : (s2Step167HeadFRow.sign::s2Step167HeadFRow.payload).toFinset⊆s2Step167HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step167HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167HeadF_reserved : s2Step167HeadFBefore.reserve s2Step167HeadFFresh.toFinset=some s2Step167HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step167HeadFFresh,arenaWires]
  · norm_num [s2Step167HeadFBefore,s2Step167HeadGAfter,s2Step167HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step167HeadFAfter,s2Step167HeadFBefore,s2Step167HeadGAfter,s2Step167HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step167HeadF_checked : planRowResizeLog s2Step167HeadFBefore s2Step167HeadFRow 188 s2Step167HeadFFresh=
    some (s2Step167HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 793],768⟩,growRow 768 s2Step167HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step167HeadFBefore s2Step167HeadFAfter s2Step167HeadFRow 188 s2Step167HeadFFresh
    s2Step167HeadF_distinct s2Step167HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step167HeadF_reserved
  have rowEq : WindowRow.mk (s2Step167HeadFRow.payload++s2Step167HeadFFresh) s2Step167HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 793],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step167HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step167HeadFvBefore : Arena := s2Step167HeadGvAfter

private theorem s2Step167HeadFv_Incoming : rowsOwned s2Step167HeadFvBefore [s2Step167HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step167HeadGRow,s2Step167HeadFRow,s2Step167HeadGvRow,s2Step167HeadFvRow] 3 s2Step167HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step167HeadFvBefore (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step167HeadFv_Outgoing : rowsOwned s2Step167HeadFvAfter [s2Step167HeadFvOut] :=
  hmrRows_owned_drop s2Step167HeadFvAfter [s2Step167HeadGOut,s2Step167HeadFOut,s2Step167HeadGvOut,s2Step167HeadFvOut] 3 s2Step167HeadBank_outgoingOwned

private theorem s2Step167HeadFv_distinct : (s2Step167HeadFvRow.sign::s2Step167HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167HeadFv_owned : (s2Step167HeadFvRow.sign::s2Step167HeadFvRow.payload).toFinset⊆s2Step167HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step167HeadFvBefore (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167HeadFv_reserved : s2Step167HeadFvBefore.reserve s2Step167HeadFvFresh.toFinset=some s2Step167HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step167HeadFvFresh,arenaWires]
  · norm_num [s2Step167HeadFvBefore,s2Step167HeadGvAfter,s2Step167HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step167HeadFvAfter,s2Step167HeadFvBefore,s2Step167HeadGvAfter,s2Step167HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step167HeadFv_checked : planRowResizeLog s2Step167HeadFvBefore s2Step167HeadFvRow 99 s2Step167HeadFvFresh=
    some (s2Step167HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803],770⟩,growRow 770 s2Step167HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step167HeadFvBefore s2Step167HeadFvAfter s2Step167HeadFvRow 99 s2Step167HeadFvFresh
    s2Step167HeadFv_distinct s2Step167HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step167HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step167HeadFvRow.payload++s2Step167HeadFvFresh) s2Step167HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step167HeadG_Incoming : rowsOwned s2Step167HeadGBefore [s2Step167HeadGRow,s2Step167HeadFRow,s2Step167HeadGvRow,s2Step167HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step167HeadGRow,s2Step167HeadFRow,s2Step167HeadGvRow,s2Step167HeadFvRow] 0 s2Step167HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step167HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step167HeadG_Outgoing : rowsOwned s2Step167HeadFvAfter [s2Step167HeadGOut,s2Step167HeadFOut,s2Step167HeadGvOut,s2Step167HeadFvOut] :=
  hmrRows_owned_drop s2Step167HeadFvAfter [s2Step167HeadGOut,s2Step167HeadFOut,s2Step167HeadGvOut,s2Step167HeadFvOut] 0 s2Step167HeadBank_outgoingOwned

private theorem s2Step167HeadG_distinct : (s2Step167HeadGRow.sign::s2Step167HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167HeadG_owned : (s2Step167HeadGRow.sign::s2Step167HeadGRow.payload).toFinset⊆s2Step167HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step167HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167HeadG_reserved : s2Step167HeadGBefore.reserve s2Step167HeadGFresh.toFinset=some s2Step167HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step167HeadGFresh,arenaWires]
  · norm_num [s2Step167HeadGBefore,s2Step167HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step167HeadGAfter,s2Step167HeadGBefore,s2Step167HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step167HeadG_checked : planRowResizeLog s2Step167HeadGBefore s2Step167HeadGRow 188 s2Step167HeadGFresh=
    some (s2Step167HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 810, 785],769⟩,growRow 769 s2Step167HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step167HeadGBefore s2Step167HeadGAfter s2Step167HeadGRow 188 s2Step167HeadGFresh
    s2Step167HeadG_distinct s2Step167HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step167HeadG_reserved
  have rowEq : WindowRow.mk (s2Step167HeadGRow.payload++s2Step167HeadGFresh) s2Step167HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 810, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step167HeadGvBefore : Arena := s2Step167HeadFAfter

private theorem s2Step167HeadGv_Incoming : rowsOwned s2Step167HeadGvBefore [s2Step167HeadGvRow,s2Step167HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step167HeadGRow,s2Step167HeadFRow,s2Step167HeadGvRow,s2Step167HeadFvRow] 2 s2Step167HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step167HeadGvBefore (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step167HeadGv_Outgoing : rowsOwned s2Step167HeadFvAfter [s2Step167HeadGvOut,s2Step167HeadFvOut] :=
  hmrRows_owned_drop s2Step167HeadFvAfter [s2Step167HeadGOut,s2Step167HeadFOut,s2Step167HeadGvOut,s2Step167HeadFvOut] 2 s2Step167HeadBank_outgoingOwned

private theorem s2Step167HeadGv_distinct : (s2Step167HeadGvRow.sign::s2Step167HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step167HeadGv_owned : (s2Step167HeadGvRow.sign::s2Step167HeadGvRow.payload).toFinset⊆s2Step167HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step167HeadGvBefore (fun q => (0≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step167HeadGv_reserved : s2Step167HeadGvBefore.reserve s2Step167HeadGvFresh.toFinset=some s2Step167HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step167HeadGvFresh,arenaWires]
  · norm_num [s2Step167HeadGvBefore,s2Step167HeadFAfter,s2Step167HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step167HeadGvAfter,s2Step167HeadGvBefore,s2Step167HeadFAfter,s2Step167HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step167HeadGv_checked : planRowResizeLog s2Step167HeadGvBefore s2Step167HeadGvRow 99 s2Step167HeadGvFresh=
    some (s2Step167HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 847],771⟩,growRow 771 s2Step167HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step167HeadGvBefore s2Step167HeadGvAfter s2Step167HeadGvRow 99 s2Step167HeadGvFresh
    s2Step167HeadGv_distinct s2Step167HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step167HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step167HeadGvRow.payload++s2Step167HeadGvFresh) s2Step167HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 847],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step167HeadBank_rows : planWindowRowsLog s2Step167HeadGBefore [(s2Step167HeadGRow,188),(s2Step167HeadFRow,188),(s2Step167HeadGvRow,99),(s2Step167HeadFvRow,99)] [s2Step167HeadGFresh,s2Step167HeadFFresh,s2Step167HeadGvFresh,s2Step167HeadFvFresh]=
    some (s2Step167HeadFvAfter,[s2Step167HeadGOut,s2Step167HeadFOut,s2Step167HeadGvOut,s2Step167HeadFvOut],(growRow 769 s2Step167HeadGFresh ++ (growRow 768 s2Step167HeadFFresh ++ (growRow 771 s2Step167HeadGvFresh ++ (growRow 770 s2Step167HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step167HeadFvAfter [] []=some (s2Step167HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step167HeadFvBefore s2Step167HeadFvAfter s2Step167HeadFvAfter
    s2Step167HeadFvRow s2Step167HeadFvOut 99 s2Step167HeadFvFresh [] [] []
    (growRow 770 s2Step167HeadFvFresh) ([]) s2Step167HeadFv_Incoming s2Step167HeadFv_checked h4 s2Step167HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step167HeadGvBefore s2Step167HeadGvAfter s2Step167HeadFvAfter
    s2Step167HeadGvRow s2Step167HeadGvOut 99 s2Step167HeadGvFresh [(s2Step167HeadFvRow,99)] [s2Step167HeadFvFresh] [s2Step167HeadFvOut]
    (growRow 771 s2Step167HeadGvFresh) ((growRow 770 s2Step167HeadFvFresh ++ [])) s2Step167HeadGv_Incoming s2Step167HeadGv_checked h3 s2Step167HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step167HeadFBefore s2Step167HeadFAfter s2Step167HeadFvAfter
    s2Step167HeadFRow s2Step167HeadFOut 188 s2Step167HeadFFresh [(s2Step167HeadGvRow,99),(s2Step167HeadFvRow,99)] [s2Step167HeadGvFresh,s2Step167HeadFvFresh] [s2Step167HeadGvOut,s2Step167HeadFvOut]
    (growRow 768 s2Step167HeadFFresh) ((growRow 771 s2Step167HeadGvFresh ++ (growRow 770 s2Step167HeadFvFresh ++ []))) s2Step167HeadF_Incoming s2Step167HeadF_checked h2 s2Step167HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step167HeadGBefore s2Step167HeadGAfter s2Step167HeadFvAfter
    s2Step167HeadGRow s2Step167HeadGOut 188 s2Step167HeadGFresh [(s2Step167HeadFRow,188),(s2Step167HeadGvRow,99),(s2Step167HeadFvRow,99)] [s2Step167HeadFFresh,s2Step167HeadGvFresh,s2Step167HeadFvFresh] [s2Step167HeadFOut,s2Step167HeadGvOut,s2Step167HeadFvOut]
    (growRow 769 s2Step167HeadGFresh) ((growRow 768 s2Step167HeadFFresh ++ (growRow 771 s2Step167HeadGvFresh ++ (growRow 770 s2Step167HeadFvFresh ++ [])))) s2Step167HeadG_Incoming s2Step167HeadG_checked h1 s2Step167HeadG_Outgoing
  exact h0

private theorem s2Step167HeadBank_checked : compileHmrBankResizeLog .headroom s2Step167HeadGBefore ⟨s2Step167HeadFRow,s2Step167HeadGRow,s2Step167HeadFvRow,s2Step167HeadGvRow⟩ ⟨188,188,99,99⟩ [s2Step167HeadGFresh,s2Step167HeadFFresh,s2Step167HeadGvFresh,s2Step167HeadFvFresh]=
    some (s2Step167HeadFvAfter,⟨s2Step167HeadFOut,s2Step167HeadGOut,s2Step167HeadFvOut,s2Step167HeadGvOut⟩,(growRow 769 s2Step167HeadGFresh ++ (growRow 768 s2Step167HeadFFresh ++ (growRow 771 s2Step167HeadGvFresh ++ (growRow 770 s2Step167HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step167HeadBank_rows]
  rfl

private theorem s2Step167Front_checked : compileHmrSourceFrontLog s2Step167EntryFBefore s2Step167FrontBank 187 98 ⟨186,185,99,98⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step167FrontLog=some s2Step167FrontPlan := by
  have pairEq : s2Step167FrontPair=⟨s2Step167HeadFRow,s2Step167HeadGRow,s2Step167HeadFvRow,s2Step167HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step167FrontHead=⟨s2Step167ExitFRow,s2Step167ExitGRow,s2Step167ExitFvRow,s2Step167ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step167Add0A=s2Step167FrontHead.f.wires := by decide +kernel
  have gEq : s2Step167Add0B=s2Step167FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step167Add1A=s2Step167FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step167Add1B=s2Step167FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step167EntryFBefore s2Step167FrontBank 187 98 ⟨186,185,99,98⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step167FrontLog s2Step167FrontPlan
  · exact s2Step167Front_entry
  · exact s2Step167EntryBank_checked
  · exact s2Step167Front_sigma
  · rfl
  · exact s2Step167Front_branch
  · rfl
  · simpa only [s2Step167FrontPlan,pairEq] using s2Step167HeadBank_checked
  · simpa only [s2Step167FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step167F4_checked
  · exact s2Step167Counter_checked
  · rfl
  · simpa only [s2Step167FrontPlan,headEq] using s2Step167ExitBank_checked

private theorem s2Step167Complete_explicit_checked : compileHmrEarlyStepLog s2Step167EntryFBefore s2Step167FrontBank 187 98 ⟨186,185,99,98⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step167CompleteLog=some s2Step167CompletePlan := by
  let Q := s2Step167EarlyControlPlan
  have hq := s2Step167EarlyControl_plan_checked
  have fv1 : s2Step167CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step167CompleteOut.fv.payload[2]?.getD s2Step167CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step167CompleteOut.fv.payload[3]?.getD s2Step167CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step167CompleteOut.fv.payload[4]?.getD s2Step167CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step167EntryFBefore s2Step167EarlyControlArena s2Step167FrontBank 187 98 ⟨186,185,99,98⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step167CompleteLog s2Step167FrontPlan Q
    s2Step167Front_checked s2Step167Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step167Complete_owned s2Step167Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step167EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 800 s2Step167CompleteOut.fv.second (s2Step167CompleteOut.fv.payload[2]?.getD s2Step167CompleteOut.fv.sign) (s2Step167CompleteOut.fv.payload[3]?.getD s2Step167CompleteOut.fv.sign) (s2Step167CompleteOut.fv.payload[4]?.getD s2Step167CompleteOut.fv.sign) 799 42 s2Step167EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep167Arena : Arena := s2Step167EntryFBefore
def s2PrivateStep167Bank : WindowBank := s2Step167FrontBank
def s2PrivateStep167Spec : HmrSourceWalkStepLog := ⟨187,98,⟨186,185,99,98⟩,42,.early s2Step167CompleteLog⟩
def s2PrivateStep167Plan : HmrSourceStepPlan := .early s2Step167CompletePlan
theorem s2PrivateStep167_source : s2PrivateStep167Spec=s2ObservedLogs160[7] := rfl
theorem s2PrivateStep167_checked : compileHmrSourceStepLog s2PrivateStep167Arena s2PrivateStep167Bank
    s2PrivateStep167Spec.fgWidth s2PrivateStep167Spec.vWidth s2PrivateStep167Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 167 s2PrivateStep167Spec.need none s2PrivateStep167Spec.log=some s2PrivateStep167Plan := by
  change compileHmrSourceStepLog s2Step167EntryFBefore s2Step167FrontBank 187 98 ⟨186,185,99,98⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 167 42 none (.early s2Step167CompleteLog)=some (.early s2Step167CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 167<498)]
  rw [s2Step167Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
