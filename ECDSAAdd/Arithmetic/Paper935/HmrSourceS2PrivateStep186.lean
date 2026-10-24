import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep184
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

private def s2Step186CompleteMoves : List (Wire × Wire) := []

private def s2Step186EarlyControlLog : HmrEarlyControlLog := ⟨[825, 807, 794, 824, 803],[799],[867],[877, 879, 882, 885, 890, 891],[]⟩

private def s2Step186FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [794], [], []],[[824], [807], [825], [846]],[[], [], [], []]⟩,[802],[840],[803],[799],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[803, 799, 867, 877]⟩

private def s2Step186CompleteLog : HmrEarlyStepLog := ⟨s2Step186FrontLog,s2Step186CompleteMoves,s2Step186EarlyControlLog⟩

private def s2Step186ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩

private def s2Step186ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846],770⟩

private def s2Step186ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175],769⟩

private def s2Step186ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831],771⟩

private def s2Step186FrontOut : WindowBank := ⟨s2Step186ExitFOut,s2Step186ExitGOut,s2Step186ExitFvOut,s2Step186ExitGvOut⟩

private def s2Step186CompleteOut : WindowBank := s2Step186FrontOut.repacked s2Step186CompleteMoves

private def s2Step186EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step186EarlyControlPositiveArena,[799],s2Step186EarlyControlEqualityArena,[867],⟨⟨802,false⟩,[⟨⟨799,false⟩,867⟩]⟩⟩

private def s2Step186EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<892)),Finset.filter_subset _ _⟩

private def s2Step186EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<892)),Finset.filter_subset _ _⟩

private def s2Step186EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,825⟩,⟨⟨774,false⟩,807⟩,⟨⟨775,false⟩,794⟩,⟨⟨776,false⟩,824⟩,⟨⟨777,false⟩,803⟩]⟩

private def s2Step186EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step186EarlyControlZeroArena,s2Step186EarlyControlZeroPlan,s2Step186EarlyControlClassPlan,s2Step186EarlyControlFlagArena,s2Step186EarlyControlFittedArena,s2Step186EarlyControlHistoryArena,s2Step186EarlyControlSigmaArena,s2Step186EarlyControlOutputArena,s2Step186EarlyControlLog⟩

private def s2Step186CounterWork : List Wire := [803, 799, 867, 877]

private theorem s2Step186Counter_bounded : s2Step186CounterWork.toFinset⊆arenaWires := by norm_num [s2Step186CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step186HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186CounterDuring : Arena := ⟨s2Step186HeadFvAfter.live∪s2Step186CounterWork.toFinset,Finset.union_subset s2Step186HeadFvAfter.bounded s2Step186Counter_bounded⟩

private def s2Step186EntryFFresh : List Wire := []

private def s2Step186EntryFvFresh : List Wire := []

private def s2Step186EntryGFresh : List Wire := [794]

private def s2Step186EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186EntryGvAfter : Arena := s2Step186EntryGAfter

private def s2Step186EntryGvFresh : List Wire := []

private def s2Step186ExitFExtra : List Wire := [807]

private def s2Step186ExitGExtra : List Wire := [794, 824]

private def s2Step186ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186ExitGvExtra : List Wire := [825]

private def s2Step186Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186Add0Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step186Add0_bounded : s2Step186Add0Work.toFinset⊆arenaWires := by
  have h : s2Step186Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step186Add0During : Arena := ⟨s2Step186Add0Arena.live∪s2Step186Add0Work.toFinset,Finset.union_subset s2Step186Add0Arena.bounded s2Step186Add0_bounded⟩

private def s2Step186Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186Add1Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step186Add1_bounded : s2Step186Add1Work.toFinset⊆arenaWires := by
  have h : s2Step186Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step186Add1During : Arena := ⟨s2Step186Add1Arena.live∪s2Step186Add1Work.toFinset,Finset.union_subset s2Step186Add1Arena.bounded s2Step186Add1_bounded⟩

private def s2Step186F4FlagArena : Arena := ⟨s2Step186HeadFvAfter.live∪{803},Finset.union_subset s2Step186HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step186F4Plan : HmrHybridF4Plan := ⟨s2Step186F4FlagArena,[803],s2Step186Add0Arena,[799],s2Step186Add0During,s2Step186Add0Work,s2Step186Add1During,s2Step186Add1Work⟩

private def s2Step186HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 807],768⟩

private def s2Step186HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846],770⟩

private def s2Step186HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 794, 824],769⟩

private def s2Step186HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 825],771⟩

private def s2Step186FrontHead : WindowBank := ⟨s2Step186HeadFOut,s2Step186HeadGOut,s2Step186HeadFvOut,s2Step186HeadGvOut⟩

private def s2Step186EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩

private def s2Step186EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830],770⟩

private def s2Step186EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 794],769⟩

private def s2Step186EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831],771⟩

private def s2Step186FrontPair : WindowBank := ⟨s2Step186EntryFOut,s2Step186EntryGOut,s2Step186EntryFvOut,s2Step186EntryGvOut⟩

private def s2Step186FrontSigmaArena : Arena := ⟨s2Step186EntryGvAfter.live∪{802},Finset.union_subset s2Step186EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step186HeadFFresh : List Wire := [807]

private def s2Step186HeadFvFresh : List Wire := [846]

private def s2Step186HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186HeadGFresh : List Wire := [824]

private def s2Step186HeadGvFresh : List Wire := [825]

private def s2Step186FrontPlan : HmrSourceFront := ⟨s2Step186EntryGvAfter,s2Step186FrontPair,(growRow 768 s2Step186EntryFFresh ++ (growRow 769 s2Step186EntryGFresh ++ (growRow 770 s2Step186EntryFvFresh ++ (growRow 771 s2Step186EntryGvFresh ++ [])))),s2Step186FrontSigmaArena,[802],s2Step186HeadGBefore,[840],
  s2Step186HeadFvAfter,s2Step186FrontHead,(growRow 769 s2Step186HeadGFresh ++ (growRow 768 s2Step186HeadFFresh ++ (growRow 771 s2Step186HeadGvFresh ++ (growRow 770 s2Step186HeadFvFresh ++ [])))),s2Step186F4Plan,s2Step186CounterDuring,s2Step186CounterWork,s2Step186ExitGvAfter,s2Step186FrontOut,(shrinkRow 769 s2Step186ExitGExtra ++ (shrinkRow 768 s2Step186ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step186ExitGvExtra ++ []))))⟩

private def s2Step186CompletePlan : HmrEarlyStepPlan := ⟨s2Step186FrontPlan,s2Step186EarlyControlArena,s2Step186EarlyControlPlan,s2Step186CompleteMoves⟩

private theorem s2Step186Complete_apart : List.Disjoint (s2Step186CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [802, 840, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] := by
  have nd : ((s2Step186CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[802, 840, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step186Complete_owned : (s2Step186CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step186EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step186EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186Complete_repack : s2Step186ExitGvAfter.checkRepack s2Step186CompleteMoves=some s2Step186EarlyControlArena := by rfl

private theorem s2Step186EarlyControl_branchOwned : ([840] : List Wire).toFinset⊆s2Step186EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step186EarlyControlSigmaArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186EarlyControl_branch : compileHmrBranchRetirement s2Step186EarlyControlSigmaArena 840=some s2Step186EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step186EarlyControl_branchOwned
  · ext q
    simp [s2Step186EarlyControlOutputArena,s2Step186EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step186EarlyControl_classEqualityBorrow : s2Step186EarlyControlPositiveArena.checkBorrow (([802, 799] : List Wire).length-1) s2Step186EarlyControlLog.classWork=some s2Step186EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step186EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step186EarlyControlPositiveArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step186EarlyControlEqualityArena,s2Step186EarlyControlPositiveArena,s2Step186EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step186EarlyControl_classEqualityOwned : ([802, 799] : List Wire).toFinset⊆s2Step186EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step186EarlyControlPositiveArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186EarlyControl_classEquality : compileHmrEqualityLog s2Step186EarlyControlPositiveArena [802, 799] 0 s2Step186EarlyControlLog.classWork=some (s2Step186EarlyControlEqualityArena,s2Step186EarlyControlLog.classWork,s2Step186EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step186EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step186EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step186EarlyControl_classOwned : ([777, 803, 802] : List Wire).toFinset⊆s2Step186EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step186EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186EarlyControl_positiveBorrow : s2Step186EarlyControlZeroArena.checkBorrow (1) s2Step186EarlyControlLog.positiveWork=some s2Step186EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step186EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step186EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step186EarlyControlPositiveArena,s2Step186EarlyControlZeroArena,s2Step186EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step186EarlyControl_class : compileHmrSourceClassLog s2Step186EarlyControlZeroArena false 777 s2Step186EarlyControlZeroPlan.top 0 802 s2Step186EarlyControlLog.positiveWork s2Step186EarlyControlLog.classWork=some s2Step186EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step186EarlyControlClassPlan s2Step186EarlyControlZeroArena false 777 s2Step186EarlyControlZeroPlan.top 0 802
  constructor
  · decide +kernel
  · exact s2Step186EarlyControl_classOwned
  · exact s2Step186EarlyControl_positiveBorrow
  · exact s2Step186EarlyControl_classEquality

private theorem s2Step186EarlyControl_entryRecordOwned : ([840, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step186EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step186EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186EarlyControl_entrySigmaOwned : ([802, 254] : List Wire).toFinset⊆s2Step186EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step186EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186EarlyControl_fitBorrow : s2Step186EarlyControlFlagArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step186EarlyControlLog.recordFresh=some s2Step186EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step186EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step186EarlyControlFlagArena (fun q => (0≤q ∧ q<892)) rfl
      decide +kernel
    · ext q
      simp [s2Step186EarlyControlFittedArena,s2Step186EarlyControlFlagArena,s2Step186EarlyControlLog,arenaWires]

private theorem s2Step186EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step186EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step186EarlyControlFlagArena (fun q => (0≤q ∧ q<892)) rfl
  decide +kernel

private theorem s2Step186EarlyControl_fit : compileHmrRecordGrowLog s2Step186EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step186EarlyControlLog.recordFresh=some s2Step186EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step186EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step186EarlyControl_fitBorrow

private theorem s2Step186EarlyControl_flagsBorrow : s2Step186EarlyControlEqualityArena.checkBorrow (6) s2Step186EarlyControlLog.flagWork=some s2Step186EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step186EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step186EarlyControlEqualityArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step186EarlyControlFlagArena,s2Step186EarlyControlEqualityArena,s2Step186EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step186EarlyControl_flagsOwned : ([867, 253, 252, 251] : List Wire).toFinset⊆s2Step186EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step186EarlyControlEqualityArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186EarlyControl_flags : compileHmrFlagsLog s2Step186EarlyControlClassPlan.equalityArena s2Step186EarlyControlClassPlan.equality.top 253 252 251 s2Step186EarlyControlLog.flagWork=some s2Step186EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step186EarlyControl_flagsOwned⟩
  · exact s2Step186EarlyControl_flagsBorrow

private theorem s2Step186EarlyControl_historyBorrow : s2Step186EarlyControlArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step186EarlyControlLog.recordFresh=some s2Step186EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step186EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step186EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step186EarlyControlHistoryArena,s2Step186EarlyControlArena,s2Step186EarlyControlLog,arenaWires]

private theorem s2Step186EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step186EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step186EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186EarlyControl_history : compileHmrRecordGrowLog s2Step186EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step186EarlyControlLog.recordFresh=some s2Step186EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step186EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step186EarlyControl_historyBorrow

private theorem s2Step186EarlyControl_sigmaOwned : ([254, 802] : List Wire).toFinset⊆s2Step186EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step186EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186EarlyControl_sigmaReleaseOwned : ([802] : List Wire).toFinset⊆s2Step186EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step186EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186EarlyControl_sigmaRelease : s2Step186EarlyControlHistoryArena.release {802} (fun _ => false)=some s2Step186EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step186EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step186EarlyControlSigmaArena,s2Step186EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step186EarlyControl_sigma : compileHmrSigmaDropLog s2Step186EarlyControlHistoryArena false 0 0 254 802 []=some s2Step186EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step186EarlyControl_sigmaOwned⟩
  · exact s2Step186EarlyControl_sigmaRelease

private theorem s2Step186EarlyControl_zeroBorrow : s2Step186EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step186EarlyControlLog.zeroWork=some s2Step186EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step186EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step186EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step186EarlyControlZeroArena,s2Step186EarlyControlArena,s2Step186EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step186EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step186EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step186EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186EarlyControl_zero : compileHmrEqualityLog s2Step186EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step186EarlyControlLog.zeroWork=some (s2Step186EarlyControlZeroArena,s2Step186EarlyControlLog.zeroWork,s2Step186EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step186EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step186EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step186EarlyControl_logged : s2Step186EarlyControlPlan.Logged s2Step186EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 802 254 253 252 251 840 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step186EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step186EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step186EarlyControl_zero
  · exact s2Step186EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step186EarlyControl_flags
  · exact s2Step186EarlyControl_fit
  · exact s2Step186EarlyControl_history
  · exact s2Step186EarlyControl_sigma
  · exact s2Step186EarlyControl_branch

private theorem s2Step186EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step186EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 802 254 253 252 251 840 43 s2Step186EarlyControlLog=some s2Step186EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step186EarlyControlPlan s2Step186EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 802 254 253 252 251 840 43 s2Step186EarlyControl_logged

private def s2Step186EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩

private def s2Step186EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830],770⟩

private def s2Step186EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175],769⟩

private def s2Step186EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831],771⟩

private def s2Step186FrontBank : WindowBank := ⟨s2Step186EntryFRow,s2Step186EntryGRow,s2Step186EntryFvRow,s2Step186EntryGvRow⟩

private def s2Step186Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 807, 768]

private def s2Step186Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 794, 824, 769]

private def s2Step186Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 770]

private def s2Step186Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 825, 771]

private theorem s2Step186Counter_apart : Disjoint s2Step186HeadFvAfter.live s2Step186CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step186HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186Counter_borrowed : s2Step186HeadFvAfter.checkBorrow 4 s2Step186CounterWork=some s2Step186CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step186HeadFvAfter s2Step186CounterDuring s2Step186CounterWork.toFinset s2Step186Counter_bounded s2Step186Counter_apart rfl

private theorem s2Step186Counter_owned : (802::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step186HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step186HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186Counter_checked : compileHmrCounterStepLog s2Step186HeadFvAfter true 802 [772, 773, 774, 775, 776, 777] s2Step186CounterWork=some s2Step186CounterDuring := by
  have owned : ∀q∈802::[772, 773, 774, 775, 776, 777],q∈s2Step186HeadFvAfter.live := fun q hq => s2Step186Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step186Counter_borrowed

private def s2Step186EntryFAfter : Arena := s2Step186EntryFBefore

private theorem s2Step186EntryBank_incomingDistinct : ([s2Step186EntryFRow,s2Step186EntryGRow,s2Step186EntryFvRow,s2Step186EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186EntryF_Incoming : rowsOwned s2Step186EntryFBefore [s2Step186EntryFRow,s2Step186EntryGRow,s2Step186EntryFvRow,s2Step186EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step186EntryFRow,s2Step186EntryGRow,s2Step186EntryFvRow,s2Step186EntryGvRow] 0 s2Step186EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step186EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step186EntryBank_outgoingOwned : rowsOwned s2Step186EntryGvAfter [s2Step186EntryFOut,s2Step186EntryGOut,s2Step186EntryFvOut,s2Step186EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step186EntryGvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step186EntryF_Outgoing : rowsOwned s2Step186EntryGvAfter [s2Step186EntryFOut,s2Step186EntryGOut,s2Step186EntryFvOut,s2Step186EntryGvOut] :=
  hmrRows_owned_drop s2Step186EntryGvAfter [s2Step186EntryFOut,s2Step186EntryGOut,s2Step186EntryFvOut,s2Step186EntryGvOut] 0 s2Step186EntryBank_outgoingOwned

private theorem s2Step186EntryF_distinct : (s2Step186EntryFRow.sign::s2Step186EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186EntryF_owned : (s2Step186EntryFRow.sign::s2Step186EntryFRow.payload).toFinset⊆s2Step186EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step186EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186EntryF_reserved : s2Step186EntryFBefore.reserve s2Step186EntryFFresh.toFinset=some s2Step186EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step186EntryFFresh,arenaWires]
  · norm_num [s2Step186EntryFBefore,s2Step186EntryFFresh,arenaWires]
  · simp only [s2Step186EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step186EntryF_checked : planRowResizeLog s2Step186EntryFBefore s2Step186EntryFRow 177 s2Step186EntryFFresh=
    some (s2Step186EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩,growRow 768 s2Step186EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step186EntryFBefore s2Step186EntryFAfter s2Step186EntryFRow 177 s2Step186EntryFFresh
    s2Step186EntryF_distinct s2Step186EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step186EntryF_reserved
  have rowEq : WindowRow.mk (s2Step186EntryFRow.payload++s2Step186EntryFFresh) s2Step186EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step186EntryFvAfter : Arena := s2Step186EntryGAfter

private def s2Step186EntryFvBefore : Arena := s2Step186EntryGAfter

private theorem s2Step186EntryFv_Incoming : rowsOwned s2Step186EntryFvBefore [s2Step186EntryFvRow,s2Step186EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step186EntryFRow,s2Step186EntryGRow,s2Step186EntryFvRow,s2Step186EntryGvRow] 2 s2Step186EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step186EntryFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step186EntryFv_Outgoing : rowsOwned s2Step186EntryGvAfter [s2Step186EntryFvOut,s2Step186EntryGvOut] :=
  hmrRows_owned_drop s2Step186EntryGvAfter [s2Step186EntryFOut,s2Step186EntryGOut,s2Step186EntryFvOut,s2Step186EntryGvOut] 2 s2Step186EntryBank_outgoingOwned

private theorem s2Step186EntryFv_distinct : (s2Step186EntryFvRow.sign::s2Step186EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186EntryFv_owned : (s2Step186EntryFvRow.sign::s2Step186EntryFvRow.payload).toFinset⊆s2Step186EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step186EntryFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186EntryFv_reserved : s2Step186EntryFvBefore.reserve s2Step186EntryFvFresh.toFinset=some s2Step186EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step186EntryFvFresh,arenaWires]
  · norm_num [s2Step186EntryFvBefore,s2Step186EntryGAfter,s2Step186EntryFvFresh,arenaWires]
  · simp only [s2Step186EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step186EntryFv_checked : planRowResizeLog s2Step186EntryFvBefore s2Step186EntryFvRow 107 s2Step186EntryFvFresh=
    some (s2Step186EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830],770⟩,growRow 770 s2Step186EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step186EntryFvBefore s2Step186EntryFvAfter s2Step186EntryFvRow 107 s2Step186EntryFvFresh
    s2Step186EntryFv_distinct s2Step186EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step186EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step186EntryFvRow.payload++s2Step186EntryFvFresh) s2Step186EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step186EntryGBefore : Arena := s2Step186EntryFBefore

private theorem s2Step186EntryG_Incoming : rowsOwned s2Step186EntryGBefore [s2Step186EntryGRow,s2Step186EntryFvRow,s2Step186EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step186EntryFRow,s2Step186EntryGRow,s2Step186EntryFvRow,s2Step186EntryGvRow] 1 s2Step186EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step186EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step186EntryG_Outgoing : rowsOwned s2Step186EntryGvAfter [s2Step186EntryGOut,s2Step186EntryFvOut,s2Step186EntryGvOut] :=
  hmrRows_owned_drop s2Step186EntryGvAfter [s2Step186EntryFOut,s2Step186EntryGOut,s2Step186EntryFvOut,s2Step186EntryGvOut] 1 s2Step186EntryBank_outgoingOwned

private theorem s2Step186EntryG_distinct : (s2Step186EntryGRow.sign::s2Step186EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186EntryG_owned : (s2Step186EntryGRow.sign::s2Step186EntryGRow.payload).toFinset⊆s2Step186EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step186EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186EntryG_reserved : s2Step186EntryGBefore.reserve s2Step186EntryGFresh.toFinset=some s2Step186EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step186EntryGFresh,arenaWires]
  · norm_num [s2Step186EntryGBefore,s2Step186EntryFBefore,s2Step186EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step186EntryGAfter,s2Step186EntryGBefore,s2Step186EntryFBefore,s2Step186EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step186EntryG_checked : planRowResizeLog s2Step186EntryGBefore s2Step186EntryGRow 177 s2Step186EntryGFresh=
    some (s2Step186EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 794],769⟩,growRow 769 s2Step186EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step186EntryGBefore s2Step186EntryGAfter s2Step186EntryGRow 177 s2Step186EntryGFresh
    s2Step186EntryG_distinct s2Step186EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step186EntryG_reserved
  have rowEq : WindowRow.mk (s2Step186EntryGRow.payload++s2Step186EntryGFresh) s2Step186EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 794],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step186EntryGvBefore : Arena := s2Step186EntryGAfter

private theorem s2Step186EntryGv_Incoming : rowsOwned s2Step186EntryGvBefore [s2Step186EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step186EntryFRow,s2Step186EntryGRow,s2Step186EntryFvRow,s2Step186EntryGvRow] 3 s2Step186EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step186EntryGvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step186EntryGv_Outgoing : rowsOwned s2Step186EntryGvAfter [s2Step186EntryGvOut] :=
  hmrRows_owned_drop s2Step186EntryGvAfter [s2Step186EntryFOut,s2Step186EntryGOut,s2Step186EntryFvOut,s2Step186EntryGvOut] 3 s2Step186EntryBank_outgoingOwned

private theorem s2Step186EntryGv_distinct : (s2Step186EntryGvRow.sign::s2Step186EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186EntryGv_owned : (s2Step186EntryGvRow.sign::s2Step186EntryGvRow.payload).toFinset⊆s2Step186EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step186EntryGvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186EntryGv_reserved : s2Step186EntryGvBefore.reserve s2Step186EntryGvFresh.toFinset=some s2Step186EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step186EntryGvFresh,arenaWires]
  · norm_num [s2Step186EntryGvBefore,s2Step186EntryGAfter,s2Step186EntryGvFresh,arenaWires]
  · simp only [s2Step186EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step186EntryGv_checked : planRowResizeLog s2Step186EntryGvBefore s2Step186EntryGvRow 107 s2Step186EntryGvFresh=
    some (s2Step186EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831],771⟩,growRow 771 s2Step186EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step186EntryGvBefore s2Step186EntryGvAfter s2Step186EntryGvRow 107 s2Step186EntryGvFresh
    s2Step186EntryGv_distinct s2Step186EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step186EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step186EntryGvRow.payload++s2Step186EntryGvFresh) s2Step186EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step186EntryBank_rows : planWindowRowsLog s2Step186EntryFBefore [(s2Step186EntryFRow,177),(s2Step186EntryGRow,177),(s2Step186EntryFvRow,107),(s2Step186EntryGvRow,107)] [s2Step186EntryFFresh,s2Step186EntryGFresh,s2Step186EntryFvFresh,s2Step186EntryGvFresh]=
    some (s2Step186EntryGvAfter,[s2Step186EntryFOut,s2Step186EntryGOut,s2Step186EntryFvOut,s2Step186EntryGvOut],(growRow 768 s2Step186EntryFFresh ++ (growRow 769 s2Step186EntryGFresh ++ (growRow 770 s2Step186EntryFvFresh ++ (growRow 771 s2Step186EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step186EntryGvAfter [] []=some (s2Step186EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step186EntryGvBefore s2Step186EntryGvAfter s2Step186EntryGvAfter
    s2Step186EntryGvRow s2Step186EntryGvOut 107 s2Step186EntryGvFresh [] [] []
    (growRow 771 s2Step186EntryGvFresh) ([]) s2Step186EntryGv_Incoming s2Step186EntryGv_checked h4 s2Step186EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step186EntryFvBefore s2Step186EntryFvAfter s2Step186EntryGvAfter
    s2Step186EntryFvRow s2Step186EntryFvOut 107 s2Step186EntryFvFresh [(s2Step186EntryGvRow,107)] [s2Step186EntryGvFresh] [s2Step186EntryGvOut]
    (growRow 770 s2Step186EntryFvFresh) ((growRow 771 s2Step186EntryGvFresh ++ [])) s2Step186EntryFv_Incoming s2Step186EntryFv_checked h3 s2Step186EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step186EntryGBefore s2Step186EntryGAfter s2Step186EntryGvAfter
    s2Step186EntryGRow s2Step186EntryGOut 177 s2Step186EntryGFresh [(s2Step186EntryFvRow,107),(s2Step186EntryGvRow,107)] [s2Step186EntryFvFresh,s2Step186EntryGvFresh] [s2Step186EntryFvOut,s2Step186EntryGvOut]
    (growRow 769 s2Step186EntryGFresh) ((growRow 770 s2Step186EntryFvFresh ++ (growRow 771 s2Step186EntryGvFresh ++ []))) s2Step186EntryG_Incoming s2Step186EntryG_checked h2 s2Step186EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step186EntryFBefore s2Step186EntryFAfter s2Step186EntryGvAfter
    s2Step186EntryFRow s2Step186EntryFOut 177 s2Step186EntryFFresh [(s2Step186EntryGRow,177),(s2Step186EntryFvRow,107),(s2Step186EntryGvRow,107)] [s2Step186EntryGFresh,s2Step186EntryFvFresh,s2Step186EntryGvFresh] [s2Step186EntryGOut,s2Step186EntryFvOut,s2Step186EntryGvOut]
    (growRow 768 s2Step186EntryFFresh) ((growRow 769 s2Step186EntryGFresh ++ (growRow 770 s2Step186EntryFvFresh ++ (growRow 771 s2Step186EntryGvFresh ++ [])))) s2Step186EntryF_Incoming s2Step186EntryF_checked h1 s2Step186EntryF_Outgoing
  exact h0

private theorem s2Step186EntryBank_checked : compileHmrBankResizeLog .entry s2Step186EntryFBefore ⟨s2Step186EntryFRow,s2Step186EntryGRow,s2Step186EntryFvRow,s2Step186EntryGvRow⟩ ⟨177,177,107,107⟩ [s2Step186EntryFFresh,s2Step186EntryGFresh,s2Step186EntryFvFresh,s2Step186EntryGvFresh]=
    some (s2Step186EntryGvAfter,⟨s2Step186EntryFOut,s2Step186EntryGOut,s2Step186EntryFvOut,s2Step186EntryGvOut⟩,(growRow 768 s2Step186EntryFFresh ++ (growRow 769 s2Step186EntryGFresh ++ (growRow 770 s2Step186EntryFvFresh ++ (growRow 771 s2Step186EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step186EntryBank_rows]
  rfl

private def s2Step186ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186ExitFBefore : Arena := s2Step186ExitGAfter

private def s2Step186ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 807],768⟩

private def s2Step186ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846],770⟩

private def s2Step186ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 794, 824],769⟩

private def s2Step186ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 825],771⟩

private theorem s2Step186ExitBank_incomingDistinct : ([s2Step186ExitGRow,s2Step186ExitFRow,s2Step186ExitFvRow,s2Step186ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186ExitF_Incoming : rowsOwned s2Step186ExitFBefore [s2Step186ExitFRow,s2Step186ExitFvRow,s2Step186ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step186ExitGRow,s2Step186ExitFRow,s2Step186ExitFvRow,s2Step186ExitGvRow] 1 s2Step186ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step186ExitFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step186ExitBank_outgoingOwned : rowsOwned s2Step186ExitGvAfter [s2Step186ExitGOut,s2Step186ExitFOut,s2Step186ExitFvOut,s2Step186ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step186ExitGvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step186ExitF_Outgoing : rowsOwned s2Step186ExitGvAfter [s2Step186ExitFOut,s2Step186ExitFvOut,s2Step186ExitGvOut] :=
  hmrRows_owned_drop s2Step186ExitGvAfter [s2Step186ExitGOut,s2Step186ExitFOut,s2Step186ExitFvOut,s2Step186ExitGvOut] 1 s2Step186ExitBank_outgoingOwned

private theorem s2Step186ExitF_distinct : (s2Step186ExitFRow.sign::s2Step186ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186ExitF_owned : (s2Step186ExitFRow.sign::s2Step186ExitFRow.payload).toFinset⊆s2Step186ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step186ExitFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186ExitF_retired : s2Step186ExitFBefore.retireSet s2Step186ExitFExtra.toFinset=s2Step186ExitFAfter := by
  unfold Arena.retireSet s2Step186ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step186ExitFBefore,s2Step186ExitGAfter,s2Step186ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step186ExitF_checked : planRowResizeLog s2Step186ExitFBefore s2Step186ExitFRow 177 []=
    some (s2Step186ExitFAfter,s2Step186ExitFOut,shrinkRow 768 s2Step186ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step186ExitFBefore s2Step186ExitFRow 177 s2Step186ExitF_distinct s2Step186ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step186ExitFRow.payload.take 177) s2Step186ExitFRow.sign=s2Step186ExitFOut := by decide +kernel
  have hi : s2Step186ExitFRow.payload.drop 177=s2Step186ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step186ExitF_retired] at result
  exact result

private def s2Step186ExitFvAfter : Arena := s2Step186ExitFAfter

private def s2Step186ExitFvBefore : Arena := s2Step186ExitFAfter

private theorem s2Step186ExitFv_Incoming : rowsOwned s2Step186ExitFvBefore [s2Step186ExitFvRow,s2Step186ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step186ExitGRow,s2Step186ExitFRow,s2Step186ExitFvRow,s2Step186ExitGvRow] 2 s2Step186ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step186ExitFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step186ExitFv_Outgoing : rowsOwned s2Step186ExitGvAfter [s2Step186ExitFvOut,s2Step186ExitGvOut] :=
  hmrRows_owned_drop s2Step186ExitGvAfter [s2Step186ExitGOut,s2Step186ExitFOut,s2Step186ExitFvOut,s2Step186ExitGvOut] 2 s2Step186ExitBank_outgoingOwned

private theorem s2Step186ExitFv_distinct : (s2Step186ExitFvRow.sign::s2Step186ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186ExitFv_owned : (s2Step186ExitFvRow.sign::s2Step186ExitFvRow.payload).toFinset⊆s2Step186ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step186ExitFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186ExitFv_reserved : s2Step186ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step186ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step186ExitFv_checked : planRowResizeLog s2Step186ExitFvBefore s2Step186ExitFvRow 108 []=
    some (s2Step186ExitFvAfter,s2Step186ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step186ExitFvBefore s2Step186ExitFvAfter s2Step186ExitFvRow 108 []
    s2Step186ExitFv_distinct s2Step186ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step186ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step186ExitFvRow.payload++[]) s2Step186ExitFvRow.sign=s2Step186ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step186ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step186ExitG_Incoming : rowsOwned s2Step186ExitGBefore [s2Step186ExitGRow,s2Step186ExitFRow,s2Step186ExitFvRow,s2Step186ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step186ExitGRow,s2Step186ExitFRow,s2Step186ExitFvRow,s2Step186ExitGvRow] 0 s2Step186ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step186ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step186ExitG_Outgoing : rowsOwned s2Step186ExitGvAfter [s2Step186ExitGOut,s2Step186ExitFOut,s2Step186ExitFvOut,s2Step186ExitGvOut] :=
  hmrRows_owned_drop s2Step186ExitGvAfter [s2Step186ExitGOut,s2Step186ExitFOut,s2Step186ExitFvOut,s2Step186ExitGvOut] 0 s2Step186ExitBank_outgoingOwned

private theorem s2Step186ExitG_distinct : (s2Step186ExitGRow.sign::s2Step186ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186ExitG_owned : (s2Step186ExitGRow.sign::s2Step186ExitGRow.payload).toFinset⊆s2Step186ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step186ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186ExitG_retired : s2Step186ExitGBefore.retireSet s2Step186ExitGExtra.toFinset=s2Step186ExitGAfter := by
  unfold Arena.retireSet s2Step186ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step186ExitGBefore,s2Step186ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step186ExitG_checked : planRowResizeLog s2Step186ExitGBefore s2Step186ExitGRow 176 []=
    some (s2Step186ExitGAfter,s2Step186ExitGOut,shrinkRow 769 s2Step186ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step186ExitGBefore s2Step186ExitGRow 176 s2Step186ExitG_distinct s2Step186ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step186ExitGRow.payload.take 176) s2Step186ExitGRow.sign=s2Step186ExitGOut := by decide +kernel
  have hi : s2Step186ExitGRow.payload.drop 176=s2Step186ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step186ExitG_retired] at result
  exact result

private def s2Step186ExitGvBefore : Arena := s2Step186ExitFAfter

private theorem s2Step186ExitGv_Incoming : rowsOwned s2Step186ExitGvBefore [s2Step186ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step186ExitGRow,s2Step186ExitFRow,s2Step186ExitFvRow,s2Step186ExitGvRow] 3 s2Step186ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step186ExitGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step186ExitGv_Outgoing : rowsOwned s2Step186ExitGvAfter [s2Step186ExitGvOut] :=
  hmrRows_owned_drop s2Step186ExitGvAfter [s2Step186ExitGOut,s2Step186ExitFOut,s2Step186ExitFvOut,s2Step186ExitGvOut] 3 s2Step186ExitBank_outgoingOwned

private theorem s2Step186ExitGv_distinct : (s2Step186ExitGvRow.sign::s2Step186ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186ExitGv_owned : (s2Step186ExitGvRow.sign::s2Step186ExitGvRow.payload).toFinset⊆s2Step186ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step186ExitGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186ExitGv_retired : s2Step186ExitGvBefore.retireSet s2Step186ExitGvExtra.toFinset=s2Step186ExitGvAfter := by
  unfold Arena.retireSet s2Step186ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step186ExitGvBefore,s2Step186ExitFAfter,s2Step186ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step186ExitGv_checked : planRowResizeLog s2Step186ExitGvBefore s2Step186ExitGvRow 107 []=
    some (s2Step186ExitGvAfter,s2Step186ExitGvOut,shrinkRow 771 s2Step186ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step186ExitGvBefore s2Step186ExitGvRow 107 s2Step186ExitGv_distinct s2Step186ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step186ExitGvRow.payload.take 107) s2Step186ExitGvRow.sign=s2Step186ExitGvOut := by decide +kernel
  have hi : s2Step186ExitGvRow.payload.drop 107=s2Step186ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step186ExitGv_retired] at result
  exact result

private theorem s2Step186ExitBank_rows : planWindowRowsLog s2Step186ExitGBefore [(s2Step186ExitGRow,176),(s2Step186ExitFRow,177),(s2Step186ExitFvRow,108),(s2Step186ExitGvRow,107)] [[],[],[],[]]=
    some (s2Step186ExitGvAfter,[s2Step186ExitGOut,s2Step186ExitFOut,s2Step186ExitFvOut,s2Step186ExitGvOut],(shrinkRow 769 s2Step186ExitGExtra ++ (shrinkRow 768 s2Step186ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step186ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step186ExitGvAfter [] []=some (s2Step186ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step186ExitGvBefore s2Step186ExitGvAfter s2Step186ExitGvAfter
    s2Step186ExitGvRow s2Step186ExitGvOut 107 [] [] [] []
    (shrinkRow 771 s2Step186ExitGvExtra) ([]) s2Step186ExitGv_Incoming s2Step186ExitGv_checked h4 s2Step186ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step186ExitFvBefore s2Step186ExitFvAfter s2Step186ExitGvAfter
    s2Step186ExitFvRow s2Step186ExitFvOut 108 [] [(s2Step186ExitGvRow,107)] [[]] [s2Step186ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step186ExitGvExtra ++ [])) s2Step186ExitFv_Incoming s2Step186ExitFv_checked h3 s2Step186ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step186ExitFBefore s2Step186ExitFAfter s2Step186ExitGvAfter
    s2Step186ExitFRow s2Step186ExitFOut 177 [] [(s2Step186ExitFvRow,108),(s2Step186ExitGvRow,107)] [[],[]] [s2Step186ExitFvOut,s2Step186ExitGvOut]
    (shrinkRow 768 s2Step186ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step186ExitGvExtra ++ []))) s2Step186ExitF_Incoming s2Step186ExitF_checked h2 s2Step186ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step186ExitGBefore s2Step186ExitGAfter s2Step186ExitGvAfter
    s2Step186ExitGRow s2Step186ExitGOut 176 [] [(s2Step186ExitFRow,177),(s2Step186ExitFvRow,108),(s2Step186ExitGvRow,107)] [[],[],[]] [s2Step186ExitFOut,s2Step186ExitFvOut,s2Step186ExitGvOut]
    (shrinkRow 769 s2Step186ExitGExtra) ((shrinkRow 768 s2Step186ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step186ExitGvExtra ++ [])))) s2Step186ExitG_Incoming s2Step186ExitG_checked h1 s2Step186ExitG_Outgoing
  exact h0

private theorem s2Step186ExitBank_checked : compileHmrBankResizeLog .exit s2Step186ExitGBefore ⟨s2Step186ExitFRow,s2Step186ExitGRow,s2Step186ExitFvRow,s2Step186ExitGvRow⟩ ⟨177,176,108,107⟩ [[],[],[],[]]=
    some (s2Step186ExitGvAfter,⟨s2Step186ExitFOut,s2Step186ExitGOut,s2Step186ExitFvOut,s2Step186ExitGvOut⟩,(shrinkRow 769 s2Step186ExitGExtra ++ (shrinkRow 768 s2Step186ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step186ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step186ExitBank_rows]
  rfl

private theorem s2Step186Add0_apart : Disjoint s2Step186Add0Arena.live s2Step186Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step186Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186Add0_card : s2Step186Add0Arena.live.card=885 := by
  decide +kernel

private theorem s2Step186Add0_borrowed : s2Step186Add0Arena.checkBorrow (hmrHybridCount s2Step186Add0Arena s2Step186Add0B.length) s2Step186Add0Work=some s2Step186Add0During := by
  have len : s2Step186Add0Work.length=hmrHybridCount s2Step186Add0Arena s2Step186Add0B.length := by
    rw [hmrHybridCount,s2Step186Add0_card]
    decide +kernel
  have nd : s2Step186Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step186Add0Arena s2Step186Add0During s2Step186Add0Work.toFinset s2Step186Add0_bounded s2Step186Add0_apart rfl

private theorem s2Step186Add0_distinct : (803::840::799::(s2Step186Add0A++s2Step186Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186Add0_owned : (803::840::799::(s2Step186Add0A++s2Step186Add0B)).toFinset⊆s2Step186Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step186Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186Add0_checked : compileHmrHybridCinLog s2Step186Add0Arena 840 803 799 s2Step186Add0A s2Step186Add0B s2Step186Add0Work=some s2Step186Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step186Add0Arena s2Step186Add0During 840 803 799 s2Step186Add0A s2Step186Add0B s2Step186Add0Work
    (by decide +kernel) (by decide +kernel) s2Step186Add0_distinct
    (fun q hq => s2Step186Add0_owned (List.mem_toFinset.mpr hq)) s2Step186Add0_borrowed

private theorem s2Step186Add1_apart : Disjoint s2Step186Add1Arena.live s2Step186Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step186Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186Add1_card : s2Step186Add1Arena.live.card=885 := by
  decide +kernel

private theorem s2Step186Add1_borrowed : s2Step186Add1Arena.checkBorrow (hmrHybridCount s2Step186Add1Arena s2Step186Add1B.length) s2Step186Add1Work=some s2Step186Add1During := by
  have len : s2Step186Add1Work.length=hmrHybridCount s2Step186Add1Arena s2Step186Add1B.length := by
    rw [hmrHybridCount,s2Step186Add1_card]
    decide +kernel
  have nd : s2Step186Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step186Add1Arena s2Step186Add1During s2Step186Add1Work.toFinset s2Step186Add1_bounded s2Step186Add1_apart rfl

private theorem s2Step186Add1_distinct : (803::840::799::(s2Step186Add1A++s2Step186Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186Add1_owned : (803::840::799::(s2Step186Add1A++s2Step186Add1B)).toFinset⊆s2Step186Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step186Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186Add1_checked : compileHmrHybridCinLog s2Step186Add1Arena 840 803 799 s2Step186Add1A s2Step186Add1B s2Step186Add1Work=some s2Step186Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step186Add1Arena s2Step186Add1During 840 803 799 s2Step186Add1A s2Step186Add1B s2Step186Add1Work
    (by decide +kernel) (by decide +kernel) s2Step186Add1_distinct
    (fun q hq => s2Step186Add1_owned (List.mem_toFinset.mpr hq)) s2Step186Add1_borrowed

private theorem s2Step186F4_apart : Disjoint (s2Step186Add0A++s2Step186Add0B).toFinset (s2Step186Add1A++s2Step186Add1B).toFinset := by
  have nd : ((s2Step186Add0A++s2Step186Add0B)++(s2Step186Add1A++s2Step186Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step186F4_carry : s2Step186F4FlagArena.checkBorrow 1 [799]=some s2Step186Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step186F4FlagArena,s2Step186HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step186F4FlagArena,s2Step186HeadFvAfter,s2Step186Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step186F4_distinct : (802::840::803::799::((s2Step186Add0A++s2Step186Add1A)++(s2Step186Add0B++s2Step186Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186F4_flag : s2Step186HeadFvAfter.checkBorrow 1 [803]=some s2Step186F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step186HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step186F4_owned : (802::840::((s2Step186Add0A++s2Step186Add1A)++(s2Step186Add0B++s2Step186Add1B))).toFinset⊆s2Step186HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step186HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186F4_checked : compileHmrHybridF4Log s2Step186HeadFvAfter 802 840 s2Step186Add0A s2Step186Add0B s2Step186Add1A s2Step186Add1B [803] [799] s2Step186Add0Work s2Step186Add1Work=some s2Step186F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step186HeadFvAfter s2Step186F4FlagArena s2Step186Add0Arena s2Step186Add0During s2Step186Add1During 802 840
    s2Step186Add0A s2Step186Add0B s2Step186Add1A s2Step186Add1B [803] [799] s2Step186Add0Work s2Step186Add1Work
    (fun q hq => s2Step186F4_owned (List.mem_toFinset.mpr hq)) s2Step186F4_flag s2Step186F4_carry
    s2Step186F4_distinct s2Step186F4_apart s2Step186Add0_checked s2Step186Add1_checked

private theorem s2Step186Front_branch : s2Step186FrontSigmaArena.checkBorrow 1 [840]=some s2Step186HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step186FrontSigmaArena,s2Step186EntryGvAfter,s2Step186EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step186FrontSigmaArena,s2Step186EntryGvAfter,s2Step186EntryGAfter,s2Step186HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step186Front_entry : HmrFrontEntryValid s2Step186EntryFBefore s2Step186FrontBank 177 107 ⟨177,176,108,107⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step186FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step186EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step186EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step186FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step186Front_sigma : s2Step186EntryGvAfter.checkBorrow 1 [802]=some s2Step186FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step186EntryGvAfter,s2Step186EntryGAfter,arenaWires]
  · rfl

private def s2Step186HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<825) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186HeadFBefore : Arena := s2Step186HeadGAfter

private def s2Step186HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩

private def s2Step186HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830],770⟩

private def s2Step186HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 794],769⟩

private def s2Step186HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831],771⟩

private theorem s2Step186HeadBank_incomingDistinct : ([s2Step186HeadGRow,s2Step186HeadFRow,s2Step186HeadGvRow,s2Step186HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186HeadF_Incoming : rowsOwned s2Step186HeadFBefore [s2Step186HeadFRow,s2Step186HeadGvRow,s2Step186HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step186HeadGRow,s2Step186HeadFRow,s2Step186HeadGvRow,s2Step186HeadFvRow] 1 s2Step186HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step186HeadFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<825) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step186HeadBank_outgoingOwned : rowsOwned s2Step186HeadFvAfter [s2Step186HeadGOut,s2Step186HeadFOut,s2Step186HeadGvOut,s2Step186HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step186HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step186HeadF_Outgoing : rowsOwned s2Step186HeadFvAfter [s2Step186HeadFOut,s2Step186HeadGvOut,s2Step186HeadFvOut] :=
  hmrRows_owned_drop s2Step186HeadFvAfter [s2Step186HeadGOut,s2Step186HeadFOut,s2Step186HeadGvOut,s2Step186HeadFvOut] 1 s2Step186HeadBank_outgoingOwned

private theorem s2Step186HeadF_distinct : (s2Step186HeadFRow.sign::s2Step186HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186HeadF_owned : (s2Step186HeadFRow.sign::s2Step186HeadFRow.payload).toFinset⊆s2Step186HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step186HeadFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<825) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186HeadF_reserved : s2Step186HeadFBefore.reserve s2Step186HeadFFresh.toFinset=some s2Step186HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step186HeadFFresh,arenaWires]
  · norm_num [s2Step186HeadFBefore,s2Step186HeadGAfter,s2Step186HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step186HeadFAfter,s2Step186HeadFBefore,s2Step186HeadGAfter,s2Step186HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step186HeadF_checked : planRowResizeLog s2Step186HeadFBefore s2Step186HeadFRow 178 s2Step186HeadFFresh=
    some (s2Step186HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 807],768⟩,growRow 768 s2Step186HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step186HeadFBefore s2Step186HeadFAfter s2Step186HeadFRow 178 s2Step186HeadFFresh
    s2Step186HeadF_distinct s2Step186HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step186HeadF_reserved
  have rowEq : WindowRow.mk (s2Step186HeadFRow.payload++s2Step186HeadFFresh) s2Step186HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 807],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step186HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step186HeadFvBefore : Arena := s2Step186HeadGvAfter

private theorem s2Step186HeadFv_Incoming : rowsOwned s2Step186HeadFvBefore [s2Step186HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step186HeadGRow,s2Step186HeadFRow,s2Step186HeadGvRow,s2Step186HeadFvRow] 3 s2Step186HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step186HeadFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step186HeadFv_Outgoing : rowsOwned s2Step186HeadFvAfter [s2Step186HeadFvOut] :=
  hmrRows_owned_drop s2Step186HeadFvAfter [s2Step186HeadGOut,s2Step186HeadFOut,s2Step186HeadGvOut,s2Step186HeadFvOut] 3 s2Step186HeadBank_outgoingOwned

private theorem s2Step186HeadFv_distinct : (s2Step186HeadFvRow.sign::s2Step186HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186HeadFv_owned : (s2Step186HeadFvRow.sign::s2Step186HeadFvRow.payload).toFinset⊆s2Step186HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step186HeadFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186HeadFv_reserved : s2Step186HeadFvBefore.reserve s2Step186HeadFvFresh.toFinset=some s2Step186HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step186HeadFvFresh,arenaWires]
  · norm_num [s2Step186HeadFvBefore,s2Step186HeadGvAfter,s2Step186HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step186HeadFvAfter,s2Step186HeadFvBefore,s2Step186HeadGvAfter,s2Step186HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step186HeadFv_checked : planRowResizeLog s2Step186HeadFvBefore s2Step186HeadFvRow 108 s2Step186HeadFvFresh=
    some (s2Step186HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846],770⟩,growRow 770 s2Step186HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step186HeadFvBefore s2Step186HeadFvAfter s2Step186HeadFvRow 108 s2Step186HeadFvFresh
    s2Step186HeadFv_distinct s2Step186HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step186HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step186HeadFvRow.payload++s2Step186HeadFvFresh) s2Step186HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step186HeadG_Incoming : rowsOwned s2Step186HeadGBefore [s2Step186HeadGRow,s2Step186HeadFRow,s2Step186HeadGvRow,s2Step186HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step186HeadGRow,s2Step186HeadFRow,s2Step186HeadGvRow,s2Step186HeadFvRow] 0 s2Step186HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step186HeadGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step186HeadG_Outgoing : rowsOwned s2Step186HeadFvAfter [s2Step186HeadGOut,s2Step186HeadFOut,s2Step186HeadGvOut,s2Step186HeadFvOut] :=
  hmrRows_owned_drop s2Step186HeadFvAfter [s2Step186HeadGOut,s2Step186HeadFOut,s2Step186HeadGvOut,s2Step186HeadFvOut] 0 s2Step186HeadBank_outgoingOwned

private theorem s2Step186HeadG_distinct : (s2Step186HeadGRow.sign::s2Step186HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186HeadG_owned : (s2Step186HeadGRow.sign::s2Step186HeadGRow.payload).toFinset⊆s2Step186HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step186HeadGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186HeadG_reserved : s2Step186HeadGBefore.reserve s2Step186HeadGFresh.toFinset=some s2Step186HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step186HeadGFresh,arenaWires]
  · norm_num [s2Step186HeadGBefore,s2Step186HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step186HeadGAfter,s2Step186HeadGBefore,s2Step186HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step186HeadG_checked : planRowResizeLog s2Step186HeadGBefore s2Step186HeadGRow 178 s2Step186HeadGFresh=
    some (s2Step186HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 794, 824],769⟩,growRow 769 s2Step186HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step186HeadGBefore s2Step186HeadGAfter s2Step186HeadGRow 178 s2Step186HeadGFresh
    s2Step186HeadG_distinct s2Step186HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step186HeadG_reserved
  have rowEq : WindowRow.mk (s2Step186HeadGRow.payload++s2Step186HeadGFresh) s2Step186HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 794, 824],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step186HeadGvBefore : Arena := s2Step186HeadFAfter

private theorem s2Step186HeadGv_Incoming : rowsOwned s2Step186HeadGvBefore [s2Step186HeadGvRow,s2Step186HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step186HeadGRow,s2Step186HeadFRow,s2Step186HeadGvRow,s2Step186HeadFvRow] 2 s2Step186HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step186HeadGvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step186HeadGv_Outgoing : rowsOwned s2Step186HeadFvAfter [s2Step186HeadGvOut,s2Step186HeadFvOut] :=
  hmrRows_owned_drop s2Step186HeadFvAfter [s2Step186HeadGOut,s2Step186HeadFOut,s2Step186HeadGvOut,s2Step186HeadFvOut] 2 s2Step186HeadBank_outgoingOwned

private theorem s2Step186HeadGv_distinct : (s2Step186HeadGvRow.sign::s2Step186HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step186HeadGv_owned : (s2Step186HeadGvRow.sign::s2Step186HeadGvRow.payload).toFinset⊆s2Step186HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step186HeadGvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step186HeadGv_reserved : s2Step186HeadGvBefore.reserve s2Step186HeadGvFresh.toFinset=some s2Step186HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step186HeadGvFresh,arenaWires]
  · norm_num [s2Step186HeadGvBefore,s2Step186HeadFAfter,s2Step186HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step186HeadGvAfter,s2Step186HeadGvBefore,s2Step186HeadFAfter,s2Step186HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step186HeadGv_checked : planRowResizeLog s2Step186HeadGvBefore s2Step186HeadGvRow 108 s2Step186HeadGvFresh=
    some (s2Step186HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 825],771⟩,growRow 771 s2Step186HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step186HeadGvBefore s2Step186HeadGvAfter s2Step186HeadGvRow 108 s2Step186HeadGvFresh
    s2Step186HeadGv_distinct s2Step186HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step186HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step186HeadGvRow.payload++s2Step186HeadGvFresh) s2Step186HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 825],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step186HeadBank_rows : planWindowRowsLog s2Step186HeadGBefore [(s2Step186HeadGRow,178),(s2Step186HeadFRow,178),(s2Step186HeadGvRow,108),(s2Step186HeadFvRow,108)] [s2Step186HeadGFresh,s2Step186HeadFFresh,s2Step186HeadGvFresh,s2Step186HeadFvFresh]=
    some (s2Step186HeadFvAfter,[s2Step186HeadGOut,s2Step186HeadFOut,s2Step186HeadGvOut,s2Step186HeadFvOut],(growRow 769 s2Step186HeadGFresh ++ (growRow 768 s2Step186HeadFFresh ++ (growRow 771 s2Step186HeadGvFresh ++ (growRow 770 s2Step186HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step186HeadFvAfter [] []=some (s2Step186HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step186HeadFvBefore s2Step186HeadFvAfter s2Step186HeadFvAfter
    s2Step186HeadFvRow s2Step186HeadFvOut 108 s2Step186HeadFvFresh [] [] []
    (growRow 770 s2Step186HeadFvFresh) ([]) s2Step186HeadFv_Incoming s2Step186HeadFv_checked h4 s2Step186HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step186HeadGvBefore s2Step186HeadGvAfter s2Step186HeadFvAfter
    s2Step186HeadGvRow s2Step186HeadGvOut 108 s2Step186HeadGvFresh [(s2Step186HeadFvRow,108)] [s2Step186HeadFvFresh] [s2Step186HeadFvOut]
    (growRow 771 s2Step186HeadGvFresh) ((growRow 770 s2Step186HeadFvFresh ++ [])) s2Step186HeadGv_Incoming s2Step186HeadGv_checked h3 s2Step186HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step186HeadFBefore s2Step186HeadFAfter s2Step186HeadFvAfter
    s2Step186HeadFRow s2Step186HeadFOut 178 s2Step186HeadFFresh [(s2Step186HeadGvRow,108),(s2Step186HeadFvRow,108)] [s2Step186HeadGvFresh,s2Step186HeadFvFresh] [s2Step186HeadGvOut,s2Step186HeadFvOut]
    (growRow 768 s2Step186HeadFFresh) ((growRow 771 s2Step186HeadGvFresh ++ (growRow 770 s2Step186HeadFvFresh ++ []))) s2Step186HeadF_Incoming s2Step186HeadF_checked h2 s2Step186HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step186HeadGBefore s2Step186HeadGAfter s2Step186HeadFvAfter
    s2Step186HeadGRow s2Step186HeadGOut 178 s2Step186HeadGFresh [(s2Step186HeadFRow,178),(s2Step186HeadGvRow,108),(s2Step186HeadFvRow,108)] [s2Step186HeadFFresh,s2Step186HeadGvFresh,s2Step186HeadFvFresh] [s2Step186HeadFOut,s2Step186HeadGvOut,s2Step186HeadFvOut]
    (growRow 769 s2Step186HeadGFresh) ((growRow 768 s2Step186HeadFFresh ++ (growRow 771 s2Step186HeadGvFresh ++ (growRow 770 s2Step186HeadFvFresh ++ [])))) s2Step186HeadG_Incoming s2Step186HeadG_checked h1 s2Step186HeadG_Outgoing
  exact h0

private theorem s2Step186HeadBank_checked : compileHmrBankResizeLog .headroom s2Step186HeadGBefore ⟨s2Step186HeadFRow,s2Step186HeadGRow,s2Step186HeadFvRow,s2Step186HeadGvRow⟩ ⟨178,178,108,108⟩ [s2Step186HeadGFresh,s2Step186HeadFFresh,s2Step186HeadGvFresh,s2Step186HeadFvFresh]=
    some (s2Step186HeadFvAfter,⟨s2Step186HeadFOut,s2Step186HeadGOut,s2Step186HeadFvOut,s2Step186HeadGvOut⟩,(growRow 769 s2Step186HeadGFresh ++ (growRow 768 s2Step186HeadFFresh ++ (growRow 771 s2Step186HeadGvFresh ++ (growRow 770 s2Step186HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step186HeadBank_rows]
  rfl

private theorem s2Step186Front_checked : compileHmrSourceFrontLog s2Step186EntryFBefore s2Step186FrontBank 177 107 ⟨177,176,108,107⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step186FrontLog=some s2Step186FrontPlan := by
  have pairEq : s2Step186FrontPair=⟨s2Step186HeadFRow,s2Step186HeadGRow,s2Step186HeadFvRow,s2Step186HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step186FrontHead=⟨s2Step186ExitFRow,s2Step186ExitGRow,s2Step186ExitFvRow,s2Step186ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step186Add0A=s2Step186FrontHead.f.wires := by decide +kernel
  have gEq : s2Step186Add0B=s2Step186FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step186Add1A=s2Step186FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step186Add1B=s2Step186FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step186EntryFBefore s2Step186FrontBank 177 107 ⟨177,176,108,107⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step186FrontLog s2Step186FrontPlan
  · exact s2Step186Front_entry
  · exact s2Step186EntryBank_checked
  · exact s2Step186Front_sigma
  · rfl
  · exact s2Step186Front_branch
  · rfl
  · simpa only [s2Step186FrontPlan,pairEq] using s2Step186HeadBank_checked
  · simpa only [s2Step186FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step186F4_checked
  · exact s2Step186Counter_checked
  · rfl
  · simpa only [s2Step186FrontPlan,headEq] using s2Step186ExitBank_checked

private theorem s2Step186Complete_explicit_checked : compileHmrEarlyStepLog s2Step186EntryFBefore s2Step186FrontBank 177 107 ⟨177,176,108,107⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step186CompleteLog=some s2Step186CompletePlan := by
  let Q := s2Step186EarlyControlPlan
  have hq := s2Step186EarlyControl_plan_checked
  have fv1 : s2Step186CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step186CompleteOut.fv.payload[2]?.getD s2Step186CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step186CompleteOut.fv.payload[3]?.getD s2Step186CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step186CompleteOut.fv.payload[4]?.getD s2Step186CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step186EntryFBefore s2Step186EarlyControlArena s2Step186FrontBank 177 107 ⟨177,176,108,107⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step186CompleteLog s2Step186FrontPlan Q
    s2Step186Front_checked s2Step186Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step186Complete_owned s2Step186Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step186EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 802 s2Step186CompleteOut.fv.second (s2Step186CompleteOut.fv.payload[2]?.getD s2Step186CompleteOut.fv.sign) (s2Step186CompleteOut.fv.payload[3]?.getD s2Step186CompleteOut.fv.sign) (s2Step186CompleteOut.fv.payload[4]?.getD s2Step186CompleteOut.fv.sign) 840 43 s2Step186EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep186Arena : Arena := s2Step186EntryFBefore
def s2PrivateStep186Bank : WindowBank := s2Step186FrontBank
def s2PrivateStep186Spec : HmrSourceWalkStepLog := ⟨177,107,⟨177,176,108,107⟩,43,.early s2Step186CompleteLog⟩
def s2PrivateStep186Plan : HmrSourceStepPlan := .early s2Step186CompletePlan
theorem s2PrivateStep186_source : s2PrivateStep186Spec=s2ObservedLogs176[10] := rfl
theorem s2PrivateStep186_checked : compileHmrSourceStepLog s2PrivateStep186Arena s2PrivateStep186Bank
    s2PrivateStep186Spec.fgWidth s2PrivateStep186Spec.vWidth s2PrivateStep186Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]
    6 498 186 s2PrivateStep186Spec.need none s2PrivateStep186Spec.log=some s2PrivateStep186Plan := by
  change compileHmrSourceStepLog s2Step186EntryFBefore s2Step186FrontBank 177 107 ⟨177,176,108,107⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 6 498 186 43 none (.early s2Step186CompleteLog)=some (.early s2Step186CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 186<498)]
  rw [s2Step186Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
