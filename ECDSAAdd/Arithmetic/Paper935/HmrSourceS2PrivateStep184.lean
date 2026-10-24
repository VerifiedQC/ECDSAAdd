import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep182
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

private def s2Step184CompleteMoves : List (Wire × Wire) := []

private def s2Step184EarlyControlLog : HmrEarlyControlLog := ⟨[794, 846, 825, 824, 807],[803],[799],[867, 877, 879, 882, 885, 890],[]⟩

private def s2Step184FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [834]],[[825], [846], [794], [830]],[[], [], [], []]⟩,[802],[831],[824],[807],[803, 799, 867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[803, 799, 867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[824, 807, 803, 799]⟩

private def s2Step184CompleteLog : HmrEarlyStepLog := ⟨s2Step184FrontLog,s2Step184CompleteMoves,s2Step184EarlyControlLog⟩

private def s2Step184ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩

private def s2Step184ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830],770⟩

private def s2Step184ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176],769⟩

private def s2Step184ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834],771⟩

private def s2Step184FrontOut : WindowBank := ⟨s2Step184ExitFOut,s2Step184ExitGOut,s2Step184ExitFvOut,s2Step184ExitGvOut⟩

private def s2Step184CompleteOut : WindowBank := s2Step184FrontOut.repacked s2Step184CompleteMoves

private def s2Step184EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step184EarlyControlPositiveArena,[803],s2Step184EarlyControlEqualityArena,[799],⟨⟨802,false⟩,[⟨⟨803,false⟩,799⟩]⟩⟩

private def s2Step184EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step184EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step184EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<831) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,794⟩,⟨⟨774,false⟩,846⟩,⟨⟨775,false⟩,825⟩,⟨⟨776,false⟩,824⟩,⟨⟨777,false⟩,807⟩]⟩

private def s2Step184EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step184EarlyControlZeroArena,s2Step184EarlyControlZeroPlan,s2Step184EarlyControlClassPlan,s2Step184EarlyControlFlagArena,s2Step184EarlyControlFittedArena,s2Step184EarlyControlHistoryArena,s2Step184EarlyControlSigmaArena,s2Step184EarlyControlOutputArena,s2Step184EarlyControlLog⟩

private def s2Step184CounterWork : List Wire := [824, 807, 803, 799]

private theorem s2Step184Counter_bounded : s2Step184CounterWork.toFinset⊆arenaWires := by norm_num [s2Step184CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step184HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184CounterDuring : Arena := ⟨s2Step184HeadFvAfter.live∪s2Step184CounterWork.toFinset,Finset.union_subset s2Step184HeadFvAfter.bounded s2Step184Counter_bounded⟩

private def s2Step184EntryFFresh : List Wire := []

private def s2Step184EntryFvFresh : List Wire := []

private def s2Step184EntryGFresh : List Wire := []

private def s2Step184EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184EntryGvFresh : List Wire := [834]

private def s2Step184ExitFExtra : List Wire := [846]

private def s2Step184ExitGExtra : List Wire := [825]

private def s2Step184ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184ExitGvExtra : List Wire := [794]

private def s2Step184Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184Add0Work : List Wire := [803, 799, 867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step184Add0_bounded : s2Step184Add0Work.toFinset⊆arenaWires := by
  have h : s2Step184Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step184Add0During : Arena := ⟨s2Step184Add0Arena.live∪s2Step184Add0Work.toFinset,Finset.union_subset s2Step184Add0Arena.bounded s2Step184Add0_bounded⟩

private def s2Step184Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184Add1Work : List Wire := [803, 799, 867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step184Add1_bounded : s2Step184Add1Work.toFinset⊆arenaWires := by
  have h : s2Step184Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step184Add1During : Arena := ⟨s2Step184Add1Arena.live∪s2Step184Add1Work.toFinset,Finset.union_subset s2Step184Add1Arena.bounded s2Step184Add1_bounded⟩

private def s2Step184F4FlagArena : Arena := ⟨s2Step184HeadFvAfter.live∪{824},Finset.union_subset s2Step184HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step184F4Plan : HmrHybridF4Plan := ⟨s2Step184F4FlagArena,[824],s2Step184Add0Arena,[807],s2Step184Add0During,s2Step184Add0Work,s2Step184Add1During,s2Step184Add1Work⟩

private def s2Step184HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 846],768⟩

private def s2Step184HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830],770⟩

private def s2Step184HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 825],769⟩

private def s2Step184HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 794],771⟩

private def s2Step184FrontHead : WindowBank := ⟨s2Step184HeadFOut,s2Step184HeadGOut,s2Step184HeadFvOut,s2Step184HeadGvOut⟩

private def s2Step184EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩

private def s2Step184EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806],770⟩

private def s2Step184EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176],769⟩

private def s2Step184EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834],771⟩

private def s2Step184FrontPair : WindowBank := ⟨s2Step184EntryFOut,s2Step184EntryGOut,s2Step184EntryFvOut,s2Step184EntryGvOut⟩

private def s2Step184FrontSigmaArena : Arena := ⟨s2Step184EntryGvAfter.live∪{802},Finset.union_subset s2Step184EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step184HeadFFresh : List Wire := [846]

private def s2Step184HeadFvFresh : List Wire := [830]

private def s2Step184HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184HeadGFresh : List Wire := [825]

private def s2Step184HeadGvFresh : List Wire := [794]

private def s2Step184FrontPlan : HmrSourceFront := ⟨s2Step184EntryGvAfter,s2Step184FrontPair,(growRow 768 s2Step184EntryFFresh ++ (growRow 769 s2Step184EntryGFresh ++ (growRow 770 s2Step184EntryFvFresh ++ (growRow 771 s2Step184EntryGvFresh ++ [])))),s2Step184FrontSigmaArena,[802],s2Step184HeadGBefore,[831],
  s2Step184HeadFvAfter,s2Step184FrontHead,(growRow 769 s2Step184HeadGFresh ++ (growRow 768 s2Step184HeadFFresh ++ (growRow 771 s2Step184HeadGvFresh ++ (growRow 770 s2Step184HeadFvFresh ++ [])))),s2Step184F4Plan,s2Step184CounterDuring,s2Step184CounterWork,s2Step184ExitGvAfter,s2Step184FrontOut,(shrinkRow 769 s2Step184ExitGExtra ++ (shrinkRow 768 s2Step184ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step184ExitGvExtra ++ []))))⟩

private def s2Step184CompletePlan : HmrEarlyStepPlan := ⟨s2Step184FrontPlan,s2Step184EarlyControlArena,s2Step184EarlyControlPlan,s2Step184CompleteMoves⟩

private theorem s2Step184Complete_apart : List.Disjoint (s2Step184CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [802, 831, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] := by
  have nd : ((s2Step184CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[802, 831, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step184Complete_owned : (s2Step184CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step184EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step184EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184Complete_repack : s2Step184ExitGvAfter.checkRepack s2Step184CompleteMoves=some s2Step184EarlyControlArena := by rfl

private theorem s2Step184EarlyControl_branchOwned : ([831] : List Wire).toFinset⊆s2Step184EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step184EarlyControlSigmaArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184EarlyControl_branch : compileHmrBranchRetirement s2Step184EarlyControlSigmaArena 831=some s2Step184EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step184EarlyControl_branchOwned
  · ext q
    simp [s2Step184EarlyControlOutputArena,s2Step184EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step184EarlyControl_classEqualityBorrow : s2Step184EarlyControlPositiveArena.checkBorrow (([802, 803] : List Wire).length-1) s2Step184EarlyControlLog.classWork=some s2Step184EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step184EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step184EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step184EarlyControlEqualityArena,s2Step184EarlyControlPositiveArena,s2Step184EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step184EarlyControl_classEqualityOwned : ([802, 803] : List Wire).toFinset⊆s2Step184EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step184EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184EarlyControl_classEquality : compileHmrEqualityLog s2Step184EarlyControlPositiveArena [802, 803] 0 s2Step184EarlyControlLog.classWork=some (s2Step184EarlyControlEqualityArena,s2Step184EarlyControlLog.classWork,s2Step184EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step184EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step184EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step184EarlyControl_classOwned : ([777, 807, 802] : List Wire).toFinset⊆s2Step184EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step184EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184EarlyControl_positiveBorrow : s2Step184EarlyControlZeroArena.checkBorrow (1) s2Step184EarlyControlLog.positiveWork=some s2Step184EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step184EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step184EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step184EarlyControlPositiveArena,s2Step184EarlyControlZeroArena,s2Step184EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step184EarlyControl_class : compileHmrSourceClassLog s2Step184EarlyControlZeroArena false 777 s2Step184EarlyControlZeroPlan.top 0 802 s2Step184EarlyControlLog.positiveWork s2Step184EarlyControlLog.classWork=some s2Step184EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step184EarlyControlClassPlan s2Step184EarlyControlZeroArena false 777 s2Step184EarlyControlZeroPlan.top 0 802
  constructor
  · decide +kernel
  · exact s2Step184EarlyControl_classOwned
  · exact s2Step184EarlyControl_positiveBorrow
  · exact s2Step184EarlyControl_classEquality

private theorem s2Step184EarlyControl_entryRecordOwned : ([831, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step184EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step184EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184EarlyControl_entrySigmaOwned : ([802, 254] : List Wire).toFinset⊆s2Step184EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step184EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184EarlyControl_fitBorrow : s2Step184EarlyControlFlagArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step184EarlyControlLog.recordFresh=some s2Step184EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step184EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step184EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
      decide +kernel
    · ext q
      simp [s2Step184EarlyControlFittedArena,s2Step184EarlyControlFlagArena,s2Step184EarlyControlLog,arenaWires]

private theorem s2Step184EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step184EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step184EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step184EarlyControl_fit : compileHmrRecordGrowLog s2Step184EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step184EarlyControlLog.recordFresh=some s2Step184EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step184EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step184EarlyControl_fitBorrow

private theorem s2Step184EarlyControl_flagsBorrow : s2Step184EarlyControlEqualityArena.checkBorrow (6) s2Step184EarlyControlLog.flagWork=some s2Step184EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step184EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step184EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step184EarlyControlFlagArena,s2Step184EarlyControlEqualityArena,s2Step184EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step184EarlyControl_flagsOwned : ([799, 253, 252, 251] : List Wire).toFinset⊆s2Step184EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step184EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184EarlyControl_flags : compileHmrFlagsLog s2Step184EarlyControlClassPlan.equalityArena s2Step184EarlyControlClassPlan.equality.top 253 252 251 s2Step184EarlyControlLog.flagWork=some s2Step184EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step184EarlyControl_flagsOwned⟩
  · exact s2Step184EarlyControl_flagsBorrow

private theorem s2Step184EarlyControl_historyBorrow : s2Step184EarlyControlArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step184EarlyControlLog.recordFresh=some s2Step184EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step184EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step184EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step184EarlyControlHistoryArena,s2Step184EarlyControlArena,s2Step184EarlyControlLog,arenaWires]

private theorem s2Step184EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step184EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step184EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184EarlyControl_history : compileHmrRecordGrowLog s2Step184EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step184EarlyControlLog.recordFresh=some s2Step184EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step184EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step184EarlyControl_historyBorrow

private theorem s2Step184EarlyControl_sigmaOwned : ([254, 802] : List Wire).toFinset⊆s2Step184EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step184EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184EarlyControl_sigmaReleaseOwned : ([802] : List Wire).toFinset⊆s2Step184EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step184EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184EarlyControl_sigmaRelease : s2Step184EarlyControlHistoryArena.release {802} (fun _ => false)=some s2Step184EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step184EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step184EarlyControlSigmaArena,s2Step184EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step184EarlyControl_sigma : compileHmrSigmaDropLog s2Step184EarlyControlHistoryArena false 0 0 254 802 []=some s2Step184EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step184EarlyControl_sigmaOwned⟩
  · exact s2Step184EarlyControl_sigmaRelease

private theorem s2Step184EarlyControl_zeroBorrow : s2Step184EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step184EarlyControlLog.zeroWork=some s2Step184EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step184EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step184EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step184EarlyControlZeroArena,s2Step184EarlyControlArena,s2Step184EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step184EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step184EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step184EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184EarlyControl_zero : compileHmrEqualityLog s2Step184EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step184EarlyControlLog.zeroWork=some (s2Step184EarlyControlZeroArena,s2Step184EarlyControlLog.zeroWork,s2Step184EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step184EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step184EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step184EarlyControl_logged : s2Step184EarlyControlPlan.Logged s2Step184EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 802 254 253 252 251 831 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step184EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step184EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step184EarlyControl_zero
  · exact s2Step184EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step184EarlyControl_flags
  · exact s2Step184EarlyControl_fit
  · exact s2Step184EarlyControl_history
  · exact s2Step184EarlyControl_sigma
  · exact s2Step184EarlyControl_branch

private theorem s2Step184EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step184EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 802 254 253 252 251 831 43 s2Step184EarlyControlLog=some s2Step184EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step184EarlyControlPlan s2Step184EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 802 254 253 252 251 831 43 s2Step184EarlyControl_logged

private def s2Step184EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩

private def s2Step184EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806],770⟩

private def s2Step184EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176],769⟩

private def s2Step184EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832],771⟩

private def s2Step184FrontBank : WindowBank := ⟨s2Step184EntryFRow,s2Step184EntryGRow,s2Step184EntryFvRow,s2Step184EntryGvRow⟩

private def s2Step184Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 846, 768]

private def s2Step184Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 825, 769]

private def s2Step184Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 770]

private def s2Step184Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 794, 771]

private theorem s2Step184Counter_apart : Disjoint s2Step184HeadFvAfter.live s2Step184CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step184HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184Counter_borrowed : s2Step184HeadFvAfter.checkBorrow 4 s2Step184CounterWork=some s2Step184CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step184HeadFvAfter s2Step184CounterDuring s2Step184CounterWork.toFinset s2Step184Counter_bounded s2Step184Counter_apart rfl

private theorem s2Step184Counter_owned : (802::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step184HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step184HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184Counter_checked : compileHmrCounterStepLog s2Step184HeadFvAfter true 802 [772, 773, 774, 775, 776, 777] s2Step184CounterWork=some s2Step184CounterDuring := by
  have owned : ∀q∈802::[772, 773, 774, 775, 776, 777],q∈s2Step184HeadFvAfter.live := fun q hq => s2Step184Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step184Counter_borrowed

private def s2Step184EntryFAfter : Arena := s2Step184EntryFBefore

private theorem s2Step184EntryBank_incomingDistinct : ([s2Step184EntryFRow,s2Step184EntryGRow,s2Step184EntryFvRow,s2Step184EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184EntryF_Incoming : rowsOwned s2Step184EntryFBefore [s2Step184EntryFRow,s2Step184EntryGRow,s2Step184EntryFvRow,s2Step184EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step184EntryFRow,s2Step184EntryGRow,s2Step184EntryFvRow,s2Step184EntryGvRow] 0 s2Step184EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step184EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step184EntryBank_outgoingOwned : rowsOwned s2Step184EntryGvAfter [s2Step184EntryFOut,s2Step184EntryGOut,s2Step184EntryFvOut,s2Step184EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step184EntryGvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step184EntryF_Outgoing : rowsOwned s2Step184EntryGvAfter [s2Step184EntryFOut,s2Step184EntryGOut,s2Step184EntryFvOut,s2Step184EntryGvOut] :=
  hmrRows_owned_drop s2Step184EntryGvAfter [s2Step184EntryFOut,s2Step184EntryGOut,s2Step184EntryFvOut,s2Step184EntryGvOut] 0 s2Step184EntryBank_outgoingOwned

private theorem s2Step184EntryF_distinct : (s2Step184EntryFRow.sign::s2Step184EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184EntryF_owned : (s2Step184EntryFRow.sign::s2Step184EntryFRow.payload).toFinset⊆s2Step184EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step184EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184EntryF_reserved : s2Step184EntryFBefore.reserve s2Step184EntryFFresh.toFinset=some s2Step184EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step184EntryFFresh,arenaWires]
  · norm_num [s2Step184EntryFBefore,s2Step184EntryFFresh,arenaWires]
  · simp only [s2Step184EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step184EntryF_checked : planRowResizeLog s2Step184EntryFBefore s2Step184EntryFRow 177 s2Step184EntryFFresh=
    some (s2Step184EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩,growRow 768 s2Step184EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step184EntryFBefore s2Step184EntryFAfter s2Step184EntryFRow 177 s2Step184EntryFFresh
    s2Step184EntryF_distinct s2Step184EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step184EntryF_reserved
  have rowEq : WindowRow.mk (s2Step184EntryFRow.payload++s2Step184EntryFFresh) s2Step184EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step184EntryFvAfter : Arena := s2Step184EntryFBefore

private def s2Step184EntryFvBefore : Arena := s2Step184EntryFBefore

private theorem s2Step184EntryFv_Incoming : rowsOwned s2Step184EntryFvBefore [s2Step184EntryFvRow,s2Step184EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step184EntryFRow,s2Step184EntryGRow,s2Step184EntryFvRow,s2Step184EntryGvRow] 2 s2Step184EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step184EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step184EntryFv_Outgoing : rowsOwned s2Step184EntryGvAfter [s2Step184EntryFvOut,s2Step184EntryGvOut] :=
  hmrRows_owned_drop s2Step184EntryGvAfter [s2Step184EntryFOut,s2Step184EntryGOut,s2Step184EntryFvOut,s2Step184EntryGvOut] 2 s2Step184EntryBank_outgoingOwned

private theorem s2Step184EntryFv_distinct : (s2Step184EntryFvRow.sign::s2Step184EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184EntryFv_owned : (s2Step184EntryFvRow.sign::s2Step184EntryFvRow.payload).toFinset⊆s2Step184EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step184EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184EntryFv_reserved : s2Step184EntryFvBefore.reserve s2Step184EntryFvFresh.toFinset=some s2Step184EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step184EntryFvFresh,arenaWires]
  · norm_num [s2Step184EntryFvBefore,s2Step184EntryFBefore,s2Step184EntryFvFresh,arenaWires]
  · simp only [s2Step184EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step184EntryFv_checked : planRowResizeLog s2Step184EntryFvBefore s2Step184EntryFvRow 106 s2Step184EntryFvFresh=
    some (s2Step184EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806],770⟩,growRow 770 s2Step184EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step184EntryFvBefore s2Step184EntryFvAfter s2Step184EntryFvRow 106 s2Step184EntryFvFresh
    s2Step184EntryFv_distinct s2Step184EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step184EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step184EntryFvRow.payload++s2Step184EntryFvFresh) s2Step184EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step184EntryGAfter : Arena := s2Step184EntryFBefore

private def s2Step184EntryGBefore : Arena := s2Step184EntryFBefore

private theorem s2Step184EntryG_Incoming : rowsOwned s2Step184EntryGBefore [s2Step184EntryGRow,s2Step184EntryFvRow,s2Step184EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step184EntryFRow,s2Step184EntryGRow,s2Step184EntryFvRow,s2Step184EntryGvRow] 1 s2Step184EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step184EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step184EntryG_Outgoing : rowsOwned s2Step184EntryGvAfter [s2Step184EntryGOut,s2Step184EntryFvOut,s2Step184EntryGvOut] :=
  hmrRows_owned_drop s2Step184EntryGvAfter [s2Step184EntryFOut,s2Step184EntryGOut,s2Step184EntryFvOut,s2Step184EntryGvOut] 1 s2Step184EntryBank_outgoingOwned

private theorem s2Step184EntryG_distinct : (s2Step184EntryGRow.sign::s2Step184EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184EntryG_owned : (s2Step184EntryGRow.sign::s2Step184EntryGRow.payload).toFinset⊆s2Step184EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step184EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184EntryG_reserved : s2Step184EntryGBefore.reserve s2Step184EntryGFresh.toFinset=some s2Step184EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step184EntryGFresh,arenaWires]
  · norm_num [s2Step184EntryGBefore,s2Step184EntryFBefore,s2Step184EntryGFresh,arenaWires]
  · simp only [s2Step184EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step184EntryG_checked : planRowResizeLog s2Step184EntryGBefore s2Step184EntryGRow 177 s2Step184EntryGFresh=
    some (s2Step184EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176],769⟩,growRow 769 s2Step184EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step184EntryGBefore s2Step184EntryGAfter s2Step184EntryGRow 177 s2Step184EntryGFresh
    s2Step184EntryG_distinct s2Step184EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step184EntryG_reserved
  have rowEq : WindowRow.mk (s2Step184EntryGRow.payload++s2Step184EntryGFresh) s2Step184EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step184EntryGvBefore : Arena := s2Step184EntryFBefore

private theorem s2Step184EntryGv_Incoming : rowsOwned s2Step184EntryGvBefore [s2Step184EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step184EntryFRow,s2Step184EntryGRow,s2Step184EntryFvRow,s2Step184EntryGvRow] 3 s2Step184EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step184EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step184EntryGv_Outgoing : rowsOwned s2Step184EntryGvAfter [s2Step184EntryGvOut] :=
  hmrRows_owned_drop s2Step184EntryGvAfter [s2Step184EntryFOut,s2Step184EntryGOut,s2Step184EntryFvOut,s2Step184EntryGvOut] 3 s2Step184EntryBank_outgoingOwned

private theorem s2Step184EntryGv_distinct : (s2Step184EntryGvRow.sign::s2Step184EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184EntryGv_owned : (s2Step184EntryGvRow.sign::s2Step184EntryGvRow.payload).toFinset⊆s2Step184EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step184EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184EntryGv_reserved : s2Step184EntryGvBefore.reserve s2Step184EntryGvFresh.toFinset=some s2Step184EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step184EntryGvFresh,arenaWires]
  · norm_num [s2Step184EntryGvBefore,s2Step184EntryFBefore,s2Step184EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step184EntryGvAfter,s2Step184EntryGvBefore,s2Step184EntryFBefore,s2Step184EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step184EntryGv_checked : planRowResizeLog s2Step184EntryGvBefore s2Step184EntryGvRow 106 s2Step184EntryGvFresh=
    some (s2Step184EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834],771⟩,growRow 771 s2Step184EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step184EntryGvBefore s2Step184EntryGvAfter s2Step184EntryGvRow 106 s2Step184EntryGvFresh
    s2Step184EntryGv_distinct s2Step184EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step184EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step184EntryGvRow.payload++s2Step184EntryGvFresh) s2Step184EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step184EntryBank_rows : planWindowRowsLog s2Step184EntryFBefore [(s2Step184EntryFRow,177),(s2Step184EntryGRow,177),(s2Step184EntryFvRow,106),(s2Step184EntryGvRow,106)] [s2Step184EntryFFresh,s2Step184EntryGFresh,s2Step184EntryFvFresh,s2Step184EntryGvFresh]=
    some (s2Step184EntryGvAfter,[s2Step184EntryFOut,s2Step184EntryGOut,s2Step184EntryFvOut,s2Step184EntryGvOut],(growRow 768 s2Step184EntryFFresh ++ (growRow 769 s2Step184EntryGFresh ++ (growRow 770 s2Step184EntryFvFresh ++ (growRow 771 s2Step184EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step184EntryGvAfter [] []=some (s2Step184EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step184EntryGvBefore s2Step184EntryGvAfter s2Step184EntryGvAfter
    s2Step184EntryGvRow s2Step184EntryGvOut 106 s2Step184EntryGvFresh [] [] []
    (growRow 771 s2Step184EntryGvFresh) ([]) s2Step184EntryGv_Incoming s2Step184EntryGv_checked h4 s2Step184EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step184EntryFvBefore s2Step184EntryFvAfter s2Step184EntryGvAfter
    s2Step184EntryFvRow s2Step184EntryFvOut 106 s2Step184EntryFvFresh [(s2Step184EntryGvRow,106)] [s2Step184EntryGvFresh] [s2Step184EntryGvOut]
    (growRow 770 s2Step184EntryFvFresh) ((growRow 771 s2Step184EntryGvFresh ++ [])) s2Step184EntryFv_Incoming s2Step184EntryFv_checked h3 s2Step184EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step184EntryGBefore s2Step184EntryGAfter s2Step184EntryGvAfter
    s2Step184EntryGRow s2Step184EntryGOut 177 s2Step184EntryGFresh [(s2Step184EntryFvRow,106),(s2Step184EntryGvRow,106)] [s2Step184EntryFvFresh,s2Step184EntryGvFresh] [s2Step184EntryFvOut,s2Step184EntryGvOut]
    (growRow 769 s2Step184EntryGFresh) ((growRow 770 s2Step184EntryFvFresh ++ (growRow 771 s2Step184EntryGvFresh ++ []))) s2Step184EntryG_Incoming s2Step184EntryG_checked h2 s2Step184EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step184EntryFBefore s2Step184EntryFAfter s2Step184EntryGvAfter
    s2Step184EntryFRow s2Step184EntryFOut 177 s2Step184EntryFFresh [(s2Step184EntryGRow,177),(s2Step184EntryFvRow,106),(s2Step184EntryGvRow,106)] [s2Step184EntryGFresh,s2Step184EntryFvFresh,s2Step184EntryGvFresh] [s2Step184EntryGOut,s2Step184EntryFvOut,s2Step184EntryGvOut]
    (growRow 768 s2Step184EntryFFresh) ((growRow 769 s2Step184EntryGFresh ++ (growRow 770 s2Step184EntryFvFresh ++ (growRow 771 s2Step184EntryGvFresh ++ [])))) s2Step184EntryF_Incoming s2Step184EntryF_checked h1 s2Step184EntryF_Outgoing
  exact h0

private theorem s2Step184EntryBank_checked : compileHmrBankResizeLog .entry s2Step184EntryFBefore ⟨s2Step184EntryFRow,s2Step184EntryGRow,s2Step184EntryFvRow,s2Step184EntryGvRow⟩ ⟨177,177,106,106⟩ [s2Step184EntryFFresh,s2Step184EntryGFresh,s2Step184EntryFvFresh,s2Step184EntryGvFresh]=
    some (s2Step184EntryGvAfter,⟨s2Step184EntryFOut,s2Step184EntryGOut,s2Step184EntryFvOut,s2Step184EntryGvOut⟩,(growRow 768 s2Step184EntryFFresh ++ (growRow 769 s2Step184EntryGFresh ++ (growRow 770 s2Step184EntryFvFresh ++ (growRow 771 s2Step184EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step184EntryBank_rows]
  rfl

private def s2Step184ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184ExitFBefore : Arena := s2Step184ExitGAfter

private def s2Step184ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 846],768⟩

private def s2Step184ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830],770⟩

private def s2Step184ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 825],769⟩

private def s2Step184ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 794],771⟩

private theorem s2Step184ExitBank_incomingDistinct : ([s2Step184ExitGRow,s2Step184ExitFRow,s2Step184ExitFvRow,s2Step184ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184ExitF_Incoming : rowsOwned s2Step184ExitFBefore [s2Step184ExitFRow,s2Step184ExitFvRow,s2Step184ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step184ExitGRow,s2Step184ExitFRow,s2Step184ExitFvRow,s2Step184ExitGvRow] 1 s2Step184ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step184ExitFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step184ExitBank_outgoingOwned : rowsOwned s2Step184ExitGvAfter [s2Step184ExitGOut,s2Step184ExitFOut,s2Step184ExitFvOut,s2Step184ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step184ExitGvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step184ExitF_Outgoing : rowsOwned s2Step184ExitGvAfter [s2Step184ExitFOut,s2Step184ExitFvOut,s2Step184ExitGvOut] :=
  hmrRows_owned_drop s2Step184ExitGvAfter [s2Step184ExitGOut,s2Step184ExitFOut,s2Step184ExitFvOut,s2Step184ExitGvOut] 1 s2Step184ExitBank_outgoingOwned

private theorem s2Step184ExitF_distinct : (s2Step184ExitFRow.sign::s2Step184ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184ExitF_owned : (s2Step184ExitFRow.sign::s2Step184ExitFRow.payload).toFinset⊆s2Step184ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step184ExitFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184ExitF_retired : s2Step184ExitFBefore.retireSet s2Step184ExitFExtra.toFinset=s2Step184ExitFAfter := by
  unfold Arena.retireSet s2Step184ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step184ExitFBefore,s2Step184ExitGAfter,s2Step184ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step184ExitF_checked : planRowResizeLog s2Step184ExitFBefore s2Step184ExitFRow 177 []=
    some (s2Step184ExitFAfter,s2Step184ExitFOut,shrinkRow 768 s2Step184ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step184ExitFBefore s2Step184ExitFRow 177 s2Step184ExitF_distinct s2Step184ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step184ExitFRow.payload.take 177) s2Step184ExitFRow.sign=s2Step184ExitFOut := by decide +kernel
  have hi : s2Step184ExitFRow.payload.drop 177=s2Step184ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step184ExitF_retired] at result
  exact result

private def s2Step184ExitFvAfter : Arena := s2Step184ExitFAfter

private def s2Step184ExitFvBefore : Arena := s2Step184ExitFAfter

private theorem s2Step184ExitFv_Incoming : rowsOwned s2Step184ExitFvBefore [s2Step184ExitFvRow,s2Step184ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step184ExitGRow,s2Step184ExitFRow,s2Step184ExitFvRow,s2Step184ExitGvRow] 2 s2Step184ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step184ExitFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step184ExitFv_Outgoing : rowsOwned s2Step184ExitGvAfter [s2Step184ExitFvOut,s2Step184ExitGvOut] :=
  hmrRows_owned_drop s2Step184ExitGvAfter [s2Step184ExitGOut,s2Step184ExitFOut,s2Step184ExitFvOut,s2Step184ExitGvOut] 2 s2Step184ExitBank_outgoingOwned

private theorem s2Step184ExitFv_distinct : (s2Step184ExitFvRow.sign::s2Step184ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184ExitFv_owned : (s2Step184ExitFvRow.sign::s2Step184ExitFvRow.payload).toFinset⊆s2Step184ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step184ExitFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184ExitFv_reserved : s2Step184ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step184ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step184ExitFv_checked : planRowResizeLog s2Step184ExitFvBefore s2Step184ExitFvRow 107 []=
    some (s2Step184ExitFvAfter,s2Step184ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step184ExitFvBefore s2Step184ExitFvAfter s2Step184ExitFvRow 107 []
    s2Step184ExitFv_distinct s2Step184ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step184ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step184ExitFvRow.payload++[]) s2Step184ExitFvRow.sign=s2Step184ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step184ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step184ExitG_Incoming : rowsOwned s2Step184ExitGBefore [s2Step184ExitGRow,s2Step184ExitFRow,s2Step184ExitFvRow,s2Step184ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step184ExitGRow,s2Step184ExitFRow,s2Step184ExitFvRow,s2Step184ExitGvRow] 0 s2Step184ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step184ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step184ExitG_Outgoing : rowsOwned s2Step184ExitGvAfter [s2Step184ExitGOut,s2Step184ExitFOut,s2Step184ExitFvOut,s2Step184ExitGvOut] :=
  hmrRows_owned_drop s2Step184ExitGvAfter [s2Step184ExitGOut,s2Step184ExitFOut,s2Step184ExitFvOut,s2Step184ExitGvOut] 0 s2Step184ExitBank_outgoingOwned

private theorem s2Step184ExitG_distinct : (s2Step184ExitGRow.sign::s2Step184ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184ExitG_owned : (s2Step184ExitGRow.sign::s2Step184ExitGRow.payload).toFinset⊆s2Step184ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step184ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184ExitG_retired : s2Step184ExitGBefore.retireSet s2Step184ExitGExtra.toFinset=s2Step184ExitGAfter := by
  unfold Arena.retireSet s2Step184ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step184ExitGBefore,s2Step184ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step184ExitG_checked : planRowResizeLog s2Step184ExitGBefore s2Step184ExitGRow 177 []=
    some (s2Step184ExitGAfter,s2Step184ExitGOut,shrinkRow 769 s2Step184ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step184ExitGBefore s2Step184ExitGRow 177 s2Step184ExitG_distinct s2Step184ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step184ExitGRow.payload.take 177) s2Step184ExitGRow.sign=s2Step184ExitGOut := by decide +kernel
  have hi : s2Step184ExitGRow.payload.drop 177=s2Step184ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step184ExitG_retired] at result
  exact result

private def s2Step184ExitGvBefore : Arena := s2Step184ExitFAfter

private theorem s2Step184ExitGv_Incoming : rowsOwned s2Step184ExitGvBefore [s2Step184ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step184ExitGRow,s2Step184ExitFRow,s2Step184ExitFvRow,s2Step184ExitGvRow] 3 s2Step184ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step184ExitGvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step184ExitGv_Outgoing : rowsOwned s2Step184ExitGvAfter [s2Step184ExitGvOut] :=
  hmrRows_owned_drop s2Step184ExitGvAfter [s2Step184ExitGOut,s2Step184ExitFOut,s2Step184ExitFvOut,s2Step184ExitGvOut] 3 s2Step184ExitBank_outgoingOwned

private theorem s2Step184ExitGv_distinct : (s2Step184ExitGvRow.sign::s2Step184ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184ExitGv_owned : (s2Step184ExitGvRow.sign::s2Step184ExitGvRow.payload).toFinset⊆s2Step184ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step184ExitGvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184ExitGv_retired : s2Step184ExitGvBefore.retireSet s2Step184ExitGvExtra.toFinset=s2Step184ExitGvAfter := by
  unfold Arena.retireSet s2Step184ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step184ExitGvBefore,s2Step184ExitFAfter,s2Step184ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step184ExitGv_checked : planRowResizeLog s2Step184ExitGvBefore s2Step184ExitGvRow 106 []=
    some (s2Step184ExitGvAfter,s2Step184ExitGvOut,shrinkRow 771 s2Step184ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step184ExitGvBefore s2Step184ExitGvRow 106 s2Step184ExitGv_distinct s2Step184ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step184ExitGvRow.payload.take 106) s2Step184ExitGvRow.sign=s2Step184ExitGvOut := by decide +kernel
  have hi : s2Step184ExitGvRow.payload.drop 106=s2Step184ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step184ExitGv_retired] at result
  exact result

private theorem s2Step184ExitBank_rows : planWindowRowsLog s2Step184ExitGBefore [(s2Step184ExitGRow,177),(s2Step184ExitFRow,177),(s2Step184ExitFvRow,107),(s2Step184ExitGvRow,106)] [[],[],[],[]]=
    some (s2Step184ExitGvAfter,[s2Step184ExitGOut,s2Step184ExitFOut,s2Step184ExitFvOut,s2Step184ExitGvOut],(shrinkRow 769 s2Step184ExitGExtra ++ (shrinkRow 768 s2Step184ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step184ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step184ExitGvAfter [] []=some (s2Step184ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step184ExitGvBefore s2Step184ExitGvAfter s2Step184ExitGvAfter
    s2Step184ExitGvRow s2Step184ExitGvOut 106 [] [] [] []
    (shrinkRow 771 s2Step184ExitGvExtra) ([]) s2Step184ExitGv_Incoming s2Step184ExitGv_checked h4 s2Step184ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step184ExitFvBefore s2Step184ExitFvAfter s2Step184ExitGvAfter
    s2Step184ExitFvRow s2Step184ExitFvOut 107 [] [(s2Step184ExitGvRow,106)] [[]] [s2Step184ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step184ExitGvExtra ++ [])) s2Step184ExitFv_Incoming s2Step184ExitFv_checked h3 s2Step184ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step184ExitFBefore s2Step184ExitFAfter s2Step184ExitGvAfter
    s2Step184ExitFRow s2Step184ExitFOut 177 [] [(s2Step184ExitFvRow,107),(s2Step184ExitGvRow,106)] [[],[]] [s2Step184ExitFvOut,s2Step184ExitGvOut]
    (shrinkRow 768 s2Step184ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step184ExitGvExtra ++ []))) s2Step184ExitF_Incoming s2Step184ExitF_checked h2 s2Step184ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step184ExitGBefore s2Step184ExitGAfter s2Step184ExitGvAfter
    s2Step184ExitGRow s2Step184ExitGOut 177 [] [(s2Step184ExitFRow,177),(s2Step184ExitFvRow,107),(s2Step184ExitGvRow,106)] [[],[],[]] [s2Step184ExitFOut,s2Step184ExitFvOut,s2Step184ExitGvOut]
    (shrinkRow 769 s2Step184ExitGExtra) ((shrinkRow 768 s2Step184ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step184ExitGvExtra ++ [])))) s2Step184ExitG_Incoming s2Step184ExitG_checked h1 s2Step184ExitG_Outgoing
  exact h0

private theorem s2Step184ExitBank_checked : compileHmrBankResizeLog .exit s2Step184ExitGBefore ⟨s2Step184ExitFRow,s2Step184ExitGRow,s2Step184ExitFvRow,s2Step184ExitGvRow⟩ ⟨177,177,107,106⟩ [[],[],[],[]]=
    some (s2Step184ExitGvAfter,⟨s2Step184ExitFOut,s2Step184ExitGOut,s2Step184ExitFvOut,s2Step184ExitGvOut⟩,(shrinkRow 769 s2Step184ExitGExtra ++ (shrinkRow 768 s2Step184ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step184ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step184ExitBank_rows]
  rfl

private theorem s2Step184Add0_apart : Disjoint s2Step184Add0Arena.live s2Step184Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step184Add0Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184Add0_card : s2Step184Add0Arena.live.card=883 := by
  decide +kernel

private theorem s2Step184Add0_borrowed : s2Step184Add0Arena.checkBorrow (hmrHybridCount s2Step184Add0Arena s2Step184Add0B.length) s2Step184Add0Work=some s2Step184Add0During := by
  have len : s2Step184Add0Work.length=hmrHybridCount s2Step184Add0Arena s2Step184Add0B.length := by
    rw [hmrHybridCount,s2Step184Add0_card]
    decide +kernel
  have nd : s2Step184Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step184Add0Arena s2Step184Add0During s2Step184Add0Work.toFinset s2Step184Add0_bounded s2Step184Add0_apart rfl

private theorem s2Step184Add0_distinct : (824::831::807::(s2Step184Add0A++s2Step184Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184Add0_owned : (824::831::807::(s2Step184Add0A++s2Step184Add0B)).toFinset⊆s2Step184Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step184Add0Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184Add0_checked : compileHmrHybridCinLog s2Step184Add0Arena 831 824 807 s2Step184Add0A s2Step184Add0B s2Step184Add0Work=some s2Step184Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step184Add0Arena s2Step184Add0During 831 824 807 s2Step184Add0A s2Step184Add0B s2Step184Add0Work
    (by decide +kernel) (by decide +kernel) s2Step184Add0_distinct
    (fun q hq => s2Step184Add0_owned (List.mem_toFinset.mpr hq)) s2Step184Add0_borrowed

private theorem s2Step184Add1_apart : Disjoint s2Step184Add1Arena.live s2Step184Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step184Add1Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184Add1_card : s2Step184Add1Arena.live.card=883 := by
  decide +kernel

private theorem s2Step184Add1_borrowed : s2Step184Add1Arena.checkBorrow (hmrHybridCount s2Step184Add1Arena s2Step184Add1B.length) s2Step184Add1Work=some s2Step184Add1During := by
  have len : s2Step184Add1Work.length=hmrHybridCount s2Step184Add1Arena s2Step184Add1B.length := by
    rw [hmrHybridCount,s2Step184Add1_card]
    decide +kernel
  have nd : s2Step184Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step184Add1Arena s2Step184Add1During s2Step184Add1Work.toFinset s2Step184Add1_bounded s2Step184Add1_apart rfl

private theorem s2Step184Add1_distinct : (824::831::807::(s2Step184Add1A++s2Step184Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184Add1_owned : (824::831::807::(s2Step184Add1A++s2Step184Add1B)).toFinset⊆s2Step184Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step184Add1Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184Add1_checked : compileHmrHybridCinLog s2Step184Add1Arena 831 824 807 s2Step184Add1A s2Step184Add1B s2Step184Add1Work=some s2Step184Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step184Add1Arena s2Step184Add1During 831 824 807 s2Step184Add1A s2Step184Add1B s2Step184Add1Work
    (by decide +kernel) (by decide +kernel) s2Step184Add1_distinct
    (fun q hq => s2Step184Add1_owned (List.mem_toFinset.mpr hq)) s2Step184Add1_borrowed

private theorem s2Step184F4_apart : Disjoint (s2Step184Add0A++s2Step184Add0B).toFinset (s2Step184Add1A++s2Step184Add1B).toFinset := by
  have nd : ((s2Step184Add0A++s2Step184Add0B)++(s2Step184Add1A++s2Step184Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step184F4_carry : s2Step184F4FlagArena.checkBorrow 1 [807]=some s2Step184Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step184F4FlagArena,s2Step184HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step184F4FlagArena,s2Step184HeadFvAfter,s2Step184Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step184F4_distinct : (802::831::824::807::((s2Step184Add0A++s2Step184Add1A)++(s2Step184Add0B++s2Step184Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184F4_flag : s2Step184HeadFvAfter.checkBorrow 1 [824]=some s2Step184F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step184HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step184F4_owned : (802::831::((s2Step184Add0A++s2Step184Add1A)++(s2Step184Add0B++s2Step184Add1B))).toFinset⊆s2Step184HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step184HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184F4_checked : compileHmrHybridF4Log s2Step184HeadFvAfter 802 831 s2Step184Add0A s2Step184Add0B s2Step184Add1A s2Step184Add1B [824] [807] s2Step184Add0Work s2Step184Add1Work=some s2Step184F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step184HeadFvAfter s2Step184F4FlagArena s2Step184Add0Arena s2Step184Add0During s2Step184Add1During 802 831
    s2Step184Add0A s2Step184Add0B s2Step184Add1A s2Step184Add1B [824] [807] s2Step184Add0Work s2Step184Add1Work
    (fun q hq => s2Step184F4_owned (List.mem_toFinset.mpr hq)) s2Step184F4_flag s2Step184F4_carry
    s2Step184F4_distinct s2Step184F4_apart s2Step184Add0_checked s2Step184Add1_checked

private theorem s2Step184Front_branch : s2Step184FrontSigmaArena.checkBorrow 1 [831]=some s2Step184HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step184FrontSigmaArena,s2Step184EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step184FrontSigmaArena,s2Step184EntryGvAfter,s2Step184HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step184Front_entry : HmrFrontEntryValid s2Step184EntryFBefore s2Step184FrontBank 177 106 ⟨177,177,107,106⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step184FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step184EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step184EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step184FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step184Front_sigma : s2Step184EntryGvAfter.checkBorrow 1 [802]=some s2Step184FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step184EntryGvAfter,arenaWires]
  · rfl

private def s2Step184HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184HeadFBefore : Arena := s2Step184HeadGAfter

private def s2Step184HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩

private def s2Step184HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806],770⟩

private def s2Step184HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176],769⟩

private def s2Step184HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834],771⟩

private theorem s2Step184HeadBank_incomingDistinct : ([s2Step184HeadGRow,s2Step184HeadFRow,s2Step184HeadGvRow,s2Step184HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184HeadF_Incoming : rowsOwned s2Step184HeadFBefore [s2Step184HeadFRow,s2Step184HeadGvRow,s2Step184HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step184HeadGRow,s2Step184HeadFRow,s2Step184HeadGvRow,s2Step184HeadFvRow] 1 s2Step184HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step184HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step184HeadBank_outgoingOwned : rowsOwned s2Step184HeadFvAfter [s2Step184HeadGOut,s2Step184HeadFOut,s2Step184HeadGvOut,s2Step184HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step184HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step184HeadF_Outgoing : rowsOwned s2Step184HeadFvAfter [s2Step184HeadFOut,s2Step184HeadGvOut,s2Step184HeadFvOut] :=
  hmrRows_owned_drop s2Step184HeadFvAfter [s2Step184HeadGOut,s2Step184HeadFOut,s2Step184HeadGvOut,s2Step184HeadFvOut] 1 s2Step184HeadBank_outgoingOwned

private theorem s2Step184HeadF_distinct : (s2Step184HeadFRow.sign::s2Step184HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184HeadF_owned : (s2Step184HeadFRow.sign::s2Step184HeadFRow.payload).toFinset⊆s2Step184HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step184HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184HeadF_reserved : s2Step184HeadFBefore.reserve s2Step184HeadFFresh.toFinset=some s2Step184HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step184HeadFFresh,arenaWires]
  · norm_num [s2Step184HeadFBefore,s2Step184HeadGAfter,s2Step184HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step184HeadFAfter,s2Step184HeadFBefore,s2Step184HeadGAfter,s2Step184HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step184HeadF_checked : planRowResizeLog s2Step184HeadFBefore s2Step184HeadFRow 178 s2Step184HeadFFresh=
    some (s2Step184HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 846],768⟩,growRow 768 s2Step184HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step184HeadFBefore s2Step184HeadFAfter s2Step184HeadFRow 178 s2Step184HeadFFresh
    s2Step184HeadF_distinct s2Step184HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step184HeadF_reserved
  have rowEq : WindowRow.mk (s2Step184HeadFRow.payload++s2Step184HeadFFresh) s2Step184HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 846],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step184HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step184HeadFvBefore : Arena := s2Step184HeadGvAfter

private theorem s2Step184HeadFv_Incoming : rowsOwned s2Step184HeadFvBefore [s2Step184HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step184HeadGRow,s2Step184HeadFRow,s2Step184HeadGvRow,s2Step184HeadFvRow] 3 s2Step184HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step184HeadFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step184HeadFv_Outgoing : rowsOwned s2Step184HeadFvAfter [s2Step184HeadFvOut] :=
  hmrRows_owned_drop s2Step184HeadFvAfter [s2Step184HeadGOut,s2Step184HeadFOut,s2Step184HeadGvOut,s2Step184HeadFvOut] 3 s2Step184HeadBank_outgoingOwned

private theorem s2Step184HeadFv_distinct : (s2Step184HeadFvRow.sign::s2Step184HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184HeadFv_owned : (s2Step184HeadFvRow.sign::s2Step184HeadFvRow.payload).toFinset⊆s2Step184HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step184HeadFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184HeadFv_reserved : s2Step184HeadFvBefore.reserve s2Step184HeadFvFresh.toFinset=some s2Step184HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step184HeadFvFresh,arenaWires]
  · norm_num [s2Step184HeadFvBefore,s2Step184HeadGvAfter,s2Step184HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step184HeadFvAfter,s2Step184HeadFvBefore,s2Step184HeadGvAfter,s2Step184HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step184HeadFv_checked : planRowResizeLog s2Step184HeadFvBefore s2Step184HeadFvRow 107 s2Step184HeadFvFresh=
    some (s2Step184HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830],770⟩,growRow 770 s2Step184HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step184HeadFvBefore s2Step184HeadFvAfter s2Step184HeadFvRow 107 s2Step184HeadFvFresh
    s2Step184HeadFv_distinct s2Step184HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step184HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step184HeadFvRow.payload++s2Step184HeadFvFresh) s2Step184HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step184HeadG_Incoming : rowsOwned s2Step184HeadGBefore [s2Step184HeadGRow,s2Step184HeadFRow,s2Step184HeadGvRow,s2Step184HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step184HeadGRow,s2Step184HeadFRow,s2Step184HeadGvRow,s2Step184HeadFvRow] 0 s2Step184HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step184HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step184HeadG_Outgoing : rowsOwned s2Step184HeadFvAfter [s2Step184HeadGOut,s2Step184HeadFOut,s2Step184HeadGvOut,s2Step184HeadFvOut] :=
  hmrRows_owned_drop s2Step184HeadFvAfter [s2Step184HeadGOut,s2Step184HeadFOut,s2Step184HeadGvOut,s2Step184HeadFvOut] 0 s2Step184HeadBank_outgoingOwned

private theorem s2Step184HeadG_distinct : (s2Step184HeadGRow.sign::s2Step184HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184HeadG_owned : (s2Step184HeadGRow.sign::s2Step184HeadGRow.payload).toFinset⊆s2Step184HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step184HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184HeadG_reserved : s2Step184HeadGBefore.reserve s2Step184HeadGFresh.toFinset=some s2Step184HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step184HeadGFresh,arenaWires]
  · norm_num [s2Step184HeadGBefore,s2Step184HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step184HeadGAfter,s2Step184HeadGBefore,s2Step184HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step184HeadG_checked : planRowResizeLog s2Step184HeadGBefore s2Step184HeadGRow 178 s2Step184HeadGFresh=
    some (s2Step184HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 825],769⟩,growRow 769 s2Step184HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step184HeadGBefore s2Step184HeadGAfter s2Step184HeadGRow 178 s2Step184HeadGFresh
    s2Step184HeadG_distinct s2Step184HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step184HeadG_reserved
  have rowEq : WindowRow.mk (s2Step184HeadGRow.payload++s2Step184HeadGFresh) s2Step184HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 825],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step184HeadGvBefore : Arena := s2Step184HeadFAfter

private theorem s2Step184HeadGv_Incoming : rowsOwned s2Step184HeadGvBefore [s2Step184HeadGvRow,s2Step184HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step184HeadGRow,s2Step184HeadFRow,s2Step184HeadGvRow,s2Step184HeadFvRow] 2 s2Step184HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step184HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step184HeadGv_Outgoing : rowsOwned s2Step184HeadFvAfter [s2Step184HeadGvOut,s2Step184HeadFvOut] :=
  hmrRows_owned_drop s2Step184HeadFvAfter [s2Step184HeadGOut,s2Step184HeadFOut,s2Step184HeadGvOut,s2Step184HeadFvOut] 2 s2Step184HeadBank_outgoingOwned

private theorem s2Step184HeadGv_distinct : (s2Step184HeadGvRow.sign::s2Step184HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step184HeadGv_owned : (s2Step184HeadGvRow.sign::s2Step184HeadGvRow.payload).toFinset⊆s2Step184HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step184HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step184HeadGv_reserved : s2Step184HeadGvBefore.reserve s2Step184HeadGvFresh.toFinset=some s2Step184HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step184HeadGvFresh,arenaWires]
  · norm_num [s2Step184HeadGvBefore,s2Step184HeadFAfter,s2Step184HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step184HeadGvAfter,s2Step184HeadGvBefore,s2Step184HeadFAfter,s2Step184HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step184HeadGv_checked : planRowResizeLog s2Step184HeadGvBefore s2Step184HeadGvRow 107 s2Step184HeadGvFresh=
    some (s2Step184HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 794],771⟩,growRow 771 s2Step184HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step184HeadGvBefore s2Step184HeadGvAfter s2Step184HeadGvRow 107 s2Step184HeadGvFresh
    s2Step184HeadGv_distinct s2Step184HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step184HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step184HeadGvRow.payload++s2Step184HeadGvFresh) s2Step184HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step184HeadBank_rows : planWindowRowsLog s2Step184HeadGBefore [(s2Step184HeadGRow,178),(s2Step184HeadFRow,178),(s2Step184HeadGvRow,107),(s2Step184HeadFvRow,107)] [s2Step184HeadGFresh,s2Step184HeadFFresh,s2Step184HeadGvFresh,s2Step184HeadFvFresh]=
    some (s2Step184HeadFvAfter,[s2Step184HeadGOut,s2Step184HeadFOut,s2Step184HeadGvOut,s2Step184HeadFvOut],(growRow 769 s2Step184HeadGFresh ++ (growRow 768 s2Step184HeadFFresh ++ (growRow 771 s2Step184HeadGvFresh ++ (growRow 770 s2Step184HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step184HeadFvAfter [] []=some (s2Step184HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step184HeadFvBefore s2Step184HeadFvAfter s2Step184HeadFvAfter
    s2Step184HeadFvRow s2Step184HeadFvOut 107 s2Step184HeadFvFresh [] [] []
    (growRow 770 s2Step184HeadFvFresh) ([]) s2Step184HeadFv_Incoming s2Step184HeadFv_checked h4 s2Step184HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step184HeadGvBefore s2Step184HeadGvAfter s2Step184HeadFvAfter
    s2Step184HeadGvRow s2Step184HeadGvOut 107 s2Step184HeadGvFresh [(s2Step184HeadFvRow,107)] [s2Step184HeadFvFresh] [s2Step184HeadFvOut]
    (growRow 771 s2Step184HeadGvFresh) ((growRow 770 s2Step184HeadFvFresh ++ [])) s2Step184HeadGv_Incoming s2Step184HeadGv_checked h3 s2Step184HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step184HeadFBefore s2Step184HeadFAfter s2Step184HeadFvAfter
    s2Step184HeadFRow s2Step184HeadFOut 178 s2Step184HeadFFresh [(s2Step184HeadGvRow,107),(s2Step184HeadFvRow,107)] [s2Step184HeadGvFresh,s2Step184HeadFvFresh] [s2Step184HeadGvOut,s2Step184HeadFvOut]
    (growRow 768 s2Step184HeadFFresh) ((growRow 771 s2Step184HeadGvFresh ++ (growRow 770 s2Step184HeadFvFresh ++ []))) s2Step184HeadF_Incoming s2Step184HeadF_checked h2 s2Step184HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step184HeadGBefore s2Step184HeadGAfter s2Step184HeadFvAfter
    s2Step184HeadGRow s2Step184HeadGOut 178 s2Step184HeadGFresh [(s2Step184HeadFRow,178),(s2Step184HeadGvRow,107),(s2Step184HeadFvRow,107)] [s2Step184HeadFFresh,s2Step184HeadGvFresh,s2Step184HeadFvFresh] [s2Step184HeadFOut,s2Step184HeadGvOut,s2Step184HeadFvOut]
    (growRow 769 s2Step184HeadGFresh) ((growRow 768 s2Step184HeadFFresh ++ (growRow 771 s2Step184HeadGvFresh ++ (growRow 770 s2Step184HeadFvFresh ++ [])))) s2Step184HeadG_Incoming s2Step184HeadG_checked h1 s2Step184HeadG_Outgoing
  exact h0

private theorem s2Step184HeadBank_checked : compileHmrBankResizeLog .headroom s2Step184HeadGBefore ⟨s2Step184HeadFRow,s2Step184HeadGRow,s2Step184HeadFvRow,s2Step184HeadGvRow⟩ ⟨178,178,107,107⟩ [s2Step184HeadGFresh,s2Step184HeadFFresh,s2Step184HeadGvFresh,s2Step184HeadFvFresh]=
    some (s2Step184HeadFvAfter,⟨s2Step184HeadFOut,s2Step184HeadGOut,s2Step184HeadFvOut,s2Step184HeadGvOut⟩,(growRow 769 s2Step184HeadGFresh ++ (growRow 768 s2Step184HeadFFresh ++ (growRow 771 s2Step184HeadGvFresh ++ (growRow 770 s2Step184HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step184HeadBank_rows]
  rfl

private theorem s2Step184Front_checked : compileHmrSourceFrontLog s2Step184EntryFBefore s2Step184FrontBank 177 106 ⟨177,177,107,106⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step184FrontLog=some s2Step184FrontPlan := by
  have pairEq : s2Step184FrontPair=⟨s2Step184HeadFRow,s2Step184HeadGRow,s2Step184HeadFvRow,s2Step184HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step184FrontHead=⟨s2Step184ExitFRow,s2Step184ExitGRow,s2Step184ExitFvRow,s2Step184ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step184Add0A=s2Step184FrontHead.f.wires := by decide +kernel
  have gEq : s2Step184Add0B=s2Step184FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step184Add1A=s2Step184FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step184Add1B=s2Step184FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step184EntryFBefore s2Step184FrontBank 177 106 ⟨177,177,107,106⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step184FrontLog s2Step184FrontPlan
  · exact s2Step184Front_entry
  · exact s2Step184EntryBank_checked
  · exact s2Step184Front_sigma
  · rfl
  · exact s2Step184Front_branch
  · rfl
  · simpa only [s2Step184FrontPlan,pairEq] using s2Step184HeadBank_checked
  · simpa only [s2Step184FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step184F4_checked
  · exact s2Step184Counter_checked
  · rfl
  · simpa only [s2Step184FrontPlan,headEq] using s2Step184ExitBank_checked

private theorem s2Step184Complete_explicit_checked : compileHmrEarlyStepLog s2Step184EntryFBefore s2Step184FrontBank 177 106 ⟨177,177,107,106⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step184CompleteLog=some s2Step184CompletePlan := by
  let Q := s2Step184EarlyControlPlan
  have hq := s2Step184EarlyControl_plan_checked
  have fv1 : s2Step184CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step184CompleteOut.fv.payload[2]?.getD s2Step184CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step184CompleteOut.fv.payload[3]?.getD s2Step184CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step184CompleteOut.fv.payload[4]?.getD s2Step184CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step184EntryFBefore s2Step184EarlyControlArena s2Step184FrontBank 177 106 ⟨177,177,107,106⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step184CompleteLog s2Step184FrontPlan Q
    s2Step184Front_checked s2Step184Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step184Complete_owned s2Step184Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step184EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 802 s2Step184CompleteOut.fv.second (s2Step184CompleteOut.fv.payload[2]?.getD s2Step184CompleteOut.fv.sign) (s2Step184CompleteOut.fv.payload[3]?.getD s2Step184CompleteOut.fv.sign) (s2Step184CompleteOut.fv.payload[4]?.getD s2Step184CompleteOut.fv.sign) 831 43 s2Step184EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep184Arena : Arena := s2Step184EntryFBefore
def s2PrivateStep184Bank : WindowBank := s2Step184FrontBank
def s2PrivateStep184Spec : HmrSourceWalkStepLog := ⟨177,106,⟨177,177,107,106⟩,43,.early s2Step184CompleteLog⟩
def s2PrivateStep184Plan : HmrSourceStepPlan := .early s2Step184CompletePlan
theorem s2PrivateStep184_source : s2PrivateStep184Spec=s2ObservedLogs176[8] := rfl
theorem s2PrivateStep184_checked : compileHmrSourceStepLog s2PrivateStep184Arena s2PrivateStep184Bank
    s2PrivateStep184Spec.fgWidth s2PrivateStep184Spec.vWidth s2PrivateStep184Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]
    6 498 184 s2PrivateStep184Spec.need none s2PrivateStep184Spec.log=some s2PrivateStep184Plan := by
  change compileHmrSourceStepLog s2Step184EntryFBefore s2Step184FrontBank 177 106 ⟨177,177,107,106⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 6 498 184 43 none (.early s2Step184CompleteLog)=some (.early s2Step184CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 184<498)]
  rw [s2Step184Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
