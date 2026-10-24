import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep188
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

private def s2Step190CompleteMoves : List (Wire × Wire) := [(827,173),(817,686)]

private def s2Step190EarlyControlLog : HmrEarlyControlLog := ⟨[817, 827, 803, 822, 784],[807],[840],[794, 867, 877, 879, 882, 885],[]⟩

private def s2Step190FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [784], [], []],[[807], [822], [803], [799]],[[], [], [], []]⟩,[825],[829],[840],[794],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[840, 794, 867, 877]⟩

private def s2Step190CompleteLog : HmrEarlyStepLog := ⟨s2Step190FrontLog,s2Step190CompleteMoves,s2Step190EarlyControlLog⟩

private def s2Step190ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685],768⟩

private def s2Step190ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799],770⟩

private def s2Step190ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172],769⟩

private def s2Step190ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835],771⟩

private def s2Step190FrontOut : WindowBank := ⟨s2Step190ExitFOut,s2Step190ExitGOut,s2Step190ExitFvOut,s2Step190ExitGvOut⟩

private def s2Step190CompleteOut : WindowBank := s2Step190FrontOut.repacked s2Step190CompleteMoves

private def s2Step190EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step190EarlyControlPositiveArena,[807],s2Step190EarlyControlEqualityArena,[840],⟨⟨825,false⟩,[⟨⟨807,false⟩,840⟩]⟩⟩

private def s2Step190EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,817⟩,⟨⟨774,false⟩,827⟩,⟨⟨775,false⟩,803⟩,⟨⟨776,false⟩,822⟩,⟨⟨777,false⟩,784⟩]⟩

private def s2Step190EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step190EarlyControlZeroArena,s2Step190EarlyControlZeroPlan,s2Step190EarlyControlClassPlan,s2Step190EarlyControlFlagArena,s2Step190EarlyControlFittedArena,s2Step190EarlyControlHistoryArena,s2Step190EarlyControlSigmaArena,s2Step190EarlyControlOutputArena,s2Step190EarlyControlLog⟩

private def s2Step190CounterWork : List Wire := [840, 794, 867, 877]

private theorem s2Step190Counter_bounded : s2Step190CounterWork.toFinset⊆arenaWires := by norm_num [s2Step190CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step190HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190CounterDuring : Arena := ⟨s2Step190HeadFvAfter.live∪s2Step190CounterWork.toFinset,Finset.union_subset s2Step190HeadFvAfter.bounded s2Step190Counter_bounded⟩

private def s2Step190EntryFFresh : List Wire := []

private def s2Step190EntryFvFresh : List Wire := []

private def s2Step190EntryGFresh : List Wire := [784]

private def s2Step190EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190EntryGvAfter : Arena := s2Step190EntryGAfter

private def s2Step190EntryGvFresh : List Wire := []

private def s2Step190ExitFExtra : List Wire := [686, 822]

private def s2Step190ExitGExtra : List Wire := [173, 784, 807]

private def s2Step190ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<173) ∨ (174≤q ∧ q<686) ∨ (687≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190ExitGvExtra : List Wire := [803]

private def s2Step190Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190Add0Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step190Add0_bounded : s2Step190Add0Work.toFinset⊆arenaWires := by
  have h : s2Step190Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step190Add0During : Arena := ⟨s2Step190Add0Arena.live∪s2Step190Add0Work.toFinset,Finset.union_subset s2Step190Add0Arena.bounded s2Step190Add0_bounded⟩

private def s2Step190Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190Add1Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step190Add1_bounded : s2Step190Add1Work.toFinset⊆arenaWires := by
  have h : s2Step190Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step190Add1During : Arena := ⟨s2Step190Add1Arena.live∪s2Step190Add1Work.toFinset,Finset.union_subset s2Step190Add1Arena.bounded s2Step190Add1_bounded⟩

private def s2Step190F4FlagArena : Arena := ⟨s2Step190HeadFvAfter.live∪{840},Finset.union_subset s2Step190HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step190F4Plan : HmrHybridF4Plan := ⟨s2Step190F4FlagArena,[840],s2Step190Add0Arena,[794],s2Step190Add0During,s2Step190Add0Work,s2Step190Add1During,s2Step190Add1Work⟩

private def s2Step190HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 822],768⟩

private def s2Step190HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799],770⟩

private def s2Step190HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 784, 807],769⟩

private def s2Step190HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 803],771⟩

private def s2Step190FrontHead : WindowBank := ⟨s2Step190HeadFOut,s2Step190HeadGOut,s2Step190HeadFvOut,s2Step190HeadGvOut⟩

private def s2Step190EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686],768⟩

private def s2Step190EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824],770⟩

private def s2Step190EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 784],769⟩

private def s2Step190EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835],771⟩

private def s2Step190FrontPair : WindowBank := ⟨s2Step190EntryFOut,s2Step190EntryGOut,s2Step190EntryFvOut,s2Step190EntryGvOut⟩

private def s2Step190FrontSigmaArena : Arena := ⟨s2Step190EntryGvAfter.live∪{825},Finset.union_subset s2Step190EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step190HeadFFresh : List Wire := [822]

private def s2Step190HeadFvFresh : List Wire := [799]

private def s2Step190HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190HeadGFresh : List Wire := [807]

private def s2Step190HeadGvFresh : List Wire := [803]

private def s2Step190FrontPlan : HmrSourceFront := ⟨s2Step190EntryGvAfter,s2Step190FrontPair,(growRow 768 s2Step190EntryFFresh ++ (growRow 769 s2Step190EntryGFresh ++ (growRow 770 s2Step190EntryFvFresh ++ (growRow 771 s2Step190EntryGvFresh ++ [])))),s2Step190FrontSigmaArena,[825],s2Step190HeadGBefore,[829],
  s2Step190HeadFvAfter,s2Step190FrontHead,(growRow 769 s2Step190HeadGFresh ++ (growRow 768 s2Step190HeadFFresh ++ (growRow 771 s2Step190HeadGvFresh ++ (growRow 770 s2Step190HeadFvFresh ++ [])))),s2Step190F4Plan,s2Step190CounterDuring,s2Step190CounterWork,s2Step190ExitGvAfter,s2Step190FrontOut,(shrinkRow 769 s2Step190ExitGExtra ++ (shrinkRow 768 s2Step190ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step190ExitGvExtra ++ []))))⟩

private def s2Step190CompletePlan : HmrEarlyStepPlan := ⟨s2Step190FrontPlan,s2Step190EarlyControlArena,s2Step190EarlyControlPlan,s2Step190CompleteMoves⟩

private theorem s2Step190Complete_apart : List.Disjoint (s2Step190CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [825, 829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] := by
  have nd : ((s2Step190CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[825, 829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step190Complete_owned : (s2Step190CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step190EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step190EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step190CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,686),(687,784),(785,794),(795,803),(804,807),(808,822),(823,827),(828,840),(841,867),(868,877),(878,879),(880,882),(883,885),(886,890)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step190CompleteRelocationMove0Borrowed : Arena := ⟨s2Step190ExitGvAfter.live∪{173},Finset.union_subset s2Step190ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step190CompleteRelocationMove1Borrowed : Arena := ⟨s2Step190CompleteRelocationMove0After.live∪{686},Finset.union_subset s2Step190CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step190CompleteRelocation_move0_owned : 827∈s2Step190ExitGvAfter.live := by norm_num [s2Step190ExitGvAfter,arenaWires]

private theorem s2Step190CompleteRelocation_move0_reserve : s2Step190ExitGvAfter.reserve {173}=some s2Step190CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step190ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step190CompleteRelocation_move0_retire : s2Step190CompleteRelocationMove0Borrowed.retireSet {827}=s2Step190CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step190CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step190CompleteRelocationMove0Borrowed,s2Step190ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step190CompleteRelocation_move1_owned : 817∈s2Step190CompleteRelocationMove0After.live := by norm_num [s2Step190CompleteRelocationMove0After,arenaWires]

private theorem s2Step190CompleteRelocation_move1_reserve : s2Step190CompleteRelocationMove0After.reserve {686}=some s2Step190CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step190CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step190CompleteRelocation_move1_retire : s2Step190CompleteRelocationMove1Borrowed.retireSet {817}=s2Step190EarlyControlArena := by
  unfold Arena.retireSet s2Step190EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step190CompleteRelocationMove1Borrowed,s2Step190CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step190CompleteRelocation_checked : s2Step190ExitGvAfter.checkRepack [(827,173),(817,686)]=some s2Step190EarlyControlArena := by
  have tail2 : s2Step190EarlyControlArena.checkRepack []=some s2Step190EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step190CompleteRelocationMove0After s2Step190CompleteRelocationMove1Borrowed s2Step190EarlyControlArena s2Step190EarlyControlArena 817 686 []
    s2Step190CompleteRelocation_move1_owned s2Step190CompleteRelocation_move1_reserve s2Step190CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step190ExitGvAfter s2Step190CompleteRelocationMove0Borrowed s2Step190CompleteRelocationMove0After s2Step190EarlyControlArena 827 173 [(817,686)]
    s2Step190CompleteRelocation_move0_owned s2Step190CompleteRelocation_move0_reserve s2Step190CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step190Complete_repack : s2Step190ExitGvAfter.checkRepack s2Step190CompleteMoves=some s2Step190EarlyControlArena := by
  simpa only [s2Step190CompleteMoves] using s2Step190CompleteRelocation_checked

private theorem s2Step190EarlyControl_branchOwned : ([829] : List Wire).toFinset⊆s2Step190EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step190EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190EarlyControl_branch : compileHmrBranchRetirement s2Step190EarlyControlSigmaArena 829=some s2Step190EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step190EarlyControl_branchOwned
  · ext q
    simp [s2Step190EarlyControlOutputArena,s2Step190EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step190EarlyControl_classEqualityBorrow : s2Step190EarlyControlPositiveArena.checkBorrow (([825, 807] : List Wire).length-1) s2Step190EarlyControlLog.classWork=some s2Step190EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step190EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step190EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step190EarlyControlEqualityArena,s2Step190EarlyControlPositiveArena,s2Step190EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step190EarlyControl_classEqualityOwned : ([825, 807] : List Wire).toFinset⊆s2Step190EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step190EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190EarlyControl_classEquality : compileHmrEqualityLog s2Step190EarlyControlPositiveArena [825, 807] 0 s2Step190EarlyControlLog.classWork=some (s2Step190EarlyControlEqualityArena,s2Step190EarlyControlLog.classWork,s2Step190EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step190EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step190EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step190EarlyControl_classOwned : ([777, 784, 825] : List Wire).toFinset⊆s2Step190EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step190EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190EarlyControl_positiveBorrow : s2Step190EarlyControlZeroArena.checkBorrow (1) s2Step190EarlyControlLog.positiveWork=some s2Step190EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step190EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step190EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step190EarlyControlPositiveArena,s2Step190EarlyControlZeroArena,s2Step190EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step190EarlyControl_class : compileHmrSourceClassLog s2Step190EarlyControlZeroArena false 777 s2Step190EarlyControlZeroPlan.top 0 825 s2Step190EarlyControlLog.positiveWork s2Step190EarlyControlLog.classWork=some s2Step190EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step190EarlyControlClassPlan s2Step190EarlyControlZeroArena false 777 s2Step190EarlyControlZeroPlan.top 0 825
  constructor
  · decide +kernel
  · exact s2Step190EarlyControl_classOwned
  · exact s2Step190EarlyControl_positiveBorrow
  · exact s2Step190EarlyControl_classEquality

private theorem s2Step190EarlyControl_entryRecordOwned : ([829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step190EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step190EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190EarlyControl_entrySigmaOwned : ([825, 254] : List Wire).toFinset⊆s2Step190EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step190EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190EarlyControl_fitBorrow : s2Step190EarlyControlFlagArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step190EarlyControlLog.recordFresh=some s2Step190EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step190EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step190EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step190EarlyControlFittedArena,s2Step190EarlyControlFlagArena,s2Step190EarlyControlLog,arenaWires]

private theorem s2Step190EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step190EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step190EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190EarlyControl_fit : compileHmrRecordGrowLog s2Step190EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step190EarlyControlLog.recordFresh=some s2Step190EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step190EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step190EarlyControl_fitBorrow

private theorem s2Step190EarlyControl_flagsBorrow : s2Step190EarlyControlEqualityArena.checkBorrow (6) s2Step190EarlyControlLog.flagWork=some s2Step190EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step190EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step190EarlyControlEqualityArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step190EarlyControlFlagArena,s2Step190EarlyControlEqualityArena,s2Step190EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step190EarlyControl_flagsOwned : ([840, 253, 252, 251] : List Wire).toFinset⊆s2Step190EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step190EarlyControlEqualityArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190EarlyControl_flags : compileHmrFlagsLog s2Step190EarlyControlClassPlan.equalityArena s2Step190EarlyControlClassPlan.equality.top 253 252 251 s2Step190EarlyControlLog.flagWork=some s2Step190EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step190EarlyControl_flagsOwned⟩
  · exact s2Step190EarlyControl_flagsBorrow

private theorem s2Step190EarlyControl_historyBorrow : s2Step190EarlyControlArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step190EarlyControlLog.recordFresh=some s2Step190EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step190EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step190EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step190EarlyControlHistoryArena,s2Step190EarlyControlArena,s2Step190EarlyControlLog,arenaWires]

private theorem s2Step190EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step190EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step190EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190EarlyControl_history : compileHmrRecordGrowLog s2Step190EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step190EarlyControlLog.recordFresh=some s2Step190EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step190EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step190EarlyControl_historyBorrow

private theorem s2Step190EarlyControl_sigmaOwned : ([254, 825] : List Wire).toFinset⊆s2Step190EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step190EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190EarlyControl_sigmaReleaseOwned : ([825] : List Wire).toFinset⊆s2Step190EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step190EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190EarlyControl_sigmaRelease : s2Step190EarlyControlHistoryArena.release {825} (fun _ => false)=some s2Step190EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step190EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step190EarlyControlSigmaArena,s2Step190EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step190EarlyControl_sigma : compileHmrSigmaDropLog s2Step190EarlyControlHistoryArena false 0 0 254 825 []=some s2Step190EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step190EarlyControl_sigmaOwned⟩
  · exact s2Step190EarlyControl_sigmaRelease

private theorem s2Step190EarlyControl_zeroBorrow : s2Step190EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step190EarlyControlLog.zeroWork=some s2Step190EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step190EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step190EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step190EarlyControlZeroArena,s2Step190EarlyControlArena,s2Step190EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step190EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step190EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step190EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190EarlyControl_zero : compileHmrEqualityLog s2Step190EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step190EarlyControlLog.zeroWork=some (s2Step190EarlyControlZeroArena,s2Step190EarlyControlLog.zeroWork,s2Step190EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step190EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step190EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step190EarlyControl_logged : s2Step190EarlyControlPlan.Logged s2Step190EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 254 253 252 251 829 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step190EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step190EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step190EarlyControl_zero
  · exact s2Step190EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step190EarlyControl_flags
  · exact s2Step190EarlyControl_fit
  · exact s2Step190EarlyControl_history
  · exact s2Step190EarlyControl_sigma
  · exact s2Step190EarlyControl_branch

private theorem s2Step190EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step190EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 254 253 252 251 829 43 s2Step190EarlyControlLog=some s2Step190EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step190EarlyControlPlan s2Step190EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 254 253 252 251 829 43 s2Step190EarlyControl_logged

private def s2Step190EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686],768⟩

private def s2Step190EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824],770⟩

private def s2Step190EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173],769⟩

private def s2Step190EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835],771⟩

private def s2Step190FrontBank : WindowBank := ⟨s2Step190EntryFRow,s2Step190EntryGRow,s2Step190EntryFvRow,s2Step190EntryGvRow⟩

private def s2Step190Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 822, 768]

private def s2Step190Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 784, 807, 769]

private def s2Step190Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 770]

private def s2Step190Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 803, 771]

private theorem s2Step190Counter_apart : Disjoint s2Step190HeadFvAfter.live s2Step190CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step190HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190Counter_borrowed : s2Step190HeadFvAfter.checkBorrow 4 s2Step190CounterWork=some s2Step190CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step190HeadFvAfter s2Step190CounterDuring s2Step190CounterWork.toFinset s2Step190Counter_bounded s2Step190Counter_apart rfl

private theorem s2Step190Counter_owned : (825::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step190HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step190HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190Counter_checked : compileHmrCounterStepLog s2Step190HeadFvAfter true 825 [772, 773, 774, 775, 776, 777] s2Step190CounterWork=some s2Step190CounterDuring := by
  have owned : ∀q∈825::[772, 773, 774, 775, 776, 777],q∈s2Step190HeadFvAfter.live := fun q hq => s2Step190Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step190Counter_borrowed

private def s2Step190EntryFAfter : Arena := s2Step190EntryFBefore

private theorem s2Step190EntryBank_incomingDistinct : ([s2Step190EntryFRow,s2Step190EntryGRow,s2Step190EntryFvRow,s2Step190EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190EntryF_Incoming : rowsOwned s2Step190EntryFBefore [s2Step190EntryFRow,s2Step190EntryGRow,s2Step190EntryFvRow,s2Step190EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step190EntryFRow,s2Step190EntryGRow,s2Step190EntryFvRow,s2Step190EntryGvRow] 0 s2Step190EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step190EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step190EntryBank_outgoingOwned : rowsOwned s2Step190EntryGvAfter [s2Step190EntryFOut,s2Step190EntryGOut,s2Step190EntryFvOut,s2Step190EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step190EntryGvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step190EntryF_Outgoing : rowsOwned s2Step190EntryGvAfter [s2Step190EntryFOut,s2Step190EntryGOut,s2Step190EntryFvOut,s2Step190EntryGvOut] :=
  hmrRows_owned_drop s2Step190EntryGvAfter [s2Step190EntryFOut,s2Step190EntryGOut,s2Step190EntryFvOut,s2Step190EntryGvOut] 0 s2Step190EntryBank_outgoingOwned

private theorem s2Step190EntryF_distinct : (s2Step190EntryFRow.sign::s2Step190EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190EntryF_owned : (s2Step190EntryFRow.sign::s2Step190EntryFRow.payload).toFinset⊆s2Step190EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step190EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190EntryF_reserved : s2Step190EntryFBefore.reserve s2Step190EntryFFresh.toFinset=some s2Step190EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step190EntryFFresh,arenaWires]
  · norm_num [s2Step190EntryFBefore,s2Step190EntryFFresh,arenaWires]
  · simp only [s2Step190EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step190EntryF_checked : planRowResizeLog s2Step190EntryFBefore s2Step190EntryFRow 175 s2Step190EntryFFresh=
    some (s2Step190EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686],768⟩,growRow 768 s2Step190EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step190EntryFBefore s2Step190EntryFAfter s2Step190EntryFRow 175 s2Step190EntryFFresh
    s2Step190EntryF_distinct s2Step190EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step190EntryF_reserved
  have rowEq : WindowRow.mk (s2Step190EntryFRow.payload++s2Step190EntryFFresh) s2Step190EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step190EntryFvAfter : Arena := s2Step190EntryGAfter

private def s2Step190EntryFvBefore : Arena := s2Step190EntryGAfter

private theorem s2Step190EntryFv_Incoming : rowsOwned s2Step190EntryFvBefore [s2Step190EntryFvRow,s2Step190EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step190EntryFRow,s2Step190EntryGRow,s2Step190EntryFvRow,s2Step190EntryGvRow] 2 s2Step190EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step190EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step190EntryFv_Outgoing : rowsOwned s2Step190EntryGvAfter [s2Step190EntryFvOut,s2Step190EntryGvOut] :=
  hmrRows_owned_drop s2Step190EntryGvAfter [s2Step190EntryFOut,s2Step190EntryGOut,s2Step190EntryFvOut,s2Step190EntryGvOut] 2 s2Step190EntryBank_outgoingOwned

private theorem s2Step190EntryFv_distinct : (s2Step190EntryFvRow.sign::s2Step190EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190EntryFv_owned : (s2Step190EntryFvRow.sign::s2Step190EntryFvRow.payload).toFinset⊆s2Step190EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step190EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190EntryFv_reserved : s2Step190EntryFvBefore.reserve s2Step190EntryFvFresh.toFinset=some s2Step190EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step190EntryFvFresh,arenaWires]
  · norm_num [s2Step190EntryFvBefore,s2Step190EntryGAfter,s2Step190EntryFvFresh,arenaWires]
  · simp only [s2Step190EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step190EntryFv_checked : planRowResizeLog s2Step190EntryFvBefore s2Step190EntryFvRow 109 s2Step190EntryFvFresh=
    some (s2Step190EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824],770⟩,growRow 770 s2Step190EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step190EntryFvBefore s2Step190EntryFvAfter s2Step190EntryFvRow 109 s2Step190EntryFvFresh
    s2Step190EntryFv_distinct s2Step190EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step190EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step190EntryFvRow.payload++s2Step190EntryFvFresh) s2Step190EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step190EntryGBefore : Arena := s2Step190EntryFBefore

private theorem s2Step190EntryG_Incoming : rowsOwned s2Step190EntryGBefore [s2Step190EntryGRow,s2Step190EntryFvRow,s2Step190EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step190EntryFRow,s2Step190EntryGRow,s2Step190EntryFvRow,s2Step190EntryGvRow] 1 s2Step190EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step190EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step190EntryG_Outgoing : rowsOwned s2Step190EntryGvAfter [s2Step190EntryGOut,s2Step190EntryFvOut,s2Step190EntryGvOut] :=
  hmrRows_owned_drop s2Step190EntryGvAfter [s2Step190EntryFOut,s2Step190EntryGOut,s2Step190EntryFvOut,s2Step190EntryGvOut] 1 s2Step190EntryBank_outgoingOwned

private theorem s2Step190EntryG_distinct : (s2Step190EntryGRow.sign::s2Step190EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190EntryG_owned : (s2Step190EntryGRow.sign::s2Step190EntryGRow.payload).toFinset⊆s2Step190EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step190EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190EntryG_reserved : s2Step190EntryGBefore.reserve s2Step190EntryGFresh.toFinset=some s2Step190EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step190EntryGFresh,arenaWires]
  · norm_num [s2Step190EntryGBefore,s2Step190EntryFBefore,s2Step190EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step190EntryGAfter,s2Step190EntryGBefore,s2Step190EntryFBefore,s2Step190EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step190EntryG_checked : planRowResizeLog s2Step190EntryGBefore s2Step190EntryGRow 175 s2Step190EntryGFresh=
    some (s2Step190EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 784],769⟩,growRow 769 s2Step190EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step190EntryGBefore s2Step190EntryGAfter s2Step190EntryGRow 175 s2Step190EntryGFresh
    s2Step190EntryG_distinct s2Step190EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step190EntryG_reserved
  have rowEq : WindowRow.mk (s2Step190EntryGRow.payload++s2Step190EntryGFresh) s2Step190EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step190EntryGvBefore : Arena := s2Step190EntryGAfter

private theorem s2Step190EntryGv_Incoming : rowsOwned s2Step190EntryGvBefore [s2Step190EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step190EntryFRow,s2Step190EntryGRow,s2Step190EntryFvRow,s2Step190EntryGvRow] 3 s2Step190EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step190EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step190EntryGv_Outgoing : rowsOwned s2Step190EntryGvAfter [s2Step190EntryGvOut] :=
  hmrRows_owned_drop s2Step190EntryGvAfter [s2Step190EntryFOut,s2Step190EntryGOut,s2Step190EntryFvOut,s2Step190EntryGvOut] 3 s2Step190EntryBank_outgoingOwned

private theorem s2Step190EntryGv_distinct : (s2Step190EntryGvRow.sign::s2Step190EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190EntryGv_owned : (s2Step190EntryGvRow.sign::s2Step190EntryGvRow.payload).toFinset⊆s2Step190EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step190EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190EntryGv_reserved : s2Step190EntryGvBefore.reserve s2Step190EntryGvFresh.toFinset=some s2Step190EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step190EntryGvFresh,arenaWires]
  · norm_num [s2Step190EntryGvBefore,s2Step190EntryGAfter,s2Step190EntryGvFresh,arenaWires]
  · simp only [s2Step190EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step190EntryGv_checked : planRowResizeLog s2Step190EntryGvBefore s2Step190EntryGvRow 109 s2Step190EntryGvFresh=
    some (s2Step190EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835],771⟩,growRow 771 s2Step190EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step190EntryGvBefore s2Step190EntryGvAfter s2Step190EntryGvRow 109 s2Step190EntryGvFresh
    s2Step190EntryGv_distinct s2Step190EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step190EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step190EntryGvRow.payload++s2Step190EntryGvFresh) s2Step190EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step190EntryBank_rows : planWindowRowsLog s2Step190EntryFBefore [(s2Step190EntryFRow,175),(s2Step190EntryGRow,175),(s2Step190EntryFvRow,109),(s2Step190EntryGvRow,109)] [s2Step190EntryFFresh,s2Step190EntryGFresh,s2Step190EntryFvFresh,s2Step190EntryGvFresh]=
    some (s2Step190EntryGvAfter,[s2Step190EntryFOut,s2Step190EntryGOut,s2Step190EntryFvOut,s2Step190EntryGvOut],(growRow 768 s2Step190EntryFFresh ++ (growRow 769 s2Step190EntryGFresh ++ (growRow 770 s2Step190EntryFvFresh ++ (growRow 771 s2Step190EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step190EntryGvAfter [] []=some (s2Step190EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step190EntryGvBefore s2Step190EntryGvAfter s2Step190EntryGvAfter
    s2Step190EntryGvRow s2Step190EntryGvOut 109 s2Step190EntryGvFresh [] [] []
    (growRow 771 s2Step190EntryGvFresh) ([]) s2Step190EntryGv_Incoming s2Step190EntryGv_checked h4 s2Step190EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step190EntryFvBefore s2Step190EntryFvAfter s2Step190EntryGvAfter
    s2Step190EntryFvRow s2Step190EntryFvOut 109 s2Step190EntryFvFresh [(s2Step190EntryGvRow,109)] [s2Step190EntryGvFresh] [s2Step190EntryGvOut]
    (growRow 770 s2Step190EntryFvFresh) ((growRow 771 s2Step190EntryGvFresh ++ [])) s2Step190EntryFv_Incoming s2Step190EntryFv_checked h3 s2Step190EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step190EntryGBefore s2Step190EntryGAfter s2Step190EntryGvAfter
    s2Step190EntryGRow s2Step190EntryGOut 175 s2Step190EntryGFresh [(s2Step190EntryFvRow,109),(s2Step190EntryGvRow,109)] [s2Step190EntryFvFresh,s2Step190EntryGvFresh] [s2Step190EntryFvOut,s2Step190EntryGvOut]
    (growRow 769 s2Step190EntryGFresh) ((growRow 770 s2Step190EntryFvFresh ++ (growRow 771 s2Step190EntryGvFresh ++ []))) s2Step190EntryG_Incoming s2Step190EntryG_checked h2 s2Step190EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step190EntryFBefore s2Step190EntryFAfter s2Step190EntryGvAfter
    s2Step190EntryFRow s2Step190EntryFOut 175 s2Step190EntryFFresh [(s2Step190EntryGRow,175),(s2Step190EntryFvRow,109),(s2Step190EntryGvRow,109)] [s2Step190EntryGFresh,s2Step190EntryFvFresh,s2Step190EntryGvFresh] [s2Step190EntryGOut,s2Step190EntryFvOut,s2Step190EntryGvOut]
    (growRow 768 s2Step190EntryFFresh) ((growRow 769 s2Step190EntryGFresh ++ (growRow 770 s2Step190EntryFvFresh ++ (growRow 771 s2Step190EntryGvFresh ++ [])))) s2Step190EntryF_Incoming s2Step190EntryF_checked h1 s2Step190EntryF_Outgoing
  exact h0

private theorem s2Step190EntryBank_checked : compileHmrBankResizeLog .entry s2Step190EntryFBefore ⟨s2Step190EntryFRow,s2Step190EntryGRow,s2Step190EntryFvRow,s2Step190EntryGvRow⟩ ⟨175,175,109,109⟩ [s2Step190EntryFFresh,s2Step190EntryGFresh,s2Step190EntryFvFresh,s2Step190EntryGvFresh]=
    some (s2Step190EntryGvAfter,⟨s2Step190EntryFOut,s2Step190EntryGOut,s2Step190EntryFvOut,s2Step190EntryGvOut⟩,(growRow 768 s2Step190EntryFFresh ++ (growRow 769 s2Step190EntryGFresh ++ (growRow 770 s2Step190EntryFvFresh ++ (growRow 771 s2Step190EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step190EntryBank_rows]
  rfl

private def s2Step190ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<173) ∨ (174≤q ∧ q<686) ∨ (687≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<173) ∨ (174≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190ExitFBefore : Arena := s2Step190ExitGAfter

private def s2Step190ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 822],768⟩

private def s2Step190ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799],770⟩

private def s2Step190ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 784, 807],769⟩

private def s2Step190ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 803],771⟩

private theorem s2Step190ExitBank_incomingDistinct : ([s2Step190ExitGRow,s2Step190ExitFRow,s2Step190ExitFvRow,s2Step190ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190ExitF_Incoming : rowsOwned s2Step190ExitFBefore [s2Step190ExitFRow,s2Step190ExitFvRow,s2Step190ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step190ExitGRow,s2Step190ExitFRow,s2Step190ExitFvRow,s2Step190ExitGvRow] 1 s2Step190ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step190ExitFBefore (fun q => (0≤q ∧ q<173) ∨ (174≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step190ExitBank_outgoingOwned : rowsOwned s2Step190ExitGvAfter [s2Step190ExitGOut,s2Step190ExitFOut,s2Step190ExitFvOut,s2Step190ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step190ExitGvAfter (fun q => (0≤q ∧ q<173) ∨ (174≤q ∧ q<686) ∨ (687≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step190ExitF_Outgoing : rowsOwned s2Step190ExitGvAfter [s2Step190ExitFOut,s2Step190ExitFvOut,s2Step190ExitGvOut] :=
  hmrRows_owned_drop s2Step190ExitGvAfter [s2Step190ExitGOut,s2Step190ExitFOut,s2Step190ExitFvOut,s2Step190ExitGvOut] 1 s2Step190ExitBank_outgoingOwned

private theorem s2Step190ExitF_distinct : (s2Step190ExitFRow.sign::s2Step190ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190ExitF_owned : (s2Step190ExitFRow.sign::s2Step190ExitFRow.payload).toFinset⊆s2Step190ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step190ExitFBefore (fun q => (0≤q ∧ q<173) ∨ (174≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190ExitF_retired : s2Step190ExitFBefore.retireSet s2Step190ExitFExtra.toFinset=s2Step190ExitFAfter := by
  unfold Arena.retireSet s2Step190ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step190ExitFBefore,s2Step190ExitGAfter,s2Step190ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step190ExitF_checked : planRowResizeLog s2Step190ExitFBefore s2Step190ExitFRow 174 []=
    some (s2Step190ExitFAfter,s2Step190ExitFOut,shrinkRow 768 s2Step190ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step190ExitFBefore s2Step190ExitFRow 174 s2Step190ExitF_distinct s2Step190ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step190ExitFRow.payload.take 174) s2Step190ExitFRow.sign=s2Step190ExitFOut := by decide +kernel
  have hi : s2Step190ExitFRow.payload.drop 174=s2Step190ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step190ExitF_retired] at result
  exact result

private def s2Step190ExitFvAfter : Arena := s2Step190ExitFAfter

private def s2Step190ExitFvBefore : Arena := s2Step190ExitFAfter

private theorem s2Step190ExitFv_Incoming : rowsOwned s2Step190ExitFvBefore [s2Step190ExitFvRow,s2Step190ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step190ExitGRow,s2Step190ExitFRow,s2Step190ExitFvRow,s2Step190ExitGvRow] 2 s2Step190ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step190ExitFvBefore (fun q => (0≤q ∧ q<173) ∨ (174≤q ∧ q<686) ∨ (687≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step190ExitFv_Outgoing : rowsOwned s2Step190ExitGvAfter [s2Step190ExitFvOut,s2Step190ExitGvOut] :=
  hmrRows_owned_drop s2Step190ExitGvAfter [s2Step190ExitGOut,s2Step190ExitFOut,s2Step190ExitFvOut,s2Step190ExitGvOut] 2 s2Step190ExitBank_outgoingOwned

private theorem s2Step190ExitFv_distinct : (s2Step190ExitFvRow.sign::s2Step190ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190ExitFv_owned : (s2Step190ExitFvRow.sign::s2Step190ExitFvRow.payload).toFinset⊆s2Step190ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step190ExitFvBefore (fun q => (0≤q ∧ q<173) ∨ (174≤q ∧ q<686) ∨ (687≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190ExitFv_reserved : s2Step190ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step190ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step190ExitFv_checked : planRowResizeLog s2Step190ExitFvBefore s2Step190ExitFvRow 110 []=
    some (s2Step190ExitFvAfter,s2Step190ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step190ExitFvBefore s2Step190ExitFvAfter s2Step190ExitFvRow 110 []
    s2Step190ExitFv_distinct s2Step190ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step190ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step190ExitFvRow.payload++[]) s2Step190ExitFvRow.sign=s2Step190ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step190ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step190ExitG_Incoming : rowsOwned s2Step190ExitGBefore [s2Step190ExitGRow,s2Step190ExitFRow,s2Step190ExitFvRow,s2Step190ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step190ExitGRow,s2Step190ExitFRow,s2Step190ExitFvRow,s2Step190ExitGvRow] 0 s2Step190ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step190ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step190ExitG_Outgoing : rowsOwned s2Step190ExitGvAfter [s2Step190ExitGOut,s2Step190ExitFOut,s2Step190ExitFvOut,s2Step190ExitGvOut] :=
  hmrRows_owned_drop s2Step190ExitGvAfter [s2Step190ExitGOut,s2Step190ExitFOut,s2Step190ExitFvOut,s2Step190ExitGvOut] 0 s2Step190ExitBank_outgoingOwned

private theorem s2Step190ExitG_distinct : (s2Step190ExitGRow.sign::s2Step190ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190ExitG_owned : (s2Step190ExitGRow.sign::s2Step190ExitGRow.payload).toFinset⊆s2Step190ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step190ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190ExitG_retired : s2Step190ExitGBefore.retireSet s2Step190ExitGExtra.toFinset=s2Step190ExitGAfter := by
  unfold Arena.retireSet s2Step190ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step190ExitGBefore,s2Step190ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step190ExitG_checked : planRowResizeLog s2Step190ExitGBefore s2Step190ExitGRow 173 []=
    some (s2Step190ExitGAfter,s2Step190ExitGOut,shrinkRow 769 s2Step190ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step190ExitGBefore s2Step190ExitGRow 173 s2Step190ExitG_distinct s2Step190ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step190ExitGRow.payload.take 173) s2Step190ExitGRow.sign=s2Step190ExitGOut := by decide +kernel
  have hi : s2Step190ExitGRow.payload.drop 173=s2Step190ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step190ExitG_retired] at result
  exact result

private def s2Step190ExitGvBefore : Arena := s2Step190ExitFAfter

private theorem s2Step190ExitGv_Incoming : rowsOwned s2Step190ExitGvBefore [s2Step190ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step190ExitGRow,s2Step190ExitFRow,s2Step190ExitFvRow,s2Step190ExitGvRow] 3 s2Step190ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step190ExitGvBefore (fun q => (0≤q ∧ q<173) ∨ (174≤q ∧ q<686) ∨ (687≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step190ExitGv_Outgoing : rowsOwned s2Step190ExitGvAfter [s2Step190ExitGvOut] :=
  hmrRows_owned_drop s2Step190ExitGvAfter [s2Step190ExitGOut,s2Step190ExitFOut,s2Step190ExitFvOut,s2Step190ExitGvOut] 3 s2Step190ExitBank_outgoingOwned

private theorem s2Step190ExitGv_distinct : (s2Step190ExitGvRow.sign::s2Step190ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190ExitGv_owned : (s2Step190ExitGvRow.sign::s2Step190ExitGvRow.payload).toFinset⊆s2Step190ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step190ExitGvBefore (fun q => (0≤q ∧ q<173) ∨ (174≤q ∧ q<686) ∨ (687≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190ExitGv_retired : s2Step190ExitGvBefore.retireSet s2Step190ExitGvExtra.toFinset=s2Step190ExitGvAfter := by
  unfold Arena.retireSet s2Step190ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step190ExitGvBefore,s2Step190ExitFAfter,s2Step190ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step190ExitGv_checked : planRowResizeLog s2Step190ExitGvBefore s2Step190ExitGvRow 109 []=
    some (s2Step190ExitGvAfter,s2Step190ExitGvOut,shrinkRow 771 s2Step190ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step190ExitGvBefore s2Step190ExitGvRow 109 s2Step190ExitGv_distinct s2Step190ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step190ExitGvRow.payload.take 109) s2Step190ExitGvRow.sign=s2Step190ExitGvOut := by decide +kernel
  have hi : s2Step190ExitGvRow.payload.drop 109=s2Step190ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step190ExitGv_retired] at result
  exact result

private theorem s2Step190ExitBank_rows : planWindowRowsLog s2Step190ExitGBefore [(s2Step190ExitGRow,173),(s2Step190ExitFRow,174),(s2Step190ExitFvRow,110),(s2Step190ExitGvRow,109)] [[],[],[],[]]=
    some (s2Step190ExitGvAfter,[s2Step190ExitGOut,s2Step190ExitFOut,s2Step190ExitFvOut,s2Step190ExitGvOut],(shrinkRow 769 s2Step190ExitGExtra ++ (shrinkRow 768 s2Step190ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step190ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step190ExitGvAfter [] []=some (s2Step190ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step190ExitGvBefore s2Step190ExitGvAfter s2Step190ExitGvAfter
    s2Step190ExitGvRow s2Step190ExitGvOut 109 [] [] [] []
    (shrinkRow 771 s2Step190ExitGvExtra) ([]) s2Step190ExitGv_Incoming s2Step190ExitGv_checked h4 s2Step190ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step190ExitFvBefore s2Step190ExitFvAfter s2Step190ExitGvAfter
    s2Step190ExitFvRow s2Step190ExitFvOut 110 [] [(s2Step190ExitGvRow,109)] [[]] [s2Step190ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step190ExitGvExtra ++ [])) s2Step190ExitFv_Incoming s2Step190ExitFv_checked h3 s2Step190ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step190ExitFBefore s2Step190ExitFAfter s2Step190ExitGvAfter
    s2Step190ExitFRow s2Step190ExitFOut 174 [] [(s2Step190ExitFvRow,110),(s2Step190ExitGvRow,109)] [[],[]] [s2Step190ExitFvOut,s2Step190ExitGvOut]
    (shrinkRow 768 s2Step190ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step190ExitGvExtra ++ []))) s2Step190ExitF_Incoming s2Step190ExitF_checked h2 s2Step190ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step190ExitGBefore s2Step190ExitGAfter s2Step190ExitGvAfter
    s2Step190ExitGRow s2Step190ExitGOut 173 [] [(s2Step190ExitFRow,174),(s2Step190ExitFvRow,110),(s2Step190ExitGvRow,109)] [[],[],[]] [s2Step190ExitFOut,s2Step190ExitFvOut,s2Step190ExitGvOut]
    (shrinkRow 769 s2Step190ExitGExtra) ((shrinkRow 768 s2Step190ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step190ExitGvExtra ++ [])))) s2Step190ExitG_Incoming s2Step190ExitG_checked h1 s2Step190ExitG_Outgoing
  exact h0

private theorem s2Step190ExitBank_checked : compileHmrBankResizeLog .exit s2Step190ExitGBefore ⟨s2Step190ExitFRow,s2Step190ExitGRow,s2Step190ExitFvRow,s2Step190ExitGvRow⟩ ⟨174,173,110,109⟩ [[],[],[],[]]=
    some (s2Step190ExitGvAfter,⟨s2Step190ExitFOut,s2Step190ExitGOut,s2Step190ExitFvOut,s2Step190ExitGvOut⟩,(shrinkRow 769 s2Step190ExitGExtra ++ (shrinkRow 768 s2Step190ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step190ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step190ExitBank_rows]
  rfl

private theorem s2Step190Add0_apart : Disjoint s2Step190Add0Arena.live s2Step190Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step190Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190Add0_card : s2Step190Add0Arena.live.card=885 := by
  decide +kernel

private theorem s2Step190Add0_borrowed : s2Step190Add0Arena.checkBorrow (hmrHybridCount s2Step190Add0Arena s2Step190Add0B.length) s2Step190Add0Work=some s2Step190Add0During := by
  have len : s2Step190Add0Work.length=hmrHybridCount s2Step190Add0Arena s2Step190Add0B.length := by
    rw [hmrHybridCount,s2Step190Add0_card]
    decide +kernel
  have nd : s2Step190Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step190Add0Arena s2Step190Add0During s2Step190Add0Work.toFinset s2Step190Add0_bounded s2Step190Add0_apart rfl

private theorem s2Step190Add0_distinct : (840::829::794::(s2Step190Add0A++s2Step190Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190Add0_owned : (840::829::794::(s2Step190Add0A++s2Step190Add0B)).toFinset⊆s2Step190Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step190Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190Add0_checked : compileHmrHybridCinLog s2Step190Add0Arena 829 840 794 s2Step190Add0A s2Step190Add0B s2Step190Add0Work=some s2Step190Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step190Add0Arena s2Step190Add0During 829 840 794 s2Step190Add0A s2Step190Add0B s2Step190Add0Work
    (by decide +kernel) (by decide +kernel) s2Step190Add0_distinct
    (fun q hq => s2Step190Add0_owned (List.mem_toFinset.mpr hq)) s2Step190Add0_borrowed

private theorem s2Step190Add1_apart : Disjoint s2Step190Add1Arena.live s2Step190Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step190Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190Add1_card : s2Step190Add1Arena.live.card=885 := by
  decide +kernel

private theorem s2Step190Add1_borrowed : s2Step190Add1Arena.checkBorrow (hmrHybridCount s2Step190Add1Arena s2Step190Add1B.length) s2Step190Add1Work=some s2Step190Add1During := by
  have len : s2Step190Add1Work.length=hmrHybridCount s2Step190Add1Arena s2Step190Add1B.length := by
    rw [hmrHybridCount,s2Step190Add1_card]
    decide +kernel
  have nd : s2Step190Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step190Add1Arena s2Step190Add1During s2Step190Add1Work.toFinset s2Step190Add1_bounded s2Step190Add1_apart rfl

private theorem s2Step190Add1_distinct : (840::829::794::(s2Step190Add1A++s2Step190Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190Add1_owned : (840::829::794::(s2Step190Add1A++s2Step190Add1B)).toFinset⊆s2Step190Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step190Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190Add1_checked : compileHmrHybridCinLog s2Step190Add1Arena 829 840 794 s2Step190Add1A s2Step190Add1B s2Step190Add1Work=some s2Step190Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step190Add1Arena s2Step190Add1During 829 840 794 s2Step190Add1A s2Step190Add1B s2Step190Add1Work
    (by decide +kernel) (by decide +kernel) s2Step190Add1_distinct
    (fun q hq => s2Step190Add1_owned (List.mem_toFinset.mpr hq)) s2Step190Add1_borrowed

private theorem s2Step190F4_apart : Disjoint (s2Step190Add0A++s2Step190Add0B).toFinset (s2Step190Add1A++s2Step190Add1B).toFinset := by
  have nd : ((s2Step190Add0A++s2Step190Add0B)++(s2Step190Add1A++s2Step190Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step190F4_carry : s2Step190F4FlagArena.checkBorrow 1 [794]=some s2Step190Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step190F4FlagArena,s2Step190HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step190F4FlagArena,s2Step190HeadFvAfter,s2Step190Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step190F4_distinct : (825::829::840::794::((s2Step190Add0A++s2Step190Add1A)++(s2Step190Add0B++s2Step190Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190F4_flag : s2Step190HeadFvAfter.checkBorrow 1 [840]=some s2Step190F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step190HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step190F4_owned : (825::829::((s2Step190Add0A++s2Step190Add1A)++(s2Step190Add0B++s2Step190Add1B))).toFinset⊆s2Step190HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step190HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190F4_checked : compileHmrHybridF4Log s2Step190HeadFvAfter 825 829 s2Step190Add0A s2Step190Add0B s2Step190Add1A s2Step190Add1B [840] [794] s2Step190Add0Work s2Step190Add1Work=some s2Step190F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step190HeadFvAfter s2Step190F4FlagArena s2Step190Add0Arena s2Step190Add0During s2Step190Add1During 825 829
    s2Step190Add0A s2Step190Add0B s2Step190Add1A s2Step190Add1B [840] [794] s2Step190Add0Work s2Step190Add1Work
    (fun q hq => s2Step190F4_owned (List.mem_toFinset.mpr hq)) s2Step190F4_flag s2Step190F4_carry
    s2Step190F4_distinct s2Step190F4_apart s2Step190Add0_checked s2Step190Add1_checked

private theorem s2Step190Front_branch : s2Step190FrontSigmaArena.checkBorrow 1 [829]=some s2Step190HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step190FrontSigmaArena,s2Step190EntryGvAfter,s2Step190EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step190FrontSigmaArena,s2Step190EntryGvAfter,s2Step190EntryGAfter,s2Step190HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step190Front_entry : HmrFrontEntryValid s2Step190EntryFBefore s2Step190FrontBank 175 109 ⟨174,173,110,109⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step190FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step190EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step190EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step190FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step190Front_sigma : s2Step190EntryGvAfter.checkBorrow 1 [825]=some s2Step190FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step190EntryGvAfter,s2Step190EntryGAfter,arenaWires]
  · rfl

private def s2Step190HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190HeadFBefore : Arena := s2Step190HeadGAfter

private def s2Step190HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686],768⟩

private def s2Step190HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824],770⟩

private def s2Step190HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 784],769⟩

private def s2Step190HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835],771⟩

private theorem s2Step190HeadBank_incomingDistinct : ([s2Step190HeadGRow,s2Step190HeadFRow,s2Step190HeadGvRow,s2Step190HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190HeadF_Incoming : rowsOwned s2Step190HeadFBefore [s2Step190HeadFRow,s2Step190HeadGvRow,s2Step190HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step190HeadGRow,s2Step190HeadFRow,s2Step190HeadGvRow,s2Step190HeadFvRow] 1 s2Step190HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step190HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step190HeadBank_outgoingOwned : rowsOwned s2Step190HeadFvAfter [s2Step190HeadGOut,s2Step190HeadFOut,s2Step190HeadGvOut,s2Step190HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step190HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step190HeadF_Outgoing : rowsOwned s2Step190HeadFvAfter [s2Step190HeadFOut,s2Step190HeadGvOut,s2Step190HeadFvOut] :=
  hmrRows_owned_drop s2Step190HeadFvAfter [s2Step190HeadGOut,s2Step190HeadFOut,s2Step190HeadGvOut,s2Step190HeadFvOut] 1 s2Step190HeadBank_outgoingOwned

private theorem s2Step190HeadF_distinct : (s2Step190HeadFRow.sign::s2Step190HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190HeadF_owned : (s2Step190HeadFRow.sign::s2Step190HeadFRow.payload).toFinset⊆s2Step190HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step190HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190HeadF_reserved : s2Step190HeadFBefore.reserve s2Step190HeadFFresh.toFinset=some s2Step190HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step190HeadFFresh,arenaWires]
  · norm_num [s2Step190HeadFBefore,s2Step190HeadGAfter,s2Step190HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step190HeadFAfter,s2Step190HeadFBefore,s2Step190HeadGAfter,s2Step190HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step190HeadF_checked : planRowResizeLog s2Step190HeadFBefore s2Step190HeadFRow 176 s2Step190HeadFFresh=
    some (s2Step190HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 822],768⟩,growRow 768 s2Step190HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step190HeadFBefore s2Step190HeadFAfter s2Step190HeadFRow 176 s2Step190HeadFFresh
    s2Step190HeadF_distinct s2Step190HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step190HeadF_reserved
  have rowEq : WindowRow.mk (s2Step190HeadFRow.payload++s2Step190HeadFFresh) s2Step190HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 822],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step190HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step190HeadFvBefore : Arena := s2Step190HeadGvAfter

private theorem s2Step190HeadFv_Incoming : rowsOwned s2Step190HeadFvBefore [s2Step190HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step190HeadGRow,s2Step190HeadFRow,s2Step190HeadGvRow,s2Step190HeadFvRow] 3 s2Step190HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step190HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step190HeadFv_Outgoing : rowsOwned s2Step190HeadFvAfter [s2Step190HeadFvOut] :=
  hmrRows_owned_drop s2Step190HeadFvAfter [s2Step190HeadGOut,s2Step190HeadFOut,s2Step190HeadGvOut,s2Step190HeadFvOut] 3 s2Step190HeadBank_outgoingOwned

private theorem s2Step190HeadFv_distinct : (s2Step190HeadFvRow.sign::s2Step190HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190HeadFv_owned : (s2Step190HeadFvRow.sign::s2Step190HeadFvRow.payload).toFinset⊆s2Step190HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step190HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190HeadFv_reserved : s2Step190HeadFvBefore.reserve s2Step190HeadFvFresh.toFinset=some s2Step190HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step190HeadFvFresh,arenaWires]
  · norm_num [s2Step190HeadFvBefore,s2Step190HeadGvAfter,s2Step190HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step190HeadFvAfter,s2Step190HeadFvBefore,s2Step190HeadGvAfter,s2Step190HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step190HeadFv_checked : planRowResizeLog s2Step190HeadFvBefore s2Step190HeadFvRow 110 s2Step190HeadFvFresh=
    some (s2Step190HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799],770⟩,growRow 770 s2Step190HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step190HeadFvBefore s2Step190HeadFvAfter s2Step190HeadFvRow 110 s2Step190HeadFvFresh
    s2Step190HeadFv_distinct s2Step190HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step190HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step190HeadFvRow.payload++s2Step190HeadFvFresh) s2Step190HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step190HeadG_Incoming : rowsOwned s2Step190HeadGBefore [s2Step190HeadGRow,s2Step190HeadFRow,s2Step190HeadGvRow,s2Step190HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step190HeadGRow,s2Step190HeadFRow,s2Step190HeadGvRow,s2Step190HeadFvRow] 0 s2Step190HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step190HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step190HeadG_Outgoing : rowsOwned s2Step190HeadFvAfter [s2Step190HeadGOut,s2Step190HeadFOut,s2Step190HeadGvOut,s2Step190HeadFvOut] :=
  hmrRows_owned_drop s2Step190HeadFvAfter [s2Step190HeadGOut,s2Step190HeadFOut,s2Step190HeadGvOut,s2Step190HeadFvOut] 0 s2Step190HeadBank_outgoingOwned

private theorem s2Step190HeadG_distinct : (s2Step190HeadGRow.sign::s2Step190HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190HeadG_owned : (s2Step190HeadGRow.sign::s2Step190HeadGRow.payload).toFinset⊆s2Step190HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step190HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190HeadG_reserved : s2Step190HeadGBefore.reserve s2Step190HeadGFresh.toFinset=some s2Step190HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step190HeadGFresh,arenaWires]
  · norm_num [s2Step190HeadGBefore,s2Step190HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step190HeadGAfter,s2Step190HeadGBefore,s2Step190HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step190HeadG_checked : planRowResizeLog s2Step190HeadGBefore s2Step190HeadGRow 176 s2Step190HeadGFresh=
    some (s2Step190HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 784, 807],769⟩,growRow 769 s2Step190HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step190HeadGBefore s2Step190HeadGAfter s2Step190HeadGRow 176 s2Step190HeadGFresh
    s2Step190HeadG_distinct s2Step190HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step190HeadG_reserved
  have rowEq : WindowRow.mk (s2Step190HeadGRow.payload++s2Step190HeadGFresh) s2Step190HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 784, 807],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step190HeadGvBefore : Arena := s2Step190HeadFAfter

private theorem s2Step190HeadGv_Incoming : rowsOwned s2Step190HeadGvBefore [s2Step190HeadGvRow,s2Step190HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step190HeadGRow,s2Step190HeadFRow,s2Step190HeadGvRow,s2Step190HeadFvRow] 2 s2Step190HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step190HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step190HeadGv_Outgoing : rowsOwned s2Step190HeadFvAfter [s2Step190HeadGvOut,s2Step190HeadFvOut] :=
  hmrRows_owned_drop s2Step190HeadFvAfter [s2Step190HeadGOut,s2Step190HeadFOut,s2Step190HeadGvOut,s2Step190HeadFvOut] 2 s2Step190HeadBank_outgoingOwned

private theorem s2Step190HeadGv_distinct : (s2Step190HeadGvRow.sign::s2Step190HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step190HeadGv_owned : (s2Step190HeadGvRow.sign::s2Step190HeadGvRow.payload).toFinset⊆s2Step190HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step190HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step190HeadGv_reserved : s2Step190HeadGvBefore.reserve s2Step190HeadGvFresh.toFinset=some s2Step190HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step190HeadGvFresh,arenaWires]
  · norm_num [s2Step190HeadGvBefore,s2Step190HeadFAfter,s2Step190HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step190HeadGvAfter,s2Step190HeadGvBefore,s2Step190HeadFAfter,s2Step190HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step190HeadGv_checked : planRowResizeLog s2Step190HeadGvBefore s2Step190HeadGvRow 110 s2Step190HeadGvFresh=
    some (s2Step190HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 803],771⟩,growRow 771 s2Step190HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step190HeadGvBefore s2Step190HeadGvAfter s2Step190HeadGvRow 110 s2Step190HeadGvFresh
    s2Step190HeadGv_distinct s2Step190HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step190HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step190HeadGvRow.payload++s2Step190HeadGvFresh) s2Step190HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 803],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step190HeadBank_rows : planWindowRowsLog s2Step190HeadGBefore [(s2Step190HeadGRow,176),(s2Step190HeadFRow,176),(s2Step190HeadGvRow,110),(s2Step190HeadFvRow,110)] [s2Step190HeadGFresh,s2Step190HeadFFresh,s2Step190HeadGvFresh,s2Step190HeadFvFresh]=
    some (s2Step190HeadFvAfter,[s2Step190HeadGOut,s2Step190HeadFOut,s2Step190HeadGvOut,s2Step190HeadFvOut],(growRow 769 s2Step190HeadGFresh ++ (growRow 768 s2Step190HeadFFresh ++ (growRow 771 s2Step190HeadGvFresh ++ (growRow 770 s2Step190HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step190HeadFvAfter [] []=some (s2Step190HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step190HeadFvBefore s2Step190HeadFvAfter s2Step190HeadFvAfter
    s2Step190HeadFvRow s2Step190HeadFvOut 110 s2Step190HeadFvFresh [] [] []
    (growRow 770 s2Step190HeadFvFresh) ([]) s2Step190HeadFv_Incoming s2Step190HeadFv_checked h4 s2Step190HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step190HeadGvBefore s2Step190HeadGvAfter s2Step190HeadFvAfter
    s2Step190HeadGvRow s2Step190HeadGvOut 110 s2Step190HeadGvFresh [(s2Step190HeadFvRow,110)] [s2Step190HeadFvFresh] [s2Step190HeadFvOut]
    (growRow 771 s2Step190HeadGvFresh) ((growRow 770 s2Step190HeadFvFresh ++ [])) s2Step190HeadGv_Incoming s2Step190HeadGv_checked h3 s2Step190HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step190HeadFBefore s2Step190HeadFAfter s2Step190HeadFvAfter
    s2Step190HeadFRow s2Step190HeadFOut 176 s2Step190HeadFFresh [(s2Step190HeadGvRow,110),(s2Step190HeadFvRow,110)] [s2Step190HeadGvFresh,s2Step190HeadFvFresh] [s2Step190HeadGvOut,s2Step190HeadFvOut]
    (growRow 768 s2Step190HeadFFresh) ((growRow 771 s2Step190HeadGvFresh ++ (growRow 770 s2Step190HeadFvFresh ++ []))) s2Step190HeadF_Incoming s2Step190HeadF_checked h2 s2Step190HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step190HeadGBefore s2Step190HeadGAfter s2Step190HeadFvAfter
    s2Step190HeadGRow s2Step190HeadGOut 176 s2Step190HeadGFresh [(s2Step190HeadFRow,176),(s2Step190HeadGvRow,110),(s2Step190HeadFvRow,110)] [s2Step190HeadFFresh,s2Step190HeadGvFresh,s2Step190HeadFvFresh] [s2Step190HeadFOut,s2Step190HeadGvOut,s2Step190HeadFvOut]
    (growRow 769 s2Step190HeadGFresh) ((growRow 768 s2Step190HeadFFresh ++ (growRow 771 s2Step190HeadGvFresh ++ (growRow 770 s2Step190HeadFvFresh ++ [])))) s2Step190HeadG_Incoming s2Step190HeadG_checked h1 s2Step190HeadG_Outgoing
  exact h0

private theorem s2Step190HeadBank_checked : compileHmrBankResizeLog .headroom s2Step190HeadGBefore ⟨s2Step190HeadFRow,s2Step190HeadGRow,s2Step190HeadFvRow,s2Step190HeadGvRow⟩ ⟨176,176,110,110⟩ [s2Step190HeadGFresh,s2Step190HeadFFresh,s2Step190HeadGvFresh,s2Step190HeadFvFresh]=
    some (s2Step190HeadFvAfter,⟨s2Step190HeadFOut,s2Step190HeadGOut,s2Step190HeadFvOut,s2Step190HeadGvOut⟩,(growRow 769 s2Step190HeadGFresh ++ (growRow 768 s2Step190HeadFFresh ++ (growRow 771 s2Step190HeadGvFresh ++ (growRow 770 s2Step190HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step190HeadBank_rows]
  rfl

private theorem s2Step190Front_checked : compileHmrSourceFrontLog s2Step190EntryFBefore s2Step190FrontBank 175 109 ⟨174,173,110,109⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step190FrontLog=some s2Step190FrontPlan := by
  have pairEq : s2Step190FrontPair=⟨s2Step190HeadFRow,s2Step190HeadGRow,s2Step190HeadFvRow,s2Step190HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step190FrontHead=⟨s2Step190ExitFRow,s2Step190ExitGRow,s2Step190ExitFvRow,s2Step190ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step190Add0A=s2Step190FrontHead.f.wires := by decide +kernel
  have gEq : s2Step190Add0B=s2Step190FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step190Add1A=s2Step190FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step190Add1B=s2Step190FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step190EntryFBefore s2Step190FrontBank 175 109 ⟨174,173,110,109⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step190FrontLog s2Step190FrontPlan
  · exact s2Step190Front_entry
  · exact s2Step190EntryBank_checked
  · exact s2Step190Front_sigma
  · rfl
  · exact s2Step190Front_branch
  · rfl
  · simpa only [s2Step190FrontPlan,pairEq] using s2Step190HeadBank_checked
  · simpa only [s2Step190FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step190F4_checked
  · exact s2Step190Counter_checked
  · rfl
  · simpa only [s2Step190FrontPlan,headEq] using s2Step190ExitBank_checked

private theorem s2Step190Complete_explicit_checked : compileHmrEarlyStepLog s2Step190EntryFBefore s2Step190FrontBank 175 109 ⟨174,173,110,109⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step190CompleteLog=some s2Step190CompletePlan := by
  let Q := s2Step190EarlyControlPlan
  have hq := s2Step190EarlyControl_plan_checked
  have fv1 : s2Step190CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step190CompleteOut.fv.payload[2]?.getD s2Step190CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step190CompleteOut.fv.payload[3]?.getD s2Step190CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step190CompleteOut.fv.payload[4]?.getD s2Step190CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step190EntryFBefore s2Step190EarlyControlArena s2Step190FrontBank 175 109 ⟨174,173,110,109⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step190CompleteLog s2Step190FrontPlan Q
    s2Step190Front_checked s2Step190Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step190Complete_owned s2Step190Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step190EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 s2Step190CompleteOut.fv.second (s2Step190CompleteOut.fv.payload[2]?.getD s2Step190CompleteOut.fv.sign) (s2Step190CompleteOut.fv.payload[3]?.getD s2Step190CompleteOut.fv.sign) (s2Step190CompleteOut.fv.payload[4]?.getD s2Step190CompleteOut.fv.sign) 829 43 s2Step190EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep190Arena : Arena := s2Step190EntryFBefore
def s2PrivateStep190Bank : WindowBank := s2Step190FrontBank
def s2PrivateStep190Spec : HmrSourceWalkStepLog := ⟨175,109,⟨174,173,110,109⟩,43,.early s2Step190CompleteLog⟩
def s2PrivateStep190Plan : HmrSourceStepPlan := .early s2Step190CompletePlan
theorem s2PrivateStep190_source : s2PrivateStep190Spec=s2ObservedLogs176[14] := rfl
theorem s2PrivateStep190_checked : compileHmrSourceStepLog s2PrivateStep190Arena s2PrivateStep190Bank
    s2PrivateStep190Spec.fgWidth s2PrivateStep190Spec.vWidth s2PrivateStep190Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]
    6 498 190 s2PrivateStep190Spec.need none s2PrivateStep190Spec.log=some s2PrivateStep190Plan := by
  change compileHmrSourceStepLog s2Step190EntryFBefore s2Step190FrontBank 175 109 ⟨174,173,110,109⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 6 498 190 43 none (.early s2Step190CompleteLog)=some (.early s2Step190CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 190<498)]
  rw [s2Step190Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
