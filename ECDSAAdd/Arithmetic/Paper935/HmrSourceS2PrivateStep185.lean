import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep183
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

private def s2Step185CompleteMoves : List (Wire × Wire) := [(840,176)]

private def s2Step185EarlyControlLog : HmrEarlyControlLog := ⟨[840, 824, 807, 825, 846],[803],[799],[867, 877, 879, 882, 885, 890],[]⟩

private def s2Step185FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [831]],[[846], [825], [824], [807]],[[], [], [], []]⟩,[802],[794],[803],[799],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[803, 799, 867, 877]⟩

private def s2Step185CompleteLog : HmrEarlyStepLog := ⟨s2Step185FrontLog,s2Step185CompleteMoves,s2Step185EarlyControlLog⟩

private def s2Step185ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩

private def s2Step185ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830],770⟩

private def s2Step185ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175],769⟩

private def s2Step185ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831],771⟩

private def s2Step185FrontOut : WindowBank := ⟨s2Step185ExitFOut,s2Step185ExitGOut,s2Step185ExitFvOut,s2Step185ExitGvOut⟩

private def s2Step185CompleteOut : WindowBank := s2Step185FrontOut.repacked s2Step185CompleteMoves

private def s2Step185EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step185EarlyControlPositiveArena,[803],s2Step185EarlyControlEqualityArena,[799],⟨⟨802,false⟩,[⟨⟨803,false⟩,799⟩]⟩⟩

private def s2Step185EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step185EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step185EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,840⟩,⟨⟨774,false⟩,824⟩,⟨⟨775,false⟩,807⟩,⟨⟨776,false⟩,825⟩,⟨⟨777,false⟩,846⟩]⟩

private def s2Step185EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step185EarlyControlZeroArena,s2Step185EarlyControlZeroPlan,s2Step185EarlyControlClassPlan,s2Step185EarlyControlFlagArena,s2Step185EarlyControlFittedArena,s2Step185EarlyControlHistoryArena,s2Step185EarlyControlSigmaArena,s2Step185EarlyControlOutputArena,s2Step185EarlyControlLog⟩

private def s2Step185CounterWork : List Wire := [803, 799, 867, 877]

private theorem s2Step185Counter_bounded : s2Step185CounterWork.toFinset⊆arenaWires := by norm_num [s2Step185CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step185HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185CounterDuring : Arena := ⟨s2Step185HeadFvAfter.live∪s2Step185CounterWork.toFinset,Finset.union_subset s2Step185HeadFvAfter.bounded s2Step185Counter_bounded⟩

private def s2Step185EntryFFresh : List Wire := []

private def s2Step185EntryFvFresh : List Wire := []

private def s2Step185EntryGFresh : List Wire := []

private def s2Step185EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185EntryGvFresh : List Wire := [831]

private def s2Step185ExitFExtra : List Wire := [825]

private def s2Step185ExitFvExtra : List Wire := [807]

private def s2Step185ExitGExtra : List Wire := [176, 846]

private def s2Step185ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<176) ∨ (177≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185ExitGvExtra : List Wire := [824]

private def s2Step185Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185Add0Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step185Add0_bounded : s2Step185Add0Work.toFinset⊆arenaWires := by
  have h : s2Step185Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step185Add0During : Arena := ⟨s2Step185Add0Arena.live∪s2Step185Add0Work.toFinset,Finset.union_subset s2Step185Add0Arena.bounded s2Step185Add0_bounded⟩

private def s2Step185Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185Add1Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step185Add1_bounded : s2Step185Add1Work.toFinset⊆arenaWires := by
  have h : s2Step185Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step185Add1During : Arena := ⟨s2Step185Add1Arena.live∪s2Step185Add1Work.toFinset,Finset.union_subset s2Step185Add1Arena.bounded s2Step185Add1_bounded⟩

private def s2Step185F4FlagArena : Arena := ⟨s2Step185HeadFvAfter.live∪{803},Finset.union_subset s2Step185HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step185F4Plan : HmrHybridF4Plan := ⟨s2Step185F4FlagArena,[803],s2Step185Add0Arena,[799],s2Step185Add0During,s2Step185Add0Work,s2Step185Add1During,s2Step185Add1Work⟩

private def s2Step185HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 825],768⟩

private def s2Step185HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 807],770⟩

private def s2Step185HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 846],769⟩

private def s2Step185HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 824],771⟩

private def s2Step185FrontHead : WindowBank := ⟨s2Step185HeadFOut,s2Step185HeadGOut,s2Step185HeadFvOut,s2Step185HeadGvOut⟩

private def s2Step185EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩

private def s2Step185EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830],770⟩

private def s2Step185EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176],769⟩

private def s2Step185EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831],771⟩

private def s2Step185FrontPair : WindowBank := ⟨s2Step185EntryFOut,s2Step185EntryGOut,s2Step185EntryFvOut,s2Step185EntryGvOut⟩

private def s2Step185FrontSigmaArena : Arena := ⟨s2Step185EntryGvAfter.live∪{802},Finset.union_subset s2Step185EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step185HeadFFresh : List Wire := [825]

private def s2Step185HeadFvFresh : List Wire := [807]

private def s2Step185HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185HeadGFresh : List Wire := [846]

private def s2Step185HeadGvFresh : List Wire := [824]

private def s2Step185FrontPlan : HmrSourceFront := ⟨s2Step185EntryGvAfter,s2Step185FrontPair,(growRow 768 s2Step185EntryFFresh ++ (growRow 769 s2Step185EntryGFresh ++ (growRow 770 s2Step185EntryFvFresh ++ (growRow 771 s2Step185EntryGvFresh ++ [])))),s2Step185FrontSigmaArena,[802],s2Step185HeadGBefore,[794],
  s2Step185HeadFvAfter,s2Step185FrontHead,(growRow 769 s2Step185HeadGFresh ++ (growRow 768 s2Step185HeadFFresh ++ (growRow 771 s2Step185HeadGvFresh ++ (growRow 770 s2Step185HeadFvFresh ++ [])))),s2Step185F4Plan,s2Step185CounterDuring,s2Step185CounterWork,s2Step185ExitGvAfter,s2Step185FrontOut,(shrinkRow 769 s2Step185ExitGExtra ++ (shrinkRow 768 s2Step185ExitFExtra ++ (shrinkRow 770 s2Step185ExitFvExtra ++ (shrinkRow 771 s2Step185ExitGvExtra ++ []))))⟩

private def s2Step185CompletePlan : HmrEarlyStepPlan := ⟨s2Step185FrontPlan,s2Step185EarlyControlArena,s2Step185EarlyControlPlan,s2Step185CompleteMoves⟩

private theorem s2Step185Complete_apart : List.Disjoint (s2Step185CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [802, 794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] := by
  have nd : ((s2Step185CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[802, 794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step185Complete_owned : (s2Step185CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step185EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step185EarlyControlArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step185CompleteMoveArena : Arena := ⟨s2Step185ExitGvAfter.live∪{176},Finset.union_subset s2Step185ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step185Complete_repack : s2Step185ExitGvAfter.checkRepack s2Step185CompleteMoves=some s2Step185EarlyControlArena := by
  have owned : 840∈s2Step185ExitGvAfter.live := by norm_num [s2Step185ExitGvAfter,arenaWires]
  have reserve : s2Step185ExitGvAfter.reserve {176}=some s2Step185CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step185ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step185CompleteMoveArena.retireSet {840}=s2Step185EarlyControlArena := by
    unfold Arena.retireSet s2Step185EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step185CompleteMoveArena,s2Step185ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step185CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step185CompleteMoveArena.retireSet {840}).checkRepack []=some s2Step185EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step185EarlyControl_branchOwned : ([794] : List Wire).toFinset⊆s2Step185EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step185EarlyControlSigmaArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185EarlyControl_branch : compileHmrBranchRetirement s2Step185EarlyControlSigmaArena 794=some s2Step185EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step185EarlyControl_branchOwned
  · ext q
    simp [s2Step185EarlyControlOutputArena,s2Step185EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step185EarlyControl_classEqualityBorrow : s2Step185EarlyControlPositiveArena.checkBorrow (([802, 803] : List Wire).length-1) s2Step185EarlyControlLog.classWork=some s2Step185EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step185EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step185EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step185EarlyControlEqualityArena,s2Step185EarlyControlPositiveArena,s2Step185EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step185EarlyControl_classEqualityOwned : ([802, 803] : List Wire).toFinset⊆s2Step185EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step185EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185EarlyControl_classEquality : compileHmrEqualityLog s2Step185EarlyControlPositiveArena [802, 803] 0 s2Step185EarlyControlLog.classWork=some (s2Step185EarlyControlEqualityArena,s2Step185EarlyControlLog.classWork,s2Step185EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step185EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step185EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step185EarlyControl_classOwned : ([777, 846, 802] : List Wire).toFinset⊆s2Step185EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step185EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185EarlyControl_positiveBorrow : s2Step185EarlyControlZeroArena.checkBorrow (1) s2Step185EarlyControlLog.positiveWork=some s2Step185EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step185EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step185EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step185EarlyControlPositiveArena,s2Step185EarlyControlZeroArena,s2Step185EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step185EarlyControl_class : compileHmrSourceClassLog s2Step185EarlyControlZeroArena false 777 s2Step185EarlyControlZeroPlan.top 0 802 s2Step185EarlyControlLog.positiveWork s2Step185EarlyControlLog.classWork=some s2Step185EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step185EarlyControlClassPlan s2Step185EarlyControlZeroArena false 777 s2Step185EarlyControlZeroPlan.top 0 802
  constructor
  · decide +kernel
  · exact s2Step185EarlyControl_classOwned
  · exact s2Step185EarlyControl_positiveBorrow
  · exact s2Step185EarlyControl_classEquality

private theorem s2Step185EarlyControl_entryRecordOwned : ([794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step185EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step185EarlyControlArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185EarlyControl_entrySigmaOwned : ([802, 254] : List Wire).toFinset⊆s2Step185EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step185EarlyControlArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185EarlyControl_fitBorrow : s2Step185EarlyControlFlagArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step185EarlyControlLog.recordFresh=some s2Step185EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step185EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step185EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
      decide +kernel
    · ext q
      simp [s2Step185EarlyControlFittedArena,s2Step185EarlyControlFlagArena,s2Step185EarlyControlLog,arenaWires]

private theorem s2Step185EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step185EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step185EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step185EarlyControl_fit : compileHmrRecordGrowLog s2Step185EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step185EarlyControlLog.recordFresh=some s2Step185EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step185EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step185EarlyControl_fitBorrow

private theorem s2Step185EarlyControl_flagsBorrow : s2Step185EarlyControlEqualityArena.checkBorrow (6) s2Step185EarlyControlLog.flagWork=some s2Step185EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step185EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step185EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step185EarlyControlFlagArena,s2Step185EarlyControlEqualityArena,s2Step185EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step185EarlyControl_flagsOwned : ([799, 253, 252, 251] : List Wire).toFinset⊆s2Step185EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step185EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185EarlyControl_flags : compileHmrFlagsLog s2Step185EarlyControlClassPlan.equalityArena s2Step185EarlyControlClassPlan.equality.top 253 252 251 s2Step185EarlyControlLog.flagWork=some s2Step185EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step185EarlyControl_flagsOwned⟩
  · exact s2Step185EarlyControl_flagsBorrow

private theorem s2Step185EarlyControl_historyBorrow : s2Step185EarlyControlArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step185EarlyControlLog.recordFresh=some s2Step185EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step185EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step185EarlyControlArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step185EarlyControlHistoryArena,s2Step185EarlyControlArena,s2Step185EarlyControlLog,arenaWires]

private theorem s2Step185EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step185EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step185EarlyControlArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185EarlyControl_history : compileHmrRecordGrowLog s2Step185EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step185EarlyControlLog.recordFresh=some s2Step185EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step185EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step185EarlyControl_historyBorrow

private theorem s2Step185EarlyControl_sigmaOwned : ([254, 802] : List Wire).toFinset⊆s2Step185EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step185EarlyControlHistoryArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185EarlyControl_sigmaReleaseOwned : ([802] : List Wire).toFinset⊆s2Step185EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step185EarlyControlHistoryArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185EarlyControl_sigmaRelease : s2Step185EarlyControlHistoryArena.release {802} (fun _ => false)=some s2Step185EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step185EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step185EarlyControlSigmaArena,s2Step185EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step185EarlyControl_sigma : compileHmrSigmaDropLog s2Step185EarlyControlHistoryArena false 0 0 254 802 []=some s2Step185EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step185EarlyControl_sigmaOwned⟩
  · exact s2Step185EarlyControl_sigmaRelease

private theorem s2Step185EarlyControl_zeroBorrow : s2Step185EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step185EarlyControlLog.zeroWork=some s2Step185EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step185EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step185EarlyControlArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step185EarlyControlZeroArena,s2Step185EarlyControlArena,s2Step185EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step185EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step185EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step185EarlyControlArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185EarlyControl_zero : compileHmrEqualityLog s2Step185EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step185EarlyControlLog.zeroWork=some (s2Step185EarlyControlZeroArena,s2Step185EarlyControlLog.zeroWork,s2Step185EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step185EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step185EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step185EarlyControl_logged : s2Step185EarlyControlPlan.Logged s2Step185EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 802 254 253 252 251 794 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step185EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step185EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step185EarlyControl_zero
  · exact s2Step185EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step185EarlyControl_flags
  · exact s2Step185EarlyControl_fit
  · exact s2Step185EarlyControl_history
  · exact s2Step185EarlyControl_sigma
  · exact s2Step185EarlyControl_branch

private theorem s2Step185EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step185EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 802 254 253 252 251 794 43 s2Step185EarlyControlLog=some s2Step185EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step185EarlyControlPlan s2Step185EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 802 254 253 252 251 794 43 s2Step185EarlyControl_logged

private def s2Step185EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<831) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩

private def s2Step185EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830],770⟩

private def s2Step185EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176],769⟩

private def s2Step185EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834],771⟩

private def s2Step185FrontBank : WindowBank := ⟨s2Step185EntryFRow,s2Step185EntryGRow,s2Step185EntryFvRow,s2Step185EntryGvRow⟩

private def s2Step185Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 825, 768]

private def s2Step185Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 846, 769]

private def s2Step185Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 807, 770]

private def s2Step185Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 824, 771]

private theorem s2Step185Counter_apart : Disjoint s2Step185HeadFvAfter.live s2Step185CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step185HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185Counter_borrowed : s2Step185HeadFvAfter.checkBorrow 4 s2Step185CounterWork=some s2Step185CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step185HeadFvAfter s2Step185CounterDuring s2Step185CounterWork.toFinset s2Step185Counter_bounded s2Step185Counter_apart rfl

private theorem s2Step185Counter_owned : (802::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step185HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step185HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185Counter_checked : compileHmrCounterStepLog s2Step185HeadFvAfter true 802 [772, 773, 774, 775, 776, 777] s2Step185CounterWork=some s2Step185CounterDuring := by
  have owned : ∀q∈802::[772, 773, 774, 775, 776, 777],q∈s2Step185HeadFvAfter.live := fun q hq => s2Step185Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step185Counter_borrowed

private def s2Step185EntryFAfter : Arena := s2Step185EntryFBefore

private theorem s2Step185EntryBank_incomingDistinct : ([s2Step185EntryFRow,s2Step185EntryGRow,s2Step185EntryFvRow,s2Step185EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185EntryF_Incoming : rowsOwned s2Step185EntryFBefore [s2Step185EntryFRow,s2Step185EntryGRow,s2Step185EntryFvRow,s2Step185EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step185EntryFRow,s2Step185EntryGRow,s2Step185EntryFvRow,s2Step185EntryGvRow] 0 s2Step185EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step185EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<831) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step185EntryBank_outgoingOwned : rowsOwned s2Step185EntryGvAfter [s2Step185EntryFOut,s2Step185EntryGOut,s2Step185EntryFvOut,s2Step185EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step185EntryGvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step185EntryF_Outgoing : rowsOwned s2Step185EntryGvAfter [s2Step185EntryFOut,s2Step185EntryGOut,s2Step185EntryFvOut,s2Step185EntryGvOut] :=
  hmrRows_owned_drop s2Step185EntryGvAfter [s2Step185EntryFOut,s2Step185EntryGOut,s2Step185EntryFvOut,s2Step185EntryGvOut] 0 s2Step185EntryBank_outgoingOwned

private theorem s2Step185EntryF_distinct : (s2Step185EntryFRow.sign::s2Step185EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185EntryF_owned : (s2Step185EntryFRow.sign::s2Step185EntryFRow.payload).toFinset⊆s2Step185EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step185EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<831) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185EntryF_reserved : s2Step185EntryFBefore.reserve s2Step185EntryFFresh.toFinset=some s2Step185EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step185EntryFFresh,arenaWires]
  · norm_num [s2Step185EntryFBefore,s2Step185EntryFFresh,arenaWires]
  · simp only [s2Step185EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step185EntryF_checked : planRowResizeLog s2Step185EntryFBefore s2Step185EntryFRow 177 s2Step185EntryFFresh=
    some (s2Step185EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩,growRow 768 s2Step185EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step185EntryFBefore s2Step185EntryFAfter s2Step185EntryFRow 177 s2Step185EntryFFresh
    s2Step185EntryF_distinct s2Step185EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step185EntryF_reserved
  have rowEq : WindowRow.mk (s2Step185EntryFRow.payload++s2Step185EntryFFresh) s2Step185EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step185EntryFvAfter : Arena := s2Step185EntryFBefore

private def s2Step185EntryFvBefore : Arena := s2Step185EntryFBefore

private theorem s2Step185EntryFv_Incoming : rowsOwned s2Step185EntryFvBefore [s2Step185EntryFvRow,s2Step185EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step185EntryFRow,s2Step185EntryGRow,s2Step185EntryFvRow,s2Step185EntryGvRow] 2 s2Step185EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step185EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<831) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step185EntryFv_Outgoing : rowsOwned s2Step185EntryGvAfter [s2Step185EntryFvOut,s2Step185EntryGvOut] :=
  hmrRows_owned_drop s2Step185EntryGvAfter [s2Step185EntryFOut,s2Step185EntryGOut,s2Step185EntryFvOut,s2Step185EntryGvOut] 2 s2Step185EntryBank_outgoingOwned

private theorem s2Step185EntryFv_distinct : (s2Step185EntryFvRow.sign::s2Step185EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185EntryFv_owned : (s2Step185EntryFvRow.sign::s2Step185EntryFvRow.payload).toFinset⊆s2Step185EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step185EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<831) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185EntryFv_reserved : s2Step185EntryFvBefore.reserve s2Step185EntryFvFresh.toFinset=some s2Step185EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step185EntryFvFresh,arenaWires]
  · norm_num [s2Step185EntryFvBefore,s2Step185EntryFBefore,s2Step185EntryFvFresh,arenaWires]
  · simp only [s2Step185EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step185EntryFv_checked : planRowResizeLog s2Step185EntryFvBefore s2Step185EntryFvRow 107 s2Step185EntryFvFresh=
    some (s2Step185EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830],770⟩,growRow 770 s2Step185EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step185EntryFvBefore s2Step185EntryFvAfter s2Step185EntryFvRow 107 s2Step185EntryFvFresh
    s2Step185EntryFv_distinct s2Step185EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step185EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step185EntryFvRow.payload++s2Step185EntryFvFresh) s2Step185EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step185EntryGAfter : Arena := s2Step185EntryFBefore

private def s2Step185EntryGBefore : Arena := s2Step185EntryFBefore

private theorem s2Step185EntryG_Incoming : rowsOwned s2Step185EntryGBefore [s2Step185EntryGRow,s2Step185EntryFvRow,s2Step185EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step185EntryFRow,s2Step185EntryGRow,s2Step185EntryFvRow,s2Step185EntryGvRow] 1 s2Step185EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step185EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<831) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step185EntryG_Outgoing : rowsOwned s2Step185EntryGvAfter [s2Step185EntryGOut,s2Step185EntryFvOut,s2Step185EntryGvOut] :=
  hmrRows_owned_drop s2Step185EntryGvAfter [s2Step185EntryFOut,s2Step185EntryGOut,s2Step185EntryFvOut,s2Step185EntryGvOut] 1 s2Step185EntryBank_outgoingOwned

private theorem s2Step185EntryG_distinct : (s2Step185EntryGRow.sign::s2Step185EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185EntryG_owned : (s2Step185EntryGRow.sign::s2Step185EntryGRow.payload).toFinset⊆s2Step185EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step185EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<831) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185EntryG_reserved : s2Step185EntryGBefore.reserve s2Step185EntryGFresh.toFinset=some s2Step185EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step185EntryGFresh,arenaWires]
  · norm_num [s2Step185EntryGBefore,s2Step185EntryFBefore,s2Step185EntryGFresh,arenaWires]
  · simp only [s2Step185EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step185EntryG_checked : planRowResizeLog s2Step185EntryGBefore s2Step185EntryGRow 177 s2Step185EntryGFresh=
    some (s2Step185EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176],769⟩,growRow 769 s2Step185EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step185EntryGBefore s2Step185EntryGAfter s2Step185EntryGRow 177 s2Step185EntryGFresh
    s2Step185EntryG_distinct s2Step185EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step185EntryG_reserved
  have rowEq : WindowRow.mk (s2Step185EntryGRow.payload++s2Step185EntryGFresh) s2Step185EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step185EntryGvBefore : Arena := s2Step185EntryFBefore

private theorem s2Step185EntryGv_Incoming : rowsOwned s2Step185EntryGvBefore [s2Step185EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step185EntryFRow,s2Step185EntryGRow,s2Step185EntryFvRow,s2Step185EntryGvRow] 3 s2Step185EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step185EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<831) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step185EntryGv_Outgoing : rowsOwned s2Step185EntryGvAfter [s2Step185EntryGvOut] :=
  hmrRows_owned_drop s2Step185EntryGvAfter [s2Step185EntryFOut,s2Step185EntryGOut,s2Step185EntryFvOut,s2Step185EntryGvOut] 3 s2Step185EntryBank_outgoingOwned

private theorem s2Step185EntryGv_distinct : (s2Step185EntryGvRow.sign::s2Step185EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185EntryGv_owned : (s2Step185EntryGvRow.sign::s2Step185EntryGvRow.payload).toFinset⊆s2Step185EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step185EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<831) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185EntryGv_reserved : s2Step185EntryGvBefore.reserve s2Step185EntryGvFresh.toFinset=some s2Step185EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step185EntryGvFresh,arenaWires]
  · norm_num [s2Step185EntryGvBefore,s2Step185EntryFBefore,s2Step185EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step185EntryGvAfter,s2Step185EntryGvBefore,s2Step185EntryFBefore,s2Step185EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step185EntryGv_checked : planRowResizeLog s2Step185EntryGvBefore s2Step185EntryGvRow 107 s2Step185EntryGvFresh=
    some (s2Step185EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831],771⟩,growRow 771 s2Step185EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step185EntryGvBefore s2Step185EntryGvAfter s2Step185EntryGvRow 107 s2Step185EntryGvFresh
    s2Step185EntryGv_distinct s2Step185EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step185EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step185EntryGvRow.payload++s2Step185EntryGvFresh) s2Step185EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step185EntryBank_rows : planWindowRowsLog s2Step185EntryFBefore [(s2Step185EntryFRow,177),(s2Step185EntryGRow,177),(s2Step185EntryFvRow,107),(s2Step185EntryGvRow,107)] [s2Step185EntryFFresh,s2Step185EntryGFresh,s2Step185EntryFvFresh,s2Step185EntryGvFresh]=
    some (s2Step185EntryGvAfter,[s2Step185EntryFOut,s2Step185EntryGOut,s2Step185EntryFvOut,s2Step185EntryGvOut],(growRow 768 s2Step185EntryFFresh ++ (growRow 769 s2Step185EntryGFresh ++ (growRow 770 s2Step185EntryFvFresh ++ (growRow 771 s2Step185EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step185EntryGvAfter [] []=some (s2Step185EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step185EntryGvBefore s2Step185EntryGvAfter s2Step185EntryGvAfter
    s2Step185EntryGvRow s2Step185EntryGvOut 107 s2Step185EntryGvFresh [] [] []
    (growRow 771 s2Step185EntryGvFresh) ([]) s2Step185EntryGv_Incoming s2Step185EntryGv_checked h4 s2Step185EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step185EntryFvBefore s2Step185EntryFvAfter s2Step185EntryGvAfter
    s2Step185EntryFvRow s2Step185EntryFvOut 107 s2Step185EntryFvFresh [(s2Step185EntryGvRow,107)] [s2Step185EntryGvFresh] [s2Step185EntryGvOut]
    (growRow 770 s2Step185EntryFvFresh) ((growRow 771 s2Step185EntryGvFresh ++ [])) s2Step185EntryFv_Incoming s2Step185EntryFv_checked h3 s2Step185EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step185EntryGBefore s2Step185EntryGAfter s2Step185EntryGvAfter
    s2Step185EntryGRow s2Step185EntryGOut 177 s2Step185EntryGFresh [(s2Step185EntryFvRow,107),(s2Step185EntryGvRow,107)] [s2Step185EntryFvFresh,s2Step185EntryGvFresh] [s2Step185EntryFvOut,s2Step185EntryGvOut]
    (growRow 769 s2Step185EntryGFresh) ((growRow 770 s2Step185EntryFvFresh ++ (growRow 771 s2Step185EntryGvFresh ++ []))) s2Step185EntryG_Incoming s2Step185EntryG_checked h2 s2Step185EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step185EntryFBefore s2Step185EntryFAfter s2Step185EntryGvAfter
    s2Step185EntryFRow s2Step185EntryFOut 177 s2Step185EntryFFresh [(s2Step185EntryGRow,177),(s2Step185EntryFvRow,107),(s2Step185EntryGvRow,107)] [s2Step185EntryGFresh,s2Step185EntryFvFresh,s2Step185EntryGvFresh] [s2Step185EntryGOut,s2Step185EntryFvOut,s2Step185EntryGvOut]
    (growRow 768 s2Step185EntryFFresh) ((growRow 769 s2Step185EntryGFresh ++ (growRow 770 s2Step185EntryFvFresh ++ (growRow 771 s2Step185EntryGvFresh ++ [])))) s2Step185EntryF_Incoming s2Step185EntryF_checked h1 s2Step185EntryF_Outgoing
  exact h0

private theorem s2Step185EntryBank_checked : compileHmrBankResizeLog .entry s2Step185EntryFBefore ⟨s2Step185EntryFRow,s2Step185EntryGRow,s2Step185EntryFvRow,s2Step185EntryGvRow⟩ ⟨177,177,107,107⟩ [s2Step185EntryFFresh,s2Step185EntryGFresh,s2Step185EntryFvFresh,s2Step185EntryGvFresh]=
    some (s2Step185EntryGvAfter,⟨s2Step185EntryFOut,s2Step185EntryGOut,s2Step185EntryFvOut,s2Step185EntryGvOut⟩,(growRow 768 s2Step185EntryFFresh ++ (growRow 769 s2Step185EntryGFresh ++ (growRow 770 s2Step185EntryFvFresh ++ (growRow 771 s2Step185EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step185EntryBank_rows]
  rfl

private def s2Step185ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<176) ∨ (177≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<176) ∨ (177≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185ExitFBefore : Arena := s2Step185ExitGAfter

private def s2Step185ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 825],768⟩

private def s2Step185ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 807],770⟩

private def s2Step185ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 846],769⟩

private def s2Step185ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 824],771⟩

private theorem s2Step185ExitBank_incomingDistinct : ([s2Step185ExitGRow,s2Step185ExitFRow,s2Step185ExitFvRow,s2Step185ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185ExitF_Incoming : rowsOwned s2Step185ExitFBefore [s2Step185ExitFRow,s2Step185ExitFvRow,s2Step185ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step185ExitGRow,s2Step185ExitFRow,s2Step185ExitFvRow,s2Step185ExitGvRow] 1 s2Step185ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step185ExitFBefore (fun q => (0≤q ∧ q<176) ∨ (177≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step185ExitBank_outgoingOwned : rowsOwned s2Step185ExitGvAfter [s2Step185ExitGOut,s2Step185ExitFOut,s2Step185ExitFvOut,s2Step185ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step185ExitGvAfter (fun q => (0≤q ∧ q<176) ∨ (177≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step185ExitF_Outgoing : rowsOwned s2Step185ExitGvAfter [s2Step185ExitFOut,s2Step185ExitFvOut,s2Step185ExitGvOut] :=
  hmrRows_owned_drop s2Step185ExitGvAfter [s2Step185ExitGOut,s2Step185ExitFOut,s2Step185ExitFvOut,s2Step185ExitGvOut] 1 s2Step185ExitBank_outgoingOwned

private theorem s2Step185ExitF_distinct : (s2Step185ExitFRow.sign::s2Step185ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185ExitF_owned : (s2Step185ExitFRow.sign::s2Step185ExitFRow.payload).toFinset⊆s2Step185ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step185ExitFBefore (fun q => (0≤q ∧ q<176) ∨ (177≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185ExitF_retired : s2Step185ExitFBefore.retireSet s2Step185ExitFExtra.toFinset=s2Step185ExitFAfter := by
  unfold Arena.retireSet s2Step185ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step185ExitFBefore,s2Step185ExitGAfter,s2Step185ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step185ExitF_checked : planRowResizeLog s2Step185ExitFBefore s2Step185ExitFRow 177 []=
    some (s2Step185ExitFAfter,s2Step185ExitFOut,shrinkRow 768 s2Step185ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step185ExitFBefore s2Step185ExitFRow 177 s2Step185ExitF_distinct s2Step185ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step185ExitFRow.payload.take 177) s2Step185ExitFRow.sign=s2Step185ExitFOut := by decide +kernel
  have hi : s2Step185ExitFRow.payload.drop 177=s2Step185ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step185ExitF_retired] at result
  exact result

private def s2Step185ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<176) ∨ (177≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<825) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185ExitFvBefore : Arena := s2Step185ExitFAfter

private theorem s2Step185ExitFv_Incoming : rowsOwned s2Step185ExitFvBefore [s2Step185ExitFvRow,s2Step185ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step185ExitGRow,s2Step185ExitFRow,s2Step185ExitFvRow,s2Step185ExitGvRow] 2 s2Step185ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step185ExitFvBefore (fun q => (0≤q ∧ q<176) ∨ (177≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step185ExitFv_Outgoing : rowsOwned s2Step185ExitGvAfter [s2Step185ExitFvOut,s2Step185ExitGvOut] :=
  hmrRows_owned_drop s2Step185ExitGvAfter [s2Step185ExitGOut,s2Step185ExitFOut,s2Step185ExitFvOut,s2Step185ExitGvOut] 2 s2Step185ExitBank_outgoingOwned

private theorem s2Step185ExitFv_distinct : (s2Step185ExitFvRow.sign::s2Step185ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185ExitFv_owned : (s2Step185ExitFvRow.sign::s2Step185ExitFvRow.payload).toFinset⊆s2Step185ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step185ExitFvBefore (fun q => (0≤q ∧ q<176) ∨ (177≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<825) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185ExitFv_retired : s2Step185ExitFvBefore.retireSet s2Step185ExitFvExtra.toFinset=s2Step185ExitFvAfter := by
  unfold Arena.retireSet s2Step185ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step185ExitFvBefore,s2Step185ExitFAfter,s2Step185ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step185ExitFv_checked : planRowResizeLog s2Step185ExitFvBefore s2Step185ExitFvRow 107 []=
    some (s2Step185ExitFvAfter,s2Step185ExitFvOut,shrinkRow 770 s2Step185ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step185ExitFvBefore s2Step185ExitFvRow 107 s2Step185ExitFv_distinct s2Step185ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step185ExitFvRow.payload.take 107) s2Step185ExitFvRow.sign=s2Step185ExitFvOut := by decide +kernel
  have hi : s2Step185ExitFvRow.payload.drop 107=s2Step185ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step185ExitFv_retired] at result
  exact result

private def s2Step185ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step185ExitG_Incoming : rowsOwned s2Step185ExitGBefore [s2Step185ExitGRow,s2Step185ExitFRow,s2Step185ExitFvRow,s2Step185ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step185ExitGRow,s2Step185ExitFRow,s2Step185ExitFvRow,s2Step185ExitGvRow] 0 s2Step185ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step185ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step185ExitG_Outgoing : rowsOwned s2Step185ExitGvAfter [s2Step185ExitGOut,s2Step185ExitFOut,s2Step185ExitFvOut,s2Step185ExitGvOut] :=
  hmrRows_owned_drop s2Step185ExitGvAfter [s2Step185ExitGOut,s2Step185ExitFOut,s2Step185ExitFvOut,s2Step185ExitGvOut] 0 s2Step185ExitBank_outgoingOwned

private theorem s2Step185ExitG_distinct : (s2Step185ExitGRow.sign::s2Step185ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185ExitG_owned : (s2Step185ExitGRow.sign::s2Step185ExitGRow.payload).toFinset⊆s2Step185ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step185ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185ExitG_retired : s2Step185ExitGBefore.retireSet s2Step185ExitGExtra.toFinset=s2Step185ExitGAfter := by
  unfold Arena.retireSet s2Step185ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step185ExitGBefore,s2Step185ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step185ExitG_checked : planRowResizeLog s2Step185ExitGBefore s2Step185ExitGRow 176 []=
    some (s2Step185ExitGAfter,s2Step185ExitGOut,shrinkRow 769 s2Step185ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step185ExitGBefore s2Step185ExitGRow 176 s2Step185ExitG_distinct s2Step185ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step185ExitGRow.payload.take 176) s2Step185ExitGRow.sign=s2Step185ExitGOut := by decide +kernel
  have hi : s2Step185ExitGRow.payload.drop 176=s2Step185ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step185ExitG_retired] at result
  exact result

private def s2Step185ExitGvBefore : Arena := s2Step185ExitFvAfter

private theorem s2Step185ExitGv_Incoming : rowsOwned s2Step185ExitGvBefore [s2Step185ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step185ExitGRow,s2Step185ExitFRow,s2Step185ExitFvRow,s2Step185ExitGvRow] 3 s2Step185ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step185ExitGvBefore (fun q => (0≤q ∧ q<176) ∨ (177≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<825) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step185ExitGv_Outgoing : rowsOwned s2Step185ExitGvAfter [s2Step185ExitGvOut] :=
  hmrRows_owned_drop s2Step185ExitGvAfter [s2Step185ExitGOut,s2Step185ExitFOut,s2Step185ExitFvOut,s2Step185ExitGvOut] 3 s2Step185ExitBank_outgoingOwned

private theorem s2Step185ExitGv_distinct : (s2Step185ExitGvRow.sign::s2Step185ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185ExitGv_owned : (s2Step185ExitGvRow.sign::s2Step185ExitGvRow.payload).toFinset⊆s2Step185ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step185ExitGvBefore (fun q => (0≤q ∧ q<176) ∨ (177≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<825) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185ExitGv_retired : s2Step185ExitGvBefore.retireSet s2Step185ExitGvExtra.toFinset=s2Step185ExitGvAfter := by
  unfold Arena.retireSet s2Step185ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step185ExitGvBefore,s2Step185ExitFvAfter,s2Step185ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step185ExitGv_checked : planRowResizeLog s2Step185ExitGvBefore s2Step185ExitGvRow 107 []=
    some (s2Step185ExitGvAfter,s2Step185ExitGvOut,shrinkRow 771 s2Step185ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step185ExitGvBefore s2Step185ExitGvRow 107 s2Step185ExitGv_distinct s2Step185ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step185ExitGvRow.payload.take 107) s2Step185ExitGvRow.sign=s2Step185ExitGvOut := by decide +kernel
  have hi : s2Step185ExitGvRow.payload.drop 107=s2Step185ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step185ExitGv_retired] at result
  exact result

private theorem s2Step185ExitBank_rows : planWindowRowsLog s2Step185ExitGBefore [(s2Step185ExitGRow,176),(s2Step185ExitFRow,177),(s2Step185ExitFvRow,107),(s2Step185ExitGvRow,107)] [[],[],[],[]]=
    some (s2Step185ExitGvAfter,[s2Step185ExitGOut,s2Step185ExitFOut,s2Step185ExitFvOut,s2Step185ExitGvOut],(shrinkRow 769 s2Step185ExitGExtra ++ (shrinkRow 768 s2Step185ExitFExtra ++ (shrinkRow 770 s2Step185ExitFvExtra ++ (shrinkRow 771 s2Step185ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step185ExitGvAfter [] []=some (s2Step185ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step185ExitGvBefore s2Step185ExitGvAfter s2Step185ExitGvAfter
    s2Step185ExitGvRow s2Step185ExitGvOut 107 [] [] [] []
    (shrinkRow 771 s2Step185ExitGvExtra) ([]) s2Step185ExitGv_Incoming s2Step185ExitGv_checked h4 s2Step185ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step185ExitFvBefore s2Step185ExitFvAfter s2Step185ExitGvAfter
    s2Step185ExitFvRow s2Step185ExitFvOut 107 [] [(s2Step185ExitGvRow,107)] [[]] [s2Step185ExitGvOut]
    (shrinkRow 770 s2Step185ExitFvExtra) ((shrinkRow 771 s2Step185ExitGvExtra ++ [])) s2Step185ExitFv_Incoming s2Step185ExitFv_checked h3 s2Step185ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step185ExitFBefore s2Step185ExitFAfter s2Step185ExitGvAfter
    s2Step185ExitFRow s2Step185ExitFOut 177 [] [(s2Step185ExitFvRow,107),(s2Step185ExitGvRow,107)] [[],[]] [s2Step185ExitFvOut,s2Step185ExitGvOut]
    (shrinkRow 768 s2Step185ExitFExtra) ((shrinkRow 770 s2Step185ExitFvExtra ++ (shrinkRow 771 s2Step185ExitGvExtra ++ []))) s2Step185ExitF_Incoming s2Step185ExitF_checked h2 s2Step185ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step185ExitGBefore s2Step185ExitGAfter s2Step185ExitGvAfter
    s2Step185ExitGRow s2Step185ExitGOut 176 [] [(s2Step185ExitFRow,177),(s2Step185ExitFvRow,107),(s2Step185ExitGvRow,107)] [[],[],[]] [s2Step185ExitFOut,s2Step185ExitFvOut,s2Step185ExitGvOut]
    (shrinkRow 769 s2Step185ExitGExtra) ((shrinkRow 768 s2Step185ExitFExtra ++ (shrinkRow 770 s2Step185ExitFvExtra ++ (shrinkRow 771 s2Step185ExitGvExtra ++ [])))) s2Step185ExitG_Incoming s2Step185ExitG_checked h1 s2Step185ExitG_Outgoing
  exact h0

private theorem s2Step185ExitBank_checked : compileHmrBankResizeLog .exit s2Step185ExitGBefore ⟨s2Step185ExitFRow,s2Step185ExitGRow,s2Step185ExitFvRow,s2Step185ExitGvRow⟩ ⟨177,176,107,107⟩ [[],[],[],[]]=
    some (s2Step185ExitGvAfter,⟨s2Step185ExitFOut,s2Step185ExitGOut,s2Step185ExitFvOut,s2Step185ExitGvOut⟩,(shrinkRow 769 s2Step185ExitGExtra ++ (shrinkRow 768 s2Step185ExitFExtra ++ (shrinkRow 770 s2Step185ExitFvExtra ++ (shrinkRow 771 s2Step185ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step185ExitBank_rows]
  rfl

private theorem s2Step185Add0_apart : Disjoint s2Step185Add0Arena.live s2Step185Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step185Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185Add0_card : s2Step185Add0Arena.live.card=885 := by
  decide +kernel

private theorem s2Step185Add0_borrowed : s2Step185Add0Arena.checkBorrow (hmrHybridCount s2Step185Add0Arena s2Step185Add0B.length) s2Step185Add0Work=some s2Step185Add0During := by
  have len : s2Step185Add0Work.length=hmrHybridCount s2Step185Add0Arena s2Step185Add0B.length := by
    rw [hmrHybridCount,s2Step185Add0_card]
    decide +kernel
  have nd : s2Step185Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step185Add0Arena s2Step185Add0During s2Step185Add0Work.toFinset s2Step185Add0_bounded s2Step185Add0_apart rfl

private theorem s2Step185Add0_distinct : (803::794::799::(s2Step185Add0A++s2Step185Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185Add0_owned : (803::794::799::(s2Step185Add0A++s2Step185Add0B)).toFinset⊆s2Step185Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step185Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185Add0_checked : compileHmrHybridCinLog s2Step185Add0Arena 794 803 799 s2Step185Add0A s2Step185Add0B s2Step185Add0Work=some s2Step185Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step185Add0Arena s2Step185Add0During 794 803 799 s2Step185Add0A s2Step185Add0B s2Step185Add0Work
    (by decide +kernel) (by decide +kernel) s2Step185Add0_distinct
    (fun q hq => s2Step185Add0_owned (List.mem_toFinset.mpr hq)) s2Step185Add0_borrowed

private theorem s2Step185Add1_apart : Disjoint s2Step185Add1Arena.live s2Step185Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step185Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185Add1_card : s2Step185Add1Arena.live.card=885 := by
  decide +kernel

private theorem s2Step185Add1_borrowed : s2Step185Add1Arena.checkBorrow (hmrHybridCount s2Step185Add1Arena s2Step185Add1B.length) s2Step185Add1Work=some s2Step185Add1During := by
  have len : s2Step185Add1Work.length=hmrHybridCount s2Step185Add1Arena s2Step185Add1B.length := by
    rw [hmrHybridCount,s2Step185Add1_card]
    decide +kernel
  have nd : s2Step185Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step185Add1Arena s2Step185Add1During s2Step185Add1Work.toFinset s2Step185Add1_bounded s2Step185Add1_apart rfl

private theorem s2Step185Add1_distinct : (803::794::799::(s2Step185Add1A++s2Step185Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185Add1_owned : (803::794::799::(s2Step185Add1A++s2Step185Add1B)).toFinset⊆s2Step185Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step185Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185Add1_checked : compileHmrHybridCinLog s2Step185Add1Arena 794 803 799 s2Step185Add1A s2Step185Add1B s2Step185Add1Work=some s2Step185Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step185Add1Arena s2Step185Add1During 794 803 799 s2Step185Add1A s2Step185Add1B s2Step185Add1Work
    (by decide +kernel) (by decide +kernel) s2Step185Add1_distinct
    (fun q hq => s2Step185Add1_owned (List.mem_toFinset.mpr hq)) s2Step185Add1_borrowed

private theorem s2Step185F4_apart : Disjoint (s2Step185Add0A++s2Step185Add0B).toFinset (s2Step185Add1A++s2Step185Add1B).toFinset := by
  have nd : ((s2Step185Add0A++s2Step185Add0B)++(s2Step185Add1A++s2Step185Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step185F4_carry : s2Step185F4FlagArena.checkBorrow 1 [799]=some s2Step185Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step185F4FlagArena,s2Step185HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step185F4FlagArena,s2Step185HeadFvAfter,s2Step185Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step185F4_distinct : (802::794::803::799::((s2Step185Add0A++s2Step185Add1A)++(s2Step185Add0B++s2Step185Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185F4_flag : s2Step185HeadFvAfter.checkBorrow 1 [803]=some s2Step185F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step185HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step185F4_owned : (802::794::((s2Step185Add0A++s2Step185Add1A)++(s2Step185Add0B++s2Step185Add1B))).toFinset⊆s2Step185HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step185HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185F4_checked : compileHmrHybridF4Log s2Step185HeadFvAfter 802 794 s2Step185Add0A s2Step185Add0B s2Step185Add1A s2Step185Add1B [803] [799] s2Step185Add0Work s2Step185Add1Work=some s2Step185F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step185HeadFvAfter s2Step185F4FlagArena s2Step185Add0Arena s2Step185Add0During s2Step185Add1During 802 794
    s2Step185Add0A s2Step185Add0B s2Step185Add1A s2Step185Add1B [803] [799] s2Step185Add0Work s2Step185Add1Work
    (fun q hq => s2Step185F4_owned (List.mem_toFinset.mpr hq)) s2Step185F4_flag s2Step185F4_carry
    s2Step185F4_distinct s2Step185F4_apart s2Step185Add0_checked s2Step185Add1_checked

private theorem s2Step185Front_branch : s2Step185FrontSigmaArena.checkBorrow 1 [794]=some s2Step185HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step185FrontSigmaArena,s2Step185EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step185FrontSigmaArena,s2Step185EntryGvAfter,s2Step185HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step185Front_entry : HmrFrontEntryValid s2Step185EntryFBefore s2Step185FrontBank 177 107 ⟨177,176,107,107⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step185FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step185EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step185EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<831) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step185FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step185Front_sigma : s2Step185EntryGvAfter.checkBorrow 1 [802]=some s2Step185FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step185EntryGvAfter,arenaWires]
  · rfl

private def s2Step185HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185HeadFBefore : Arena := s2Step185HeadGAfter

private def s2Step185HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩

private def s2Step185HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830],770⟩

private def s2Step185HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176],769⟩

private def s2Step185HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831],771⟩

private theorem s2Step185HeadBank_incomingDistinct : ([s2Step185HeadGRow,s2Step185HeadFRow,s2Step185HeadGvRow,s2Step185HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185HeadF_Incoming : rowsOwned s2Step185HeadFBefore [s2Step185HeadFRow,s2Step185HeadGvRow,s2Step185HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step185HeadGRow,s2Step185HeadFRow,s2Step185HeadGvRow,s2Step185HeadFvRow] 1 s2Step185HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step185HeadFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step185HeadBank_outgoingOwned : rowsOwned s2Step185HeadFvAfter [s2Step185HeadGOut,s2Step185HeadFOut,s2Step185HeadGvOut,s2Step185HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step185HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step185HeadF_Outgoing : rowsOwned s2Step185HeadFvAfter [s2Step185HeadFOut,s2Step185HeadGvOut,s2Step185HeadFvOut] :=
  hmrRows_owned_drop s2Step185HeadFvAfter [s2Step185HeadGOut,s2Step185HeadFOut,s2Step185HeadGvOut,s2Step185HeadFvOut] 1 s2Step185HeadBank_outgoingOwned

private theorem s2Step185HeadF_distinct : (s2Step185HeadFRow.sign::s2Step185HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185HeadF_owned : (s2Step185HeadFRow.sign::s2Step185HeadFRow.payload).toFinset⊆s2Step185HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step185HeadFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185HeadF_reserved : s2Step185HeadFBefore.reserve s2Step185HeadFFresh.toFinset=some s2Step185HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step185HeadFFresh,arenaWires]
  · norm_num [s2Step185HeadFBefore,s2Step185HeadGAfter,s2Step185HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step185HeadFAfter,s2Step185HeadFBefore,s2Step185HeadGAfter,s2Step185HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step185HeadF_checked : planRowResizeLog s2Step185HeadFBefore s2Step185HeadFRow 178 s2Step185HeadFFresh=
    some (s2Step185HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 825],768⟩,growRow 768 s2Step185HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step185HeadFBefore s2Step185HeadFAfter s2Step185HeadFRow 178 s2Step185HeadFFresh
    s2Step185HeadF_distinct s2Step185HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step185HeadF_reserved
  have rowEq : WindowRow.mk (s2Step185HeadFRow.payload++s2Step185HeadFFresh) s2Step185HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 825],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step185HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step185HeadFvBefore : Arena := s2Step185HeadGvAfter

private theorem s2Step185HeadFv_Incoming : rowsOwned s2Step185HeadFvBefore [s2Step185HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step185HeadGRow,s2Step185HeadFRow,s2Step185HeadGvRow,s2Step185HeadFvRow] 3 s2Step185HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step185HeadFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step185HeadFv_Outgoing : rowsOwned s2Step185HeadFvAfter [s2Step185HeadFvOut] :=
  hmrRows_owned_drop s2Step185HeadFvAfter [s2Step185HeadGOut,s2Step185HeadFOut,s2Step185HeadGvOut,s2Step185HeadFvOut] 3 s2Step185HeadBank_outgoingOwned

private theorem s2Step185HeadFv_distinct : (s2Step185HeadFvRow.sign::s2Step185HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185HeadFv_owned : (s2Step185HeadFvRow.sign::s2Step185HeadFvRow.payload).toFinset⊆s2Step185HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step185HeadFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185HeadFv_reserved : s2Step185HeadFvBefore.reserve s2Step185HeadFvFresh.toFinset=some s2Step185HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step185HeadFvFresh,arenaWires]
  · norm_num [s2Step185HeadFvBefore,s2Step185HeadGvAfter,s2Step185HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step185HeadFvAfter,s2Step185HeadFvBefore,s2Step185HeadGvAfter,s2Step185HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step185HeadFv_checked : planRowResizeLog s2Step185HeadFvBefore s2Step185HeadFvRow 108 s2Step185HeadFvFresh=
    some (s2Step185HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 807],770⟩,growRow 770 s2Step185HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step185HeadFvBefore s2Step185HeadFvAfter s2Step185HeadFvRow 108 s2Step185HeadFvFresh
    s2Step185HeadFv_distinct s2Step185HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step185HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step185HeadFvRow.payload++s2Step185HeadFvFresh) s2Step185HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 807],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step185HeadG_Incoming : rowsOwned s2Step185HeadGBefore [s2Step185HeadGRow,s2Step185HeadFRow,s2Step185HeadGvRow,s2Step185HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step185HeadGRow,s2Step185HeadFRow,s2Step185HeadGvRow,s2Step185HeadFvRow] 0 s2Step185HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step185HeadGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step185HeadG_Outgoing : rowsOwned s2Step185HeadFvAfter [s2Step185HeadGOut,s2Step185HeadFOut,s2Step185HeadGvOut,s2Step185HeadFvOut] :=
  hmrRows_owned_drop s2Step185HeadFvAfter [s2Step185HeadGOut,s2Step185HeadFOut,s2Step185HeadGvOut,s2Step185HeadFvOut] 0 s2Step185HeadBank_outgoingOwned

private theorem s2Step185HeadG_distinct : (s2Step185HeadGRow.sign::s2Step185HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185HeadG_owned : (s2Step185HeadGRow.sign::s2Step185HeadGRow.payload).toFinset⊆s2Step185HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step185HeadGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185HeadG_reserved : s2Step185HeadGBefore.reserve s2Step185HeadGFresh.toFinset=some s2Step185HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step185HeadGFresh,arenaWires]
  · norm_num [s2Step185HeadGBefore,s2Step185HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step185HeadGAfter,s2Step185HeadGBefore,s2Step185HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step185HeadG_checked : planRowResizeLog s2Step185HeadGBefore s2Step185HeadGRow 178 s2Step185HeadGFresh=
    some (s2Step185HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 846],769⟩,growRow 769 s2Step185HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step185HeadGBefore s2Step185HeadGAfter s2Step185HeadGRow 178 s2Step185HeadGFresh
    s2Step185HeadG_distinct s2Step185HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step185HeadG_reserved
  have rowEq : WindowRow.mk (s2Step185HeadGRow.payload++s2Step185HeadGFresh) s2Step185HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 846],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step185HeadGvBefore : Arena := s2Step185HeadFAfter

private theorem s2Step185HeadGv_Incoming : rowsOwned s2Step185HeadGvBefore [s2Step185HeadGvRow,s2Step185HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step185HeadGRow,s2Step185HeadFRow,s2Step185HeadGvRow,s2Step185HeadFvRow] 2 s2Step185HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step185HeadGvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step185HeadGv_Outgoing : rowsOwned s2Step185HeadFvAfter [s2Step185HeadGvOut,s2Step185HeadFvOut] :=
  hmrRows_owned_drop s2Step185HeadFvAfter [s2Step185HeadGOut,s2Step185HeadFOut,s2Step185HeadGvOut,s2Step185HeadFvOut] 2 s2Step185HeadBank_outgoingOwned

private theorem s2Step185HeadGv_distinct : (s2Step185HeadGvRow.sign::s2Step185HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step185HeadGv_owned : (s2Step185HeadGvRow.sign::s2Step185HeadGvRow.payload).toFinset⊆s2Step185HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step185HeadGvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step185HeadGv_reserved : s2Step185HeadGvBefore.reserve s2Step185HeadGvFresh.toFinset=some s2Step185HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step185HeadGvFresh,arenaWires]
  · norm_num [s2Step185HeadGvBefore,s2Step185HeadFAfter,s2Step185HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step185HeadGvAfter,s2Step185HeadGvBefore,s2Step185HeadFAfter,s2Step185HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step185HeadGv_checked : planRowResizeLog s2Step185HeadGvBefore s2Step185HeadGvRow 108 s2Step185HeadGvFresh=
    some (s2Step185HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 824],771⟩,growRow 771 s2Step185HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step185HeadGvBefore s2Step185HeadGvAfter s2Step185HeadGvRow 108 s2Step185HeadGvFresh
    s2Step185HeadGv_distinct s2Step185HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step185HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step185HeadGvRow.payload++s2Step185HeadGvFresh) s2Step185HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 824],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step185HeadBank_rows : planWindowRowsLog s2Step185HeadGBefore [(s2Step185HeadGRow,178),(s2Step185HeadFRow,178),(s2Step185HeadGvRow,108),(s2Step185HeadFvRow,108)] [s2Step185HeadGFresh,s2Step185HeadFFresh,s2Step185HeadGvFresh,s2Step185HeadFvFresh]=
    some (s2Step185HeadFvAfter,[s2Step185HeadGOut,s2Step185HeadFOut,s2Step185HeadGvOut,s2Step185HeadFvOut],(growRow 769 s2Step185HeadGFresh ++ (growRow 768 s2Step185HeadFFresh ++ (growRow 771 s2Step185HeadGvFresh ++ (growRow 770 s2Step185HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step185HeadFvAfter [] []=some (s2Step185HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step185HeadFvBefore s2Step185HeadFvAfter s2Step185HeadFvAfter
    s2Step185HeadFvRow s2Step185HeadFvOut 108 s2Step185HeadFvFresh [] [] []
    (growRow 770 s2Step185HeadFvFresh) ([]) s2Step185HeadFv_Incoming s2Step185HeadFv_checked h4 s2Step185HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step185HeadGvBefore s2Step185HeadGvAfter s2Step185HeadFvAfter
    s2Step185HeadGvRow s2Step185HeadGvOut 108 s2Step185HeadGvFresh [(s2Step185HeadFvRow,108)] [s2Step185HeadFvFresh] [s2Step185HeadFvOut]
    (growRow 771 s2Step185HeadGvFresh) ((growRow 770 s2Step185HeadFvFresh ++ [])) s2Step185HeadGv_Incoming s2Step185HeadGv_checked h3 s2Step185HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step185HeadFBefore s2Step185HeadFAfter s2Step185HeadFvAfter
    s2Step185HeadFRow s2Step185HeadFOut 178 s2Step185HeadFFresh [(s2Step185HeadGvRow,108),(s2Step185HeadFvRow,108)] [s2Step185HeadGvFresh,s2Step185HeadFvFresh] [s2Step185HeadGvOut,s2Step185HeadFvOut]
    (growRow 768 s2Step185HeadFFresh) ((growRow 771 s2Step185HeadGvFresh ++ (growRow 770 s2Step185HeadFvFresh ++ []))) s2Step185HeadF_Incoming s2Step185HeadF_checked h2 s2Step185HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step185HeadGBefore s2Step185HeadGAfter s2Step185HeadFvAfter
    s2Step185HeadGRow s2Step185HeadGOut 178 s2Step185HeadGFresh [(s2Step185HeadFRow,178),(s2Step185HeadGvRow,108),(s2Step185HeadFvRow,108)] [s2Step185HeadFFresh,s2Step185HeadGvFresh,s2Step185HeadFvFresh] [s2Step185HeadFOut,s2Step185HeadGvOut,s2Step185HeadFvOut]
    (growRow 769 s2Step185HeadGFresh) ((growRow 768 s2Step185HeadFFresh ++ (growRow 771 s2Step185HeadGvFresh ++ (growRow 770 s2Step185HeadFvFresh ++ [])))) s2Step185HeadG_Incoming s2Step185HeadG_checked h1 s2Step185HeadG_Outgoing
  exact h0

private theorem s2Step185HeadBank_checked : compileHmrBankResizeLog .headroom s2Step185HeadGBefore ⟨s2Step185HeadFRow,s2Step185HeadGRow,s2Step185HeadFvRow,s2Step185HeadGvRow⟩ ⟨178,178,108,108⟩ [s2Step185HeadGFresh,s2Step185HeadFFresh,s2Step185HeadGvFresh,s2Step185HeadFvFresh]=
    some (s2Step185HeadFvAfter,⟨s2Step185HeadFOut,s2Step185HeadGOut,s2Step185HeadFvOut,s2Step185HeadGvOut⟩,(growRow 769 s2Step185HeadGFresh ++ (growRow 768 s2Step185HeadFFresh ++ (growRow 771 s2Step185HeadGvFresh ++ (growRow 770 s2Step185HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step185HeadBank_rows]
  rfl

private theorem s2Step185Front_checked : compileHmrSourceFrontLog s2Step185EntryFBefore s2Step185FrontBank 177 107 ⟨177,176,107,107⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step185FrontLog=some s2Step185FrontPlan := by
  have pairEq : s2Step185FrontPair=⟨s2Step185HeadFRow,s2Step185HeadGRow,s2Step185HeadFvRow,s2Step185HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step185FrontHead=⟨s2Step185ExitFRow,s2Step185ExitGRow,s2Step185ExitFvRow,s2Step185ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step185Add0A=s2Step185FrontHead.f.wires := by decide +kernel
  have gEq : s2Step185Add0B=s2Step185FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step185Add1A=s2Step185FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step185Add1B=s2Step185FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step185EntryFBefore s2Step185FrontBank 177 107 ⟨177,176,107,107⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step185FrontLog s2Step185FrontPlan
  · exact s2Step185Front_entry
  · exact s2Step185EntryBank_checked
  · exact s2Step185Front_sigma
  · rfl
  · exact s2Step185Front_branch
  · rfl
  · simpa only [s2Step185FrontPlan,pairEq] using s2Step185HeadBank_checked
  · simpa only [s2Step185FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step185F4_checked
  · exact s2Step185Counter_checked
  · rfl
  · simpa only [s2Step185FrontPlan,headEq] using s2Step185ExitBank_checked

private theorem s2Step185Complete_explicit_checked : compileHmrEarlyStepLog s2Step185EntryFBefore s2Step185FrontBank 177 107 ⟨177,176,107,107⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step185CompleteLog=some s2Step185CompletePlan := by
  let Q := s2Step185EarlyControlPlan
  have hq := s2Step185EarlyControl_plan_checked
  have fv1 : s2Step185CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step185CompleteOut.fv.payload[2]?.getD s2Step185CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step185CompleteOut.fv.payload[3]?.getD s2Step185CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step185CompleteOut.fv.payload[4]?.getD s2Step185CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step185EntryFBefore s2Step185EarlyControlArena s2Step185FrontBank 177 107 ⟨177,176,107,107⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step185CompleteLog s2Step185FrontPlan Q
    s2Step185Front_checked s2Step185Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step185Complete_owned s2Step185Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step185EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 802 s2Step185CompleteOut.fv.second (s2Step185CompleteOut.fv.payload[2]?.getD s2Step185CompleteOut.fv.sign) (s2Step185CompleteOut.fv.payload[3]?.getD s2Step185CompleteOut.fv.sign) (s2Step185CompleteOut.fv.payload[4]?.getD s2Step185CompleteOut.fv.sign) 794 43 s2Step185EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep185Arena : Arena := s2Step185EntryFBefore
def s2PrivateStep185Bank : WindowBank := s2Step185FrontBank
def s2PrivateStep185Spec : HmrSourceWalkStepLog := ⟨177,107,⟨177,176,107,107⟩,43,.early s2Step185CompleteLog⟩
def s2PrivateStep185Plan : HmrSourceStepPlan := .early s2Step185CompletePlan
theorem s2PrivateStep185_source : s2PrivateStep185Spec=s2ObservedLogs176[9] := rfl
theorem s2PrivateStep185_checked : compileHmrSourceStepLog s2PrivateStep185Arena s2PrivateStep185Bank
    s2PrivateStep185Spec.fgWidth s2PrivateStep185Spec.vWidth s2PrivateStep185Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]
    6 498 185 s2PrivateStep185Spec.need none s2PrivateStep185Spec.log=some s2PrivateStep185Plan := by
  change compileHmrSourceStepLog s2Step185EntryFBefore s2Step185FrontBank 177 107 ⟨177,176,107,107⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 6 498 185 43 none (.early s2Step185CompleteLog)=some (.early s2Step185CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 185<498)]
  rw [s2Step185Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
