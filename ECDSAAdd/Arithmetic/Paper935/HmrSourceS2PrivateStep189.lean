import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep187
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

private def s2Step189CompleteMoves : List (Wire × Wire) := [(829,174)]

private def s2Step189EarlyControlLog : HmrEarlyControlLog := ⟨[829, 807, 822, 803, 799],[840],[794],[867, 877, 879, 882, 885, 890],[]⟩

private def s2Step189FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [835]],[[799], [803], [807], [822]],[[], [], [], []]⟩,[825],[784],[840],[794],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[840, 794, 867, 877]⟩

private def s2Step189CompleteLog : HmrEarlyStepLog := ⟨s2Step189FrontLog,s2Step189CompleteMoves,s2Step189EarlyControlLog⟩

private def s2Step189ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686],768⟩

private def s2Step189ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824],770⟩

private def s2Step189ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173],769⟩

private def s2Step189ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835],771⟩

private def s2Step189FrontOut : WindowBank := ⟨s2Step189ExitFOut,s2Step189ExitGOut,s2Step189ExitFvOut,s2Step189ExitGvOut⟩

private def s2Step189CompleteOut : WindowBank := s2Step189FrontOut.repacked s2Step189CompleteMoves

private def s2Step189EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step189EarlyControlPositiveArena,[840],s2Step189EarlyControlEqualityArena,[794],⟨⟨825,false⟩,[⟨⟨840,false⟩,794⟩]⟩⟩

private def s2Step189EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step189EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step189EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,829⟩,⟨⟨774,false⟩,807⟩,⟨⟨775,false⟩,822⟩,⟨⟨776,false⟩,803⟩,⟨⟨777,false⟩,799⟩]⟩

private def s2Step189EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step189EarlyControlZeroArena,s2Step189EarlyControlZeroPlan,s2Step189EarlyControlClassPlan,s2Step189EarlyControlFlagArena,s2Step189EarlyControlFittedArena,s2Step189EarlyControlHistoryArena,s2Step189EarlyControlSigmaArena,s2Step189EarlyControlOutputArena,s2Step189EarlyControlLog⟩

private def s2Step189CounterWork : List Wire := [840, 794, 867, 877]

private theorem s2Step189Counter_bounded : s2Step189CounterWork.toFinset⊆arenaWires := by norm_num [s2Step189CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step189HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189CounterDuring : Arena := ⟨s2Step189HeadFvAfter.live∪s2Step189CounterWork.toFinset,Finset.union_subset s2Step189HeadFvAfter.bounded s2Step189Counter_bounded⟩

private def s2Step189EntryFFresh : List Wire := []

private def s2Step189EntryFvFresh : List Wire := []

private def s2Step189EntryGFresh : List Wire := []

private def s2Step189EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189EntryGvFresh : List Wire := [835]

private def s2Step189ExitFExtra : List Wire := [803]

private def s2Step189ExitFvExtra : List Wire := [822]

private def s2Step189ExitGExtra : List Wire := [174, 799]

private def s2Step189ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189ExitGvExtra : List Wire := [807]

private def s2Step189Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189Add0Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step189Add0_bounded : s2Step189Add0Work.toFinset⊆arenaWires := by
  have h : s2Step189Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step189Add0During : Arena := ⟨s2Step189Add0Arena.live∪s2Step189Add0Work.toFinset,Finset.union_subset s2Step189Add0Arena.bounded s2Step189Add0_bounded⟩

private def s2Step189Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189Add1Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step189Add1_bounded : s2Step189Add1Work.toFinset⊆arenaWires := by
  have h : s2Step189Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step189Add1During : Arena := ⟨s2Step189Add1Arena.live∪s2Step189Add1Work.toFinset,Finset.union_subset s2Step189Add1Arena.bounded s2Step189Add1_bounded⟩

private def s2Step189F4FlagArena : Arena := ⟨s2Step189HeadFvAfter.live∪{840},Finset.union_subset s2Step189HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step189F4Plan : HmrHybridF4Plan := ⟨s2Step189F4FlagArena,[840],s2Step189Add0Arena,[794],s2Step189Add0During,s2Step189Add0Work,s2Step189Add1During,s2Step189Add1Work⟩

private def s2Step189HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 803],768⟩

private def s2Step189HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 822],770⟩

private def s2Step189HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 799],769⟩

private def s2Step189HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 807],771⟩

private def s2Step189FrontHead : WindowBank := ⟨s2Step189HeadFOut,s2Step189HeadGOut,s2Step189HeadFvOut,s2Step189HeadGvOut⟩

private def s2Step189EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686],768⟩

private def s2Step189EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824],770⟩

private def s2Step189EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174],769⟩

private def s2Step189EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835],771⟩

private def s2Step189FrontPair : WindowBank := ⟨s2Step189EntryFOut,s2Step189EntryGOut,s2Step189EntryFvOut,s2Step189EntryGvOut⟩

private def s2Step189FrontSigmaArena : Arena := ⟨s2Step189EntryGvAfter.live∪{825},Finset.union_subset s2Step189EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step189HeadFFresh : List Wire := [803]

private def s2Step189HeadFvFresh : List Wire := [822]

private def s2Step189HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189HeadGFresh : List Wire := [799]

private def s2Step189HeadGvFresh : List Wire := [807]

private def s2Step189FrontPlan : HmrSourceFront := ⟨s2Step189EntryGvAfter,s2Step189FrontPair,(growRow 768 s2Step189EntryFFresh ++ (growRow 769 s2Step189EntryGFresh ++ (growRow 770 s2Step189EntryFvFresh ++ (growRow 771 s2Step189EntryGvFresh ++ [])))),s2Step189FrontSigmaArena,[825],s2Step189HeadGBefore,[784],
  s2Step189HeadFvAfter,s2Step189FrontHead,(growRow 769 s2Step189HeadGFresh ++ (growRow 768 s2Step189HeadFFresh ++ (growRow 771 s2Step189HeadGvFresh ++ (growRow 770 s2Step189HeadFvFresh ++ [])))),s2Step189F4Plan,s2Step189CounterDuring,s2Step189CounterWork,s2Step189ExitGvAfter,s2Step189FrontOut,(shrinkRow 769 s2Step189ExitGExtra ++ (shrinkRow 768 s2Step189ExitFExtra ++ (shrinkRow 770 s2Step189ExitFvExtra ++ (shrinkRow 771 s2Step189ExitGvExtra ++ []))))⟩

private def s2Step189CompletePlan : HmrEarlyStepPlan := ⟨s2Step189FrontPlan,s2Step189EarlyControlArena,s2Step189EarlyControlPlan,s2Step189CompleteMoves⟩

private theorem s2Step189Complete_apart : List.Disjoint (s2Step189CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [825, 784, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] := by
  have nd : ((s2Step189CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[825, 784, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step189Complete_owned : (s2Step189CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step189EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step189EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step189CompleteMoveArena : Arena := ⟨s2Step189ExitGvAfter.live∪{174},Finset.union_subset s2Step189ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step189Complete_repack : s2Step189ExitGvAfter.checkRepack s2Step189CompleteMoves=some s2Step189EarlyControlArena := by
  have owned : 829∈s2Step189ExitGvAfter.live := by norm_num [s2Step189ExitGvAfter,arenaWires]
  have reserve : s2Step189ExitGvAfter.reserve {174}=some s2Step189CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step189ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step189CompleteMoveArena.retireSet {829}=s2Step189EarlyControlArena := by
    unfold Arena.retireSet s2Step189EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step189CompleteMoveArena,s2Step189ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step189CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step189CompleteMoveArena.retireSet {829}).checkRepack []=some s2Step189EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step189EarlyControl_branchOwned : ([784] : List Wire).toFinset⊆s2Step189EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step189EarlyControlSigmaArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189EarlyControl_branch : compileHmrBranchRetirement s2Step189EarlyControlSigmaArena 784=some s2Step189EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step189EarlyControl_branchOwned
  · ext q
    simp [s2Step189EarlyControlOutputArena,s2Step189EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step189EarlyControl_classEqualityBorrow : s2Step189EarlyControlPositiveArena.checkBorrow (([825, 840] : List Wire).length-1) s2Step189EarlyControlLog.classWork=some s2Step189EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step189EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step189EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step189EarlyControlEqualityArena,s2Step189EarlyControlPositiveArena,s2Step189EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step189EarlyControl_classEqualityOwned : ([825, 840] : List Wire).toFinset⊆s2Step189EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step189EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189EarlyControl_classEquality : compileHmrEqualityLog s2Step189EarlyControlPositiveArena [825, 840] 0 s2Step189EarlyControlLog.classWork=some (s2Step189EarlyControlEqualityArena,s2Step189EarlyControlLog.classWork,s2Step189EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step189EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step189EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step189EarlyControl_classOwned : ([777, 799, 825] : List Wire).toFinset⊆s2Step189EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step189EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189EarlyControl_positiveBorrow : s2Step189EarlyControlZeroArena.checkBorrow (1) s2Step189EarlyControlLog.positiveWork=some s2Step189EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step189EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step189EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step189EarlyControlPositiveArena,s2Step189EarlyControlZeroArena,s2Step189EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step189EarlyControl_class : compileHmrSourceClassLog s2Step189EarlyControlZeroArena false 777 s2Step189EarlyControlZeroPlan.top 0 825 s2Step189EarlyControlLog.positiveWork s2Step189EarlyControlLog.classWork=some s2Step189EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step189EarlyControlClassPlan s2Step189EarlyControlZeroArena false 777 s2Step189EarlyControlZeroPlan.top 0 825
  constructor
  · decide +kernel
  · exact s2Step189EarlyControl_classOwned
  · exact s2Step189EarlyControl_positiveBorrow
  · exact s2Step189EarlyControl_classEquality

private theorem s2Step189EarlyControl_entryRecordOwned : ([784, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step189EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step189EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189EarlyControl_entrySigmaOwned : ([825, 254] : List Wire).toFinset⊆s2Step189EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step189EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189EarlyControl_fitBorrow : s2Step189EarlyControlFlagArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step189EarlyControlLog.recordFresh=some s2Step189EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step189EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step189EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
      decide +kernel
    · ext q
      simp [s2Step189EarlyControlFittedArena,s2Step189EarlyControlFlagArena,s2Step189EarlyControlLog,arenaWires]

private theorem s2Step189EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step189EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step189EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step189EarlyControl_fit : compileHmrRecordGrowLog s2Step189EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step189EarlyControlLog.recordFresh=some s2Step189EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step189EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step189EarlyControl_fitBorrow

private theorem s2Step189EarlyControl_flagsBorrow : s2Step189EarlyControlEqualityArena.checkBorrow (6) s2Step189EarlyControlLog.flagWork=some s2Step189EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step189EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step189EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step189EarlyControlFlagArena,s2Step189EarlyControlEqualityArena,s2Step189EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step189EarlyControl_flagsOwned : ([794, 253, 252, 251] : List Wire).toFinset⊆s2Step189EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step189EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189EarlyControl_flags : compileHmrFlagsLog s2Step189EarlyControlClassPlan.equalityArena s2Step189EarlyControlClassPlan.equality.top 253 252 251 s2Step189EarlyControlLog.flagWork=some s2Step189EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step189EarlyControl_flagsOwned⟩
  · exact s2Step189EarlyControl_flagsBorrow

private theorem s2Step189EarlyControl_historyBorrow : s2Step189EarlyControlArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step189EarlyControlLog.recordFresh=some s2Step189EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step189EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step189EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step189EarlyControlHistoryArena,s2Step189EarlyControlArena,s2Step189EarlyControlLog,arenaWires]

private theorem s2Step189EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step189EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step189EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189EarlyControl_history : compileHmrRecordGrowLog s2Step189EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step189EarlyControlLog.recordFresh=some s2Step189EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step189EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step189EarlyControl_historyBorrow

private theorem s2Step189EarlyControl_sigmaOwned : ([254, 825] : List Wire).toFinset⊆s2Step189EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step189EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189EarlyControl_sigmaReleaseOwned : ([825] : List Wire).toFinset⊆s2Step189EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step189EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189EarlyControl_sigmaRelease : s2Step189EarlyControlHistoryArena.release {825} (fun _ => false)=some s2Step189EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step189EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step189EarlyControlSigmaArena,s2Step189EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step189EarlyControl_sigma : compileHmrSigmaDropLog s2Step189EarlyControlHistoryArena false 0 0 254 825 []=some s2Step189EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step189EarlyControl_sigmaOwned⟩
  · exact s2Step189EarlyControl_sigmaRelease

private theorem s2Step189EarlyControl_zeroBorrow : s2Step189EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step189EarlyControlLog.zeroWork=some s2Step189EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step189EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step189EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step189EarlyControlZeroArena,s2Step189EarlyControlArena,s2Step189EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step189EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step189EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step189EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189EarlyControl_zero : compileHmrEqualityLog s2Step189EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step189EarlyControlLog.zeroWork=some (s2Step189EarlyControlZeroArena,s2Step189EarlyControlLog.zeroWork,s2Step189EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step189EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step189EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step189EarlyControl_logged : s2Step189EarlyControlPlan.Logged s2Step189EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 254 253 252 251 784 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step189EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step189EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step189EarlyControl_zero
  · exact s2Step189EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step189EarlyControl_flags
  · exact s2Step189EarlyControl_fit
  · exact s2Step189EarlyControl_history
  · exact s2Step189EarlyControl_sigma
  · exact s2Step189EarlyControl_branch

private theorem s2Step189EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step189EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 254 253 252 251 784 43 s2Step189EarlyControlLog=some s2Step189EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step189EarlyControlPlan s2Step189EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 254 253 252 251 784 43 s2Step189EarlyControl_logged

private def s2Step189EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686],768⟩

private def s2Step189EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824],770⟩

private def s2Step189EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174],769⟩

private def s2Step189EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802],771⟩

private def s2Step189FrontBank : WindowBank := ⟨s2Step189EntryFRow,s2Step189EntryGRow,s2Step189EntryFvRow,s2Step189EntryGvRow⟩

private def s2Step189Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 803, 768]

private def s2Step189Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 799, 769]

private def s2Step189Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 822, 770]

private def s2Step189Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 807, 771]

private theorem s2Step189Counter_apart : Disjoint s2Step189HeadFvAfter.live s2Step189CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step189HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189Counter_borrowed : s2Step189HeadFvAfter.checkBorrow 4 s2Step189CounterWork=some s2Step189CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step189HeadFvAfter s2Step189CounterDuring s2Step189CounterWork.toFinset s2Step189Counter_bounded s2Step189Counter_apart rfl

private theorem s2Step189Counter_owned : (825::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step189HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step189HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189Counter_checked : compileHmrCounterStepLog s2Step189HeadFvAfter true 825 [772, 773, 774, 775, 776, 777] s2Step189CounterWork=some s2Step189CounterDuring := by
  have owned : ∀q∈825::[772, 773, 774, 775, 776, 777],q∈s2Step189HeadFvAfter.live := fun q hq => s2Step189Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step189Counter_borrowed

private def s2Step189EntryFAfter : Arena := s2Step189EntryFBefore

private theorem s2Step189EntryBank_incomingDistinct : ([s2Step189EntryFRow,s2Step189EntryGRow,s2Step189EntryFvRow,s2Step189EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189EntryF_Incoming : rowsOwned s2Step189EntryFBefore [s2Step189EntryFRow,s2Step189EntryGRow,s2Step189EntryFvRow,s2Step189EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step189EntryFRow,s2Step189EntryGRow,s2Step189EntryFvRow,s2Step189EntryGvRow] 0 s2Step189EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step189EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step189EntryBank_outgoingOwned : rowsOwned s2Step189EntryGvAfter [s2Step189EntryFOut,s2Step189EntryGOut,s2Step189EntryFvOut,s2Step189EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step189EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step189EntryF_Outgoing : rowsOwned s2Step189EntryGvAfter [s2Step189EntryFOut,s2Step189EntryGOut,s2Step189EntryFvOut,s2Step189EntryGvOut] :=
  hmrRows_owned_drop s2Step189EntryGvAfter [s2Step189EntryFOut,s2Step189EntryGOut,s2Step189EntryFvOut,s2Step189EntryGvOut] 0 s2Step189EntryBank_outgoingOwned

private theorem s2Step189EntryF_distinct : (s2Step189EntryFRow.sign::s2Step189EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189EntryF_owned : (s2Step189EntryFRow.sign::s2Step189EntryFRow.payload).toFinset⊆s2Step189EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step189EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189EntryF_reserved : s2Step189EntryFBefore.reserve s2Step189EntryFFresh.toFinset=some s2Step189EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step189EntryFFresh,arenaWires]
  · norm_num [s2Step189EntryFBefore,s2Step189EntryFFresh,arenaWires]
  · simp only [s2Step189EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step189EntryF_checked : planRowResizeLog s2Step189EntryFBefore s2Step189EntryFRow 175 s2Step189EntryFFresh=
    some (s2Step189EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686],768⟩,growRow 768 s2Step189EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step189EntryFBefore s2Step189EntryFAfter s2Step189EntryFRow 175 s2Step189EntryFFresh
    s2Step189EntryF_distinct s2Step189EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step189EntryF_reserved
  have rowEq : WindowRow.mk (s2Step189EntryFRow.payload++s2Step189EntryFFresh) s2Step189EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step189EntryFvAfter : Arena := s2Step189EntryFBefore

private def s2Step189EntryFvBefore : Arena := s2Step189EntryFBefore

private theorem s2Step189EntryFv_Incoming : rowsOwned s2Step189EntryFvBefore [s2Step189EntryFvRow,s2Step189EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step189EntryFRow,s2Step189EntryGRow,s2Step189EntryFvRow,s2Step189EntryGvRow] 2 s2Step189EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step189EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step189EntryFv_Outgoing : rowsOwned s2Step189EntryGvAfter [s2Step189EntryFvOut,s2Step189EntryGvOut] :=
  hmrRows_owned_drop s2Step189EntryGvAfter [s2Step189EntryFOut,s2Step189EntryGOut,s2Step189EntryFvOut,s2Step189EntryGvOut] 2 s2Step189EntryBank_outgoingOwned

private theorem s2Step189EntryFv_distinct : (s2Step189EntryFvRow.sign::s2Step189EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189EntryFv_owned : (s2Step189EntryFvRow.sign::s2Step189EntryFvRow.payload).toFinset⊆s2Step189EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step189EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189EntryFv_reserved : s2Step189EntryFvBefore.reserve s2Step189EntryFvFresh.toFinset=some s2Step189EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step189EntryFvFresh,arenaWires]
  · norm_num [s2Step189EntryFvBefore,s2Step189EntryFBefore,s2Step189EntryFvFresh,arenaWires]
  · simp only [s2Step189EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step189EntryFv_checked : planRowResizeLog s2Step189EntryFvBefore s2Step189EntryFvRow 109 s2Step189EntryFvFresh=
    some (s2Step189EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824],770⟩,growRow 770 s2Step189EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step189EntryFvBefore s2Step189EntryFvAfter s2Step189EntryFvRow 109 s2Step189EntryFvFresh
    s2Step189EntryFv_distinct s2Step189EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step189EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step189EntryFvRow.payload++s2Step189EntryFvFresh) s2Step189EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step189EntryGAfter : Arena := s2Step189EntryFBefore

private def s2Step189EntryGBefore : Arena := s2Step189EntryFBefore

private theorem s2Step189EntryG_Incoming : rowsOwned s2Step189EntryGBefore [s2Step189EntryGRow,s2Step189EntryFvRow,s2Step189EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step189EntryFRow,s2Step189EntryGRow,s2Step189EntryFvRow,s2Step189EntryGvRow] 1 s2Step189EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step189EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step189EntryG_Outgoing : rowsOwned s2Step189EntryGvAfter [s2Step189EntryGOut,s2Step189EntryFvOut,s2Step189EntryGvOut] :=
  hmrRows_owned_drop s2Step189EntryGvAfter [s2Step189EntryFOut,s2Step189EntryGOut,s2Step189EntryFvOut,s2Step189EntryGvOut] 1 s2Step189EntryBank_outgoingOwned

private theorem s2Step189EntryG_distinct : (s2Step189EntryGRow.sign::s2Step189EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189EntryG_owned : (s2Step189EntryGRow.sign::s2Step189EntryGRow.payload).toFinset⊆s2Step189EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step189EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189EntryG_reserved : s2Step189EntryGBefore.reserve s2Step189EntryGFresh.toFinset=some s2Step189EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step189EntryGFresh,arenaWires]
  · norm_num [s2Step189EntryGBefore,s2Step189EntryFBefore,s2Step189EntryGFresh,arenaWires]
  · simp only [s2Step189EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step189EntryG_checked : planRowResizeLog s2Step189EntryGBefore s2Step189EntryGRow 175 s2Step189EntryGFresh=
    some (s2Step189EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174],769⟩,growRow 769 s2Step189EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step189EntryGBefore s2Step189EntryGAfter s2Step189EntryGRow 175 s2Step189EntryGFresh
    s2Step189EntryG_distinct s2Step189EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step189EntryG_reserved
  have rowEq : WindowRow.mk (s2Step189EntryGRow.payload++s2Step189EntryGFresh) s2Step189EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step189EntryGvBefore : Arena := s2Step189EntryFBefore

private theorem s2Step189EntryGv_Incoming : rowsOwned s2Step189EntryGvBefore [s2Step189EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step189EntryFRow,s2Step189EntryGRow,s2Step189EntryFvRow,s2Step189EntryGvRow] 3 s2Step189EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step189EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step189EntryGv_Outgoing : rowsOwned s2Step189EntryGvAfter [s2Step189EntryGvOut] :=
  hmrRows_owned_drop s2Step189EntryGvAfter [s2Step189EntryFOut,s2Step189EntryGOut,s2Step189EntryFvOut,s2Step189EntryGvOut] 3 s2Step189EntryBank_outgoingOwned

private theorem s2Step189EntryGv_distinct : (s2Step189EntryGvRow.sign::s2Step189EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189EntryGv_owned : (s2Step189EntryGvRow.sign::s2Step189EntryGvRow.payload).toFinset⊆s2Step189EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step189EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189EntryGv_reserved : s2Step189EntryGvBefore.reserve s2Step189EntryGvFresh.toFinset=some s2Step189EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step189EntryGvFresh,arenaWires]
  · norm_num [s2Step189EntryGvBefore,s2Step189EntryFBefore,s2Step189EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step189EntryGvAfter,s2Step189EntryGvBefore,s2Step189EntryFBefore,s2Step189EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step189EntryGv_checked : planRowResizeLog s2Step189EntryGvBefore s2Step189EntryGvRow 109 s2Step189EntryGvFresh=
    some (s2Step189EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835],771⟩,growRow 771 s2Step189EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step189EntryGvBefore s2Step189EntryGvAfter s2Step189EntryGvRow 109 s2Step189EntryGvFresh
    s2Step189EntryGv_distinct s2Step189EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step189EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step189EntryGvRow.payload++s2Step189EntryGvFresh) s2Step189EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step189EntryBank_rows : planWindowRowsLog s2Step189EntryFBefore [(s2Step189EntryFRow,175),(s2Step189EntryGRow,175),(s2Step189EntryFvRow,109),(s2Step189EntryGvRow,109)] [s2Step189EntryFFresh,s2Step189EntryGFresh,s2Step189EntryFvFresh,s2Step189EntryGvFresh]=
    some (s2Step189EntryGvAfter,[s2Step189EntryFOut,s2Step189EntryGOut,s2Step189EntryFvOut,s2Step189EntryGvOut],(growRow 768 s2Step189EntryFFresh ++ (growRow 769 s2Step189EntryGFresh ++ (growRow 770 s2Step189EntryFvFresh ++ (growRow 771 s2Step189EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step189EntryGvAfter [] []=some (s2Step189EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step189EntryGvBefore s2Step189EntryGvAfter s2Step189EntryGvAfter
    s2Step189EntryGvRow s2Step189EntryGvOut 109 s2Step189EntryGvFresh [] [] []
    (growRow 771 s2Step189EntryGvFresh) ([]) s2Step189EntryGv_Incoming s2Step189EntryGv_checked h4 s2Step189EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step189EntryFvBefore s2Step189EntryFvAfter s2Step189EntryGvAfter
    s2Step189EntryFvRow s2Step189EntryFvOut 109 s2Step189EntryFvFresh [(s2Step189EntryGvRow,109)] [s2Step189EntryGvFresh] [s2Step189EntryGvOut]
    (growRow 770 s2Step189EntryFvFresh) ((growRow 771 s2Step189EntryGvFresh ++ [])) s2Step189EntryFv_Incoming s2Step189EntryFv_checked h3 s2Step189EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step189EntryGBefore s2Step189EntryGAfter s2Step189EntryGvAfter
    s2Step189EntryGRow s2Step189EntryGOut 175 s2Step189EntryGFresh [(s2Step189EntryFvRow,109),(s2Step189EntryGvRow,109)] [s2Step189EntryFvFresh,s2Step189EntryGvFresh] [s2Step189EntryFvOut,s2Step189EntryGvOut]
    (growRow 769 s2Step189EntryGFresh) ((growRow 770 s2Step189EntryFvFresh ++ (growRow 771 s2Step189EntryGvFresh ++ []))) s2Step189EntryG_Incoming s2Step189EntryG_checked h2 s2Step189EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step189EntryFBefore s2Step189EntryFAfter s2Step189EntryGvAfter
    s2Step189EntryFRow s2Step189EntryFOut 175 s2Step189EntryFFresh [(s2Step189EntryGRow,175),(s2Step189EntryFvRow,109),(s2Step189EntryGvRow,109)] [s2Step189EntryGFresh,s2Step189EntryFvFresh,s2Step189EntryGvFresh] [s2Step189EntryGOut,s2Step189EntryFvOut,s2Step189EntryGvOut]
    (growRow 768 s2Step189EntryFFresh) ((growRow 769 s2Step189EntryGFresh ++ (growRow 770 s2Step189EntryFvFresh ++ (growRow 771 s2Step189EntryGvFresh ++ [])))) s2Step189EntryF_Incoming s2Step189EntryF_checked h1 s2Step189EntryF_Outgoing
  exact h0

private theorem s2Step189EntryBank_checked : compileHmrBankResizeLog .entry s2Step189EntryFBefore ⟨s2Step189EntryFRow,s2Step189EntryGRow,s2Step189EntryFvRow,s2Step189EntryGvRow⟩ ⟨175,175,109,109⟩ [s2Step189EntryFFresh,s2Step189EntryGFresh,s2Step189EntryFvFresh,s2Step189EntryGvFresh]=
    some (s2Step189EntryGvAfter,⟨s2Step189EntryFOut,s2Step189EntryGOut,s2Step189EntryFvOut,s2Step189EntryGvOut⟩,(growRow 768 s2Step189EntryFFresh ++ (growRow 769 s2Step189EntryGFresh ++ (growRow 770 s2Step189EntryFvFresh ++ (growRow 771 s2Step189EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step189EntryBank_rows]
  rfl

private def s2Step189ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189ExitFBefore : Arena := s2Step189ExitGAfter

private def s2Step189ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 803],768⟩

private def s2Step189ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 822],770⟩

private def s2Step189ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 799],769⟩

private def s2Step189ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 807],771⟩

private theorem s2Step189ExitBank_incomingDistinct : ([s2Step189ExitGRow,s2Step189ExitFRow,s2Step189ExitFvRow,s2Step189ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189ExitF_Incoming : rowsOwned s2Step189ExitFBefore [s2Step189ExitFRow,s2Step189ExitFvRow,s2Step189ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step189ExitGRow,s2Step189ExitFRow,s2Step189ExitFvRow,s2Step189ExitGvRow] 1 s2Step189ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step189ExitFBefore (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step189ExitBank_outgoingOwned : rowsOwned s2Step189ExitGvAfter [s2Step189ExitGOut,s2Step189ExitFOut,s2Step189ExitFvOut,s2Step189ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step189ExitGvAfter (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step189ExitF_Outgoing : rowsOwned s2Step189ExitGvAfter [s2Step189ExitFOut,s2Step189ExitFvOut,s2Step189ExitGvOut] :=
  hmrRows_owned_drop s2Step189ExitGvAfter [s2Step189ExitGOut,s2Step189ExitFOut,s2Step189ExitFvOut,s2Step189ExitGvOut] 1 s2Step189ExitBank_outgoingOwned

private theorem s2Step189ExitF_distinct : (s2Step189ExitFRow.sign::s2Step189ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189ExitF_owned : (s2Step189ExitFRow.sign::s2Step189ExitFRow.payload).toFinset⊆s2Step189ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step189ExitFBefore (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189ExitF_retired : s2Step189ExitFBefore.retireSet s2Step189ExitFExtra.toFinset=s2Step189ExitFAfter := by
  unfold Arena.retireSet s2Step189ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step189ExitFBefore,s2Step189ExitGAfter,s2Step189ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step189ExitF_checked : planRowResizeLog s2Step189ExitFBefore s2Step189ExitFRow 175 []=
    some (s2Step189ExitFAfter,s2Step189ExitFOut,shrinkRow 768 s2Step189ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step189ExitFBefore s2Step189ExitFRow 175 s2Step189ExitF_distinct s2Step189ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step189ExitFRow.payload.take 175) s2Step189ExitFRow.sign=s2Step189ExitFOut := by decide +kernel
  have hi : s2Step189ExitFRow.payload.drop 175=s2Step189ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step189ExitF_retired] at result
  exact result

private def s2Step189ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189ExitFvBefore : Arena := s2Step189ExitFAfter

private theorem s2Step189ExitFv_Incoming : rowsOwned s2Step189ExitFvBefore [s2Step189ExitFvRow,s2Step189ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step189ExitGRow,s2Step189ExitFRow,s2Step189ExitFvRow,s2Step189ExitGvRow] 2 s2Step189ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step189ExitFvBefore (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step189ExitFv_Outgoing : rowsOwned s2Step189ExitGvAfter [s2Step189ExitFvOut,s2Step189ExitGvOut] :=
  hmrRows_owned_drop s2Step189ExitGvAfter [s2Step189ExitGOut,s2Step189ExitFOut,s2Step189ExitFvOut,s2Step189ExitGvOut] 2 s2Step189ExitBank_outgoingOwned

private theorem s2Step189ExitFv_distinct : (s2Step189ExitFvRow.sign::s2Step189ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189ExitFv_owned : (s2Step189ExitFvRow.sign::s2Step189ExitFvRow.payload).toFinset⊆s2Step189ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step189ExitFvBefore (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189ExitFv_retired : s2Step189ExitFvBefore.retireSet s2Step189ExitFvExtra.toFinset=s2Step189ExitFvAfter := by
  unfold Arena.retireSet s2Step189ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step189ExitFvBefore,s2Step189ExitFAfter,s2Step189ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step189ExitFv_checked : planRowResizeLog s2Step189ExitFvBefore s2Step189ExitFvRow 109 []=
    some (s2Step189ExitFvAfter,s2Step189ExitFvOut,shrinkRow 770 s2Step189ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step189ExitFvBefore s2Step189ExitFvRow 109 s2Step189ExitFv_distinct s2Step189ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step189ExitFvRow.payload.take 109) s2Step189ExitFvRow.sign=s2Step189ExitFvOut := by decide +kernel
  have hi : s2Step189ExitFvRow.payload.drop 109=s2Step189ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step189ExitFv_retired] at result
  exact result

private def s2Step189ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step189ExitG_Incoming : rowsOwned s2Step189ExitGBefore [s2Step189ExitGRow,s2Step189ExitFRow,s2Step189ExitFvRow,s2Step189ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step189ExitGRow,s2Step189ExitFRow,s2Step189ExitFvRow,s2Step189ExitGvRow] 0 s2Step189ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step189ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step189ExitG_Outgoing : rowsOwned s2Step189ExitGvAfter [s2Step189ExitGOut,s2Step189ExitFOut,s2Step189ExitFvOut,s2Step189ExitGvOut] :=
  hmrRows_owned_drop s2Step189ExitGvAfter [s2Step189ExitGOut,s2Step189ExitFOut,s2Step189ExitFvOut,s2Step189ExitGvOut] 0 s2Step189ExitBank_outgoingOwned

private theorem s2Step189ExitG_distinct : (s2Step189ExitGRow.sign::s2Step189ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189ExitG_owned : (s2Step189ExitGRow.sign::s2Step189ExitGRow.payload).toFinset⊆s2Step189ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step189ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189ExitG_retired : s2Step189ExitGBefore.retireSet s2Step189ExitGExtra.toFinset=s2Step189ExitGAfter := by
  unfold Arena.retireSet s2Step189ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step189ExitGBefore,s2Step189ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step189ExitG_checked : planRowResizeLog s2Step189ExitGBefore s2Step189ExitGRow 174 []=
    some (s2Step189ExitGAfter,s2Step189ExitGOut,shrinkRow 769 s2Step189ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step189ExitGBefore s2Step189ExitGRow 174 s2Step189ExitG_distinct s2Step189ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step189ExitGRow.payload.take 174) s2Step189ExitGRow.sign=s2Step189ExitGOut := by decide +kernel
  have hi : s2Step189ExitGRow.payload.drop 174=s2Step189ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step189ExitG_retired] at result
  exact result

private def s2Step189ExitGvBefore : Arena := s2Step189ExitFvAfter

private theorem s2Step189ExitGv_Incoming : rowsOwned s2Step189ExitGvBefore [s2Step189ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step189ExitGRow,s2Step189ExitFRow,s2Step189ExitFvRow,s2Step189ExitGvRow] 3 s2Step189ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step189ExitGvBefore (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step189ExitGv_Outgoing : rowsOwned s2Step189ExitGvAfter [s2Step189ExitGvOut] :=
  hmrRows_owned_drop s2Step189ExitGvAfter [s2Step189ExitGOut,s2Step189ExitFOut,s2Step189ExitFvOut,s2Step189ExitGvOut] 3 s2Step189ExitBank_outgoingOwned

private theorem s2Step189ExitGv_distinct : (s2Step189ExitGvRow.sign::s2Step189ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189ExitGv_owned : (s2Step189ExitGvRow.sign::s2Step189ExitGvRow.payload).toFinset⊆s2Step189ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step189ExitGvBefore (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189ExitGv_retired : s2Step189ExitGvBefore.retireSet s2Step189ExitGvExtra.toFinset=s2Step189ExitGvAfter := by
  unfold Arena.retireSet s2Step189ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step189ExitGvBefore,s2Step189ExitFvAfter,s2Step189ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step189ExitGv_checked : planRowResizeLog s2Step189ExitGvBefore s2Step189ExitGvRow 109 []=
    some (s2Step189ExitGvAfter,s2Step189ExitGvOut,shrinkRow 771 s2Step189ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step189ExitGvBefore s2Step189ExitGvRow 109 s2Step189ExitGv_distinct s2Step189ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step189ExitGvRow.payload.take 109) s2Step189ExitGvRow.sign=s2Step189ExitGvOut := by decide +kernel
  have hi : s2Step189ExitGvRow.payload.drop 109=s2Step189ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step189ExitGv_retired] at result
  exact result

private theorem s2Step189ExitBank_rows : planWindowRowsLog s2Step189ExitGBefore [(s2Step189ExitGRow,174),(s2Step189ExitFRow,175),(s2Step189ExitFvRow,109),(s2Step189ExitGvRow,109)] [[],[],[],[]]=
    some (s2Step189ExitGvAfter,[s2Step189ExitGOut,s2Step189ExitFOut,s2Step189ExitFvOut,s2Step189ExitGvOut],(shrinkRow 769 s2Step189ExitGExtra ++ (shrinkRow 768 s2Step189ExitFExtra ++ (shrinkRow 770 s2Step189ExitFvExtra ++ (shrinkRow 771 s2Step189ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step189ExitGvAfter [] []=some (s2Step189ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step189ExitGvBefore s2Step189ExitGvAfter s2Step189ExitGvAfter
    s2Step189ExitGvRow s2Step189ExitGvOut 109 [] [] [] []
    (shrinkRow 771 s2Step189ExitGvExtra) ([]) s2Step189ExitGv_Incoming s2Step189ExitGv_checked h4 s2Step189ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step189ExitFvBefore s2Step189ExitFvAfter s2Step189ExitGvAfter
    s2Step189ExitFvRow s2Step189ExitFvOut 109 [] [(s2Step189ExitGvRow,109)] [[]] [s2Step189ExitGvOut]
    (shrinkRow 770 s2Step189ExitFvExtra) ((shrinkRow 771 s2Step189ExitGvExtra ++ [])) s2Step189ExitFv_Incoming s2Step189ExitFv_checked h3 s2Step189ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step189ExitFBefore s2Step189ExitFAfter s2Step189ExitGvAfter
    s2Step189ExitFRow s2Step189ExitFOut 175 [] [(s2Step189ExitFvRow,109),(s2Step189ExitGvRow,109)] [[],[]] [s2Step189ExitFvOut,s2Step189ExitGvOut]
    (shrinkRow 768 s2Step189ExitFExtra) ((shrinkRow 770 s2Step189ExitFvExtra ++ (shrinkRow 771 s2Step189ExitGvExtra ++ []))) s2Step189ExitF_Incoming s2Step189ExitF_checked h2 s2Step189ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step189ExitGBefore s2Step189ExitGAfter s2Step189ExitGvAfter
    s2Step189ExitGRow s2Step189ExitGOut 174 [] [(s2Step189ExitFRow,175),(s2Step189ExitFvRow,109),(s2Step189ExitGvRow,109)] [[],[],[]] [s2Step189ExitFOut,s2Step189ExitFvOut,s2Step189ExitGvOut]
    (shrinkRow 769 s2Step189ExitGExtra) ((shrinkRow 768 s2Step189ExitFExtra ++ (shrinkRow 770 s2Step189ExitFvExtra ++ (shrinkRow 771 s2Step189ExitGvExtra ++ [])))) s2Step189ExitG_Incoming s2Step189ExitG_checked h1 s2Step189ExitG_Outgoing
  exact h0

private theorem s2Step189ExitBank_checked : compileHmrBankResizeLog .exit s2Step189ExitGBefore ⟨s2Step189ExitFRow,s2Step189ExitGRow,s2Step189ExitFvRow,s2Step189ExitGvRow⟩ ⟨175,174,109,109⟩ [[],[],[],[]]=
    some (s2Step189ExitGvAfter,⟨s2Step189ExitFOut,s2Step189ExitGOut,s2Step189ExitFvOut,s2Step189ExitGvOut⟩,(shrinkRow 769 s2Step189ExitGExtra ++ (shrinkRow 768 s2Step189ExitFExtra ++ (shrinkRow 770 s2Step189ExitFvExtra ++ (shrinkRow 771 s2Step189ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step189ExitBank_rows]
  rfl

private theorem s2Step189Add0_apart : Disjoint s2Step189Add0Arena.live s2Step189Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step189Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189Add0_card : s2Step189Add0Arena.live.card=885 := by
  decide +kernel

private theorem s2Step189Add0_borrowed : s2Step189Add0Arena.checkBorrow (hmrHybridCount s2Step189Add0Arena s2Step189Add0B.length) s2Step189Add0Work=some s2Step189Add0During := by
  have len : s2Step189Add0Work.length=hmrHybridCount s2Step189Add0Arena s2Step189Add0B.length := by
    rw [hmrHybridCount,s2Step189Add0_card]
    decide +kernel
  have nd : s2Step189Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step189Add0Arena s2Step189Add0During s2Step189Add0Work.toFinset s2Step189Add0_bounded s2Step189Add0_apart rfl

private theorem s2Step189Add0_distinct : (840::784::794::(s2Step189Add0A++s2Step189Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189Add0_owned : (840::784::794::(s2Step189Add0A++s2Step189Add0B)).toFinset⊆s2Step189Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step189Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189Add0_checked : compileHmrHybridCinLog s2Step189Add0Arena 784 840 794 s2Step189Add0A s2Step189Add0B s2Step189Add0Work=some s2Step189Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step189Add0Arena s2Step189Add0During 784 840 794 s2Step189Add0A s2Step189Add0B s2Step189Add0Work
    (by decide +kernel) (by decide +kernel) s2Step189Add0_distinct
    (fun q hq => s2Step189Add0_owned (List.mem_toFinset.mpr hq)) s2Step189Add0_borrowed

private theorem s2Step189Add1_apart : Disjoint s2Step189Add1Arena.live s2Step189Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step189Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189Add1_card : s2Step189Add1Arena.live.card=885 := by
  decide +kernel

private theorem s2Step189Add1_borrowed : s2Step189Add1Arena.checkBorrow (hmrHybridCount s2Step189Add1Arena s2Step189Add1B.length) s2Step189Add1Work=some s2Step189Add1During := by
  have len : s2Step189Add1Work.length=hmrHybridCount s2Step189Add1Arena s2Step189Add1B.length := by
    rw [hmrHybridCount,s2Step189Add1_card]
    decide +kernel
  have nd : s2Step189Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step189Add1Arena s2Step189Add1During s2Step189Add1Work.toFinset s2Step189Add1_bounded s2Step189Add1_apart rfl

private theorem s2Step189Add1_distinct : (840::784::794::(s2Step189Add1A++s2Step189Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189Add1_owned : (840::784::794::(s2Step189Add1A++s2Step189Add1B)).toFinset⊆s2Step189Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step189Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189Add1_checked : compileHmrHybridCinLog s2Step189Add1Arena 784 840 794 s2Step189Add1A s2Step189Add1B s2Step189Add1Work=some s2Step189Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step189Add1Arena s2Step189Add1During 784 840 794 s2Step189Add1A s2Step189Add1B s2Step189Add1Work
    (by decide +kernel) (by decide +kernel) s2Step189Add1_distinct
    (fun q hq => s2Step189Add1_owned (List.mem_toFinset.mpr hq)) s2Step189Add1_borrowed

private theorem s2Step189F4_apart : Disjoint (s2Step189Add0A++s2Step189Add0B).toFinset (s2Step189Add1A++s2Step189Add1B).toFinset := by
  have nd : ((s2Step189Add0A++s2Step189Add0B)++(s2Step189Add1A++s2Step189Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step189F4_carry : s2Step189F4FlagArena.checkBorrow 1 [794]=some s2Step189Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step189F4FlagArena,s2Step189HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step189F4FlagArena,s2Step189HeadFvAfter,s2Step189Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step189F4_distinct : (825::784::840::794::((s2Step189Add0A++s2Step189Add1A)++(s2Step189Add0B++s2Step189Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189F4_flag : s2Step189HeadFvAfter.checkBorrow 1 [840]=some s2Step189F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step189HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step189F4_owned : (825::784::((s2Step189Add0A++s2Step189Add1A)++(s2Step189Add0B++s2Step189Add1B))).toFinset⊆s2Step189HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step189HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189F4_checked : compileHmrHybridF4Log s2Step189HeadFvAfter 825 784 s2Step189Add0A s2Step189Add0B s2Step189Add1A s2Step189Add1B [840] [794] s2Step189Add0Work s2Step189Add1Work=some s2Step189F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step189HeadFvAfter s2Step189F4FlagArena s2Step189Add0Arena s2Step189Add0During s2Step189Add1During 825 784
    s2Step189Add0A s2Step189Add0B s2Step189Add1A s2Step189Add1B [840] [794] s2Step189Add0Work s2Step189Add1Work
    (fun q hq => s2Step189F4_owned (List.mem_toFinset.mpr hq)) s2Step189F4_flag s2Step189F4_carry
    s2Step189F4_distinct s2Step189F4_apart s2Step189Add0_checked s2Step189Add1_checked

private theorem s2Step189Front_branch : s2Step189FrontSigmaArena.checkBorrow 1 [784]=some s2Step189HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step189FrontSigmaArena,s2Step189EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step189FrontSigmaArena,s2Step189EntryGvAfter,s2Step189HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step189Front_entry : HmrFrontEntryValid s2Step189EntryFBefore s2Step189FrontBank 175 109 ⟨175,174,109,109⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step189FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step189EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step189EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step189FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step189Front_sigma : s2Step189EntryGvAfter.checkBorrow 1 [825]=some s2Step189FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step189EntryGvAfter,arenaWires]
  · rfl

private def s2Step189HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189HeadFBefore : Arena := s2Step189HeadGAfter

private def s2Step189HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686],768⟩

private def s2Step189HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824],770⟩

private def s2Step189HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174],769⟩

private def s2Step189HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835],771⟩

private theorem s2Step189HeadBank_incomingDistinct : ([s2Step189HeadGRow,s2Step189HeadFRow,s2Step189HeadGvRow,s2Step189HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189HeadF_Incoming : rowsOwned s2Step189HeadFBefore [s2Step189HeadFRow,s2Step189HeadGvRow,s2Step189HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step189HeadGRow,s2Step189HeadFRow,s2Step189HeadGvRow,s2Step189HeadFvRow] 1 s2Step189HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step189HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step189HeadBank_outgoingOwned : rowsOwned s2Step189HeadFvAfter [s2Step189HeadGOut,s2Step189HeadFOut,s2Step189HeadGvOut,s2Step189HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step189HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step189HeadF_Outgoing : rowsOwned s2Step189HeadFvAfter [s2Step189HeadFOut,s2Step189HeadGvOut,s2Step189HeadFvOut] :=
  hmrRows_owned_drop s2Step189HeadFvAfter [s2Step189HeadGOut,s2Step189HeadFOut,s2Step189HeadGvOut,s2Step189HeadFvOut] 1 s2Step189HeadBank_outgoingOwned

private theorem s2Step189HeadF_distinct : (s2Step189HeadFRow.sign::s2Step189HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189HeadF_owned : (s2Step189HeadFRow.sign::s2Step189HeadFRow.payload).toFinset⊆s2Step189HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step189HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189HeadF_reserved : s2Step189HeadFBefore.reserve s2Step189HeadFFresh.toFinset=some s2Step189HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step189HeadFFresh,arenaWires]
  · norm_num [s2Step189HeadFBefore,s2Step189HeadGAfter,s2Step189HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step189HeadFAfter,s2Step189HeadFBefore,s2Step189HeadGAfter,s2Step189HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step189HeadF_checked : planRowResizeLog s2Step189HeadFBefore s2Step189HeadFRow 176 s2Step189HeadFFresh=
    some (s2Step189HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 803],768⟩,growRow 768 s2Step189HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step189HeadFBefore s2Step189HeadFAfter s2Step189HeadFRow 176 s2Step189HeadFFresh
    s2Step189HeadF_distinct s2Step189HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step189HeadF_reserved
  have rowEq : WindowRow.mk (s2Step189HeadFRow.payload++s2Step189HeadFFresh) s2Step189HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 803],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step189HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step189HeadFvBefore : Arena := s2Step189HeadGvAfter

private theorem s2Step189HeadFv_Incoming : rowsOwned s2Step189HeadFvBefore [s2Step189HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step189HeadGRow,s2Step189HeadFRow,s2Step189HeadGvRow,s2Step189HeadFvRow] 3 s2Step189HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step189HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step189HeadFv_Outgoing : rowsOwned s2Step189HeadFvAfter [s2Step189HeadFvOut] :=
  hmrRows_owned_drop s2Step189HeadFvAfter [s2Step189HeadGOut,s2Step189HeadFOut,s2Step189HeadGvOut,s2Step189HeadFvOut] 3 s2Step189HeadBank_outgoingOwned

private theorem s2Step189HeadFv_distinct : (s2Step189HeadFvRow.sign::s2Step189HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189HeadFv_owned : (s2Step189HeadFvRow.sign::s2Step189HeadFvRow.payload).toFinset⊆s2Step189HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step189HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189HeadFv_reserved : s2Step189HeadFvBefore.reserve s2Step189HeadFvFresh.toFinset=some s2Step189HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step189HeadFvFresh,arenaWires]
  · norm_num [s2Step189HeadFvBefore,s2Step189HeadGvAfter,s2Step189HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step189HeadFvAfter,s2Step189HeadFvBefore,s2Step189HeadGvAfter,s2Step189HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step189HeadFv_checked : planRowResizeLog s2Step189HeadFvBefore s2Step189HeadFvRow 110 s2Step189HeadFvFresh=
    some (s2Step189HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 822],770⟩,growRow 770 s2Step189HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step189HeadFvBefore s2Step189HeadFvAfter s2Step189HeadFvRow 110 s2Step189HeadFvFresh
    s2Step189HeadFv_distinct s2Step189HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step189HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step189HeadFvRow.payload++s2Step189HeadFvFresh) s2Step189HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 822],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step189HeadG_Incoming : rowsOwned s2Step189HeadGBefore [s2Step189HeadGRow,s2Step189HeadFRow,s2Step189HeadGvRow,s2Step189HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step189HeadGRow,s2Step189HeadFRow,s2Step189HeadGvRow,s2Step189HeadFvRow] 0 s2Step189HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step189HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step189HeadG_Outgoing : rowsOwned s2Step189HeadFvAfter [s2Step189HeadGOut,s2Step189HeadFOut,s2Step189HeadGvOut,s2Step189HeadFvOut] :=
  hmrRows_owned_drop s2Step189HeadFvAfter [s2Step189HeadGOut,s2Step189HeadFOut,s2Step189HeadGvOut,s2Step189HeadFvOut] 0 s2Step189HeadBank_outgoingOwned

private theorem s2Step189HeadG_distinct : (s2Step189HeadGRow.sign::s2Step189HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189HeadG_owned : (s2Step189HeadGRow.sign::s2Step189HeadGRow.payload).toFinset⊆s2Step189HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step189HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189HeadG_reserved : s2Step189HeadGBefore.reserve s2Step189HeadGFresh.toFinset=some s2Step189HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step189HeadGFresh,arenaWires]
  · norm_num [s2Step189HeadGBefore,s2Step189HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step189HeadGAfter,s2Step189HeadGBefore,s2Step189HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step189HeadG_checked : planRowResizeLog s2Step189HeadGBefore s2Step189HeadGRow 176 s2Step189HeadGFresh=
    some (s2Step189HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 799],769⟩,growRow 769 s2Step189HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step189HeadGBefore s2Step189HeadGAfter s2Step189HeadGRow 176 s2Step189HeadGFresh
    s2Step189HeadG_distinct s2Step189HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step189HeadG_reserved
  have rowEq : WindowRow.mk (s2Step189HeadGRow.payload++s2Step189HeadGFresh) s2Step189HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 799],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step189HeadGvBefore : Arena := s2Step189HeadFAfter

private theorem s2Step189HeadGv_Incoming : rowsOwned s2Step189HeadGvBefore [s2Step189HeadGvRow,s2Step189HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step189HeadGRow,s2Step189HeadFRow,s2Step189HeadGvRow,s2Step189HeadFvRow] 2 s2Step189HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step189HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step189HeadGv_Outgoing : rowsOwned s2Step189HeadFvAfter [s2Step189HeadGvOut,s2Step189HeadFvOut] :=
  hmrRows_owned_drop s2Step189HeadFvAfter [s2Step189HeadGOut,s2Step189HeadFOut,s2Step189HeadGvOut,s2Step189HeadFvOut] 2 s2Step189HeadBank_outgoingOwned

private theorem s2Step189HeadGv_distinct : (s2Step189HeadGvRow.sign::s2Step189HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step189HeadGv_owned : (s2Step189HeadGvRow.sign::s2Step189HeadGvRow.payload).toFinset⊆s2Step189HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step189HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step189HeadGv_reserved : s2Step189HeadGvBefore.reserve s2Step189HeadGvFresh.toFinset=some s2Step189HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step189HeadGvFresh,arenaWires]
  · norm_num [s2Step189HeadGvBefore,s2Step189HeadFAfter,s2Step189HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step189HeadGvAfter,s2Step189HeadGvBefore,s2Step189HeadFAfter,s2Step189HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step189HeadGv_checked : planRowResizeLog s2Step189HeadGvBefore s2Step189HeadGvRow 110 s2Step189HeadGvFresh=
    some (s2Step189HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 807],771⟩,growRow 771 s2Step189HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step189HeadGvBefore s2Step189HeadGvAfter s2Step189HeadGvRow 110 s2Step189HeadGvFresh
    s2Step189HeadGv_distinct s2Step189HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step189HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step189HeadGvRow.payload++s2Step189HeadGvFresh) s2Step189HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 807],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step189HeadBank_rows : planWindowRowsLog s2Step189HeadGBefore [(s2Step189HeadGRow,176),(s2Step189HeadFRow,176),(s2Step189HeadGvRow,110),(s2Step189HeadFvRow,110)] [s2Step189HeadGFresh,s2Step189HeadFFresh,s2Step189HeadGvFresh,s2Step189HeadFvFresh]=
    some (s2Step189HeadFvAfter,[s2Step189HeadGOut,s2Step189HeadFOut,s2Step189HeadGvOut,s2Step189HeadFvOut],(growRow 769 s2Step189HeadGFresh ++ (growRow 768 s2Step189HeadFFresh ++ (growRow 771 s2Step189HeadGvFresh ++ (growRow 770 s2Step189HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step189HeadFvAfter [] []=some (s2Step189HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step189HeadFvBefore s2Step189HeadFvAfter s2Step189HeadFvAfter
    s2Step189HeadFvRow s2Step189HeadFvOut 110 s2Step189HeadFvFresh [] [] []
    (growRow 770 s2Step189HeadFvFresh) ([]) s2Step189HeadFv_Incoming s2Step189HeadFv_checked h4 s2Step189HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step189HeadGvBefore s2Step189HeadGvAfter s2Step189HeadFvAfter
    s2Step189HeadGvRow s2Step189HeadGvOut 110 s2Step189HeadGvFresh [(s2Step189HeadFvRow,110)] [s2Step189HeadFvFresh] [s2Step189HeadFvOut]
    (growRow 771 s2Step189HeadGvFresh) ((growRow 770 s2Step189HeadFvFresh ++ [])) s2Step189HeadGv_Incoming s2Step189HeadGv_checked h3 s2Step189HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step189HeadFBefore s2Step189HeadFAfter s2Step189HeadFvAfter
    s2Step189HeadFRow s2Step189HeadFOut 176 s2Step189HeadFFresh [(s2Step189HeadGvRow,110),(s2Step189HeadFvRow,110)] [s2Step189HeadGvFresh,s2Step189HeadFvFresh] [s2Step189HeadGvOut,s2Step189HeadFvOut]
    (growRow 768 s2Step189HeadFFresh) ((growRow 771 s2Step189HeadGvFresh ++ (growRow 770 s2Step189HeadFvFresh ++ []))) s2Step189HeadF_Incoming s2Step189HeadF_checked h2 s2Step189HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step189HeadGBefore s2Step189HeadGAfter s2Step189HeadFvAfter
    s2Step189HeadGRow s2Step189HeadGOut 176 s2Step189HeadGFresh [(s2Step189HeadFRow,176),(s2Step189HeadGvRow,110),(s2Step189HeadFvRow,110)] [s2Step189HeadFFresh,s2Step189HeadGvFresh,s2Step189HeadFvFresh] [s2Step189HeadFOut,s2Step189HeadGvOut,s2Step189HeadFvOut]
    (growRow 769 s2Step189HeadGFresh) ((growRow 768 s2Step189HeadFFresh ++ (growRow 771 s2Step189HeadGvFresh ++ (growRow 770 s2Step189HeadFvFresh ++ [])))) s2Step189HeadG_Incoming s2Step189HeadG_checked h1 s2Step189HeadG_Outgoing
  exact h0

private theorem s2Step189HeadBank_checked : compileHmrBankResizeLog .headroom s2Step189HeadGBefore ⟨s2Step189HeadFRow,s2Step189HeadGRow,s2Step189HeadFvRow,s2Step189HeadGvRow⟩ ⟨176,176,110,110⟩ [s2Step189HeadGFresh,s2Step189HeadFFresh,s2Step189HeadGvFresh,s2Step189HeadFvFresh]=
    some (s2Step189HeadFvAfter,⟨s2Step189HeadFOut,s2Step189HeadGOut,s2Step189HeadFvOut,s2Step189HeadGvOut⟩,(growRow 769 s2Step189HeadGFresh ++ (growRow 768 s2Step189HeadFFresh ++ (growRow 771 s2Step189HeadGvFresh ++ (growRow 770 s2Step189HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step189HeadBank_rows]
  rfl

private theorem s2Step189Front_checked : compileHmrSourceFrontLog s2Step189EntryFBefore s2Step189FrontBank 175 109 ⟨175,174,109,109⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step189FrontLog=some s2Step189FrontPlan := by
  have pairEq : s2Step189FrontPair=⟨s2Step189HeadFRow,s2Step189HeadGRow,s2Step189HeadFvRow,s2Step189HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step189FrontHead=⟨s2Step189ExitFRow,s2Step189ExitGRow,s2Step189ExitFvRow,s2Step189ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step189Add0A=s2Step189FrontHead.f.wires := by decide +kernel
  have gEq : s2Step189Add0B=s2Step189FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step189Add1A=s2Step189FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step189Add1B=s2Step189FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step189EntryFBefore s2Step189FrontBank 175 109 ⟨175,174,109,109⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step189FrontLog s2Step189FrontPlan
  · exact s2Step189Front_entry
  · exact s2Step189EntryBank_checked
  · exact s2Step189Front_sigma
  · rfl
  · exact s2Step189Front_branch
  · rfl
  · simpa only [s2Step189FrontPlan,pairEq] using s2Step189HeadBank_checked
  · simpa only [s2Step189FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step189F4_checked
  · exact s2Step189Counter_checked
  · rfl
  · simpa only [s2Step189FrontPlan,headEq] using s2Step189ExitBank_checked

private theorem s2Step189Complete_explicit_checked : compileHmrEarlyStepLog s2Step189EntryFBefore s2Step189FrontBank 175 109 ⟨175,174,109,109⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step189CompleteLog=some s2Step189CompletePlan := by
  let Q := s2Step189EarlyControlPlan
  have hq := s2Step189EarlyControl_plan_checked
  have fv1 : s2Step189CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step189CompleteOut.fv.payload[2]?.getD s2Step189CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step189CompleteOut.fv.payload[3]?.getD s2Step189CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step189CompleteOut.fv.payload[4]?.getD s2Step189CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step189EntryFBefore s2Step189EarlyControlArena s2Step189FrontBank 175 109 ⟨175,174,109,109⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step189CompleteLog s2Step189FrontPlan Q
    s2Step189Front_checked s2Step189Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step189Complete_owned s2Step189Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step189EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 s2Step189CompleteOut.fv.second (s2Step189CompleteOut.fv.payload[2]?.getD s2Step189CompleteOut.fv.sign) (s2Step189CompleteOut.fv.payload[3]?.getD s2Step189CompleteOut.fv.sign) (s2Step189CompleteOut.fv.payload[4]?.getD s2Step189CompleteOut.fv.sign) 784 43 s2Step189EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep189Arena : Arena := s2Step189EntryFBefore
def s2PrivateStep189Bank : WindowBank := s2Step189FrontBank
def s2PrivateStep189Spec : HmrSourceWalkStepLog := ⟨175,109,⟨175,174,109,109⟩,43,.early s2Step189CompleteLog⟩
def s2PrivateStep189Plan : HmrSourceStepPlan := .early s2Step189CompletePlan
theorem s2PrivateStep189_source : s2PrivateStep189Spec=s2ObservedLogs176[13] := rfl
theorem s2PrivateStep189_checked : compileHmrSourceStepLog s2PrivateStep189Arena s2PrivateStep189Bank
    s2PrivateStep189Spec.fgWidth s2PrivateStep189Spec.vWidth s2PrivateStep189Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]
    6 498 189 s2PrivateStep189Spec.need none s2PrivateStep189Spec.log=some s2PrivateStep189Plan := by
  change compileHmrSourceStepLog s2Step189EntryFBefore s2Step189FrontBank 175 109 ⟨175,174,109,109⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 6 498 189 43 none (.early s2Step189CompleteLog)=some (.early s2Step189CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 189<498)]
  rw [s2Step189Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
