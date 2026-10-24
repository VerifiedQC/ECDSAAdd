import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep180
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

private def s2Step182CompleteMoves : List (Wire × Wire) := [(834,177),(802,690)]

private def s2Step182EarlyControlLog : HmrEarlyControlLog := ⟨[802, 834, 807, 830, 846],[794],[803],[799, 867, 877, 879, 882, 885],[]⟩

private def s2Step182FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [846], [], [832]],[[794], [830], [807], [806]],[[], [], [], []]⟩,[825],[824],[803],[799],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[803, 799, 867, 877]⟩

private def s2Step182CompleteLog : HmrEarlyStepLog := ⟨s2Step182FrontLog,s2Step182CompleteMoves,s2Step182EarlyControlLog⟩

private def s2Step182ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689],768⟩

private def s2Step182ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806],770⟩

private def s2Step182ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176],769⟩

private def s2Step182ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832],771⟩

private def s2Step182FrontOut : WindowBank := ⟨s2Step182ExitFOut,s2Step182ExitGOut,s2Step182ExitFvOut,s2Step182ExitGvOut⟩

private def s2Step182CompleteOut : WindowBank := s2Step182FrontOut.repacked s2Step182CompleteMoves

private def s2Step182EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step182EarlyControlPositiveArena,[794],s2Step182EarlyControlEqualityArena,[803],⟨⟨825,false⟩,[⟨⟨794,false⟩,803⟩]⟩⟩

private def s2Step182EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,802⟩,⟨⟨774,false⟩,834⟩,⟨⟨775,false⟩,807⟩,⟨⟨776,false⟩,830⟩,⟨⟨777,false⟩,846⟩]⟩

private def s2Step182EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step182EarlyControlZeroArena,s2Step182EarlyControlZeroPlan,s2Step182EarlyControlClassPlan,s2Step182EarlyControlFlagArena,s2Step182EarlyControlFittedArena,s2Step182EarlyControlHistoryArena,s2Step182EarlyControlSigmaArena,s2Step182EarlyControlOutputArena,s2Step182EarlyControlLog⟩

private def s2Step182CounterWork : List Wire := [803, 799, 867, 877]

private theorem s2Step182Counter_bounded : s2Step182CounterWork.toFinset⊆arenaWires := by norm_num [s2Step182CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step182HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182CounterDuring : Arena := ⟨s2Step182HeadFvAfter.live∪s2Step182CounterWork.toFinset,Finset.union_subset s2Step182HeadFvAfter.bounded s2Step182Counter_bounded⟩

private def s2Step182EntryFFresh : List Wire := []

private def s2Step182EntryFvFresh : List Wire := []

private def s2Step182EntryGFresh : List Wire := [846]

private def s2Step182EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182EntryGvFresh : List Wire := [832]

private def s2Step182ExitFExtra : List Wire := [690, 830]

private def s2Step182ExitGExtra : List Wire := [177, 846, 794]

private def s2Step182ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<177) ∨ (178≤q ∧ q<690) ∨ (691≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182ExitGvExtra : List Wire := [807]

private def s2Step182Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182Add0Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step182Add0_bounded : s2Step182Add0Work.toFinset⊆arenaWires := by
  have h : s2Step182Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step182Add0During : Arena := ⟨s2Step182Add0Arena.live∪s2Step182Add0Work.toFinset,Finset.union_subset s2Step182Add0Arena.bounded s2Step182Add0_bounded⟩

private def s2Step182Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182Add1Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step182Add1_bounded : s2Step182Add1Work.toFinset⊆arenaWires := by
  have h : s2Step182Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step182Add1During : Arena := ⟨s2Step182Add1Arena.live∪s2Step182Add1Work.toFinset,Finset.union_subset s2Step182Add1Arena.bounded s2Step182Add1_bounded⟩

private def s2Step182F4FlagArena : Arena := ⟨s2Step182HeadFvAfter.live∪{803},Finset.union_subset s2Step182HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step182F4Plan : HmrHybridF4Plan := ⟨s2Step182F4FlagArena,[803],s2Step182Add0Arena,[799],s2Step182Add0During,s2Step182Add0Work,s2Step182Add1During,s2Step182Add1Work⟩

private def s2Step182HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 830],768⟩

private def s2Step182HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806],770⟩

private def s2Step182HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 846, 794],769⟩

private def s2Step182HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 807],771⟩

private def s2Step182FrontHead : WindowBank := ⟨s2Step182HeadFOut,s2Step182HeadGOut,s2Step182HeadFvOut,s2Step182HeadGvOut⟩

private def s2Step182EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690],768⟩

private def s2Step182EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785],770⟩

private def s2Step182EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 846],769⟩

private def s2Step182EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832],771⟩

private def s2Step182FrontPair : WindowBank := ⟨s2Step182EntryFOut,s2Step182EntryGOut,s2Step182EntryFvOut,s2Step182EntryGvOut⟩

private def s2Step182FrontSigmaArena : Arena := ⟨s2Step182EntryGvAfter.live∪{825},Finset.union_subset s2Step182EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step182HeadFFresh : List Wire := [830]

private def s2Step182HeadFvFresh : List Wire := [806]

private def s2Step182HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182HeadGFresh : List Wire := [794]

private def s2Step182HeadGvFresh : List Wire := [807]

private def s2Step182FrontPlan : HmrSourceFront := ⟨s2Step182EntryGvAfter,s2Step182FrontPair,(growRow 768 s2Step182EntryFFresh ++ (growRow 769 s2Step182EntryGFresh ++ (growRow 770 s2Step182EntryFvFresh ++ (growRow 771 s2Step182EntryGvFresh ++ [])))),s2Step182FrontSigmaArena,[825],s2Step182HeadGBefore,[824],
  s2Step182HeadFvAfter,s2Step182FrontHead,(growRow 769 s2Step182HeadGFresh ++ (growRow 768 s2Step182HeadFFresh ++ (growRow 771 s2Step182HeadGvFresh ++ (growRow 770 s2Step182HeadFvFresh ++ [])))),s2Step182F4Plan,s2Step182CounterDuring,s2Step182CounterWork,s2Step182ExitGvAfter,s2Step182FrontOut,(shrinkRow 769 s2Step182ExitGExtra ++ (shrinkRow 768 s2Step182ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step182ExitGvExtra ++ []))))⟩

private def s2Step182CompletePlan : HmrEarlyStepPlan := ⟨s2Step182FrontPlan,s2Step182EarlyControlArena,s2Step182EarlyControlPlan,s2Step182CompleteMoves⟩

private theorem s2Step182Complete_apart : List.Disjoint (s2Step182CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [825, 824, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] := by
  have nd : ((s2Step182CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[825, 824, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step182Complete_owned : (s2Step182CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step182EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step182EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step182CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,690),(691,794),(795,799),(800,803),(804,807),(808,830),(831,834),(835,846),(847,867),(868,877),(878,879),(880,882),(883,885),(886,890)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step182CompleteRelocationMove0Borrowed : Arena := ⟨s2Step182ExitGvAfter.live∪{177},Finset.union_subset s2Step182ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step182CompleteRelocationMove1Borrowed : Arena := ⟨s2Step182CompleteRelocationMove0After.live∪{690},Finset.union_subset s2Step182CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step182CompleteRelocation_move0_owned : 834∈s2Step182ExitGvAfter.live := by norm_num [s2Step182ExitGvAfter,arenaWires]

private theorem s2Step182CompleteRelocation_move0_reserve : s2Step182ExitGvAfter.reserve {177}=some s2Step182CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step182ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step182CompleteRelocation_move0_retire : s2Step182CompleteRelocationMove0Borrowed.retireSet {834}=s2Step182CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step182CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step182CompleteRelocationMove0Borrowed,s2Step182ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step182CompleteRelocation_move1_owned : 802∈s2Step182CompleteRelocationMove0After.live := by norm_num [s2Step182CompleteRelocationMove0After,arenaWires]

private theorem s2Step182CompleteRelocation_move1_reserve : s2Step182CompleteRelocationMove0After.reserve {690}=some s2Step182CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step182CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step182CompleteRelocation_move1_retire : s2Step182CompleteRelocationMove1Borrowed.retireSet {802}=s2Step182EarlyControlArena := by
  unfold Arena.retireSet s2Step182EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step182CompleteRelocationMove1Borrowed,s2Step182CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step182CompleteRelocation_checked : s2Step182ExitGvAfter.checkRepack [(834,177),(802,690)]=some s2Step182EarlyControlArena := by
  have tail2 : s2Step182EarlyControlArena.checkRepack []=some s2Step182EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step182CompleteRelocationMove0After s2Step182CompleteRelocationMove1Borrowed s2Step182EarlyControlArena s2Step182EarlyControlArena 802 690 []
    s2Step182CompleteRelocation_move1_owned s2Step182CompleteRelocation_move1_reserve s2Step182CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step182ExitGvAfter s2Step182CompleteRelocationMove0Borrowed s2Step182CompleteRelocationMove0After s2Step182EarlyControlArena 834 177 [(802,690)]
    s2Step182CompleteRelocation_move0_owned s2Step182CompleteRelocation_move0_reserve s2Step182CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step182Complete_repack : s2Step182ExitGvAfter.checkRepack s2Step182CompleteMoves=some s2Step182EarlyControlArena := by
  simpa only [s2Step182CompleteMoves] using s2Step182CompleteRelocation_checked

private theorem s2Step182EarlyControl_branchOwned : ([824] : List Wire).toFinset⊆s2Step182EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step182EarlyControlSigmaArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182EarlyControl_branch : compileHmrBranchRetirement s2Step182EarlyControlSigmaArena 824=some s2Step182EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step182EarlyControl_branchOwned
  · ext q
    simp [s2Step182EarlyControlOutputArena,s2Step182EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step182EarlyControl_classEqualityBorrow : s2Step182EarlyControlPositiveArena.checkBorrow (([825, 794] : List Wire).length-1) s2Step182EarlyControlLog.classWork=some s2Step182EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step182EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step182EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step182EarlyControlEqualityArena,s2Step182EarlyControlPositiveArena,s2Step182EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step182EarlyControl_classEqualityOwned : ([825, 794] : List Wire).toFinset⊆s2Step182EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step182EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182EarlyControl_classEquality : compileHmrEqualityLog s2Step182EarlyControlPositiveArena [825, 794] 0 s2Step182EarlyControlLog.classWork=some (s2Step182EarlyControlEqualityArena,s2Step182EarlyControlLog.classWork,s2Step182EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step182EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step182EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step182EarlyControl_classOwned : ([777, 846, 825] : List Wire).toFinset⊆s2Step182EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step182EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182EarlyControl_positiveBorrow : s2Step182EarlyControlZeroArena.checkBorrow (1) s2Step182EarlyControlLog.positiveWork=some s2Step182EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step182EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step182EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step182EarlyControlPositiveArena,s2Step182EarlyControlZeroArena,s2Step182EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step182EarlyControl_class : compileHmrSourceClassLog s2Step182EarlyControlZeroArena false 777 s2Step182EarlyControlZeroPlan.top 0 825 s2Step182EarlyControlLog.positiveWork s2Step182EarlyControlLog.classWork=some s2Step182EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step182EarlyControlClassPlan s2Step182EarlyControlZeroArena false 777 s2Step182EarlyControlZeroPlan.top 0 825
  constructor
  · decide +kernel
  · exact s2Step182EarlyControl_classOwned
  · exact s2Step182EarlyControl_positiveBorrow
  · exact s2Step182EarlyControl_classEquality

private theorem s2Step182EarlyControl_entryRecordOwned : ([824, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step182EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step182EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182EarlyControl_entrySigmaOwned : ([825, 254] : List Wire).toFinset⊆s2Step182EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step182EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182EarlyControl_fitBorrow : s2Step182EarlyControlFlagArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step182EarlyControlLog.recordFresh=some s2Step182EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step182EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step182EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step182EarlyControlFittedArena,s2Step182EarlyControlFlagArena,s2Step182EarlyControlLog,arenaWires]

private theorem s2Step182EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step182EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step182EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182EarlyControl_fit : compileHmrRecordGrowLog s2Step182EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step182EarlyControlLog.recordFresh=some s2Step182EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step182EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step182EarlyControl_fitBorrow

private theorem s2Step182EarlyControl_flagsBorrow : s2Step182EarlyControlEqualityArena.checkBorrow (6) s2Step182EarlyControlLog.flagWork=some s2Step182EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step182EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step182EarlyControlEqualityArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step182EarlyControlFlagArena,s2Step182EarlyControlEqualityArena,s2Step182EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step182EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s2Step182EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step182EarlyControlEqualityArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182EarlyControl_flags : compileHmrFlagsLog s2Step182EarlyControlClassPlan.equalityArena s2Step182EarlyControlClassPlan.equality.top 253 252 251 s2Step182EarlyControlLog.flagWork=some s2Step182EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step182EarlyControl_flagsOwned⟩
  · exact s2Step182EarlyControl_flagsBorrow

private theorem s2Step182EarlyControl_historyBorrow : s2Step182EarlyControlArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step182EarlyControlLog.recordFresh=some s2Step182EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step182EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step182EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step182EarlyControlHistoryArena,s2Step182EarlyControlArena,s2Step182EarlyControlLog,arenaWires]

private theorem s2Step182EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step182EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step182EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182EarlyControl_history : compileHmrRecordGrowLog s2Step182EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step182EarlyControlLog.recordFresh=some s2Step182EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step182EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step182EarlyControl_historyBorrow

private theorem s2Step182EarlyControl_sigmaOwned : ([254, 825] : List Wire).toFinset⊆s2Step182EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step182EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182EarlyControl_sigmaReleaseOwned : ([825] : List Wire).toFinset⊆s2Step182EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step182EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182EarlyControl_sigmaRelease : s2Step182EarlyControlHistoryArena.release {825} (fun _ => false)=some s2Step182EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step182EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step182EarlyControlSigmaArena,s2Step182EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step182EarlyControl_sigma : compileHmrSigmaDropLog s2Step182EarlyControlHistoryArena false 0 0 254 825 []=some s2Step182EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step182EarlyControl_sigmaOwned⟩
  · exact s2Step182EarlyControl_sigmaRelease

private theorem s2Step182EarlyControl_zeroBorrow : s2Step182EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step182EarlyControlLog.zeroWork=some s2Step182EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step182EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step182EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step182EarlyControlZeroArena,s2Step182EarlyControlArena,s2Step182EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step182EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step182EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step182EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182EarlyControl_zero : compileHmrEqualityLog s2Step182EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step182EarlyControlLog.zeroWork=some (s2Step182EarlyControlZeroArena,s2Step182EarlyControlLog.zeroWork,s2Step182EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step182EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step182EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step182EarlyControl_logged : s2Step182EarlyControlPlan.Logged s2Step182EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 254 253 252 251 824 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step182EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step182EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step182EarlyControl_zero
  · exact s2Step182EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step182EarlyControl_flags
  · exact s2Step182EarlyControl_fit
  · exact s2Step182EarlyControl_history
  · exact s2Step182EarlyControl_sigma
  · exact s2Step182EarlyControl_branch

private theorem s2Step182EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step182EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 254 253 252 251 824 43 s2Step182EarlyControlLog=some s2Step182EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step182EarlyControlPlan s2Step182EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 254 253 252 251 824 43 s2Step182EarlyControl_logged

private def s2Step182EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690],768⟩

private def s2Step182EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785],770⟩

private def s2Step182EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177],769⟩

private def s2Step182EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩

private def s2Step182FrontBank : WindowBank := ⟨s2Step182EntryFRow,s2Step182EntryGRow,s2Step182EntryFvRow,s2Step182EntryGvRow⟩

private def s2Step182Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 830, 768]

private def s2Step182Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 846, 794, 769]

private def s2Step182Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 770]

private def s2Step182Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 807, 771]

private theorem s2Step182Counter_apart : Disjoint s2Step182HeadFvAfter.live s2Step182CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step182HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182Counter_borrowed : s2Step182HeadFvAfter.checkBorrow 4 s2Step182CounterWork=some s2Step182CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step182HeadFvAfter s2Step182CounterDuring s2Step182CounterWork.toFinset s2Step182Counter_bounded s2Step182Counter_apart rfl

private theorem s2Step182Counter_owned : (825::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step182HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step182HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182Counter_checked : compileHmrCounterStepLog s2Step182HeadFvAfter true 825 [772, 773, 774, 775, 776, 777] s2Step182CounterWork=some s2Step182CounterDuring := by
  have owned : ∀q∈825::[772, 773, 774, 775, 776, 777],q∈s2Step182HeadFvAfter.live := fun q hq => s2Step182Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step182Counter_borrowed

private def s2Step182EntryFAfter : Arena := s2Step182EntryFBefore

private theorem s2Step182EntryBank_incomingDistinct : ([s2Step182EntryFRow,s2Step182EntryGRow,s2Step182EntryFvRow,s2Step182EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182EntryF_Incoming : rowsOwned s2Step182EntryFBefore [s2Step182EntryFRow,s2Step182EntryGRow,s2Step182EntryFvRow,s2Step182EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step182EntryFRow,s2Step182EntryGRow,s2Step182EntryFvRow,s2Step182EntryGvRow] 0 s2Step182EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step182EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step182EntryBank_outgoingOwned : rowsOwned s2Step182EntryGvAfter [s2Step182EntryFOut,s2Step182EntryGOut,s2Step182EntryFvOut,s2Step182EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step182EntryGvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step182EntryF_Outgoing : rowsOwned s2Step182EntryGvAfter [s2Step182EntryFOut,s2Step182EntryGOut,s2Step182EntryFvOut,s2Step182EntryGvOut] :=
  hmrRows_owned_drop s2Step182EntryGvAfter [s2Step182EntryFOut,s2Step182EntryGOut,s2Step182EntryFvOut,s2Step182EntryGvOut] 0 s2Step182EntryBank_outgoingOwned

private theorem s2Step182EntryF_distinct : (s2Step182EntryFRow.sign::s2Step182EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182EntryF_owned : (s2Step182EntryFRow.sign::s2Step182EntryFRow.payload).toFinset⊆s2Step182EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step182EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182EntryF_reserved : s2Step182EntryFBefore.reserve s2Step182EntryFFresh.toFinset=some s2Step182EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step182EntryFFresh,arenaWires]
  · norm_num [s2Step182EntryFBefore,s2Step182EntryFFresh,arenaWires]
  · simp only [s2Step182EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step182EntryF_checked : planRowResizeLog s2Step182EntryFBefore s2Step182EntryFRow 179 s2Step182EntryFFresh=
    some (s2Step182EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690],768⟩,growRow 768 s2Step182EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step182EntryFBefore s2Step182EntryFAfter s2Step182EntryFRow 179 s2Step182EntryFFresh
    s2Step182EntryF_distinct s2Step182EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step182EntryF_reserved
  have rowEq : WindowRow.mk (s2Step182EntryFRow.payload++s2Step182EntryFFresh) s2Step182EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step182EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182EntryFvAfter : Arena := s2Step182EntryGAfter

private def s2Step182EntryFvBefore : Arena := s2Step182EntryGAfter

private theorem s2Step182EntryFv_Incoming : rowsOwned s2Step182EntryFvBefore [s2Step182EntryFvRow,s2Step182EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step182EntryFRow,s2Step182EntryGRow,s2Step182EntryFvRow,s2Step182EntryGvRow] 2 s2Step182EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step182EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step182EntryFv_Outgoing : rowsOwned s2Step182EntryGvAfter [s2Step182EntryFvOut,s2Step182EntryGvOut] :=
  hmrRows_owned_drop s2Step182EntryGvAfter [s2Step182EntryFOut,s2Step182EntryGOut,s2Step182EntryFvOut,s2Step182EntryGvOut] 2 s2Step182EntryBank_outgoingOwned

private theorem s2Step182EntryFv_distinct : (s2Step182EntryFvRow.sign::s2Step182EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182EntryFv_owned : (s2Step182EntryFvRow.sign::s2Step182EntryFvRow.payload).toFinset⊆s2Step182EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step182EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182EntryFv_reserved : s2Step182EntryFvBefore.reserve s2Step182EntryFvFresh.toFinset=some s2Step182EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step182EntryFvFresh,arenaWires]
  · norm_num [s2Step182EntryFvBefore,s2Step182EntryGAfter,s2Step182EntryFvFresh,arenaWires]
  · simp only [s2Step182EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step182EntryFv_checked : planRowResizeLog s2Step182EntryFvBefore s2Step182EntryFvRow 105 s2Step182EntryFvFresh=
    some (s2Step182EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785],770⟩,growRow 770 s2Step182EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step182EntryFvBefore s2Step182EntryFvAfter s2Step182EntryFvRow 105 s2Step182EntryFvFresh
    s2Step182EntryFv_distinct s2Step182EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step182EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step182EntryFvRow.payload++s2Step182EntryFvFresh) s2Step182EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step182EntryGBefore : Arena := s2Step182EntryFBefore

private theorem s2Step182EntryG_Incoming : rowsOwned s2Step182EntryGBefore [s2Step182EntryGRow,s2Step182EntryFvRow,s2Step182EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step182EntryFRow,s2Step182EntryGRow,s2Step182EntryFvRow,s2Step182EntryGvRow] 1 s2Step182EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step182EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step182EntryG_Outgoing : rowsOwned s2Step182EntryGvAfter [s2Step182EntryGOut,s2Step182EntryFvOut,s2Step182EntryGvOut] :=
  hmrRows_owned_drop s2Step182EntryGvAfter [s2Step182EntryFOut,s2Step182EntryGOut,s2Step182EntryFvOut,s2Step182EntryGvOut] 1 s2Step182EntryBank_outgoingOwned

private theorem s2Step182EntryG_distinct : (s2Step182EntryGRow.sign::s2Step182EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182EntryG_owned : (s2Step182EntryGRow.sign::s2Step182EntryGRow.payload).toFinset⊆s2Step182EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step182EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182EntryG_reserved : s2Step182EntryGBefore.reserve s2Step182EntryGFresh.toFinset=some s2Step182EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step182EntryGFresh,arenaWires]
  · norm_num [s2Step182EntryGBefore,s2Step182EntryFBefore,s2Step182EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step182EntryGAfter,s2Step182EntryGBefore,s2Step182EntryFBefore,s2Step182EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step182EntryG_checked : planRowResizeLog s2Step182EntryGBefore s2Step182EntryGRow 179 s2Step182EntryGFresh=
    some (s2Step182EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 846],769⟩,growRow 769 s2Step182EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step182EntryGBefore s2Step182EntryGAfter s2Step182EntryGRow 179 s2Step182EntryGFresh
    s2Step182EntryG_distinct s2Step182EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step182EntryG_reserved
  have rowEq : WindowRow.mk (s2Step182EntryGRow.payload++s2Step182EntryGFresh) s2Step182EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 846],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step182EntryGvBefore : Arena := s2Step182EntryGAfter

private theorem s2Step182EntryGv_Incoming : rowsOwned s2Step182EntryGvBefore [s2Step182EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step182EntryFRow,s2Step182EntryGRow,s2Step182EntryFvRow,s2Step182EntryGvRow] 3 s2Step182EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step182EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step182EntryGv_Outgoing : rowsOwned s2Step182EntryGvAfter [s2Step182EntryGvOut] :=
  hmrRows_owned_drop s2Step182EntryGvAfter [s2Step182EntryFOut,s2Step182EntryGOut,s2Step182EntryFvOut,s2Step182EntryGvOut] 3 s2Step182EntryBank_outgoingOwned

private theorem s2Step182EntryGv_distinct : (s2Step182EntryGvRow.sign::s2Step182EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182EntryGv_owned : (s2Step182EntryGvRow.sign::s2Step182EntryGvRow.payload).toFinset⊆s2Step182EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step182EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182EntryGv_reserved : s2Step182EntryGvBefore.reserve s2Step182EntryGvFresh.toFinset=some s2Step182EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step182EntryGvFresh,arenaWires]
  · norm_num [s2Step182EntryGvBefore,s2Step182EntryGAfter,s2Step182EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step182EntryGvAfter,s2Step182EntryGvBefore,s2Step182EntryGAfter,s2Step182EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step182EntryGv_checked : planRowResizeLog s2Step182EntryGvBefore s2Step182EntryGvRow 105 s2Step182EntryGvFresh=
    some (s2Step182EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832],771⟩,growRow 771 s2Step182EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step182EntryGvBefore s2Step182EntryGvAfter s2Step182EntryGvRow 105 s2Step182EntryGvFresh
    s2Step182EntryGv_distinct s2Step182EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step182EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step182EntryGvRow.payload++s2Step182EntryGvFresh) s2Step182EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step182EntryBank_rows : planWindowRowsLog s2Step182EntryFBefore [(s2Step182EntryFRow,179),(s2Step182EntryGRow,179),(s2Step182EntryFvRow,105),(s2Step182EntryGvRow,105)] [s2Step182EntryFFresh,s2Step182EntryGFresh,s2Step182EntryFvFresh,s2Step182EntryGvFresh]=
    some (s2Step182EntryGvAfter,[s2Step182EntryFOut,s2Step182EntryGOut,s2Step182EntryFvOut,s2Step182EntryGvOut],(growRow 768 s2Step182EntryFFresh ++ (growRow 769 s2Step182EntryGFresh ++ (growRow 770 s2Step182EntryFvFresh ++ (growRow 771 s2Step182EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step182EntryGvAfter [] []=some (s2Step182EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step182EntryGvBefore s2Step182EntryGvAfter s2Step182EntryGvAfter
    s2Step182EntryGvRow s2Step182EntryGvOut 105 s2Step182EntryGvFresh [] [] []
    (growRow 771 s2Step182EntryGvFresh) ([]) s2Step182EntryGv_Incoming s2Step182EntryGv_checked h4 s2Step182EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step182EntryFvBefore s2Step182EntryFvAfter s2Step182EntryGvAfter
    s2Step182EntryFvRow s2Step182EntryFvOut 105 s2Step182EntryFvFresh [(s2Step182EntryGvRow,105)] [s2Step182EntryGvFresh] [s2Step182EntryGvOut]
    (growRow 770 s2Step182EntryFvFresh) ((growRow 771 s2Step182EntryGvFresh ++ [])) s2Step182EntryFv_Incoming s2Step182EntryFv_checked h3 s2Step182EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step182EntryGBefore s2Step182EntryGAfter s2Step182EntryGvAfter
    s2Step182EntryGRow s2Step182EntryGOut 179 s2Step182EntryGFresh [(s2Step182EntryFvRow,105),(s2Step182EntryGvRow,105)] [s2Step182EntryFvFresh,s2Step182EntryGvFresh] [s2Step182EntryFvOut,s2Step182EntryGvOut]
    (growRow 769 s2Step182EntryGFresh) ((growRow 770 s2Step182EntryFvFresh ++ (growRow 771 s2Step182EntryGvFresh ++ []))) s2Step182EntryG_Incoming s2Step182EntryG_checked h2 s2Step182EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step182EntryFBefore s2Step182EntryFAfter s2Step182EntryGvAfter
    s2Step182EntryFRow s2Step182EntryFOut 179 s2Step182EntryFFresh [(s2Step182EntryGRow,179),(s2Step182EntryFvRow,105),(s2Step182EntryGvRow,105)] [s2Step182EntryGFresh,s2Step182EntryFvFresh,s2Step182EntryGvFresh] [s2Step182EntryGOut,s2Step182EntryFvOut,s2Step182EntryGvOut]
    (growRow 768 s2Step182EntryFFresh) ((growRow 769 s2Step182EntryGFresh ++ (growRow 770 s2Step182EntryFvFresh ++ (growRow 771 s2Step182EntryGvFresh ++ [])))) s2Step182EntryF_Incoming s2Step182EntryF_checked h1 s2Step182EntryF_Outgoing
  exact h0

private theorem s2Step182EntryBank_checked : compileHmrBankResizeLog .entry s2Step182EntryFBefore ⟨s2Step182EntryFRow,s2Step182EntryGRow,s2Step182EntryFvRow,s2Step182EntryGvRow⟩ ⟨179,179,105,105⟩ [s2Step182EntryFFresh,s2Step182EntryGFresh,s2Step182EntryFvFresh,s2Step182EntryGvFresh]=
    some (s2Step182EntryGvAfter,⟨s2Step182EntryFOut,s2Step182EntryGOut,s2Step182EntryFvOut,s2Step182EntryGvOut⟩,(growRow 768 s2Step182EntryFFresh ++ (growRow 769 s2Step182EntryGFresh ++ (growRow 770 s2Step182EntryFvFresh ++ (growRow 771 s2Step182EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step182EntryBank_rows]
  rfl

private def s2Step182ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<177) ∨ (178≤q ∧ q<690) ∨ (691≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<177) ∨ (178≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182ExitFBefore : Arena := s2Step182ExitGAfter

private def s2Step182ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 830],768⟩

private def s2Step182ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806],770⟩

private def s2Step182ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 846, 794],769⟩

private def s2Step182ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 807],771⟩

private theorem s2Step182ExitBank_incomingDistinct : ([s2Step182ExitGRow,s2Step182ExitFRow,s2Step182ExitFvRow,s2Step182ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182ExitF_Incoming : rowsOwned s2Step182ExitFBefore [s2Step182ExitFRow,s2Step182ExitFvRow,s2Step182ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step182ExitGRow,s2Step182ExitFRow,s2Step182ExitFvRow,s2Step182ExitGvRow] 1 s2Step182ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step182ExitFBefore (fun q => (0≤q ∧ q<177) ∨ (178≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step182ExitBank_outgoingOwned : rowsOwned s2Step182ExitGvAfter [s2Step182ExitGOut,s2Step182ExitFOut,s2Step182ExitFvOut,s2Step182ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step182ExitGvAfter (fun q => (0≤q ∧ q<177) ∨ (178≤q ∧ q<690) ∨ (691≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step182ExitF_Outgoing : rowsOwned s2Step182ExitGvAfter [s2Step182ExitFOut,s2Step182ExitFvOut,s2Step182ExitGvOut] :=
  hmrRows_owned_drop s2Step182ExitGvAfter [s2Step182ExitGOut,s2Step182ExitFOut,s2Step182ExitFvOut,s2Step182ExitGvOut] 1 s2Step182ExitBank_outgoingOwned

private theorem s2Step182ExitF_distinct : (s2Step182ExitFRow.sign::s2Step182ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182ExitF_owned : (s2Step182ExitFRow.sign::s2Step182ExitFRow.payload).toFinset⊆s2Step182ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step182ExitFBefore (fun q => (0≤q ∧ q<177) ∨ (178≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182ExitF_retired : s2Step182ExitFBefore.retireSet s2Step182ExitFExtra.toFinset=s2Step182ExitFAfter := by
  unfold Arena.retireSet s2Step182ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step182ExitFBefore,s2Step182ExitGAfter,s2Step182ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step182ExitF_checked : planRowResizeLog s2Step182ExitFBefore s2Step182ExitFRow 178 []=
    some (s2Step182ExitFAfter,s2Step182ExitFOut,shrinkRow 768 s2Step182ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step182ExitFBefore s2Step182ExitFRow 178 s2Step182ExitF_distinct s2Step182ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step182ExitFRow.payload.take 178) s2Step182ExitFRow.sign=s2Step182ExitFOut := by decide +kernel
  have hi : s2Step182ExitFRow.payload.drop 178=s2Step182ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step182ExitF_retired] at result
  exact result

private def s2Step182ExitFvAfter : Arena := s2Step182ExitFAfter

private def s2Step182ExitFvBefore : Arena := s2Step182ExitFAfter

private theorem s2Step182ExitFv_Incoming : rowsOwned s2Step182ExitFvBefore [s2Step182ExitFvRow,s2Step182ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step182ExitGRow,s2Step182ExitFRow,s2Step182ExitFvRow,s2Step182ExitGvRow] 2 s2Step182ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step182ExitFvBefore (fun q => (0≤q ∧ q<177) ∨ (178≤q ∧ q<690) ∨ (691≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step182ExitFv_Outgoing : rowsOwned s2Step182ExitGvAfter [s2Step182ExitFvOut,s2Step182ExitGvOut] :=
  hmrRows_owned_drop s2Step182ExitGvAfter [s2Step182ExitGOut,s2Step182ExitFOut,s2Step182ExitFvOut,s2Step182ExitGvOut] 2 s2Step182ExitBank_outgoingOwned

private theorem s2Step182ExitFv_distinct : (s2Step182ExitFvRow.sign::s2Step182ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182ExitFv_owned : (s2Step182ExitFvRow.sign::s2Step182ExitFvRow.payload).toFinset⊆s2Step182ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step182ExitFvBefore (fun q => (0≤q ∧ q<177) ∨ (178≤q ∧ q<690) ∨ (691≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182ExitFv_reserved : s2Step182ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step182ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step182ExitFv_checked : planRowResizeLog s2Step182ExitFvBefore s2Step182ExitFvRow 106 []=
    some (s2Step182ExitFvAfter,s2Step182ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step182ExitFvBefore s2Step182ExitFvAfter s2Step182ExitFvRow 106 []
    s2Step182ExitFv_distinct s2Step182ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step182ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step182ExitFvRow.payload++[]) s2Step182ExitFvRow.sign=s2Step182ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step182ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step182ExitG_Incoming : rowsOwned s2Step182ExitGBefore [s2Step182ExitGRow,s2Step182ExitFRow,s2Step182ExitFvRow,s2Step182ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step182ExitGRow,s2Step182ExitFRow,s2Step182ExitFvRow,s2Step182ExitGvRow] 0 s2Step182ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step182ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step182ExitG_Outgoing : rowsOwned s2Step182ExitGvAfter [s2Step182ExitGOut,s2Step182ExitFOut,s2Step182ExitFvOut,s2Step182ExitGvOut] :=
  hmrRows_owned_drop s2Step182ExitGvAfter [s2Step182ExitGOut,s2Step182ExitFOut,s2Step182ExitFvOut,s2Step182ExitGvOut] 0 s2Step182ExitBank_outgoingOwned

private theorem s2Step182ExitG_distinct : (s2Step182ExitGRow.sign::s2Step182ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182ExitG_owned : (s2Step182ExitGRow.sign::s2Step182ExitGRow.payload).toFinset⊆s2Step182ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step182ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182ExitG_retired : s2Step182ExitGBefore.retireSet s2Step182ExitGExtra.toFinset=s2Step182ExitGAfter := by
  unfold Arena.retireSet s2Step182ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step182ExitGBefore,s2Step182ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step182ExitG_checked : planRowResizeLog s2Step182ExitGBefore s2Step182ExitGRow 177 []=
    some (s2Step182ExitGAfter,s2Step182ExitGOut,shrinkRow 769 s2Step182ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step182ExitGBefore s2Step182ExitGRow 177 s2Step182ExitG_distinct s2Step182ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step182ExitGRow.payload.take 177) s2Step182ExitGRow.sign=s2Step182ExitGOut := by decide +kernel
  have hi : s2Step182ExitGRow.payload.drop 177=s2Step182ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step182ExitG_retired] at result
  exact result

private def s2Step182ExitGvBefore : Arena := s2Step182ExitFAfter

private theorem s2Step182ExitGv_Incoming : rowsOwned s2Step182ExitGvBefore [s2Step182ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step182ExitGRow,s2Step182ExitFRow,s2Step182ExitFvRow,s2Step182ExitGvRow] 3 s2Step182ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step182ExitGvBefore (fun q => (0≤q ∧ q<177) ∨ (178≤q ∧ q<690) ∨ (691≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step182ExitGv_Outgoing : rowsOwned s2Step182ExitGvAfter [s2Step182ExitGvOut] :=
  hmrRows_owned_drop s2Step182ExitGvAfter [s2Step182ExitGOut,s2Step182ExitFOut,s2Step182ExitFvOut,s2Step182ExitGvOut] 3 s2Step182ExitBank_outgoingOwned

private theorem s2Step182ExitGv_distinct : (s2Step182ExitGvRow.sign::s2Step182ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182ExitGv_owned : (s2Step182ExitGvRow.sign::s2Step182ExitGvRow.payload).toFinset⊆s2Step182ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step182ExitGvBefore (fun q => (0≤q ∧ q<177) ∨ (178≤q ∧ q<690) ∨ (691≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182ExitGv_retired : s2Step182ExitGvBefore.retireSet s2Step182ExitGvExtra.toFinset=s2Step182ExitGvAfter := by
  unfold Arena.retireSet s2Step182ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step182ExitGvBefore,s2Step182ExitFAfter,s2Step182ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step182ExitGv_checked : planRowResizeLog s2Step182ExitGvBefore s2Step182ExitGvRow 105 []=
    some (s2Step182ExitGvAfter,s2Step182ExitGvOut,shrinkRow 771 s2Step182ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step182ExitGvBefore s2Step182ExitGvRow 105 s2Step182ExitGv_distinct s2Step182ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step182ExitGvRow.payload.take 105) s2Step182ExitGvRow.sign=s2Step182ExitGvOut := by decide +kernel
  have hi : s2Step182ExitGvRow.payload.drop 105=s2Step182ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step182ExitGv_retired] at result
  exact result

private theorem s2Step182ExitBank_rows : planWindowRowsLog s2Step182ExitGBefore [(s2Step182ExitGRow,177),(s2Step182ExitFRow,178),(s2Step182ExitFvRow,106),(s2Step182ExitGvRow,105)] [[],[],[],[]]=
    some (s2Step182ExitGvAfter,[s2Step182ExitGOut,s2Step182ExitFOut,s2Step182ExitFvOut,s2Step182ExitGvOut],(shrinkRow 769 s2Step182ExitGExtra ++ (shrinkRow 768 s2Step182ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step182ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step182ExitGvAfter [] []=some (s2Step182ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step182ExitGvBefore s2Step182ExitGvAfter s2Step182ExitGvAfter
    s2Step182ExitGvRow s2Step182ExitGvOut 105 [] [] [] []
    (shrinkRow 771 s2Step182ExitGvExtra) ([]) s2Step182ExitGv_Incoming s2Step182ExitGv_checked h4 s2Step182ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step182ExitFvBefore s2Step182ExitFvAfter s2Step182ExitGvAfter
    s2Step182ExitFvRow s2Step182ExitFvOut 106 [] [(s2Step182ExitGvRow,105)] [[]] [s2Step182ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step182ExitGvExtra ++ [])) s2Step182ExitFv_Incoming s2Step182ExitFv_checked h3 s2Step182ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step182ExitFBefore s2Step182ExitFAfter s2Step182ExitGvAfter
    s2Step182ExitFRow s2Step182ExitFOut 178 [] [(s2Step182ExitFvRow,106),(s2Step182ExitGvRow,105)] [[],[]] [s2Step182ExitFvOut,s2Step182ExitGvOut]
    (shrinkRow 768 s2Step182ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step182ExitGvExtra ++ []))) s2Step182ExitF_Incoming s2Step182ExitF_checked h2 s2Step182ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step182ExitGBefore s2Step182ExitGAfter s2Step182ExitGvAfter
    s2Step182ExitGRow s2Step182ExitGOut 177 [] [(s2Step182ExitFRow,178),(s2Step182ExitFvRow,106),(s2Step182ExitGvRow,105)] [[],[],[]] [s2Step182ExitFOut,s2Step182ExitFvOut,s2Step182ExitGvOut]
    (shrinkRow 769 s2Step182ExitGExtra) ((shrinkRow 768 s2Step182ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step182ExitGvExtra ++ [])))) s2Step182ExitG_Incoming s2Step182ExitG_checked h1 s2Step182ExitG_Outgoing
  exact h0

private theorem s2Step182ExitBank_checked : compileHmrBankResizeLog .exit s2Step182ExitGBefore ⟨s2Step182ExitFRow,s2Step182ExitGRow,s2Step182ExitFvRow,s2Step182ExitGvRow⟩ ⟨178,177,106,105⟩ [[],[],[],[]]=
    some (s2Step182ExitGvAfter,⟨s2Step182ExitFOut,s2Step182ExitGOut,s2Step182ExitFvOut,s2Step182ExitGvOut⟩,(shrinkRow 769 s2Step182ExitGExtra ++ (shrinkRow 768 s2Step182ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step182ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step182ExitBank_rows]
  rfl

private theorem s2Step182Add0_apart : Disjoint s2Step182Add0Arena.live s2Step182Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step182Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182Add0_card : s2Step182Add0Arena.live.card=885 := by
  decide +kernel

private theorem s2Step182Add0_borrowed : s2Step182Add0Arena.checkBorrow (hmrHybridCount s2Step182Add0Arena s2Step182Add0B.length) s2Step182Add0Work=some s2Step182Add0During := by
  have len : s2Step182Add0Work.length=hmrHybridCount s2Step182Add0Arena s2Step182Add0B.length := by
    rw [hmrHybridCount,s2Step182Add0_card]
    decide +kernel
  have nd : s2Step182Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step182Add0Arena s2Step182Add0During s2Step182Add0Work.toFinset s2Step182Add0_bounded s2Step182Add0_apart rfl

private theorem s2Step182Add0_distinct : (803::824::799::(s2Step182Add0A++s2Step182Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182Add0_owned : (803::824::799::(s2Step182Add0A++s2Step182Add0B)).toFinset⊆s2Step182Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step182Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182Add0_checked : compileHmrHybridCinLog s2Step182Add0Arena 824 803 799 s2Step182Add0A s2Step182Add0B s2Step182Add0Work=some s2Step182Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step182Add0Arena s2Step182Add0During 824 803 799 s2Step182Add0A s2Step182Add0B s2Step182Add0Work
    (by decide +kernel) (by decide +kernel) s2Step182Add0_distinct
    (fun q hq => s2Step182Add0_owned (List.mem_toFinset.mpr hq)) s2Step182Add0_borrowed

private theorem s2Step182Add1_apart : Disjoint s2Step182Add1Arena.live s2Step182Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step182Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182Add1_card : s2Step182Add1Arena.live.card=885 := by
  decide +kernel

private theorem s2Step182Add1_borrowed : s2Step182Add1Arena.checkBorrow (hmrHybridCount s2Step182Add1Arena s2Step182Add1B.length) s2Step182Add1Work=some s2Step182Add1During := by
  have len : s2Step182Add1Work.length=hmrHybridCount s2Step182Add1Arena s2Step182Add1B.length := by
    rw [hmrHybridCount,s2Step182Add1_card]
    decide +kernel
  have nd : s2Step182Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step182Add1Arena s2Step182Add1During s2Step182Add1Work.toFinset s2Step182Add1_bounded s2Step182Add1_apart rfl

private theorem s2Step182Add1_distinct : (803::824::799::(s2Step182Add1A++s2Step182Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182Add1_owned : (803::824::799::(s2Step182Add1A++s2Step182Add1B)).toFinset⊆s2Step182Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step182Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182Add1_checked : compileHmrHybridCinLog s2Step182Add1Arena 824 803 799 s2Step182Add1A s2Step182Add1B s2Step182Add1Work=some s2Step182Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step182Add1Arena s2Step182Add1During 824 803 799 s2Step182Add1A s2Step182Add1B s2Step182Add1Work
    (by decide +kernel) (by decide +kernel) s2Step182Add1_distinct
    (fun q hq => s2Step182Add1_owned (List.mem_toFinset.mpr hq)) s2Step182Add1_borrowed

private theorem s2Step182F4_apart : Disjoint (s2Step182Add0A++s2Step182Add0B).toFinset (s2Step182Add1A++s2Step182Add1B).toFinset := by
  have nd : ((s2Step182Add0A++s2Step182Add0B)++(s2Step182Add1A++s2Step182Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step182F4_carry : s2Step182F4FlagArena.checkBorrow 1 [799]=some s2Step182Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step182F4FlagArena,s2Step182HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step182F4FlagArena,s2Step182HeadFvAfter,s2Step182Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step182F4_distinct : (825::824::803::799::((s2Step182Add0A++s2Step182Add1A)++(s2Step182Add0B++s2Step182Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182F4_flag : s2Step182HeadFvAfter.checkBorrow 1 [803]=some s2Step182F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step182HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step182F4_owned : (825::824::((s2Step182Add0A++s2Step182Add1A)++(s2Step182Add0B++s2Step182Add1B))).toFinset⊆s2Step182HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step182HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182F4_checked : compileHmrHybridF4Log s2Step182HeadFvAfter 825 824 s2Step182Add0A s2Step182Add0B s2Step182Add1A s2Step182Add1B [803] [799] s2Step182Add0Work s2Step182Add1Work=some s2Step182F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step182HeadFvAfter s2Step182F4FlagArena s2Step182Add0Arena s2Step182Add0During s2Step182Add1During 825 824
    s2Step182Add0A s2Step182Add0B s2Step182Add1A s2Step182Add1B [803] [799] s2Step182Add0Work s2Step182Add1Work
    (fun q hq => s2Step182F4_owned (List.mem_toFinset.mpr hq)) s2Step182F4_flag s2Step182F4_carry
    s2Step182F4_distinct s2Step182F4_apart s2Step182Add0_checked s2Step182Add1_checked

private theorem s2Step182Front_branch : s2Step182FrontSigmaArena.checkBorrow 1 [824]=some s2Step182HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step182FrontSigmaArena,s2Step182EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step182FrontSigmaArena,s2Step182EntryGvAfter,s2Step182HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step182Front_entry : HmrFrontEntryValid s2Step182EntryFBefore s2Step182FrontBank 179 105 ⟨178,177,106,105⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step182FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step182EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step182EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step182FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step182Front_sigma : s2Step182EntryGvAfter.checkBorrow 1 [825]=some s2Step182FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step182EntryGvAfter,arenaWires]
  · rfl

private def s2Step182HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182HeadFBefore : Arena := s2Step182HeadGAfter

private def s2Step182HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690],768⟩

private def s2Step182HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785],770⟩

private def s2Step182HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 846],769⟩

private def s2Step182HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832],771⟩

private theorem s2Step182HeadBank_incomingDistinct : ([s2Step182HeadGRow,s2Step182HeadFRow,s2Step182HeadGvRow,s2Step182HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182HeadF_Incoming : rowsOwned s2Step182HeadFBefore [s2Step182HeadFRow,s2Step182HeadGvRow,s2Step182HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step182HeadGRow,s2Step182HeadFRow,s2Step182HeadGvRow,s2Step182HeadFvRow] 1 s2Step182HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step182HeadFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step182HeadBank_outgoingOwned : rowsOwned s2Step182HeadFvAfter [s2Step182HeadGOut,s2Step182HeadFOut,s2Step182HeadGvOut,s2Step182HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step182HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step182HeadF_Outgoing : rowsOwned s2Step182HeadFvAfter [s2Step182HeadFOut,s2Step182HeadGvOut,s2Step182HeadFvOut] :=
  hmrRows_owned_drop s2Step182HeadFvAfter [s2Step182HeadGOut,s2Step182HeadFOut,s2Step182HeadGvOut,s2Step182HeadFvOut] 1 s2Step182HeadBank_outgoingOwned

private theorem s2Step182HeadF_distinct : (s2Step182HeadFRow.sign::s2Step182HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182HeadF_owned : (s2Step182HeadFRow.sign::s2Step182HeadFRow.payload).toFinset⊆s2Step182HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step182HeadFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182HeadF_reserved : s2Step182HeadFBefore.reserve s2Step182HeadFFresh.toFinset=some s2Step182HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step182HeadFFresh,arenaWires]
  · norm_num [s2Step182HeadFBefore,s2Step182HeadGAfter,s2Step182HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step182HeadFAfter,s2Step182HeadFBefore,s2Step182HeadGAfter,s2Step182HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step182HeadF_checked : planRowResizeLog s2Step182HeadFBefore s2Step182HeadFRow 180 s2Step182HeadFFresh=
    some (s2Step182HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 830],768⟩,growRow 768 s2Step182HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step182HeadFBefore s2Step182HeadFAfter s2Step182HeadFRow 180 s2Step182HeadFFresh
    s2Step182HeadF_distinct s2Step182HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step182HeadF_reserved
  have rowEq : WindowRow.mk (s2Step182HeadFRow.payload++s2Step182HeadFFresh) s2Step182HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 830],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step182HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step182HeadFvBefore : Arena := s2Step182HeadGvAfter

private theorem s2Step182HeadFv_Incoming : rowsOwned s2Step182HeadFvBefore [s2Step182HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step182HeadGRow,s2Step182HeadFRow,s2Step182HeadGvRow,s2Step182HeadFvRow] 3 s2Step182HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step182HeadFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step182HeadFv_Outgoing : rowsOwned s2Step182HeadFvAfter [s2Step182HeadFvOut] :=
  hmrRows_owned_drop s2Step182HeadFvAfter [s2Step182HeadGOut,s2Step182HeadFOut,s2Step182HeadGvOut,s2Step182HeadFvOut] 3 s2Step182HeadBank_outgoingOwned

private theorem s2Step182HeadFv_distinct : (s2Step182HeadFvRow.sign::s2Step182HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182HeadFv_owned : (s2Step182HeadFvRow.sign::s2Step182HeadFvRow.payload).toFinset⊆s2Step182HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step182HeadFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182HeadFv_reserved : s2Step182HeadFvBefore.reserve s2Step182HeadFvFresh.toFinset=some s2Step182HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step182HeadFvFresh,arenaWires]
  · norm_num [s2Step182HeadFvBefore,s2Step182HeadGvAfter,s2Step182HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step182HeadFvAfter,s2Step182HeadFvBefore,s2Step182HeadGvAfter,s2Step182HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step182HeadFv_checked : planRowResizeLog s2Step182HeadFvBefore s2Step182HeadFvRow 106 s2Step182HeadFvFresh=
    some (s2Step182HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806],770⟩,growRow 770 s2Step182HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step182HeadFvBefore s2Step182HeadFvAfter s2Step182HeadFvRow 106 s2Step182HeadFvFresh
    s2Step182HeadFv_distinct s2Step182HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step182HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step182HeadFvRow.payload++s2Step182HeadFvFresh) s2Step182HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step182HeadG_Incoming : rowsOwned s2Step182HeadGBefore [s2Step182HeadGRow,s2Step182HeadFRow,s2Step182HeadGvRow,s2Step182HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step182HeadGRow,s2Step182HeadFRow,s2Step182HeadGvRow,s2Step182HeadFvRow] 0 s2Step182HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step182HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step182HeadG_Outgoing : rowsOwned s2Step182HeadFvAfter [s2Step182HeadGOut,s2Step182HeadFOut,s2Step182HeadGvOut,s2Step182HeadFvOut] :=
  hmrRows_owned_drop s2Step182HeadFvAfter [s2Step182HeadGOut,s2Step182HeadFOut,s2Step182HeadGvOut,s2Step182HeadFvOut] 0 s2Step182HeadBank_outgoingOwned

private theorem s2Step182HeadG_distinct : (s2Step182HeadGRow.sign::s2Step182HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182HeadG_owned : (s2Step182HeadGRow.sign::s2Step182HeadGRow.payload).toFinset⊆s2Step182HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step182HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182HeadG_reserved : s2Step182HeadGBefore.reserve s2Step182HeadGFresh.toFinset=some s2Step182HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step182HeadGFresh,arenaWires]
  · norm_num [s2Step182HeadGBefore,s2Step182HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step182HeadGAfter,s2Step182HeadGBefore,s2Step182HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step182HeadG_checked : planRowResizeLog s2Step182HeadGBefore s2Step182HeadGRow 180 s2Step182HeadGFresh=
    some (s2Step182HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 846, 794],769⟩,growRow 769 s2Step182HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step182HeadGBefore s2Step182HeadGAfter s2Step182HeadGRow 180 s2Step182HeadGFresh
    s2Step182HeadG_distinct s2Step182HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step182HeadG_reserved
  have rowEq : WindowRow.mk (s2Step182HeadGRow.payload++s2Step182HeadGFresh) s2Step182HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 846, 794],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step182HeadGvBefore : Arena := s2Step182HeadFAfter

private theorem s2Step182HeadGv_Incoming : rowsOwned s2Step182HeadGvBefore [s2Step182HeadGvRow,s2Step182HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step182HeadGRow,s2Step182HeadFRow,s2Step182HeadGvRow,s2Step182HeadFvRow] 2 s2Step182HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step182HeadGvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step182HeadGv_Outgoing : rowsOwned s2Step182HeadFvAfter [s2Step182HeadGvOut,s2Step182HeadFvOut] :=
  hmrRows_owned_drop s2Step182HeadFvAfter [s2Step182HeadGOut,s2Step182HeadFOut,s2Step182HeadGvOut,s2Step182HeadFvOut] 2 s2Step182HeadBank_outgoingOwned

private theorem s2Step182HeadGv_distinct : (s2Step182HeadGvRow.sign::s2Step182HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step182HeadGv_owned : (s2Step182HeadGvRow.sign::s2Step182HeadGvRow.payload).toFinset⊆s2Step182HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step182HeadGvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step182HeadGv_reserved : s2Step182HeadGvBefore.reserve s2Step182HeadGvFresh.toFinset=some s2Step182HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step182HeadGvFresh,arenaWires]
  · norm_num [s2Step182HeadGvBefore,s2Step182HeadFAfter,s2Step182HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step182HeadGvAfter,s2Step182HeadGvBefore,s2Step182HeadFAfter,s2Step182HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step182HeadGv_checked : planRowResizeLog s2Step182HeadGvBefore s2Step182HeadGvRow 106 s2Step182HeadGvFresh=
    some (s2Step182HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 807],771⟩,growRow 771 s2Step182HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step182HeadGvBefore s2Step182HeadGvAfter s2Step182HeadGvRow 106 s2Step182HeadGvFresh
    s2Step182HeadGv_distinct s2Step182HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step182HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step182HeadGvRow.payload++s2Step182HeadGvFresh) s2Step182HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 807],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step182HeadBank_rows : planWindowRowsLog s2Step182HeadGBefore [(s2Step182HeadGRow,180),(s2Step182HeadFRow,180),(s2Step182HeadGvRow,106),(s2Step182HeadFvRow,106)] [s2Step182HeadGFresh,s2Step182HeadFFresh,s2Step182HeadGvFresh,s2Step182HeadFvFresh]=
    some (s2Step182HeadFvAfter,[s2Step182HeadGOut,s2Step182HeadFOut,s2Step182HeadGvOut,s2Step182HeadFvOut],(growRow 769 s2Step182HeadGFresh ++ (growRow 768 s2Step182HeadFFresh ++ (growRow 771 s2Step182HeadGvFresh ++ (growRow 770 s2Step182HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step182HeadFvAfter [] []=some (s2Step182HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step182HeadFvBefore s2Step182HeadFvAfter s2Step182HeadFvAfter
    s2Step182HeadFvRow s2Step182HeadFvOut 106 s2Step182HeadFvFresh [] [] []
    (growRow 770 s2Step182HeadFvFresh) ([]) s2Step182HeadFv_Incoming s2Step182HeadFv_checked h4 s2Step182HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step182HeadGvBefore s2Step182HeadGvAfter s2Step182HeadFvAfter
    s2Step182HeadGvRow s2Step182HeadGvOut 106 s2Step182HeadGvFresh [(s2Step182HeadFvRow,106)] [s2Step182HeadFvFresh] [s2Step182HeadFvOut]
    (growRow 771 s2Step182HeadGvFresh) ((growRow 770 s2Step182HeadFvFresh ++ [])) s2Step182HeadGv_Incoming s2Step182HeadGv_checked h3 s2Step182HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step182HeadFBefore s2Step182HeadFAfter s2Step182HeadFvAfter
    s2Step182HeadFRow s2Step182HeadFOut 180 s2Step182HeadFFresh [(s2Step182HeadGvRow,106),(s2Step182HeadFvRow,106)] [s2Step182HeadGvFresh,s2Step182HeadFvFresh] [s2Step182HeadGvOut,s2Step182HeadFvOut]
    (growRow 768 s2Step182HeadFFresh) ((growRow 771 s2Step182HeadGvFresh ++ (growRow 770 s2Step182HeadFvFresh ++ []))) s2Step182HeadF_Incoming s2Step182HeadF_checked h2 s2Step182HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step182HeadGBefore s2Step182HeadGAfter s2Step182HeadFvAfter
    s2Step182HeadGRow s2Step182HeadGOut 180 s2Step182HeadGFresh [(s2Step182HeadFRow,180),(s2Step182HeadGvRow,106),(s2Step182HeadFvRow,106)] [s2Step182HeadFFresh,s2Step182HeadGvFresh,s2Step182HeadFvFresh] [s2Step182HeadFOut,s2Step182HeadGvOut,s2Step182HeadFvOut]
    (growRow 769 s2Step182HeadGFresh) ((growRow 768 s2Step182HeadFFresh ++ (growRow 771 s2Step182HeadGvFresh ++ (growRow 770 s2Step182HeadFvFresh ++ [])))) s2Step182HeadG_Incoming s2Step182HeadG_checked h1 s2Step182HeadG_Outgoing
  exact h0

private theorem s2Step182HeadBank_checked : compileHmrBankResizeLog .headroom s2Step182HeadGBefore ⟨s2Step182HeadFRow,s2Step182HeadGRow,s2Step182HeadFvRow,s2Step182HeadGvRow⟩ ⟨180,180,106,106⟩ [s2Step182HeadGFresh,s2Step182HeadFFresh,s2Step182HeadGvFresh,s2Step182HeadFvFresh]=
    some (s2Step182HeadFvAfter,⟨s2Step182HeadFOut,s2Step182HeadGOut,s2Step182HeadFvOut,s2Step182HeadGvOut⟩,(growRow 769 s2Step182HeadGFresh ++ (growRow 768 s2Step182HeadFFresh ++ (growRow 771 s2Step182HeadGvFresh ++ (growRow 770 s2Step182HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step182HeadBank_rows]
  rfl

private theorem s2Step182Front_checked : compileHmrSourceFrontLog s2Step182EntryFBefore s2Step182FrontBank 179 105 ⟨178,177,106,105⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step182FrontLog=some s2Step182FrontPlan := by
  have pairEq : s2Step182FrontPair=⟨s2Step182HeadFRow,s2Step182HeadGRow,s2Step182HeadFvRow,s2Step182HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step182FrontHead=⟨s2Step182ExitFRow,s2Step182ExitGRow,s2Step182ExitFvRow,s2Step182ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step182Add0A=s2Step182FrontHead.f.wires := by decide +kernel
  have gEq : s2Step182Add0B=s2Step182FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step182Add1A=s2Step182FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step182Add1B=s2Step182FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step182EntryFBefore s2Step182FrontBank 179 105 ⟨178,177,106,105⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step182FrontLog s2Step182FrontPlan
  · exact s2Step182Front_entry
  · exact s2Step182EntryBank_checked
  · exact s2Step182Front_sigma
  · rfl
  · exact s2Step182Front_branch
  · rfl
  · simpa only [s2Step182FrontPlan,pairEq] using s2Step182HeadBank_checked
  · simpa only [s2Step182FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step182F4_checked
  · exact s2Step182Counter_checked
  · rfl
  · simpa only [s2Step182FrontPlan,headEq] using s2Step182ExitBank_checked

private theorem s2Step182Complete_explicit_checked : compileHmrEarlyStepLog s2Step182EntryFBefore s2Step182FrontBank 179 105 ⟨178,177,106,105⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step182CompleteLog=some s2Step182CompletePlan := by
  let Q := s2Step182EarlyControlPlan
  have hq := s2Step182EarlyControl_plan_checked
  have fv1 : s2Step182CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step182CompleteOut.fv.payload[2]?.getD s2Step182CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step182CompleteOut.fv.payload[3]?.getD s2Step182CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step182CompleteOut.fv.payload[4]?.getD s2Step182CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step182EntryFBefore s2Step182EarlyControlArena s2Step182FrontBank 179 105 ⟨178,177,106,105⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step182CompleteLog s2Step182FrontPlan Q
    s2Step182Front_checked s2Step182Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step182Complete_owned s2Step182Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step182EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 s2Step182CompleteOut.fv.second (s2Step182CompleteOut.fv.payload[2]?.getD s2Step182CompleteOut.fv.sign) (s2Step182CompleteOut.fv.payload[3]?.getD s2Step182CompleteOut.fv.sign) (s2Step182CompleteOut.fv.payload[4]?.getD s2Step182CompleteOut.fv.sign) 824 43 s2Step182EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep182Arena : Arena := s2Step182EntryFBefore
def s2PrivateStep182Bank : WindowBank := s2Step182FrontBank
def s2PrivateStep182Spec : HmrSourceWalkStepLog := ⟨179,105,⟨178,177,106,105⟩,43,.early s2Step182CompleteLog⟩
def s2PrivateStep182Plan : HmrSourceStepPlan := .early s2Step182CompletePlan
theorem s2PrivateStep182_source : s2PrivateStep182Spec=s2ObservedLogs176[6] := rfl
theorem s2PrivateStep182_checked : compileHmrSourceStepLog s2PrivateStep182Arena s2PrivateStep182Bank
    s2PrivateStep182Spec.fgWidth s2PrivateStep182Spec.vWidth s2PrivateStep182Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]
    6 498 182 s2PrivateStep182Spec.need none s2PrivateStep182Spec.log=some s2PrivateStep182Plan := by
  change compileHmrSourceStepLog s2Step182EntryFBefore s2Step182FrontBank 179 105 ⟨178,177,106,105⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 6 498 182 43 none (.early s2Step182CompleteLog)=some (.early s2Step182CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 182<498)]
  rw [s2Step182Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
