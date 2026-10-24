import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep181
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

private def s2Step183CompleteMoves : List (Wire × Wire) := [(831,689)]

private def s2Step183EarlyControlLog : HmrEarlyControlLog := ⟨[831, 825, 846, 794, 830],[824],[807],[803, 799, 867, 877, 879, 882],[]⟩

private def s2Step183FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [824], [], [825]],[[807], [830], [846], [794]],[[], [], [], []]⟩,[802],[834],[803],[799],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[803, 799, 867, 877]⟩

private def s2Step183CompleteLog : HmrEarlyStepLog := ⟨s2Step183FrontLog,s2Step183CompleteMoves,s2Step183EarlyControlLog⟩

private def s2Step183ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩

private def s2Step183ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806],770⟩

private def s2Step183ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176],769⟩

private def s2Step183ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832],771⟩

private def s2Step183FrontOut : WindowBank := ⟨s2Step183ExitFOut,s2Step183ExitGOut,s2Step183ExitFvOut,s2Step183ExitGvOut⟩

private def s2Step183CompleteOut : WindowBank := s2Step183FrontOut.repacked s2Step183CompleteMoves

private def s2Step183EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step183EarlyControlPositiveArena,[824],s2Step183EarlyControlEqualityArena,[807],⟨⟨802,false⟩,[⟨⟨824,false⟩,807⟩]⟩⟩

private def s2Step183EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,831⟩,⟨⟨774,false⟩,825⟩,⟨⟨775,false⟩,846⟩,⟨⟨776,false⟩,794⟩,⟨⟨777,false⟩,830⟩]⟩

private def s2Step183EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step183EarlyControlZeroArena,s2Step183EarlyControlZeroPlan,s2Step183EarlyControlClassPlan,s2Step183EarlyControlFlagArena,s2Step183EarlyControlFittedArena,s2Step183EarlyControlHistoryArena,s2Step183EarlyControlSigmaArena,s2Step183EarlyControlOutputArena,s2Step183EarlyControlLog⟩

private def s2Step183CounterWork : List Wire := [803, 799, 867, 877]

private theorem s2Step183Counter_bounded : s2Step183CounterWork.toFinset⊆arenaWires := by norm_num [s2Step183CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step183HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183CounterDuring : Arena := ⟨s2Step183HeadFvAfter.live∪s2Step183CounterWork.toFinset,Finset.union_subset s2Step183HeadFvAfter.bounded s2Step183Counter_bounded⟩

private def s2Step183EntryFFresh : List Wire := []

private def s2Step183EntryFvFresh : List Wire := []

private def s2Step183EntryGFresh : List Wire := [824]

private def s2Step183EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183EntryGvFresh : List Wire := [825]

private def s2Step183ExitFExtra : List Wire := [689, 830]

private def s2Step183ExitFvExtra : List Wire := [794]

private def s2Step183ExitGExtra : List Wire := [824, 807]

private def s2Step183ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<689) ∨ (690≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183ExitGvExtra : List Wire := [825, 846]

private def s2Step183Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183Add0Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step183Add0_bounded : s2Step183Add0Work.toFinset⊆arenaWires := by
  have h : s2Step183Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step183Add0During : Arena := ⟨s2Step183Add0Arena.live∪s2Step183Add0Work.toFinset,Finset.union_subset s2Step183Add0Arena.bounded s2Step183Add0_bounded⟩

private def s2Step183Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183Add1Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step183Add1_bounded : s2Step183Add1Work.toFinset⊆arenaWires := by
  have h : s2Step183Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step183Add1During : Arena := ⟨s2Step183Add1Arena.live∪s2Step183Add1Work.toFinset,Finset.union_subset s2Step183Add1Arena.bounded s2Step183Add1_bounded⟩

private def s2Step183F4FlagArena : Arena := ⟨s2Step183HeadFvAfter.live∪{803},Finset.union_subset s2Step183HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step183F4Plan : HmrHybridF4Plan := ⟨s2Step183F4FlagArena,[803],s2Step183Add0Arena,[799],s2Step183Add0During,s2Step183Add0Work,s2Step183Add1During,s2Step183Add1Work⟩

private def s2Step183HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 830],768⟩

private def s2Step183HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 794],770⟩

private def s2Step183HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 824, 807],769⟩

private def s2Step183HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 825, 846],771⟩

private def s2Step183FrontHead : WindowBank := ⟨s2Step183HeadFOut,s2Step183HeadGOut,s2Step183HeadFvOut,s2Step183HeadGvOut⟩

private def s2Step183EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689],768⟩

private def s2Step183EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806],770⟩

private def s2Step183EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 824],769⟩

private def s2Step183EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 825],771⟩

private def s2Step183FrontPair : WindowBank := ⟨s2Step183EntryFOut,s2Step183EntryGOut,s2Step183EntryFvOut,s2Step183EntryGvOut⟩

private def s2Step183FrontSigmaArena : Arena := ⟨s2Step183EntryGvAfter.live∪{802},Finset.union_subset s2Step183EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step183HeadFFresh : List Wire := [830]

private def s2Step183HeadFvFresh : List Wire := [794]

private def s2Step183HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183HeadGFresh : List Wire := [807]

private def s2Step183HeadGvFresh : List Wire := [846]

private def s2Step183FrontPlan : HmrSourceFront := ⟨s2Step183EntryGvAfter,s2Step183FrontPair,(growRow 768 s2Step183EntryFFresh ++ (growRow 769 s2Step183EntryGFresh ++ (growRow 770 s2Step183EntryFvFresh ++ (growRow 771 s2Step183EntryGvFresh ++ [])))),s2Step183FrontSigmaArena,[802],s2Step183HeadGBefore,[834],
  s2Step183HeadFvAfter,s2Step183FrontHead,(growRow 769 s2Step183HeadGFresh ++ (growRow 768 s2Step183HeadFFresh ++ (growRow 771 s2Step183HeadGvFresh ++ (growRow 770 s2Step183HeadFvFresh ++ [])))),s2Step183F4Plan,s2Step183CounterDuring,s2Step183CounterWork,s2Step183ExitGvAfter,s2Step183FrontOut,(shrinkRow 769 s2Step183ExitGExtra ++ (shrinkRow 768 s2Step183ExitFExtra ++ (shrinkRow 770 s2Step183ExitFvExtra ++ (shrinkRow 771 s2Step183ExitGvExtra ++ []))))⟩

private def s2Step183CompletePlan : HmrEarlyStepPlan := ⟨s2Step183FrontPlan,s2Step183EarlyControlArena,s2Step183EarlyControlPlan,s2Step183CompleteMoves⟩

private theorem s2Step183Complete_apart : List.Disjoint (s2Step183CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [802, 834, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] := by
  have nd : ((s2Step183CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[802, 834, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step183Complete_owned : (s2Step183CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step183EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step183EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step183CompleteMoveArena : Arena := ⟨s2Step183ExitGvAfter.live∪{689},Finset.union_subset s2Step183ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step183Complete_repack : s2Step183ExitGvAfter.checkRepack s2Step183CompleteMoves=some s2Step183EarlyControlArena := by
  have owned : 831∈s2Step183ExitGvAfter.live := by norm_num [s2Step183ExitGvAfter,arenaWires]
  have reserve : s2Step183ExitGvAfter.reserve {689}=some s2Step183CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step183ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step183CompleteMoveArena.retireSet {831}=s2Step183EarlyControlArena := by
    unfold Arena.retireSet s2Step183EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step183CompleteMoveArena,s2Step183ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step183CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step183CompleteMoveArena.retireSet {831}).checkRepack []=some s2Step183EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step183EarlyControl_branchOwned : ([834] : List Wire).toFinset⊆s2Step183EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step183EarlyControlSigmaArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183EarlyControl_branch : compileHmrBranchRetirement s2Step183EarlyControlSigmaArena 834=some s2Step183EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step183EarlyControl_branchOwned
  · ext q
    simp [s2Step183EarlyControlOutputArena,s2Step183EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step183EarlyControl_classEqualityBorrow : s2Step183EarlyControlPositiveArena.checkBorrow (([802, 824] : List Wire).length-1) s2Step183EarlyControlLog.classWork=some s2Step183EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step183EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step183EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step183EarlyControlEqualityArena,s2Step183EarlyControlPositiveArena,s2Step183EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step183EarlyControl_classEqualityOwned : ([802, 824] : List Wire).toFinset⊆s2Step183EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step183EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183EarlyControl_classEquality : compileHmrEqualityLog s2Step183EarlyControlPositiveArena [802, 824] 0 s2Step183EarlyControlLog.classWork=some (s2Step183EarlyControlEqualityArena,s2Step183EarlyControlLog.classWork,s2Step183EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step183EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step183EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step183EarlyControl_classOwned : ([777, 830, 802] : List Wire).toFinset⊆s2Step183EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step183EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183EarlyControl_positiveBorrow : s2Step183EarlyControlZeroArena.checkBorrow (1) s2Step183EarlyControlLog.positiveWork=some s2Step183EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step183EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step183EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step183EarlyControlPositiveArena,s2Step183EarlyControlZeroArena,s2Step183EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step183EarlyControl_class : compileHmrSourceClassLog s2Step183EarlyControlZeroArena false 777 s2Step183EarlyControlZeroPlan.top 0 802 s2Step183EarlyControlLog.positiveWork s2Step183EarlyControlLog.classWork=some s2Step183EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step183EarlyControlClassPlan s2Step183EarlyControlZeroArena false 777 s2Step183EarlyControlZeroPlan.top 0 802
  constructor
  · decide +kernel
  · exact s2Step183EarlyControl_classOwned
  · exact s2Step183EarlyControl_positiveBorrow
  · exact s2Step183EarlyControl_classEquality

private theorem s2Step183EarlyControl_entryRecordOwned : ([834, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step183EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step183EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183EarlyControl_entrySigmaOwned : ([802, 254] : List Wire).toFinset⊆s2Step183EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step183EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183EarlyControl_fitBorrow : s2Step183EarlyControlFlagArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step183EarlyControlLog.recordFresh=some s2Step183EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step183EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step183EarlyControlFlagArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step183EarlyControlFittedArena,s2Step183EarlyControlFlagArena,s2Step183EarlyControlLog,arenaWires]

private theorem s2Step183EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step183EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step183EarlyControlFlagArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183EarlyControl_fit : compileHmrRecordGrowLog s2Step183EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step183EarlyControlLog.recordFresh=some s2Step183EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step183EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step183EarlyControl_fitBorrow

private theorem s2Step183EarlyControl_flagsBorrow : s2Step183EarlyControlEqualityArena.checkBorrow (6) s2Step183EarlyControlLog.flagWork=some s2Step183EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step183EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step183EarlyControlEqualityArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step183EarlyControlFlagArena,s2Step183EarlyControlEqualityArena,s2Step183EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step183EarlyControl_flagsOwned : ([807, 253, 252, 251] : List Wire).toFinset⊆s2Step183EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step183EarlyControlEqualityArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183EarlyControl_flags : compileHmrFlagsLog s2Step183EarlyControlClassPlan.equalityArena s2Step183EarlyControlClassPlan.equality.top 253 252 251 s2Step183EarlyControlLog.flagWork=some s2Step183EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step183EarlyControl_flagsOwned⟩
  · exact s2Step183EarlyControl_flagsBorrow

private theorem s2Step183EarlyControl_historyBorrow : s2Step183EarlyControlArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step183EarlyControlLog.recordFresh=some s2Step183EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step183EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step183EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step183EarlyControlHistoryArena,s2Step183EarlyControlArena,s2Step183EarlyControlLog,arenaWires]

private theorem s2Step183EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step183EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step183EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183EarlyControl_history : compileHmrRecordGrowLog s2Step183EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step183EarlyControlLog.recordFresh=some s2Step183EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step183EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step183EarlyControl_historyBorrow

private theorem s2Step183EarlyControl_sigmaOwned : ([254, 802] : List Wire).toFinset⊆s2Step183EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step183EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183EarlyControl_sigmaReleaseOwned : ([802] : List Wire).toFinset⊆s2Step183EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step183EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183EarlyControl_sigmaRelease : s2Step183EarlyControlHistoryArena.release {802} (fun _ => false)=some s2Step183EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step183EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step183EarlyControlSigmaArena,s2Step183EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step183EarlyControl_sigma : compileHmrSigmaDropLog s2Step183EarlyControlHistoryArena false 0 0 254 802 []=some s2Step183EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step183EarlyControl_sigmaOwned⟩
  · exact s2Step183EarlyControl_sigmaRelease

private theorem s2Step183EarlyControl_zeroBorrow : s2Step183EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step183EarlyControlLog.zeroWork=some s2Step183EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step183EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step183EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step183EarlyControlZeroArena,s2Step183EarlyControlArena,s2Step183EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step183EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step183EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step183EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183EarlyControl_zero : compileHmrEqualityLog s2Step183EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step183EarlyControlLog.zeroWork=some (s2Step183EarlyControlZeroArena,s2Step183EarlyControlLog.zeroWork,s2Step183EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step183EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step183EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step183EarlyControl_logged : s2Step183EarlyControlPlan.Logged s2Step183EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 802 254 253 252 251 834 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step183EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step183EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step183EarlyControl_zero
  · exact s2Step183EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step183EarlyControl_flags
  · exact s2Step183EarlyControl_fit
  · exact s2Step183EarlyControl_history
  · exact s2Step183EarlyControl_sigma
  · exact s2Step183EarlyControl_branch

private theorem s2Step183EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step183EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 802 254 253 252 251 834 43 s2Step183EarlyControlLog=some s2Step183EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step183EarlyControlPlan s2Step183EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 802 254 253 252 251 834 43 s2Step183EarlyControl_logged

private def s2Step183EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689],768⟩

private def s2Step183EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806],770⟩

private def s2Step183EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176],769⟩

private def s2Step183EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832],771⟩

private def s2Step183FrontBank : WindowBank := ⟨s2Step183EntryFRow,s2Step183EntryGRow,s2Step183EntryFvRow,s2Step183EntryGvRow⟩

private def s2Step183Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 830, 768]

private def s2Step183Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 824, 807, 769]

private def s2Step183Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 794, 770]

private def s2Step183Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 825, 846, 771]

private theorem s2Step183Counter_apart : Disjoint s2Step183HeadFvAfter.live s2Step183CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step183HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183Counter_borrowed : s2Step183HeadFvAfter.checkBorrow 4 s2Step183CounterWork=some s2Step183CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step183HeadFvAfter s2Step183CounterDuring s2Step183CounterWork.toFinset s2Step183Counter_bounded s2Step183Counter_apart rfl

private theorem s2Step183Counter_owned : (802::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step183HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step183HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183Counter_checked : compileHmrCounterStepLog s2Step183HeadFvAfter true 802 [772, 773, 774, 775, 776, 777] s2Step183CounterWork=some s2Step183CounterDuring := by
  have owned : ∀q∈802::[772, 773, 774, 775, 776, 777],q∈s2Step183HeadFvAfter.live := fun q hq => s2Step183Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step183Counter_borrowed

private def s2Step183EntryFAfter : Arena := s2Step183EntryFBefore

private theorem s2Step183EntryBank_incomingDistinct : ([s2Step183EntryFRow,s2Step183EntryGRow,s2Step183EntryFvRow,s2Step183EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183EntryF_Incoming : rowsOwned s2Step183EntryFBefore [s2Step183EntryFRow,s2Step183EntryGRow,s2Step183EntryFvRow,s2Step183EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step183EntryFRow,s2Step183EntryGRow,s2Step183EntryFvRow,s2Step183EntryGvRow] 0 s2Step183EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step183EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step183EntryBank_outgoingOwned : rowsOwned s2Step183EntryGvAfter [s2Step183EntryFOut,s2Step183EntryGOut,s2Step183EntryFvOut,s2Step183EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step183EntryGvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step183EntryF_Outgoing : rowsOwned s2Step183EntryGvAfter [s2Step183EntryFOut,s2Step183EntryGOut,s2Step183EntryFvOut,s2Step183EntryGvOut] :=
  hmrRows_owned_drop s2Step183EntryGvAfter [s2Step183EntryFOut,s2Step183EntryGOut,s2Step183EntryFvOut,s2Step183EntryGvOut] 0 s2Step183EntryBank_outgoingOwned

private theorem s2Step183EntryF_distinct : (s2Step183EntryFRow.sign::s2Step183EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183EntryF_owned : (s2Step183EntryFRow.sign::s2Step183EntryFRow.payload).toFinset⊆s2Step183EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step183EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183EntryF_reserved : s2Step183EntryFBefore.reserve s2Step183EntryFFresh.toFinset=some s2Step183EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step183EntryFFresh,arenaWires]
  · norm_num [s2Step183EntryFBefore,s2Step183EntryFFresh,arenaWires]
  · simp only [s2Step183EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step183EntryF_checked : planRowResizeLog s2Step183EntryFBefore s2Step183EntryFRow 178 s2Step183EntryFFresh=
    some (s2Step183EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689],768⟩,growRow 768 s2Step183EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step183EntryFBefore s2Step183EntryFAfter s2Step183EntryFRow 178 s2Step183EntryFFresh
    s2Step183EntryF_distinct s2Step183EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step183EntryF_reserved
  have rowEq : WindowRow.mk (s2Step183EntryFRow.payload++s2Step183EntryFFresh) s2Step183EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step183EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183EntryFvAfter : Arena := s2Step183EntryGAfter

private def s2Step183EntryFvBefore : Arena := s2Step183EntryGAfter

private theorem s2Step183EntryFv_Incoming : rowsOwned s2Step183EntryFvBefore [s2Step183EntryFvRow,s2Step183EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step183EntryFRow,s2Step183EntryGRow,s2Step183EntryFvRow,s2Step183EntryGvRow] 2 s2Step183EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step183EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step183EntryFv_Outgoing : rowsOwned s2Step183EntryGvAfter [s2Step183EntryFvOut,s2Step183EntryGvOut] :=
  hmrRows_owned_drop s2Step183EntryGvAfter [s2Step183EntryFOut,s2Step183EntryGOut,s2Step183EntryFvOut,s2Step183EntryGvOut] 2 s2Step183EntryBank_outgoingOwned

private theorem s2Step183EntryFv_distinct : (s2Step183EntryFvRow.sign::s2Step183EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183EntryFv_owned : (s2Step183EntryFvRow.sign::s2Step183EntryFvRow.payload).toFinset⊆s2Step183EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step183EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183EntryFv_reserved : s2Step183EntryFvBefore.reserve s2Step183EntryFvFresh.toFinset=some s2Step183EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step183EntryFvFresh,arenaWires]
  · norm_num [s2Step183EntryFvBefore,s2Step183EntryGAfter,s2Step183EntryFvFresh,arenaWires]
  · simp only [s2Step183EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step183EntryFv_checked : planRowResizeLog s2Step183EntryFvBefore s2Step183EntryFvRow 106 s2Step183EntryFvFresh=
    some (s2Step183EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806],770⟩,growRow 770 s2Step183EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step183EntryFvBefore s2Step183EntryFvAfter s2Step183EntryFvRow 106 s2Step183EntryFvFresh
    s2Step183EntryFv_distinct s2Step183EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step183EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step183EntryFvRow.payload++s2Step183EntryFvFresh) s2Step183EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step183EntryGBefore : Arena := s2Step183EntryFBefore

private theorem s2Step183EntryG_Incoming : rowsOwned s2Step183EntryGBefore [s2Step183EntryGRow,s2Step183EntryFvRow,s2Step183EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step183EntryFRow,s2Step183EntryGRow,s2Step183EntryFvRow,s2Step183EntryGvRow] 1 s2Step183EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step183EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step183EntryG_Outgoing : rowsOwned s2Step183EntryGvAfter [s2Step183EntryGOut,s2Step183EntryFvOut,s2Step183EntryGvOut] :=
  hmrRows_owned_drop s2Step183EntryGvAfter [s2Step183EntryFOut,s2Step183EntryGOut,s2Step183EntryFvOut,s2Step183EntryGvOut] 1 s2Step183EntryBank_outgoingOwned

private theorem s2Step183EntryG_distinct : (s2Step183EntryGRow.sign::s2Step183EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183EntryG_owned : (s2Step183EntryGRow.sign::s2Step183EntryGRow.payload).toFinset⊆s2Step183EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step183EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183EntryG_reserved : s2Step183EntryGBefore.reserve s2Step183EntryGFresh.toFinset=some s2Step183EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step183EntryGFresh,arenaWires]
  · norm_num [s2Step183EntryGBefore,s2Step183EntryFBefore,s2Step183EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step183EntryGAfter,s2Step183EntryGBefore,s2Step183EntryFBefore,s2Step183EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step183EntryG_checked : planRowResizeLog s2Step183EntryGBefore s2Step183EntryGRow 178 s2Step183EntryGFresh=
    some (s2Step183EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 824],769⟩,growRow 769 s2Step183EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step183EntryGBefore s2Step183EntryGAfter s2Step183EntryGRow 178 s2Step183EntryGFresh
    s2Step183EntryG_distinct s2Step183EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step183EntryG_reserved
  have rowEq : WindowRow.mk (s2Step183EntryGRow.payload++s2Step183EntryGFresh) s2Step183EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 824],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step183EntryGvBefore : Arena := s2Step183EntryGAfter

private theorem s2Step183EntryGv_Incoming : rowsOwned s2Step183EntryGvBefore [s2Step183EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step183EntryFRow,s2Step183EntryGRow,s2Step183EntryFvRow,s2Step183EntryGvRow] 3 s2Step183EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step183EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step183EntryGv_Outgoing : rowsOwned s2Step183EntryGvAfter [s2Step183EntryGvOut] :=
  hmrRows_owned_drop s2Step183EntryGvAfter [s2Step183EntryFOut,s2Step183EntryGOut,s2Step183EntryFvOut,s2Step183EntryGvOut] 3 s2Step183EntryBank_outgoingOwned

private theorem s2Step183EntryGv_distinct : (s2Step183EntryGvRow.sign::s2Step183EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183EntryGv_owned : (s2Step183EntryGvRow.sign::s2Step183EntryGvRow.payload).toFinset⊆s2Step183EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step183EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183EntryGv_reserved : s2Step183EntryGvBefore.reserve s2Step183EntryGvFresh.toFinset=some s2Step183EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step183EntryGvFresh,arenaWires]
  · norm_num [s2Step183EntryGvBefore,s2Step183EntryGAfter,s2Step183EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step183EntryGvAfter,s2Step183EntryGvBefore,s2Step183EntryGAfter,s2Step183EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step183EntryGv_checked : planRowResizeLog s2Step183EntryGvBefore s2Step183EntryGvRow 106 s2Step183EntryGvFresh=
    some (s2Step183EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 825],771⟩,growRow 771 s2Step183EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step183EntryGvBefore s2Step183EntryGvAfter s2Step183EntryGvRow 106 s2Step183EntryGvFresh
    s2Step183EntryGv_distinct s2Step183EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step183EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step183EntryGvRow.payload++s2Step183EntryGvFresh) s2Step183EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 825],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step183EntryBank_rows : planWindowRowsLog s2Step183EntryFBefore [(s2Step183EntryFRow,178),(s2Step183EntryGRow,178),(s2Step183EntryFvRow,106),(s2Step183EntryGvRow,106)] [s2Step183EntryFFresh,s2Step183EntryGFresh,s2Step183EntryFvFresh,s2Step183EntryGvFresh]=
    some (s2Step183EntryGvAfter,[s2Step183EntryFOut,s2Step183EntryGOut,s2Step183EntryFvOut,s2Step183EntryGvOut],(growRow 768 s2Step183EntryFFresh ++ (growRow 769 s2Step183EntryGFresh ++ (growRow 770 s2Step183EntryFvFresh ++ (growRow 771 s2Step183EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step183EntryGvAfter [] []=some (s2Step183EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step183EntryGvBefore s2Step183EntryGvAfter s2Step183EntryGvAfter
    s2Step183EntryGvRow s2Step183EntryGvOut 106 s2Step183EntryGvFresh [] [] []
    (growRow 771 s2Step183EntryGvFresh) ([]) s2Step183EntryGv_Incoming s2Step183EntryGv_checked h4 s2Step183EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step183EntryFvBefore s2Step183EntryFvAfter s2Step183EntryGvAfter
    s2Step183EntryFvRow s2Step183EntryFvOut 106 s2Step183EntryFvFresh [(s2Step183EntryGvRow,106)] [s2Step183EntryGvFresh] [s2Step183EntryGvOut]
    (growRow 770 s2Step183EntryFvFresh) ((growRow 771 s2Step183EntryGvFresh ++ [])) s2Step183EntryFv_Incoming s2Step183EntryFv_checked h3 s2Step183EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step183EntryGBefore s2Step183EntryGAfter s2Step183EntryGvAfter
    s2Step183EntryGRow s2Step183EntryGOut 178 s2Step183EntryGFresh [(s2Step183EntryFvRow,106),(s2Step183EntryGvRow,106)] [s2Step183EntryFvFresh,s2Step183EntryGvFresh] [s2Step183EntryFvOut,s2Step183EntryGvOut]
    (growRow 769 s2Step183EntryGFresh) ((growRow 770 s2Step183EntryFvFresh ++ (growRow 771 s2Step183EntryGvFresh ++ []))) s2Step183EntryG_Incoming s2Step183EntryG_checked h2 s2Step183EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step183EntryFBefore s2Step183EntryFAfter s2Step183EntryGvAfter
    s2Step183EntryFRow s2Step183EntryFOut 178 s2Step183EntryFFresh [(s2Step183EntryGRow,178),(s2Step183EntryFvRow,106),(s2Step183EntryGvRow,106)] [s2Step183EntryGFresh,s2Step183EntryFvFresh,s2Step183EntryGvFresh] [s2Step183EntryGOut,s2Step183EntryFvOut,s2Step183EntryGvOut]
    (growRow 768 s2Step183EntryFFresh) ((growRow 769 s2Step183EntryGFresh ++ (growRow 770 s2Step183EntryFvFresh ++ (growRow 771 s2Step183EntryGvFresh ++ [])))) s2Step183EntryF_Incoming s2Step183EntryF_checked h1 s2Step183EntryF_Outgoing
  exact h0

private theorem s2Step183EntryBank_checked : compileHmrBankResizeLog .entry s2Step183EntryFBefore ⟨s2Step183EntryFRow,s2Step183EntryGRow,s2Step183EntryFvRow,s2Step183EntryGvRow⟩ ⟨178,178,106,106⟩ [s2Step183EntryFFresh,s2Step183EntryGFresh,s2Step183EntryFvFresh,s2Step183EntryGvFresh]=
    some (s2Step183EntryGvAfter,⟨s2Step183EntryFOut,s2Step183EntryGOut,s2Step183EntryFvOut,s2Step183EntryGvOut⟩,(growRow 768 s2Step183EntryFFresh ++ (growRow 769 s2Step183EntryGFresh ++ (growRow 770 s2Step183EntryFvFresh ++ (growRow 771 s2Step183EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step183EntryBank_rows]
  rfl

private def s2Step183ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<689) ∨ (690≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183ExitFBefore : Arena := s2Step183ExitGAfter

private def s2Step183ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 830],768⟩

private def s2Step183ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 794],770⟩

private def s2Step183ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 824, 807],769⟩

private def s2Step183ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 825, 846],771⟩

private theorem s2Step183ExitBank_incomingDistinct : ([s2Step183ExitGRow,s2Step183ExitFRow,s2Step183ExitFvRow,s2Step183ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183ExitF_Incoming : rowsOwned s2Step183ExitFBefore [s2Step183ExitFRow,s2Step183ExitFvRow,s2Step183ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step183ExitGRow,s2Step183ExitFRow,s2Step183ExitFvRow,s2Step183ExitGvRow] 1 s2Step183ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step183ExitFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step183ExitBank_outgoingOwned : rowsOwned s2Step183ExitGvAfter [s2Step183ExitGOut,s2Step183ExitFOut,s2Step183ExitFvOut,s2Step183ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step183ExitGvAfter (fun q => (0≤q ∧ q<689) ∨ (690≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step183ExitF_Outgoing : rowsOwned s2Step183ExitGvAfter [s2Step183ExitFOut,s2Step183ExitFvOut,s2Step183ExitGvOut] :=
  hmrRows_owned_drop s2Step183ExitGvAfter [s2Step183ExitGOut,s2Step183ExitFOut,s2Step183ExitFvOut,s2Step183ExitGvOut] 1 s2Step183ExitBank_outgoingOwned

private theorem s2Step183ExitF_distinct : (s2Step183ExitFRow.sign::s2Step183ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183ExitF_owned : (s2Step183ExitFRow.sign::s2Step183ExitFRow.payload).toFinset⊆s2Step183ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step183ExitFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183ExitF_retired : s2Step183ExitFBefore.retireSet s2Step183ExitFExtra.toFinset=s2Step183ExitFAfter := by
  unfold Arena.retireSet s2Step183ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step183ExitFBefore,s2Step183ExitGAfter,s2Step183ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step183ExitF_checked : planRowResizeLog s2Step183ExitFBefore s2Step183ExitFRow 177 []=
    some (s2Step183ExitFAfter,s2Step183ExitFOut,shrinkRow 768 s2Step183ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step183ExitFBefore s2Step183ExitFRow 177 s2Step183ExitF_distinct s2Step183ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step183ExitFRow.payload.take 177) s2Step183ExitFRow.sign=s2Step183ExitFOut := by decide +kernel
  have hi : s2Step183ExitFRow.payload.drop 177=s2Step183ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step183ExitF_retired] at result
  exact result

private def s2Step183ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<689) ∨ (690≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183ExitFvBefore : Arena := s2Step183ExitFAfter

private theorem s2Step183ExitFv_Incoming : rowsOwned s2Step183ExitFvBefore [s2Step183ExitFvRow,s2Step183ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step183ExitGRow,s2Step183ExitFRow,s2Step183ExitFvRow,s2Step183ExitGvRow] 2 s2Step183ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step183ExitFvBefore (fun q => (0≤q ∧ q<689) ∨ (690≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step183ExitFv_Outgoing : rowsOwned s2Step183ExitGvAfter [s2Step183ExitFvOut,s2Step183ExitGvOut] :=
  hmrRows_owned_drop s2Step183ExitGvAfter [s2Step183ExitGOut,s2Step183ExitFOut,s2Step183ExitFvOut,s2Step183ExitGvOut] 2 s2Step183ExitBank_outgoingOwned

private theorem s2Step183ExitFv_distinct : (s2Step183ExitFvRow.sign::s2Step183ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183ExitFv_owned : (s2Step183ExitFvRow.sign::s2Step183ExitFvRow.payload).toFinset⊆s2Step183ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step183ExitFvBefore (fun q => (0≤q ∧ q<689) ∨ (690≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183ExitFv_retired : s2Step183ExitFvBefore.retireSet s2Step183ExitFvExtra.toFinset=s2Step183ExitFvAfter := by
  unfold Arena.retireSet s2Step183ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step183ExitFvBefore,s2Step183ExitFAfter,s2Step183ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step183ExitFv_checked : planRowResizeLog s2Step183ExitFvBefore s2Step183ExitFvRow 106 []=
    some (s2Step183ExitFvAfter,s2Step183ExitFvOut,shrinkRow 770 s2Step183ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step183ExitFvBefore s2Step183ExitFvRow 106 s2Step183ExitFv_distinct s2Step183ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step183ExitFvRow.payload.take 106) s2Step183ExitFvRow.sign=s2Step183ExitFvOut := by decide +kernel
  have hi : s2Step183ExitFvRow.payload.drop 106=s2Step183ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step183ExitFv_retired] at result
  exact result

private def s2Step183ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step183ExitG_Incoming : rowsOwned s2Step183ExitGBefore [s2Step183ExitGRow,s2Step183ExitFRow,s2Step183ExitFvRow,s2Step183ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step183ExitGRow,s2Step183ExitFRow,s2Step183ExitFvRow,s2Step183ExitGvRow] 0 s2Step183ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step183ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step183ExitG_Outgoing : rowsOwned s2Step183ExitGvAfter [s2Step183ExitGOut,s2Step183ExitFOut,s2Step183ExitFvOut,s2Step183ExitGvOut] :=
  hmrRows_owned_drop s2Step183ExitGvAfter [s2Step183ExitGOut,s2Step183ExitFOut,s2Step183ExitFvOut,s2Step183ExitGvOut] 0 s2Step183ExitBank_outgoingOwned

private theorem s2Step183ExitG_distinct : (s2Step183ExitGRow.sign::s2Step183ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183ExitG_owned : (s2Step183ExitGRow.sign::s2Step183ExitGRow.payload).toFinset⊆s2Step183ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step183ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183ExitG_retired : s2Step183ExitGBefore.retireSet s2Step183ExitGExtra.toFinset=s2Step183ExitGAfter := by
  unfold Arena.retireSet s2Step183ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step183ExitGBefore,s2Step183ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step183ExitG_checked : planRowResizeLog s2Step183ExitGBefore s2Step183ExitGRow 177 []=
    some (s2Step183ExitGAfter,s2Step183ExitGOut,shrinkRow 769 s2Step183ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step183ExitGBefore s2Step183ExitGRow 177 s2Step183ExitG_distinct s2Step183ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step183ExitGRow.payload.take 177) s2Step183ExitGRow.sign=s2Step183ExitGOut := by decide +kernel
  have hi : s2Step183ExitGRow.payload.drop 177=s2Step183ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step183ExitG_retired] at result
  exact result

private def s2Step183ExitGvBefore : Arena := s2Step183ExitFvAfter

private theorem s2Step183ExitGv_Incoming : rowsOwned s2Step183ExitGvBefore [s2Step183ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step183ExitGRow,s2Step183ExitFRow,s2Step183ExitFvRow,s2Step183ExitGvRow] 3 s2Step183ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step183ExitGvBefore (fun q => (0≤q ∧ q<689) ∨ (690≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step183ExitGv_Outgoing : rowsOwned s2Step183ExitGvAfter [s2Step183ExitGvOut] :=
  hmrRows_owned_drop s2Step183ExitGvAfter [s2Step183ExitGOut,s2Step183ExitFOut,s2Step183ExitFvOut,s2Step183ExitGvOut] 3 s2Step183ExitBank_outgoingOwned

private theorem s2Step183ExitGv_distinct : (s2Step183ExitGvRow.sign::s2Step183ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183ExitGv_owned : (s2Step183ExitGvRow.sign::s2Step183ExitGvRow.payload).toFinset⊆s2Step183ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step183ExitGvBefore (fun q => (0≤q ∧ q<689) ∨ (690≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183ExitGv_retired : s2Step183ExitGvBefore.retireSet s2Step183ExitGvExtra.toFinset=s2Step183ExitGvAfter := by
  unfold Arena.retireSet s2Step183ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step183ExitGvBefore,s2Step183ExitFvAfter,s2Step183ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step183ExitGv_checked : planRowResizeLog s2Step183ExitGvBefore s2Step183ExitGvRow 105 []=
    some (s2Step183ExitGvAfter,s2Step183ExitGvOut,shrinkRow 771 s2Step183ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step183ExitGvBefore s2Step183ExitGvRow 105 s2Step183ExitGv_distinct s2Step183ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step183ExitGvRow.payload.take 105) s2Step183ExitGvRow.sign=s2Step183ExitGvOut := by decide +kernel
  have hi : s2Step183ExitGvRow.payload.drop 105=s2Step183ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step183ExitGv_retired] at result
  exact result

private theorem s2Step183ExitBank_rows : planWindowRowsLog s2Step183ExitGBefore [(s2Step183ExitGRow,177),(s2Step183ExitFRow,177),(s2Step183ExitFvRow,106),(s2Step183ExitGvRow,105)] [[],[],[],[]]=
    some (s2Step183ExitGvAfter,[s2Step183ExitGOut,s2Step183ExitFOut,s2Step183ExitFvOut,s2Step183ExitGvOut],(shrinkRow 769 s2Step183ExitGExtra ++ (shrinkRow 768 s2Step183ExitFExtra ++ (shrinkRow 770 s2Step183ExitFvExtra ++ (shrinkRow 771 s2Step183ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step183ExitGvAfter [] []=some (s2Step183ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step183ExitGvBefore s2Step183ExitGvAfter s2Step183ExitGvAfter
    s2Step183ExitGvRow s2Step183ExitGvOut 105 [] [] [] []
    (shrinkRow 771 s2Step183ExitGvExtra) ([]) s2Step183ExitGv_Incoming s2Step183ExitGv_checked h4 s2Step183ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step183ExitFvBefore s2Step183ExitFvAfter s2Step183ExitGvAfter
    s2Step183ExitFvRow s2Step183ExitFvOut 106 [] [(s2Step183ExitGvRow,105)] [[]] [s2Step183ExitGvOut]
    (shrinkRow 770 s2Step183ExitFvExtra) ((shrinkRow 771 s2Step183ExitGvExtra ++ [])) s2Step183ExitFv_Incoming s2Step183ExitFv_checked h3 s2Step183ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step183ExitFBefore s2Step183ExitFAfter s2Step183ExitGvAfter
    s2Step183ExitFRow s2Step183ExitFOut 177 [] [(s2Step183ExitFvRow,106),(s2Step183ExitGvRow,105)] [[],[]] [s2Step183ExitFvOut,s2Step183ExitGvOut]
    (shrinkRow 768 s2Step183ExitFExtra) ((shrinkRow 770 s2Step183ExitFvExtra ++ (shrinkRow 771 s2Step183ExitGvExtra ++ []))) s2Step183ExitF_Incoming s2Step183ExitF_checked h2 s2Step183ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step183ExitGBefore s2Step183ExitGAfter s2Step183ExitGvAfter
    s2Step183ExitGRow s2Step183ExitGOut 177 [] [(s2Step183ExitFRow,177),(s2Step183ExitFvRow,106),(s2Step183ExitGvRow,105)] [[],[],[]] [s2Step183ExitFOut,s2Step183ExitFvOut,s2Step183ExitGvOut]
    (shrinkRow 769 s2Step183ExitGExtra) ((shrinkRow 768 s2Step183ExitFExtra ++ (shrinkRow 770 s2Step183ExitFvExtra ++ (shrinkRow 771 s2Step183ExitGvExtra ++ [])))) s2Step183ExitG_Incoming s2Step183ExitG_checked h1 s2Step183ExitG_Outgoing
  exact h0

private theorem s2Step183ExitBank_checked : compileHmrBankResizeLog .exit s2Step183ExitGBefore ⟨s2Step183ExitFRow,s2Step183ExitGRow,s2Step183ExitFvRow,s2Step183ExitGvRow⟩ ⟨177,177,106,105⟩ [[],[],[],[]]=
    some (s2Step183ExitGvAfter,⟨s2Step183ExitFOut,s2Step183ExitGOut,s2Step183ExitFvOut,s2Step183ExitGvOut⟩,(shrinkRow 769 s2Step183ExitGExtra ++ (shrinkRow 768 s2Step183ExitFExtra ++ (shrinkRow 770 s2Step183ExitFvExtra ++ (shrinkRow 771 s2Step183ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step183ExitBank_rows]
  rfl

private theorem s2Step183Add0_apart : Disjoint s2Step183Add0Arena.live s2Step183Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step183Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183Add0_card : s2Step183Add0Arena.live.card=885 := by
  decide +kernel

private theorem s2Step183Add0_borrowed : s2Step183Add0Arena.checkBorrow (hmrHybridCount s2Step183Add0Arena s2Step183Add0B.length) s2Step183Add0Work=some s2Step183Add0During := by
  have len : s2Step183Add0Work.length=hmrHybridCount s2Step183Add0Arena s2Step183Add0B.length := by
    rw [hmrHybridCount,s2Step183Add0_card]
    decide +kernel
  have nd : s2Step183Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step183Add0Arena s2Step183Add0During s2Step183Add0Work.toFinset s2Step183Add0_bounded s2Step183Add0_apart rfl

private theorem s2Step183Add0_distinct : (803::834::799::(s2Step183Add0A++s2Step183Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183Add0_owned : (803::834::799::(s2Step183Add0A++s2Step183Add0B)).toFinset⊆s2Step183Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step183Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183Add0_checked : compileHmrHybridCinLog s2Step183Add0Arena 834 803 799 s2Step183Add0A s2Step183Add0B s2Step183Add0Work=some s2Step183Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step183Add0Arena s2Step183Add0During 834 803 799 s2Step183Add0A s2Step183Add0B s2Step183Add0Work
    (by decide +kernel) (by decide +kernel) s2Step183Add0_distinct
    (fun q hq => s2Step183Add0_owned (List.mem_toFinset.mpr hq)) s2Step183Add0_borrowed

private theorem s2Step183Add1_apart : Disjoint s2Step183Add1Arena.live s2Step183Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step183Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183Add1_card : s2Step183Add1Arena.live.card=885 := by
  decide +kernel

private theorem s2Step183Add1_borrowed : s2Step183Add1Arena.checkBorrow (hmrHybridCount s2Step183Add1Arena s2Step183Add1B.length) s2Step183Add1Work=some s2Step183Add1During := by
  have len : s2Step183Add1Work.length=hmrHybridCount s2Step183Add1Arena s2Step183Add1B.length := by
    rw [hmrHybridCount,s2Step183Add1_card]
    decide +kernel
  have nd : s2Step183Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step183Add1Arena s2Step183Add1During s2Step183Add1Work.toFinset s2Step183Add1_bounded s2Step183Add1_apart rfl

private theorem s2Step183Add1_distinct : (803::834::799::(s2Step183Add1A++s2Step183Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183Add1_owned : (803::834::799::(s2Step183Add1A++s2Step183Add1B)).toFinset⊆s2Step183Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step183Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183Add1_checked : compileHmrHybridCinLog s2Step183Add1Arena 834 803 799 s2Step183Add1A s2Step183Add1B s2Step183Add1Work=some s2Step183Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step183Add1Arena s2Step183Add1During 834 803 799 s2Step183Add1A s2Step183Add1B s2Step183Add1Work
    (by decide +kernel) (by decide +kernel) s2Step183Add1_distinct
    (fun q hq => s2Step183Add1_owned (List.mem_toFinset.mpr hq)) s2Step183Add1_borrowed

private theorem s2Step183F4_apart : Disjoint (s2Step183Add0A++s2Step183Add0B).toFinset (s2Step183Add1A++s2Step183Add1B).toFinset := by
  have nd : ((s2Step183Add0A++s2Step183Add0B)++(s2Step183Add1A++s2Step183Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step183F4_carry : s2Step183F4FlagArena.checkBorrow 1 [799]=some s2Step183Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step183F4FlagArena,s2Step183HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step183F4FlagArena,s2Step183HeadFvAfter,s2Step183Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step183F4_distinct : (802::834::803::799::((s2Step183Add0A++s2Step183Add1A)++(s2Step183Add0B++s2Step183Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183F4_flag : s2Step183HeadFvAfter.checkBorrow 1 [803]=some s2Step183F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step183HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step183F4_owned : (802::834::((s2Step183Add0A++s2Step183Add1A)++(s2Step183Add0B++s2Step183Add1B))).toFinset⊆s2Step183HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step183HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183F4_checked : compileHmrHybridF4Log s2Step183HeadFvAfter 802 834 s2Step183Add0A s2Step183Add0B s2Step183Add1A s2Step183Add1B [803] [799] s2Step183Add0Work s2Step183Add1Work=some s2Step183F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step183HeadFvAfter s2Step183F4FlagArena s2Step183Add0Arena s2Step183Add0During s2Step183Add1During 802 834
    s2Step183Add0A s2Step183Add0B s2Step183Add1A s2Step183Add1B [803] [799] s2Step183Add0Work s2Step183Add1Work
    (fun q hq => s2Step183F4_owned (List.mem_toFinset.mpr hq)) s2Step183F4_flag s2Step183F4_carry
    s2Step183F4_distinct s2Step183F4_apart s2Step183Add0_checked s2Step183Add1_checked

private theorem s2Step183Front_branch : s2Step183FrontSigmaArena.checkBorrow 1 [834]=some s2Step183HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step183FrontSigmaArena,s2Step183EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step183FrontSigmaArena,s2Step183EntryGvAfter,s2Step183HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step183Front_entry : HmrFrontEntryValid s2Step183EntryFBefore s2Step183FrontBank 178 106 ⟨177,177,106,105⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step183FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step183EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step183EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step183FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step183Front_sigma : s2Step183EntryGvAfter.checkBorrow 1 [802]=some s2Step183FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step183EntryGvAfter,arenaWires]
  · rfl

private def s2Step183HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183HeadFBefore : Arena := s2Step183HeadGAfter

private def s2Step183HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689],768⟩

private def s2Step183HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806],770⟩

private def s2Step183HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 824],769⟩

private def s2Step183HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 825],771⟩

private theorem s2Step183HeadBank_incomingDistinct : ([s2Step183HeadGRow,s2Step183HeadFRow,s2Step183HeadGvRow,s2Step183HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183HeadF_Incoming : rowsOwned s2Step183HeadFBefore [s2Step183HeadFRow,s2Step183HeadGvRow,s2Step183HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step183HeadGRow,s2Step183HeadFRow,s2Step183HeadGvRow,s2Step183HeadFvRow] 1 s2Step183HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step183HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step183HeadBank_outgoingOwned : rowsOwned s2Step183HeadFvAfter [s2Step183HeadGOut,s2Step183HeadFOut,s2Step183HeadGvOut,s2Step183HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step183HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step183HeadF_Outgoing : rowsOwned s2Step183HeadFvAfter [s2Step183HeadFOut,s2Step183HeadGvOut,s2Step183HeadFvOut] :=
  hmrRows_owned_drop s2Step183HeadFvAfter [s2Step183HeadGOut,s2Step183HeadFOut,s2Step183HeadGvOut,s2Step183HeadFvOut] 1 s2Step183HeadBank_outgoingOwned

private theorem s2Step183HeadF_distinct : (s2Step183HeadFRow.sign::s2Step183HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183HeadF_owned : (s2Step183HeadFRow.sign::s2Step183HeadFRow.payload).toFinset⊆s2Step183HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step183HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183HeadF_reserved : s2Step183HeadFBefore.reserve s2Step183HeadFFresh.toFinset=some s2Step183HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step183HeadFFresh,arenaWires]
  · norm_num [s2Step183HeadFBefore,s2Step183HeadGAfter,s2Step183HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step183HeadFAfter,s2Step183HeadFBefore,s2Step183HeadGAfter,s2Step183HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step183HeadF_checked : planRowResizeLog s2Step183HeadFBefore s2Step183HeadFRow 179 s2Step183HeadFFresh=
    some (s2Step183HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 830],768⟩,growRow 768 s2Step183HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step183HeadFBefore s2Step183HeadFAfter s2Step183HeadFRow 179 s2Step183HeadFFresh
    s2Step183HeadF_distinct s2Step183HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step183HeadF_reserved
  have rowEq : WindowRow.mk (s2Step183HeadFRow.payload++s2Step183HeadFFresh) s2Step183HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 830],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step183HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step183HeadFvBefore : Arena := s2Step183HeadGvAfter

private theorem s2Step183HeadFv_Incoming : rowsOwned s2Step183HeadFvBefore [s2Step183HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step183HeadGRow,s2Step183HeadFRow,s2Step183HeadGvRow,s2Step183HeadFvRow] 3 s2Step183HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step183HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step183HeadFv_Outgoing : rowsOwned s2Step183HeadFvAfter [s2Step183HeadFvOut] :=
  hmrRows_owned_drop s2Step183HeadFvAfter [s2Step183HeadGOut,s2Step183HeadFOut,s2Step183HeadGvOut,s2Step183HeadFvOut] 3 s2Step183HeadBank_outgoingOwned

private theorem s2Step183HeadFv_distinct : (s2Step183HeadFvRow.sign::s2Step183HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183HeadFv_owned : (s2Step183HeadFvRow.sign::s2Step183HeadFvRow.payload).toFinset⊆s2Step183HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step183HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183HeadFv_reserved : s2Step183HeadFvBefore.reserve s2Step183HeadFvFresh.toFinset=some s2Step183HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step183HeadFvFresh,arenaWires]
  · norm_num [s2Step183HeadFvBefore,s2Step183HeadGvAfter,s2Step183HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step183HeadFvAfter,s2Step183HeadFvBefore,s2Step183HeadGvAfter,s2Step183HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step183HeadFv_checked : planRowResizeLog s2Step183HeadFvBefore s2Step183HeadFvRow 107 s2Step183HeadFvFresh=
    some (s2Step183HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 794],770⟩,growRow 770 s2Step183HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step183HeadFvBefore s2Step183HeadFvAfter s2Step183HeadFvRow 107 s2Step183HeadFvFresh
    s2Step183HeadFv_distinct s2Step183HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step183HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step183HeadFvRow.payload++s2Step183HeadFvFresh) s2Step183HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 794],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step183HeadG_Incoming : rowsOwned s2Step183HeadGBefore [s2Step183HeadGRow,s2Step183HeadFRow,s2Step183HeadGvRow,s2Step183HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step183HeadGRow,s2Step183HeadFRow,s2Step183HeadGvRow,s2Step183HeadFvRow] 0 s2Step183HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step183HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step183HeadG_Outgoing : rowsOwned s2Step183HeadFvAfter [s2Step183HeadGOut,s2Step183HeadFOut,s2Step183HeadGvOut,s2Step183HeadFvOut] :=
  hmrRows_owned_drop s2Step183HeadFvAfter [s2Step183HeadGOut,s2Step183HeadFOut,s2Step183HeadGvOut,s2Step183HeadFvOut] 0 s2Step183HeadBank_outgoingOwned

private theorem s2Step183HeadG_distinct : (s2Step183HeadGRow.sign::s2Step183HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183HeadG_owned : (s2Step183HeadGRow.sign::s2Step183HeadGRow.payload).toFinset⊆s2Step183HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step183HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183HeadG_reserved : s2Step183HeadGBefore.reserve s2Step183HeadGFresh.toFinset=some s2Step183HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step183HeadGFresh,arenaWires]
  · norm_num [s2Step183HeadGBefore,s2Step183HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step183HeadGAfter,s2Step183HeadGBefore,s2Step183HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step183HeadG_checked : planRowResizeLog s2Step183HeadGBefore s2Step183HeadGRow 179 s2Step183HeadGFresh=
    some (s2Step183HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 824, 807],769⟩,growRow 769 s2Step183HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step183HeadGBefore s2Step183HeadGAfter s2Step183HeadGRow 179 s2Step183HeadGFresh
    s2Step183HeadG_distinct s2Step183HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step183HeadG_reserved
  have rowEq : WindowRow.mk (s2Step183HeadGRow.payload++s2Step183HeadGFresh) s2Step183HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 824, 807],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step183HeadGvBefore : Arena := s2Step183HeadFAfter

private theorem s2Step183HeadGv_Incoming : rowsOwned s2Step183HeadGvBefore [s2Step183HeadGvRow,s2Step183HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step183HeadGRow,s2Step183HeadFRow,s2Step183HeadGvRow,s2Step183HeadFvRow] 2 s2Step183HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step183HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step183HeadGv_Outgoing : rowsOwned s2Step183HeadFvAfter [s2Step183HeadGvOut,s2Step183HeadFvOut] :=
  hmrRows_owned_drop s2Step183HeadFvAfter [s2Step183HeadGOut,s2Step183HeadFOut,s2Step183HeadGvOut,s2Step183HeadFvOut] 2 s2Step183HeadBank_outgoingOwned

private theorem s2Step183HeadGv_distinct : (s2Step183HeadGvRow.sign::s2Step183HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step183HeadGv_owned : (s2Step183HeadGvRow.sign::s2Step183HeadGvRow.payload).toFinset⊆s2Step183HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step183HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step183HeadGv_reserved : s2Step183HeadGvBefore.reserve s2Step183HeadGvFresh.toFinset=some s2Step183HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step183HeadGvFresh,arenaWires]
  · norm_num [s2Step183HeadGvBefore,s2Step183HeadFAfter,s2Step183HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step183HeadGvAfter,s2Step183HeadGvBefore,s2Step183HeadFAfter,s2Step183HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step183HeadGv_checked : planRowResizeLog s2Step183HeadGvBefore s2Step183HeadGvRow 107 s2Step183HeadGvFresh=
    some (s2Step183HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 825, 846],771⟩,growRow 771 s2Step183HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step183HeadGvBefore s2Step183HeadGvAfter s2Step183HeadGvRow 107 s2Step183HeadGvFresh
    s2Step183HeadGv_distinct s2Step183HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step183HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step183HeadGvRow.payload++s2Step183HeadGvFresh) s2Step183HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 825, 846],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step183HeadBank_rows : planWindowRowsLog s2Step183HeadGBefore [(s2Step183HeadGRow,179),(s2Step183HeadFRow,179),(s2Step183HeadGvRow,107),(s2Step183HeadFvRow,107)] [s2Step183HeadGFresh,s2Step183HeadFFresh,s2Step183HeadGvFresh,s2Step183HeadFvFresh]=
    some (s2Step183HeadFvAfter,[s2Step183HeadGOut,s2Step183HeadFOut,s2Step183HeadGvOut,s2Step183HeadFvOut],(growRow 769 s2Step183HeadGFresh ++ (growRow 768 s2Step183HeadFFresh ++ (growRow 771 s2Step183HeadGvFresh ++ (growRow 770 s2Step183HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step183HeadFvAfter [] []=some (s2Step183HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step183HeadFvBefore s2Step183HeadFvAfter s2Step183HeadFvAfter
    s2Step183HeadFvRow s2Step183HeadFvOut 107 s2Step183HeadFvFresh [] [] []
    (growRow 770 s2Step183HeadFvFresh) ([]) s2Step183HeadFv_Incoming s2Step183HeadFv_checked h4 s2Step183HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step183HeadGvBefore s2Step183HeadGvAfter s2Step183HeadFvAfter
    s2Step183HeadGvRow s2Step183HeadGvOut 107 s2Step183HeadGvFresh [(s2Step183HeadFvRow,107)] [s2Step183HeadFvFresh] [s2Step183HeadFvOut]
    (growRow 771 s2Step183HeadGvFresh) ((growRow 770 s2Step183HeadFvFresh ++ [])) s2Step183HeadGv_Incoming s2Step183HeadGv_checked h3 s2Step183HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step183HeadFBefore s2Step183HeadFAfter s2Step183HeadFvAfter
    s2Step183HeadFRow s2Step183HeadFOut 179 s2Step183HeadFFresh [(s2Step183HeadGvRow,107),(s2Step183HeadFvRow,107)] [s2Step183HeadGvFresh,s2Step183HeadFvFresh] [s2Step183HeadGvOut,s2Step183HeadFvOut]
    (growRow 768 s2Step183HeadFFresh) ((growRow 771 s2Step183HeadGvFresh ++ (growRow 770 s2Step183HeadFvFresh ++ []))) s2Step183HeadF_Incoming s2Step183HeadF_checked h2 s2Step183HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step183HeadGBefore s2Step183HeadGAfter s2Step183HeadFvAfter
    s2Step183HeadGRow s2Step183HeadGOut 179 s2Step183HeadGFresh [(s2Step183HeadFRow,179),(s2Step183HeadGvRow,107),(s2Step183HeadFvRow,107)] [s2Step183HeadFFresh,s2Step183HeadGvFresh,s2Step183HeadFvFresh] [s2Step183HeadFOut,s2Step183HeadGvOut,s2Step183HeadFvOut]
    (growRow 769 s2Step183HeadGFresh) ((growRow 768 s2Step183HeadFFresh ++ (growRow 771 s2Step183HeadGvFresh ++ (growRow 770 s2Step183HeadFvFresh ++ [])))) s2Step183HeadG_Incoming s2Step183HeadG_checked h1 s2Step183HeadG_Outgoing
  exact h0

private theorem s2Step183HeadBank_checked : compileHmrBankResizeLog .headroom s2Step183HeadGBefore ⟨s2Step183HeadFRow,s2Step183HeadGRow,s2Step183HeadFvRow,s2Step183HeadGvRow⟩ ⟨179,179,107,107⟩ [s2Step183HeadGFresh,s2Step183HeadFFresh,s2Step183HeadGvFresh,s2Step183HeadFvFresh]=
    some (s2Step183HeadFvAfter,⟨s2Step183HeadFOut,s2Step183HeadGOut,s2Step183HeadFvOut,s2Step183HeadGvOut⟩,(growRow 769 s2Step183HeadGFresh ++ (growRow 768 s2Step183HeadFFresh ++ (growRow 771 s2Step183HeadGvFresh ++ (growRow 770 s2Step183HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step183HeadBank_rows]
  rfl

private theorem s2Step183Front_checked : compileHmrSourceFrontLog s2Step183EntryFBefore s2Step183FrontBank 178 106 ⟨177,177,106,105⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step183FrontLog=some s2Step183FrontPlan := by
  have pairEq : s2Step183FrontPair=⟨s2Step183HeadFRow,s2Step183HeadGRow,s2Step183HeadFvRow,s2Step183HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step183FrontHead=⟨s2Step183ExitFRow,s2Step183ExitGRow,s2Step183ExitFvRow,s2Step183ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step183Add0A=s2Step183FrontHead.f.wires := by decide +kernel
  have gEq : s2Step183Add0B=s2Step183FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step183Add1A=s2Step183FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step183Add1B=s2Step183FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step183EntryFBefore s2Step183FrontBank 178 106 ⟨177,177,106,105⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step183FrontLog s2Step183FrontPlan
  · exact s2Step183Front_entry
  · exact s2Step183EntryBank_checked
  · exact s2Step183Front_sigma
  · rfl
  · exact s2Step183Front_branch
  · rfl
  · simpa only [s2Step183FrontPlan,pairEq] using s2Step183HeadBank_checked
  · simpa only [s2Step183FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step183F4_checked
  · exact s2Step183Counter_checked
  · rfl
  · simpa only [s2Step183FrontPlan,headEq] using s2Step183ExitBank_checked

private theorem s2Step183Complete_explicit_checked : compileHmrEarlyStepLog s2Step183EntryFBefore s2Step183FrontBank 178 106 ⟨177,177,106,105⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step183CompleteLog=some s2Step183CompletePlan := by
  let Q := s2Step183EarlyControlPlan
  have hq := s2Step183EarlyControl_plan_checked
  have fv1 : s2Step183CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step183CompleteOut.fv.payload[2]?.getD s2Step183CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step183CompleteOut.fv.payload[3]?.getD s2Step183CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step183CompleteOut.fv.payload[4]?.getD s2Step183CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step183EntryFBefore s2Step183EarlyControlArena s2Step183FrontBank 178 106 ⟨177,177,106,105⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step183CompleteLog s2Step183FrontPlan Q
    s2Step183Front_checked s2Step183Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step183Complete_owned s2Step183Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step183EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 802 s2Step183CompleteOut.fv.second (s2Step183CompleteOut.fv.payload[2]?.getD s2Step183CompleteOut.fv.sign) (s2Step183CompleteOut.fv.payload[3]?.getD s2Step183CompleteOut.fv.sign) (s2Step183CompleteOut.fv.payload[4]?.getD s2Step183CompleteOut.fv.sign) 834 43 s2Step183EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep183Arena : Arena := s2Step183EntryFBefore
def s2PrivateStep183Bank : WindowBank := s2Step183FrontBank
def s2PrivateStep183Spec : HmrSourceWalkStepLog := ⟨178,106,⟨177,177,106,105⟩,43,.early s2Step183CompleteLog⟩
def s2PrivateStep183Plan : HmrSourceStepPlan := .early s2Step183CompletePlan
theorem s2PrivateStep183_source : s2PrivateStep183Spec=s2ObservedLogs176[7] := rfl
theorem s2PrivateStep183_checked : compileHmrSourceStepLog s2PrivateStep183Arena s2PrivateStep183Bank
    s2PrivateStep183Spec.fgWidth s2PrivateStep183Spec.vWidth s2PrivateStep183Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]
    6 498 183 s2PrivateStep183Spec.need none s2PrivateStep183Spec.log=some s2PrivateStep183Plan := by
  change compileHmrSourceStepLog s2Step183EntryFBefore s2Step183FrontBank 178 106 ⟨177,177,106,105⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 6 498 183 43 none (.early s2Step183CompleteLog)=some (.early s2Step183CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 183<498)]
  rw [s2Step183Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
