import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep189
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

private def s2Step191CompleteMoves : List (Wire × Wire) := [(782,685)]

private def s2Step191EarlyControlLog : HmrEarlyControlLog := ⟨[782, 784, 807, 822, 803],[840],[794],[867, 877, 879, 882, 885, 890],[]⟩

private def s2Step191FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [829], [], [825]],[[803], [822], [784], [807]],[[], [], [], []]⟩,[817],[827],[840],[794],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[840, 794, 867, 877]⟩

private def s2Step191CompleteLog : HmrEarlyStepLog := ⟨s2Step191FrontLog,s2Step191CompleteMoves,s2Step191EarlyControlLog⟩

private def s2Step191ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684],768⟩

private def s2Step191ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799],770⟩

private def s2Step191ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829],769⟩

private def s2Step191ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825],771⟩

private def s2Step191FrontOut : WindowBank := ⟨s2Step191ExitFOut,s2Step191ExitGOut,s2Step191ExitFvOut,s2Step191ExitGvOut⟩

private def s2Step191CompleteOut : WindowBank := s2Step191FrontOut.repacked s2Step191CompleteMoves

private def s2Step191EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step191EarlyControlPositiveArena,[840],s2Step191EarlyControlEqualityArena,[794],⟨⟨817,false⟩,[⟨⟨840,false⟩,794⟩]⟩⟩

private def s2Step191EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step191EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step191EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,782⟩,⟨⟨774,false⟩,784⟩,⟨⟨775,false⟩,807⟩,⟨⟨776,false⟩,822⟩,⟨⟨777,false⟩,803⟩]⟩

private def s2Step191EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step191EarlyControlZeroArena,s2Step191EarlyControlZeroPlan,s2Step191EarlyControlClassPlan,s2Step191EarlyControlFlagArena,s2Step191EarlyControlFittedArena,s2Step191EarlyControlHistoryArena,s2Step191EarlyControlSigmaArena,s2Step191EarlyControlOutputArena,s2Step191EarlyControlLog⟩

private def s2Step191CounterWork : List Wire := [840, 794, 867, 877]

private theorem s2Step191Counter_bounded : s2Step191CounterWork.toFinset⊆arenaWires := by norm_num [s2Step191CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step191HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191CounterDuring : Arena := ⟨s2Step191HeadFvAfter.live∪s2Step191CounterWork.toFinset,Finset.union_subset s2Step191HeadFvAfter.bounded s2Step191Counter_bounded⟩

private def s2Step191EntryFFresh : List Wire := []

private def s2Step191EntryFvFresh : List Wire := []

private def s2Step191EntryGFresh : List Wire := [829]

private def s2Step191EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191EntryGvFresh : List Wire := [825]

private def s2Step191ExitFExtra : List Wire := [685, 822]

private def s2Step191ExitFvExtra : List Wire := [807]

private def s2Step191ExitGExtra : List Wire := [803]

private def s2Step191ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<685) ∨ (686≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191ExitGvExtra : List Wire := [784]

private def s2Step191Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191Add0Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step191Add0_bounded : s2Step191Add0Work.toFinset⊆arenaWires := by
  have h : s2Step191Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step191Add0During : Arena := ⟨s2Step191Add0Arena.live∪s2Step191Add0Work.toFinset,Finset.union_subset s2Step191Add0Arena.bounded s2Step191Add0_bounded⟩

private def s2Step191Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191Add1Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step191Add1_bounded : s2Step191Add1Work.toFinset⊆arenaWires := by
  have h : s2Step191Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step191Add1During : Arena := ⟨s2Step191Add1Arena.live∪s2Step191Add1Work.toFinset,Finset.union_subset s2Step191Add1Arena.bounded s2Step191Add1_bounded⟩

private def s2Step191F4FlagArena : Arena := ⟨s2Step191HeadFvAfter.live∪{840},Finset.union_subset s2Step191HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step191F4Plan : HmrHybridF4Plan := ⟨s2Step191F4FlagArena,[840],s2Step191Add0Arena,[794],s2Step191Add0During,s2Step191Add0Work,s2Step191Add1During,s2Step191Add1Work⟩

private def s2Step191HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 822],768⟩

private def s2Step191HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 807],770⟩

private def s2Step191HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829, 803],769⟩

private def s2Step191HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 784],771⟩

private def s2Step191FrontHead : WindowBank := ⟨s2Step191HeadFOut,s2Step191HeadGOut,s2Step191HeadFvOut,s2Step191HeadGvOut⟩

private def s2Step191EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685],768⟩

private def s2Step191EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799],770⟩

private def s2Step191EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829],769⟩

private def s2Step191EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825],771⟩

private def s2Step191FrontPair : WindowBank := ⟨s2Step191EntryFOut,s2Step191EntryGOut,s2Step191EntryFvOut,s2Step191EntryGvOut⟩

private def s2Step191FrontSigmaArena : Arena := ⟨s2Step191EntryGvAfter.live∪{817},Finset.union_subset s2Step191EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step191HeadFFresh : List Wire := [822]

private def s2Step191HeadFvFresh : List Wire := [807]

private def s2Step191HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191HeadGFresh : List Wire := [803]

private def s2Step191HeadGvFresh : List Wire := [784]

private def s2Step191FrontPlan : HmrSourceFront := ⟨s2Step191EntryGvAfter,s2Step191FrontPair,(growRow 768 s2Step191EntryFFresh ++ (growRow 769 s2Step191EntryGFresh ++ (growRow 770 s2Step191EntryFvFresh ++ (growRow 771 s2Step191EntryGvFresh ++ [])))),s2Step191FrontSigmaArena,[817],s2Step191HeadGBefore,[827],
  s2Step191HeadFvAfter,s2Step191FrontHead,(growRow 769 s2Step191HeadGFresh ++ (growRow 768 s2Step191HeadFFresh ++ (growRow 771 s2Step191HeadGvFresh ++ (growRow 770 s2Step191HeadFvFresh ++ [])))),s2Step191F4Plan,s2Step191CounterDuring,s2Step191CounterWork,s2Step191ExitGvAfter,s2Step191FrontOut,(shrinkRow 769 s2Step191ExitGExtra ++ (shrinkRow 768 s2Step191ExitFExtra ++ (shrinkRow 770 s2Step191ExitFvExtra ++ (shrinkRow 771 s2Step191ExitGvExtra ++ []))))⟩

private def s2Step191CompletePlan : HmrEarlyStepPlan := ⟨s2Step191FrontPlan,s2Step191EarlyControlArena,s2Step191EarlyControlPlan,s2Step191CompleteMoves⟩

private theorem s2Step191Complete_apart : List.Disjoint (s2Step191CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [817, 827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] := by
  have nd : ((s2Step191CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[817, 827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step191Complete_owned : (s2Step191CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step191EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step191EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step191CompleteMoveArena : Arena := ⟨s2Step191ExitGvAfter.live∪{685},Finset.union_subset s2Step191ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step191Complete_repack : s2Step191ExitGvAfter.checkRepack s2Step191CompleteMoves=some s2Step191EarlyControlArena := by
  have owned : 782∈s2Step191ExitGvAfter.live := by norm_num [s2Step191ExitGvAfter,arenaWires]
  have reserve : s2Step191ExitGvAfter.reserve {685}=some s2Step191CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step191ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step191CompleteMoveArena.retireSet {782}=s2Step191EarlyControlArena := by
    unfold Arena.retireSet s2Step191EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step191CompleteMoveArena,s2Step191ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step191CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step191CompleteMoveArena.retireSet {782}).checkRepack []=some s2Step191EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step191EarlyControl_branchOwned : ([827] : List Wire).toFinset⊆s2Step191EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step191EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191EarlyControl_branch : compileHmrBranchRetirement s2Step191EarlyControlSigmaArena 827=some s2Step191EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step191EarlyControl_branchOwned
  · ext q
    simp [s2Step191EarlyControlOutputArena,s2Step191EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step191EarlyControl_classEqualityBorrow : s2Step191EarlyControlPositiveArena.checkBorrow (([817, 840] : List Wire).length-1) s2Step191EarlyControlLog.classWork=some s2Step191EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step191EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step191EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step191EarlyControlEqualityArena,s2Step191EarlyControlPositiveArena,s2Step191EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step191EarlyControl_classEqualityOwned : ([817, 840] : List Wire).toFinset⊆s2Step191EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step191EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191EarlyControl_classEquality : compileHmrEqualityLog s2Step191EarlyControlPositiveArena [817, 840] 0 s2Step191EarlyControlLog.classWork=some (s2Step191EarlyControlEqualityArena,s2Step191EarlyControlLog.classWork,s2Step191EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step191EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step191EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step191EarlyControl_classOwned : ([777, 803, 817] : List Wire).toFinset⊆s2Step191EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step191EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191EarlyControl_positiveBorrow : s2Step191EarlyControlZeroArena.checkBorrow (1) s2Step191EarlyControlLog.positiveWork=some s2Step191EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step191EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step191EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step191EarlyControlPositiveArena,s2Step191EarlyControlZeroArena,s2Step191EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step191EarlyControl_class : compileHmrSourceClassLog s2Step191EarlyControlZeroArena false 777 s2Step191EarlyControlZeroPlan.top 0 817 s2Step191EarlyControlLog.positiveWork s2Step191EarlyControlLog.classWork=some s2Step191EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step191EarlyControlClassPlan s2Step191EarlyControlZeroArena false 777 s2Step191EarlyControlZeroPlan.top 0 817
  constructor
  · decide +kernel
  · exact s2Step191EarlyControl_classOwned
  · exact s2Step191EarlyControl_positiveBorrow
  · exact s2Step191EarlyControl_classEquality

private theorem s2Step191EarlyControl_entryRecordOwned : ([827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step191EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step191EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191EarlyControl_entrySigmaOwned : ([817, 254] : List Wire).toFinset⊆s2Step191EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step191EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191EarlyControl_fitBorrow : s2Step191EarlyControlFlagArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step191EarlyControlLog.recordFresh=some s2Step191EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step191EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step191EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
      decide +kernel
    · ext q
      simp [s2Step191EarlyControlFittedArena,s2Step191EarlyControlFlagArena,s2Step191EarlyControlLog,arenaWires]

private theorem s2Step191EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step191EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step191EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step191EarlyControl_fit : compileHmrRecordGrowLog s2Step191EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step191EarlyControlLog.recordFresh=some s2Step191EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step191EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step191EarlyControl_fitBorrow

private theorem s2Step191EarlyControl_flagsBorrow : s2Step191EarlyControlEqualityArena.checkBorrow (6) s2Step191EarlyControlLog.flagWork=some s2Step191EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step191EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step191EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step191EarlyControlFlagArena,s2Step191EarlyControlEqualityArena,s2Step191EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step191EarlyControl_flagsOwned : ([794, 253, 252, 251] : List Wire).toFinset⊆s2Step191EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step191EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191EarlyControl_flags : compileHmrFlagsLog s2Step191EarlyControlClassPlan.equalityArena s2Step191EarlyControlClassPlan.equality.top 253 252 251 s2Step191EarlyControlLog.flagWork=some s2Step191EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step191EarlyControl_flagsOwned⟩
  · exact s2Step191EarlyControl_flagsBorrow

private theorem s2Step191EarlyControl_historyBorrow : s2Step191EarlyControlArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step191EarlyControlLog.recordFresh=some s2Step191EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step191EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step191EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step191EarlyControlHistoryArena,s2Step191EarlyControlArena,s2Step191EarlyControlLog,arenaWires]

private theorem s2Step191EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step191EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step191EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191EarlyControl_history : compileHmrRecordGrowLog s2Step191EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step191EarlyControlLog.recordFresh=some s2Step191EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step191EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step191EarlyControl_historyBorrow

private theorem s2Step191EarlyControl_sigmaOwned : ([254, 817] : List Wire).toFinset⊆s2Step191EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step191EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191EarlyControl_sigmaReleaseOwned : ([817] : List Wire).toFinset⊆s2Step191EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step191EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191EarlyControl_sigmaRelease : s2Step191EarlyControlHistoryArena.release {817} (fun _ => false)=some s2Step191EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step191EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step191EarlyControlSigmaArena,s2Step191EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step191EarlyControl_sigma : compileHmrSigmaDropLog s2Step191EarlyControlHistoryArena false 0 0 254 817 []=some s2Step191EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step191EarlyControl_sigmaOwned⟩
  · exact s2Step191EarlyControl_sigmaRelease

private theorem s2Step191EarlyControl_zeroBorrow : s2Step191EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step191EarlyControlLog.zeroWork=some s2Step191EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step191EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step191EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step191EarlyControlZeroArena,s2Step191EarlyControlArena,s2Step191EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step191EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step191EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step191EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191EarlyControl_zero : compileHmrEqualityLog s2Step191EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step191EarlyControlLog.zeroWork=some (s2Step191EarlyControlZeroArena,s2Step191EarlyControlLog.zeroWork,s2Step191EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step191EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step191EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step191EarlyControl_logged : s2Step191EarlyControlPlan.Logged s2Step191EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 817 254 253 252 251 827 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step191EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step191EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step191EarlyControl_zero
  · exact s2Step191EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step191EarlyControl_flags
  · exact s2Step191EarlyControl_fit
  · exact s2Step191EarlyControl_history
  · exact s2Step191EarlyControl_sigma
  · exact s2Step191EarlyControl_branch

private theorem s2Step191EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step191EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 817 254 253 252 251 827 43 s2Step191EarlyControlLog=some s2Step191EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step191EarlyControlPlan s2Step191EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 817 254 253 252 251 827 43 s2Step191EarlyControl_logged

private def s2Step191EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685],768⟩

private def s2Step191EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799],770⟩

private def s2Step191EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172],769⟩

private def s2Step191EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835],771⟩

private def s2Step191FrontBank : WindowBank := ⟨s2Step191EntryFRow,s2Step191EntryGRow,s2Step191EntryFvRow,s2Step191EntryGvRow⟩

private def s2Step191Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 822, 768]

private def s2Step191Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829, 803, 769]

private def s2Step191Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 807, 770]

private def s2Step191Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 784, 771]

private theorem s2Step191Counter_apart : Disjoint s2Step191HeadFvAfter.live s2Step191CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step191HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191Counter_borrowed : s2Step191HeadFvAfter.checkBorrow 4 s2Step191CounterWork=some s2Step191CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step191HeadFvAfter s2Step191CounterDuring s2Step191CounterWork.toFinset s2Step191Counter_bounded s2Step191Counter_apart rfl

private theorem s2Step191Counter_owned : (817::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step191HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step191HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191Counter_checked : compileHmrCounterStepLog s2Step191HeadFvAfter true 817 [772, 773, 774, 775, 776, 777] s2Step191CounterWork=some s2Step191CounterDuring := by
  have owned : ∀q∈817::[772, 773, 774, 775, 776, 777],q∈s2Step191HeadFvAfter.live := fun q hq => s2Step191Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step191Counter_borrowed

private def s2Step191EntryFAfter : Arena := s2Step191EntryFBefore

private theorem s2Step191EntryBank_incomingDistinct : ([s2Step191EntryFRow,s2Step191EntryGRow,s2Step191EntryFvRow,s2Step191EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191EntryF_Incoming : rowsOwned s2Step191EntryFBefore [s2Step191EntryFRow,s2Step191EntryGRow,s2Step191EntryFvRow,s2Step191EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step191EntryFRow,s2Step191EntryGRow,s2Step191EntryFvRow,s2Step191EntryGvRow] 0 s2Step191EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step191EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step191EntryBank_outgoingOwned : rowsOwned s2Step191EntryGvAfter [s2Step191EntryFOut,s2Step191EntryGOut,s2Step191EntryFvOut,s2Step191EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step191EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step191EntryF_Outgoing : rowsOwned s2Step191EntryGvAfter [s2Step191EntryFOut,s2Step191EntryGOut,s2Step191EntryFvOut,s2Step191EntryGvOut] :=
  hmrRows_owned_drop s2Step191EntryGvAfter [s2Step191EntryFOut,s2Step191EntryGOut,s2Step191EntryFvOut,s2Step191EntryGvOut] 0 s2Step191EntryBank_outgoingOwned

private theorem s2Step191EntryF_distinct : (s2Step191EntryFRow.sign::s2Step191EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191EntryF_owned : (s2Step191EntryFRow.sign::s2Step191EntryFRow.payload).toFinset⊆s2Step191EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step191EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191EntryF_reserved : s2Step191EntryFBefore.reserve s2Step191EntryFFresh.toFinset=some s2Step191EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step191EntryFFresh,arenaWires]
  · norm_num [s2Step191EntryFBefore,s2Step191EntryFFresh,arenaWires]
  · simp only [s2Step191EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step191EntryF_checked : planRowResizeLog s2Step191EntryFBefore s2Step191EntryFRow 174 s2Step191EntryFFresh=
    some (s2Step191EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685],768⟩,growRow 768 s2Step191EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step191EntryFBefore s2Step191EntryFAfter s2Step191EntryFRow 174 s2Step191EntryFFresh
    s2Step191EntryF_distinct s2Step191EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step191EntryF_reserved
  have rowEq : WindowRow.mk (s2Step191EntryFRow.payload++s2Step191EntryFFresh) s2Step191EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step191EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191EntryFvAfter : Arena := s2Step191EntryGAfter

private def s2Step191EntryFvBefore : Arena := s2Step191EntryGAfter

private theorem s2Step191EntryFv_Incoming : rowsOwned s2Step191EntryFvBefore [s2Step191EntryFvRow,s2Step191EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step191EntryFRow,s2Step191EntryGRow,s2Step191EntryFvRow,s2Step191EntryGvRow] 2 s2Step191EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step191EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step191EntryFv_Outgoing : rowsOwned s2Step191EntryGvAfter [s2Step191EntryFvOut,s2Step191EntryGvOut] :=
  hmrRows_owned_drop s2Step191EntryGvAfter [s2Step191EntryFOut,s2Step191EntryGOut,s2Step191EntryFvOut,s2Step191EntryGvOut] 2 s2Step191EntryBank_outgoingOwned

private theorem s2Step191EntryFv_distinct : (s2Step191EntryFvRow.sign::s2Step191EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191EntryFv_owned : (s2Step191EntryFvRow.sign::s2Step191EntryFvRow.payload).toFinset⊆s2Step191EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step191EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191EntryFv_reserved : s2Step191EntryFvBefore.reserve s2Step191EntryFvFresh.toFinset=some s2Step191EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step191EntryFvFresh,arenaWires]
  · norm_num [s2Step191EntryFvBefore,s2Step191EntryGAfter,s2Step191EntryFvFresh,arenaWires]
  · simp only [s2Step191EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step191EntryFv_checked : planRowResizeLog s2Step191EntryFvBefore s2Step191EntryFvRow 110 s2Step191EntryFvFresh=
    some (s2Step191EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799],770⟩,growRow 770 s2Step191EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step191EntryFvBefore s2Step191EntryFvAfter s2Step191EntryFvRow 110 s2Step191EntryFvFresh
    s2Step191EntryFv_distinct s2Step191EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step191EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step191EntryFvRow.payload++s2Step191EntryFvFresh) s2Step191EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step191EntryGBefore : Arena := s2Step191EntryFBefore

private theorem s2Step191EntryG_Incoming : rowsOwned s2Step191EntryGBefore [s2Step191EntryGRow,s2Step191EntryFvRow,s2Step191EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step191EntryFRow,s2Step191EntryGRow,s2Step191EntryFvRow,s2Step191EntryGvRow] 1 s2Step191EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step191EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step191EntryG_Outgoing : rowsOwned s2Step191EntryGvAfter [s2Step191EntryGOut,s2Step191EntryFvOut,s2Step191EntryGvOut] :=
  hmrRows_owned_drop s2Step191EntryGvAfter [s2Step191EntryFOut,s2Step191EntryGOut,s2Step191EntryFvOut,s2Step191EntryGvOut] 1 s2Step191EntryBank_outgoingOwned

private theorem s2Step191EntryG_distinct : (s2Step191EntryGRow.sign::s2Step191EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191EntryG_owned : (s2Step191EntryGRow.sign::s2Step191EntryGRow.payload).toFinset⊆s2Step191EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step191EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191EntryG_reserved : s2Step191EntryGBefore.reserve s2Step191EntryGFresh.toFinset=some s2Step191EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step191EntryGFresh,arenaWires]
  · norm_num [s2Step191EntryGBefore,s2Step191EntryFBefore,s2Step191EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step191EntryGAfter,s2Step191EntryGBefore,s2Step191EntryFBefore,s2Step191EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step191EntryG_checked : planRowResizeLog s2Step191EntryGBefore s2Step191EntryGRow 174 s2Step191EntryGFresh=
    some (s2Step191EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829],769⟩,growRow 769 s2Step191EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step191EntryGBefore s2Step191EntryGAfter s2Step191EntryGRow 174 s2Step191EntryGFresh
    s2Step191EntryG_distinct s2Step191EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step191EntryG_reserved
  have rowEq : WindowRow.mk (s2Step191EntryGRow.payload++s2Step191EntryGFresh) s2Step191EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step191EntryGvBefore : Arena := s2Step191EntryGAfter

private theorem s2Step191EntryGv_Incoming : rowsOwned s2Step191EntryGvBefore [s2Step191EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step191EntryFRow,s2Step191EntryGRow,s2Step191EntryFvRow,s2Step191EntryGvRow] 3 s2Step191EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step191EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step191EntryGv_Outgoing : rowsOwned s2Step191EntryGvAfter [s2Step191EntryGvOut] :=
  hmrRows_owned_drop s2Step191EntryGvAfter [s2Step191EntryFOut,s2Step191EntryGOut,s2Step191EntryFvOut,s2Step191EntryGvOut] 3 s2Step191EntryBank_outgoingOwned

private theorem s2Step191EntryGv_distinct : (s2Step191EntryGvRow.sign::s2Step191EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191EntryGv_owned : (s2Step191EntryGvRow.sign::s2Step191EntryGvRow.payload).toFinset⊆s2Step191EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step191EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191EntryGv_reserved : s2Step191EntryGvBefore.reserve s2Step191EntryGvFresh.toFinset=some s2Step191EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step191EntryGvFresh,arenaWires]
  · norm_num [s2Step191EntryGvBefore,s2Step191EntryGAfter,s2Step191EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step191EntryGvAfter,s2Step191EntryGvBefore,s2Step191EntryGAfter,s2Step191EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step191EntryGv_checked : planRowResizeLog s2Step191EntryGvBefore s2Step191EntryGvRow 110 s2Step191EntryGvFresh=
    some (s2Step191EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825],771⟩,growRow 771 s2Step191EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step191EntryGvBefore s2Step191EntryGvAfter s2Step191EntryGvRow 110 s2Step191EntryGvFresh
    s2Step191EntryGv_distinct s2Step191EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step191EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step191EntryGvRow.payload++s2Step191EntryGvFresh) s2Step191EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step191EntryBank_rows : planWindowRowsLog s2Step191EntryFBefore [(s2Step191EntryFRow,174),(s2Step191EntryGRow,174),(s2Step191EntryFvRow,110),(s2Step191EntryGvRow,110)] [s2Step191EntryFFresh,s2Step191EntryGFresh,s2Step191EntryFvFresh,s2Step191EntryGvFresh]=
    some (s2Step191EntryGvAfter,[s2Step191EntryFOut,s2Step191EntryGOut,s2Step191EntryFvOut,s2Step191EntryGvOut],(growRow 768 s2Step191EntryFFresh ++ (growRow 769 s2Step191EntryGFresh ++ (growRow 770 s2Step191EntryFvFresh ++ (growRow 771 s2Step191EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step191EntryGvAfter [] []=some (s2Step191EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step191EntryGvBefore s2Step191EntryGvAfter s2Step191EntryGvAfter
    s2Step191EntryGvRow s2Step191EntryGvOut 110 s2Step191EntryGvFresh [] [] []
    (growRow 771 s2Step191EntryGvFresh) ([]) s2Step191EntryGv_Incoming s2Step191EntryGv_checked h4 s2Step191EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step191EntryFvBefore s2Step191EntryFvAfter s2Step191EntryGvAfter
    s2Step191EntryFvRow s2Step191EntryFvOut 110 s2Step191EntryFvFresh [(s2Step191EntryGvRow,110)] [s2Step191EntryGvFresh] [s2Step191EntryGvOut]
    (growRow 770 s2Step191EntryFvFresh) ((growRow 771 s2Step191EntryGvFresh ++ [])) s2Step191EntryFv_Incoming s2Step191EntryFv_checked h3 s2Step191EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step191EntryGBefore s2Step191EntryGAfter s2Step191EntryGvAfter
    s2Step191EntryGRow s2Step191EntryGOut 174 s2Step191EntryGFresh [(s2Step191EntryFvRow,110),(s2Step191EntryGvRow,110)] [s2Step191EntryFvFresh,s2Step191EntryGvFresh] [s2Step191EntryFvOut,s2Step191EntryGvOut]
    (growRow 769 s2Step191EntryGFresh) ((growRow 770 s2Step191EntryFvFresh ++ (growRow 771 s2Step191EntryGvFresh ++ []))) s2Step191EntryG_Incoming s2Step191EntryG_checked h2 s2Step191EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step191EntryFBefore s2Step191EntryFAfter s2Step191EntryGvAfter
    s2Step191EntryFRow s2Step191EntryFOut 174 s2Step191EntryFFresh [(s2Step191EntryGRow,174),(s2Step191EntryFvRow,110),(s2Step191EntryGvRow,110)] [s2Step191EntryGFresh,s2Step191EntryFvFresh,s2Step191EntryGvFresh] [s2Step191EntryGOut,s2Step191EntryFvOut,s2Step191EntryGvOut]
    (growRow 768 s2Step191EntryFFresh) ((growRow 769 s2Step191EntryGFresh ++ (growRow 770 s2Step191EntryFvFresh ++ (growRow 771 s2Step191EntryGvFresh ++ [])))) s2Step191EntryF_Incoming s2Step191EntryF_checked h1 s2Step191EntryF_Outgoing
  exact h0

private theorem s2Step191EntryBank_checked : compileHmrBankResizeLog .entry s2Step191EntryFBefore ⟨s2Step191EntryFRow,s2Step191EntryGRow,s2Step191EntryFvRow,s2Step191EntryGvRow⟩ ⟨174,174,110,110⟩ [s2Step191EntryFFresh,s2Step191EntryGFresh,s2Step191EntryFvFresh,s2Step191EntryGvFresh]=
    some (s2Step191EntryGvAfter,⟨s2Step191EntryFOut,s2Step191EntryGOut,s2Step191EntryFvOut,s2Step191EntryGvOut⟩,(growRow 768 s2Step191EntryFFresh ++ (growRow 769 s2Step191EntryGFresh ++ (growRow 770 s2Step191EntryFvFresh ++ (growRow 771 s2Step191EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step191EntryBank_rows]
  rfl

private def s2Step191ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<685) ∨ (686≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191ExitFBefore : Arena := s2Step191ExitGAfter

private def s2Step191ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 822],768⟩

private def s2Step191ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 807],770⟩

private def s2Step191ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829, 803],769⟩

private def s2Step191ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 784],771⟩

private theorem s2Step191ExitBank_incomingDistinct : ([s2Step191ExitGRow,s2Step191ExitFRow,s2Step191ExitFvRow,s2Step191ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191ExitF_Incoming : rowsOwned s2Step191ExitFBefore [s2Step191ExitFRow,s2Step191ExitFvRow,s2Step191ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step191ExitGRow,s2Step191ExitFRow,s2Step191ExitFvRow,s2Step191ExitGvRow] 1 s2Step191ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step191ExitFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step191ExitBank_outgoingOwned : rowsOwned s2Step191ExitGvAfter [s2Step191ExitGOut,s2Step191ExitFOut,s2Step191ExitFvOut,s2Step191ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step191ExitGvAfter (fun q => (0≤q ∧ q<685) ∨ (686≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step191ExitF_Outgoing : rowsOwned s2Step191ExitGvAfter [s2Step191ExitFOut,s2Step191ExitFvOut,s2Step191ExitGvOut] :=
  hmrRows_owned_drop s2Step191ExitGvAfter [s2Step191ExitGOut,s2Step191ExitFOut,s2Step191ExitFvOut,s2Step191ExitGvOut] 1 s2Step191ExitBank_outgoingOwned

private theorem s2Step191ExitF_distinct : (s2Step191ExitFRow.sign::s2Step191ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191ExitF_owned : (s2Step191ExitFRow.sign::s2Step191ExitFRow.payload).toFinset⊆s2Step191ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step191ExitFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191ExitF_retired : s2Step191ExitFBefore.retireSet s2Step191ExitFExtra.toFinset=s2Step191ExitFAfter := by
  unfold Arena.retireSet s2Step191ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step191ExitFBefore,s2Step191ExitGAfter,s2Step191ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step191ExitF_checked : planRowResizeLog s2Step191ExitFBefore s2Step191ExitFRow 173 []=
    some (s2Step191ExitFAfter,s2Step191ExitFOut,shrinkRow 768 s2Step191ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step191ExitFBefore s2Step191ExitFRow 173 s2Step191ExitF_distinct s2Step191ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step191ExitFRow.payload.take 173) s2Step191ExitFRow.sign=s2Step191ExitFOut := by decide +kernel
  have hi : s2Step191ExitFRow.payload.drop 173=s2Step191ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step191ExitF_retired] at result
  exact result

private def s2Step191ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<685) ∨ (686≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191ExitFvBefore : Arena := s2Step191ExitFAfter

private theorem s2Step191ExitFv_Incoming : rowsOwned s2Step191ExitFvBefore [s2Step191ExitFvRow,s2Step191ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step191ExitGRow,s2Step191ExitFRow,s2Step191ExitFvRow,s2Step191ExitGvRow] 2 s2Step191ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step191ExitFvBefore (fun q => (0≤q ∧ q<685) ∨ (686≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step191ExitFv_Outgoing : rowsOwned s2Step191ExitGvAfter [s2Step191ExitFvOut,s2Step191ExitGvOut] :=
  hmrRows_owned_drop s2Step191ExitGvAfter [s2Step191ExitGOut,s2Step191ExitFOut,s2Step191ExitFvOut,s2Step191ExitGvOut] 2 s2Step191ExitBank_outgoingOwned

private theorem s2Step191ExitFv_distinct : (s2Step191ExitFvRow.sign::s2Step191ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191ExitFv_owned : (s2Step191ExitFvRow.sign::s2Step191ExitFvRow.payload).toFinset⊆s2Step191ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step191ExitFvBefore (fun q => (0≤q ∧ q<685) ∨ (686≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191ExitFv_retired : s2Step191ExitFvBefore.retireSet s2Step191ExitFvExtra.toFinset=s2Step191ExitFvAfter := by
  unfold Arena.retireSet s2Step191ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step191ExitFvBefore,s2Step191ExitFAfter,s2Step191ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step191ExitFv_checked : planRowResizeLog s2Step191ExitFvBefore s2Step191ExitFvRow 110 []=
    some (s2Step191ExitFvAfter,s2Step191ExitFvOut,shrinkRow 770 s2Step191ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step191ExitFvBefore s2Step191ExitFvRow 110 s2Step191ExitFv_distinct s2Step191ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step191ExitFvRow.payload.take 110) s2Step191ExitFvRow.sign=s2Step191ExitFvOut := by decide +kernel
  have hi : s2Step191ExitFvRow.payload.drop 110=s2Step191ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step191ExitFv_retired] at result
  exact result

private def s2Step191ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step191ExitG_Incoming : rowsOwned s2Step191ExitGBefore [s2Step191ExitGRow,s2Step191ExitFRow,s2Step191ExitFvRow,s2Step191ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step191ExitGRow,s2Step191ExitFRow,s2Step191ExitFvRow,s2Step191ExitGvRow] 0 s2Step191ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step191ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step191ExitG_Outgoing : rowsOwned s2Step191ExitGvAfter [s2Step191ExitGOut,s2Step191ExitFOut,s2Step191ExitFvOut,s2Step191ExitGvOut] :=
  hmrRows_owned_drop s2Step191ExitGvAfter [s2Step191ExitGOut,s2Step191ExitFOut,s2Step191ExitFvOut,s2Step191ExitGvOut] 0 s2Step191ExitBank_outgoingOwned

private theorem s2Step191ExitG_distinct : (s2Step191ExitGRow.sign::s2Step191ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191ExitG_owned : (s2Step191ExitGRow.sign::s2Step191ExitGRow.payload).toFinset⊆s2Step191ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step191ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191ExitG_retired : s2Step191ExitGBefore.retireSet s2Step191ExitGExtra.toFinset=s2Step191ExitGAfter := by
  unfold Arena.retireSet s2Step191ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step191ExitGBefore,s2Step191ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step191ExitG_checked : planRowResizeLog s2Step191ExitGBefore s2Step191ExitGRow 174 []=
    some (s2Step191ExitGAfter,s2Step191ExitGOut,shrinkRow 769 s2Step191ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step191ExitGBefore s2Step191ExitGRow 174 s2Step191ExitG_distinct s2Step191ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step191ExitGRow.payload.take 174) s2Step191ExitGRow.sign=s2Step191ExitGOut := by decide +kernel
  have hi : s2Step191ExitGRow.payload.drop 174=s2Step191ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step191ExitG_retired] at result
  exact result

private def s2Step191ExitGvBefore : Arena := s2Step191ExitFvAfter

private theorem s2Step191ExitGv_Incoming : rowsOwned s2Step191ExitGvBefore [s2Step191ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step191ExitGRow,s2Step191ExitFRow,s2Step191ExitFvRow,s2Step191ExitGvRow] 3 s2Step191ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step191ExitGvBefore (fun q => (0≤q ∧ q<685) ∨ (686≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step191ExitGv_Outgoing : rowsOwned s2Step191ExitGvAfter [s2Step191ExitGvOut] :=
  hmrRows_owned_drop s2Step191ExitGvAfter [s2Step191ExitGOut,s2Step191ExitFOut,s2Step191ExitFvOut,s2Step191ExitGvOut] 3 s2Step191ExitBank_outgoingOwned

private theorem s2Step191ExitGv_distinct : (s2Step191ExitGvRow.sign::s2Step191ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191ExitGv_owned : (s2Step191ExitGvRow.sign::s2Step191ExitGvRow.payload).toFinset⊆s2Step191ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step191ExitGvBefore (fun q => (0≤q ∧ q<685) ∨ (686≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191ExitGv_retired : s2Step191ExitGvBefore.retireSet s2Step191ExitGvExtra.toFinset=s2Step191ExitGvAfter := by
  unfold Arena.retireSet s2Step191ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step191ExitGvBefore,s2Step191ExitFvAfter,s2Step191ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step191ExitGv_checked : planRowResizeLog s2Step191ExitGvBefore s2Step191ExitGvRow 110 []=
    some (s2Step191ExitGvAfter,s2Step191ExitGvOut,shrinkRow 771 s2Step191ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step191ExitGvBefore s2Step191ExitGvRow 110 s2Step191ExitGv_distinct s2Step191ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step191ExitGvRow.payload.take 110) s2Step191ExitGvRow.sign=s2Step191ExitGvOut := by decide +kernel
  have hi : s2Step191ExitGvRow.payload.drop 110=s2Step191ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step191ExitGv_retired] at result
  exact result

private theorem s2Step191ExitBank_rows : planWindowRowsLog s2Step191ExitGBefore [(s2Step191ExitGRow,174),(s2Step191ExitFRow,173),(s2Step191ExitFvRow,110),(s2Step191ExitGvRow,110)] [[],[],[],[]]=
    some (s2Step191ExitGvAfter,[s2Step191ExitGOut,s2Step191ExitFOut,s2Step191ExitFvOut,s2Step191ExitGvOut],(shrinkRow 769 s2Step191ExitGExtra ++ (shrinkRow 768 s2Step191ExitFExtra ++ (shrinkRow 770 s2Step191ExitFvExtra ++ (shrinkRow 771 s2Step191ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step191ExitGvAfter [] []=some (s2Step191ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step191ExitGvBefore s2Step191ExitGvAfter s2Step191ExitGvAfter
    s2Step191ExitGvRow s2Step191ExitGvOut 110 [] [] [] []
    (shrinkRow 771 s2Step191ExitGvExtra) ([]) s2Step191ExitGv_Incoming s2Step191ExitGv_checked h4 s2Step191ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step191ExitFvBefore s2Step191ExitFvAfter s2Step191ExitGvAfter
    s2Step191ExitFvRow s2Step191ExitFvOut 110 [] [(s2Step191ExitGvRow,110)] [[]] [s2Step191ExitGvOut]
    (shrinkRow 770 s2Step191ExitFvExtra) ((shrinkRow 771 s2Step191ExitGvExtra ++ [])) s2Step191ExitFv_Incoming s2Step191ExitFv_checked h3 s2Step191ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step191ExitFBefore s2Step191ExitFAfter s2Step191ExitGvAfter
    s2Step191ExitFRow s2Step191ExitFOut 173 [] [(s2Step191ExitFvRow,110),(s2Step191ExitGvRow,110)] [[],[]] [s2Step191ExitFvOut,s2Step191ExitGvOut]
    (shrinkRow 768 s2Step191ExitFExtra) ((shrinkRow 770 s2Step191ExitFvExtra ++ (shrinkRow 771 s2Step191ExitGvExtra ++ []))) s2Step191ExitF_Incoming s2Step191ExitF_checked h2 s2Step191ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step191ExitGBefore s2Step191ExitGAfter s2Step191ExitGvAfter
    s2Step191ExitGRow s2Step191ExitGOut 174 [] [(s2Step191ExitFRow,173),(s2Step191ExitFvRow,110),(s2Step191ExitGvRow,110)] [[],[],[]] [s2Step191ExitFOut,s2Step191ExitFvOut,s2Step191ExitGvOut]
    (shrinkRow 769 s2Step191ExitGExtra) ((shrinkRow 768 s2Step191ExitFExtra ++ (shrinkRow 770 s2Step191ExitFvExtra ++ (shrinkRow 771 s2Step191ExitGvExtra ++ [])))) s2Step191ExitG_Incoming s2Step191ExitG_checked h1 s2Step191ExitG_Outgoing
  exact h0

private theorem s2Step191ExitBank_checked : compileHmrBankResizeLog .exit s2Step191ExitGBefore ⟨s2Step191ExitFRow,s2Step191ExitGRow,s2Step191ExitFvRow,s2Step191ExitGvRow⟩ ⟨173,174,110,110⟩ [[],[],[],[]]=
    some (s2Step191ExitGvAfter,⟨s2Step191ExitFOut,s2Step191ExitGOut,s2Step191ExitFvOut,s2Step191ExitGvOut⟩,(shrinkRow 769 s2Step191ExitGExtra ++ (shrinkRow 768 s2Step191ExitFExtra ++ (shrinkRow 770 s2Step191ExitFvExtra ++ (shrinkRow 771 s2Step191ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step191ExitBank_rows]
  rfl

private theorem s2Step191Add0_apart : Disjoint s2Step191Add0Arena.live s2Step191Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step191Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191Add0_card : s2Step191Add0Arena.live.card=885 := by
  decide +kernel

private theorem s2Step191Add0_borrowed : s2Step191Add0Arena.checkBorrow (hmrHybridCount s2Step191Add0Arena s2Step191Add0B.length) s2Step191Add0Work=some s2Step191Add0During := by
  have len : s2Step191Add0Work.length=hmrHybridCount s2Step191Add0Arena s2Step191Add0B.length := by
    rw [hmrHybridCount,s2Step191Add0_card]
    decide +kernel
  have nd : s2Step191Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step191Add0Arena s2Step191Add0During s2Step191Add0Work.toFinset s2Step191Add0_bounded s2Step191Add0_apart rfl

private theorem s2Step191Add0_distinct : (840::827::794::(s2Step191Add0A++s2Step191Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191Add0_owned : (840::827::794::(s2Step191Add0A++s2Step191Add0B)).toFinset⊆s2Step191Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step191Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191Add0_checked : compileHmrHybridCinLog s2Step191Add0Arena 827 840 794 s2Step191Add0A s2Step191Add0B s2Step191Add0Work=some s2Step191Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step191Add0Arena s2Step191Add0During 827 840 794 s2Step191Add0A s2Step191Add0B s2Step191Add0Work
    (by decide +kernel) (by decide +kernel) s2Step191Add0_distinct
    (fun q hq => s2Step191Add0_owned (List.mem_toFinset.mpr hq)) s2Step191Add0_borrowed

private theorem s2Step191Add1_apart : Disjoint s2Step191Add1Arena.live s2Step191Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step191Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191Add1_card : s2Step191Add1Arena.live.card=885 := by
  decide +kernel

private theorem s2Step191Add1_borrowed : s2Step191Add1Arena.checkBorrow (hmrHybridCount s2Step191Add1Arena s2Step191Add1B.length) s2Step191Add1Work=some s2Step191Add1During := by
  have len : s2Step191Add1Work.length=hmrHybridCount s2Step191Add1Arena s2Step191Add1B.length := by
    rw [hmrHybridCount,s2Step191Add1_card]
    decide +kernel
  have nd : s2Step191Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step191Add1Arena s2Step191Add1During s2Step191Add1Work.toFinset s2Step191Add1_bounded s2Step191Add1_apart rfl

private theorem s2Step191Add1_distinct : (840::827::794::(s2Step191Add1A++s2Step191Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191Add1_owned : (840::827::794::(s2Step191Add1A++s2Step191Add1B)).toFinset⊆s2Step191Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step191Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191Add1_checked : compileHmrHybridCinLog s2Step191Add1Arena 827 840 794 s2Step191Add1A s2Step191Add1B s2Step191Add1Work=some s2Step191Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step191Add1Arena s2Step191Add1During 827 840 794 s2Step191Add1A s2Step191Add1B s2Step191Add1Work
    (by decide +kernel) (by decide +kernel) s2Step191Add1_distinct
    (fun q hq => s2Step191Add1_owned (List.mem_toFinset.mpr hq)) s2Step191Add1_borrowed

private theorem s2Step191F4_apart : Disjoint (s2Step191Add0A++s2Step191Add0B).toFinset (s2Step191Add1A++s2Step191Add1B).toFinset := by
  have nd : ((s2Step191Add0A++s2Step191Add0B)++(s2Step191Add1A++s2Step191Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step191F4_carry : s2Step191F4FlagArena.checkBorrow 1 [794]=some s2Step191Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step191F4FlagArena,s2Step191HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step191F4FlagArena,s2Step191HeadFvAfter,s2Step191Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step191F4_distinct : (817::827::840::794::((s2Step191Add0A++s2Step191Add1A)++(s2Step191Add0B++s2Step191Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191F4_flag : s2Step191HeadFvAfter.checkBorrow 1 [840]=some s2Step191F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step191HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step191F4_owned : (817::827::((s2Step191Add0A++s2Step191Add1A)++(s2Step191Add0B++s2Step191Add1B))).toFinset⊆s2Step191HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step191HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191F4_checked : compileHmrHybridF4Log s2Step191HeadFvAfter 817 827 s2Step191Add0A s2Step191Add0B s2Step191Add1A s2Step191Add1B [840] [794] s2Step191Add0Work s2Step191Add1Work=some s2Step191F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step191HeadFvAfter s2Step191F4FlagArena s2Step191Add0Arena s2Step191Add0During s2Step191Add1During 817 827
    s2Step191Add0A s2Step191Add0B s2Step191Add1A s2Step191Add1B [840] [794] s2Step191Add0Work s2Step191Add1Work
    (fun q hq => s2Step191F4_owned (List.mem_toFinset.mpr hq)) s2Step191F4_flag s2Step191F4_carry
    s2Step191F4_distinct s2Step191F4_apart s2Step191Add0_checked s2Step191Add1_checked

private theorem s2Step191Front_branch : s2Step191FrontSigmaArena.checkBorrow 1 [827]=some s2Step191HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step191FrontSigmaArena,s2Step191EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step191FrontSigmaArena,s2Step191EntryGvAfter,s2Step191HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step191Front_entry : HmrFrontEntryValid s2Step191EntryFBefore s2Step191FrontBank 174 110 ⟨173,174,110,110⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step191FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step191EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step191EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step191FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step191Front_sigma : s2Step191EntryGvAfter.checkBorrow 1 [817]=some s2Step191FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step191EntryGvAfter,arenaWires]
  · rfl

private def s2Step191HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191HeadFBefore : Arena := s2Step191HeadGAfter

private def s2Step191HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685],768⟩

private def s2Step191HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799],770⟩

private def s2Step191HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829],769⟩

private def s2Step191HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825],771⟩

private theorem s2Step191HeadBank_incomingDistinct : ([s2Step191HeadGRow,s2Step191HeadFRow,s2Step191HeadGvRow,s2Step191HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191HeadF_Incoming : rowsOwned s2Step191HeadFBefore [s2Step191HeadFRow,s2Step191HeadGvRow,s2Step191HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step191HeadGRow,s2Step191HeadFRow,s2Step191HeadGvRow,s2Step191HeadFvRow] 1 s2Step191HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step191HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step191HeadBank_outgoingOwned : rowsOwned s2Step191HeadFvAfter [s2Step191HeadGOut,s2Step191HeadFOut,s2Step191HeadGvOut,s2Step191HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step191HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step191HeadF_Outgoing : rowsOwned s2Step191HeadFvAfter [s2Step191HeadFOut,s2Step191HeadGvOut,s2Step191HeadFvOut] :=
  hmrRows_owned_drop s2Step191HeadFvAfter [s2Step191HeadGOut,s2Step191HeadFOut,s2Step191HeadGvOut,s2Step191HeadFvOut] 1 s2Step191HeadBank_outgoingOwned

private theorem s2Step191HeadF_distinct : (s2Step191HeadFRow.sign::s2Step191HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191HeadF_owned : (s2Step191HeadFRow.sign::s2Step191HeadFRow.payload).toFinset⊆s2Step191HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step191HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191HeadF_reserved : s2Step191HeadFBefore.reserve s2Step191HeadFFresh.toFinset=some s2Step191HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step191HeadFFresh,arenaWires]
  · norm_num [s2Step191HeadFBefore,s2Step191HeadGAfter,s2Step191HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step191HeadFAfter,s2Step191HeadFBefore,s2Step191HeadGAfter,s2Step191HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step191HeadF_checked : planRowResizeLog s2Step191HeadFBefore s2Step191HeadFRow 175 s2Step191HeadFFresh=
    some (s2Step191HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 822],768⟩,growRow 768 s2Step191HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step191HeadFBefore s2Step191HeadFAfter s2Step191HeadFRow 175 s2Step191HeadFFresh
    s2Step191HeadF_distinct s2Step191HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step191HeadF_reserved
  have rowEq : WindowRow.mk (s2Step191HeadFRow.payload++s2Step191HeadFFresh) s2Step191HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 822],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step191HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step191HeadFvBefore : Arena := s2Step191HeadGvAfter

private theorem s2Step191HeadFv_Incoming : rowsOwned s2Step191HeadFvBefore [s2Step191HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step191HeadGRow,s2Step191HeadFRow,s2Step191HeadGvRow,s2Step191HeadFvRow] 3 s2Step191HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step191HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step191HeadFv_Outgoing : rowsOwned s2Step191HeadFvAfter [s2Step191HeadFvOut] :=
  hmrRows_owned_drop s2Step191HeadFvAfter [s2Step191HeadGOut,s2Step191HeadFOut,s2Step191HeadGvOut,s2Step191HeadFvOut] 3 s2Step191HeadBank_outgoingOwned

private theorem s2Step191HeadFv_distinct : (s2Step191HeadFvRow.sign::s2Step191HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191HeadFv_owned : (s2Step191HeadFvRow.sign::s2Step191HeadFvRow.payload).toFinset⊆s2Step191HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step191HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191HeadFv_reserved : s2Step191HeadFvBefore.reserve s2Step191HeadFvFresh.toFinset=some s2Step191HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step191HeadFvFresh,arenaWires]
  · norm_num [s2Step191HeadFvBefore,s2Step191HeadGvAfter,s2Step191HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step191HeadFvAfter,s2Step191HeadFvBefore,s2Step191HeadGvAfter,s2Step191HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step191HeadFv_checked : planRowResizeLog s2Step191HeadFvBefore s2Step191HeadFvRow 111 s2Step191HeadFvFresh=
    some (s2Step191HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 807],770⟩,growRow 770 s2Step191HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step191HeadFvBefore s2Step191HeadFvAfter s2Step191HeadFvRow 111 s2Step191HeadFvFresh
    s2Step191HeadFv_distinct s2Step191HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step191HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step191HeadFvRow.payload++s2Step191HeadFvFresh) s2Step191HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 807],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step191HeadG_Incoming : rowsOwned s2Step191HeadGBefore [s2Step191HeadGRow,s2Step191HeadFRow,s2Step191HeadGvRow,s2Step191HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step191HeadGRow,s2Step191HeadFRow,s2Step191HeadGvRow,s2Step191HeadFvRow] 0 s2Step191HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step191HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step191HeadG_Outgoing : rowsOwned s2Step191HeadFvAfter [s2Step191HeadGOut,s2Step191HeadFOut,s2Step191HeadGvOut,s2Step191HeadFvOut] :=
  hmrRows_owned_drop s2Step191HeadFvAfter [s2Step191HeadGOut,s2Step191HeadFOut,s2Step191HeadGvOut,s2Step191HeadFvOut] 0 s2Step191HeadBank_outgoingOwned

private theorem s2Step191HeadG_distinct : (s2Step191HeadGRow.sign::s2Step191HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191HeadG_owned : (s2Step191HeadGRow.sign::s2Step191HeadGRow.payload).toFinset⊆s2Step191HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step191HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191HeadG_reserved : s2Step191HeadGBefore.reserve s2Step191HeadGFresh.toFinset=some s2Step191HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step191HeadGFresh,arenaWires]
  · norm_num [s2Step191HeadGBefore,s2Step191HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step191HeadGAfter,s2Step191HeadGBefore,s2Step191HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step191HeadG_checked : planRowResizeLog s2Step191HeadGBefore s2Step191HeadGRow 175 s2Step191HeadGFresh=
    some (s2Step191HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829, 803],769⟩,growRow 769 s2Step191HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step191HeadGBefore s2Step191HeadGAfter s2Step191HeadGRow 175 s2Step191HeadGFresh
    s2Step191HeadG_distinct s2Step191HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step191HeadG_reserved
  have rowEq : WindowRow.mk (s2Step191HeadGRow.payload++s2Step191HeadGFresh) s2Step191HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829, 803],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step191HeadGvBefore : Arena := s2Step191HeadFAfter

private theorem s2Step191HeadGv_Incoming : rowsOwned s2Step191HeadGvBefore [s2Step191HeadGvRow,s2Step191HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step191HeadGRow,s2Step191HeadFRow,s2Step191HeadGvRow,s2Step191HeadFvRow] 2 s2Step191HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step191HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step191HeadGv_Outgoing : rowsOwned s2Step191HeadFvAfter [s2Step191HeadGvOut,s2Step191HeadFvOut] :=
  hmrRows_owned_drop s2Step191HeadFvAfter [s2Step191HeadGOut,s2Step191HeadFOut,s2Step191HeadGvOut,s2Step191HeadFvOut] 2 s2Step191HeadBank_outgoingOwned

private theorem s2Step191HeadGv_distinct : (s2Step191HeadGvRow.sign::s2Step191HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step191HeadGv_owned : (s2Step191HeadGvRow.sign::s2Step191HeadGvRow.payload).toFinset⊆s2Step191HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step191HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step191HeadGv_reserved : s2Step191HeadGvBefore.reserve s2Step191HeadGvFresh.toFinset=some s2Step191HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step191HeadGvFresh,arenaWires]
  · norm_num [s2Step191HeadGvBefore,s2Step191HeadFAfter,s2Step191HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step191HeadGvAfter,s2Step191HeadGvBefore,s2Step191HeadFAfter,s2Step191HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step191HeadGv_checked : planRowResizeLog s2Step191HeadGvBefore s2Step191HeadGvRow 111 s2Step191HeadGvFresh=
    some (s2Step191HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 784],771⟩,growRow 771 s2Step191HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step191HeadGvBefore s2Step191HeadGvAfter s2Step191HeadGvRow 111 s2Step191HeadGvFresh
    s2Step191HeadGv_distinct s2Step191HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step191HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step191HeadGvRow.payload++s2Step191HeadGvFresh) s2Step191HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 784],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step191HeadBank_rows : planWindowRowsLog s2Step191HeadGBefore [(s2Step191HeadGRow,175),(s2Step191HeadFRow,175),(s2Step191HeadGvRow,111),(s2Step191HeadFvRow,111)] [s2Step191HeadGFresh,s2Step191HeadFFresh,s2Step191HeadGvFresh,s2Step191HeadFvFresh]=
    some (s2Step191HeadFvAfter,[s2Step191HeadGOut,s2Step191HeadFOut,s2Step191HeadGvOut,s2Step191HeadFvOut],(growRow 769 s2Step191HeadGFresh ++ (growRow 768 s2Step191HeadFFresh ++ (growRow 771 s2Step191HeadGvFresh ++ (growRow 770 s2Step191HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step191HeadFvAfter [] []=some (s2Step191HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step191HeadFvBefore s2Step191HeadFvAfter s2Step191HeadFvAfter
    s2Step191HeadFvRow s2Step191HeadFvOut 111 s2Step191HeadFvFresh [] [] []
    (growRow 770 s2Step191HeadFvFresh) ([]) s2Step191HeadFv_Incoming s2Step191HeadFv_checked h4 s2Step191HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step191HeadGvBefore s2Step191HeadGvAfter s2Step191HeadFvAfter
    s2Step191HeadGvRow s2Step191HeadGvOut 111 s2Step191HeadGvFresh [(s2Step191HeadFvRow,111)] [s2Step191HeadFvFresh] [s2Step191HeadFvOut]
    (growRow 771 s2Step191HeadGvFresh) ((growRow 770 s2Step191HeadFvFresh ++ [])) s2Step191HeadGv_Incoming s2Step191HeadGv_checked h3 s2Step191HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step191HeadFBefore s2Step191HeadFAfter s2Step191HeadFvAfter
    s2Step191HeadFRow s2Step191HeadFOut 175 s2Step191HeadFFresh [(s2Step191HeadGvRow,111),(s2Step191HeadFvRow,111)] [s2Step191HeadGvFresh,s2Step191HeadFvFresh] [s2Step191HeadGvOut,s2Step191HeadFvOut]
    (growRow 768 s2Step191HeadFFresh) ((growRow 771 s2Step191HeadGvFresh ++ (growRow 770 s2Step191HeadFvFresh ++ []))) s2Step191HeadF_Incoming s2Step191HeadF_checked h2 s2Step191HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step191HeadGBefore s2Step191HeadGAfter s2Step191HeadFvAfter
    s2Step191HeadGRow s2Step191HeadGOut 175 s2Step191HeadGFresh [(s2Step191HeadFRow,175),(s2Step191HeadGvRow,111),(s2Step191HeadFvRow,111)] [s2Step191HeadFFresh,s2Step191HeadGvFresh,s2Step191HeadFvFresh] [s2Step191HeadFOut,s2Step191HeadGvOut,s2Step191HeadFvOut]
    (growRow 769 s2Step191HeadGFresh) ((growRow 768 s2Step191HeadFFresh ++ (growRow 771 s2Step191HeadGvFresh ++ (growRow 770 s2Step191HeadFvFresh ++ [])))) s2Step191HeadG_Incoming s2Step191HeadG_checked h1 s2Step191HeadG_Outgoing
  exact h0

private theorem s2Step191HeadBank_checked : compileHmrBankResizeLog .headroom s2Step191HeadGBefore ⟨s2Step191HeadFRow,s2Step191HeadGRow,s2Step191HeadFvRow,s2Step191HeadGvRow⟩ ⟨175,175,111,111⟩ [s2Step191HeadGFresh,s2Step191HeadFFresh,s2Step191HeadGvFresh,s2Step191HeadFvFresh]=
    some (s2Step191HeadFvAfter,⟨s2Step191HeadFOut,s2Step191HeadGOut,s2Step191HeadFvOut,s2Step191HeadGvOut⟩,(growRow 769 s2Step191HeadGFresh ++ (growRow 768 s2Step191HeadFFresh ++ (growRow 771 s2Step191HeadGvFresh ++ (growRow 770 s2Step191HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step191HeadBank_rows]
  rfl

private theorem s2Step191Front_checked : compileHmrSourceFrontLog s2Step191EntryFBefore s2Step191FrontBank 174 110 ⟨173,174,110,110⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step191FrontLog=some s2Step191FrontPlan := by
  have pairEq : s2Step191FrontPair=⟨s2Step191HeadFRow,s2Step191HeadGRow,s2Step191HeadFvRow,s2Step191HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step191FrontHead=⟨s2Step191ExitFRow,s2Step191ExitGRow,s2Step191ExitFvRow,s2Step191ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step191Add0A=s2Step191FrontHead.f.wires := by decide +kernel
  have gEq : s2Step191Add0B=s2Step191FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step191Add1A=s2Step191FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step191Add1B=s2Step191FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step191EntryFBefore s2Step191FrontBank 174 110 ⟨173,174,110,110⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step191FrontLog s2Step191FrontPlan
  · exact s2Step191Front_entry
  · exact s2Step191EntryBank_checked
  · exact s2Step191Front_sigma
  · rfl
  · exact s2Step191Front_branch
  · rfl
  · simpa only [s2Step191FrontPlan,pairEq] using s2Step191HeadBank_checked
  · simpa only [s2Step191FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step191F4_checked
  · exact s2Step191Counter_checked
  · rfl
  · simpa only [s2Step191FrontPlan,headEq] using s2Step191ExitBank_checked

private theorem s2Step191Complete_explicit_checked : compileHmrEarlyStepLog s2Step191EntryFBefore s2Step191FrontBank 174 110 ⟨173,174,110,110⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step191CompleteLog=some s2Step191CompletePlan := by
  let Q := s2Step191EarlyControlPlan
  have hq := s2Step191EarlyControl_plan_checked
  have fv1 : s2Step191CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step191CompleteOut.fv.payload[2]?.getD s2Step191CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step191CompleteOut.fv.payload[3]?.getD s2Step191CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step191CompleteOut.fv.payload[4]?.getD s2Step191CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step191EntryFBefore s2Step191EarlyControlArena s2Step191FrontBank 174 110 ⟨173,174,110,110⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step191CompleteLog s2Step191FrontPlan Q
    s2Step191Front_checked s2Step191Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step191Complete_owned s2Step191Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step191EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 817 s2Step191CompleteOut.fv.second (s2Step191CompleteOut.fv.payload[2]?.getD s2Step191CompleteOut.fv.sign) (s2Step191CompleteOut.fv.payload[3]?.getD s2Step191CompleteOut.fv.sign) (s2Step191CompleteOut.fv.payload[4]?.getD s2Step191CompleteOut.fv.sign) 827 43 s2Step191EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep191Arena : Arena := s2Step191EntryFBefore
def s2PrivateStep191Bank : WindowBank := s2Step191FrontBank
def s2PrivateStep191Spec : HmrSourceWalkStepLog := ⟨174,110,⟨173,174,110,110⟩,43,.early s2Step191CompleteLog⟩
def s2PrivateStep191Plan : HmrSourceStepPlan := .early s2Step191CompletePlan
theorem s2PrivateStep191_source : s2PrivateStep191Spec=s2ObservedLogs176[15] := rfl
theorem s2PrivateStep191_checked : compileHmrSourceStepLog s2PrivateStep191Arena s2PrivateStep191Bank
    s2PrivateStep191Spec.fgWidth s2PrivateStep191Spec.vWidth s2PrivateStep191Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]
    6 498 191 s2PrivateStep191Spec.need none s2PrivateStep191Spec.log=some s2PrivateStep191Plan := by
  change compileHmrSourceStepLog s2Step191EntryFBefore s2Step191FrontBank 174 110 ⟨173,174,110,110⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 6 498 191 43 none (.early s2Step191CompleteLog)=some (.early s2Step191CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 191<498)]
  rw [s2Step191Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
