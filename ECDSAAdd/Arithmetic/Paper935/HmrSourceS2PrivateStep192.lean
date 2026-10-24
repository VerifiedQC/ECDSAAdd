import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep190
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

private def s2Step192CompleteMoves : List (Wire × Wire) := []

private def s2Step192EarlyControlLog : HmrEarlyControlLog := ⟨[822, 827, 807, 829, 784],[840],[794],[867, 877, 879, 882, 885, 890],[]⟩

private def s2Step192FrontLog : HmrFrontAllocationLog := ⟨⟨[[827], [], [], []],[[784], [807], [822], [803]],[[], [], [], []]⟩,[817],[782],[840],[794],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[840, 794, 867, 877]⟩

private def s2Step192CompleteLog : HmrEarlyStepLog := ⟨s2Step192FrontLog,s2Step192CompleteMoves,s2Step192EarlyControlLog⟩

private def s2Step192ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684],768⟩

private def s2Step192ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803],770⟩

private def s2Step192ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172],769⟩

private def s2Step192ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825],771⟩

private def s2Step192FrontOut : WindowBank := ⟨s2Step192ExitFOut,s2Step192ExitGOut,s2Step192ExitFvOut,s2Step192ExitGvOut⟩

private def s2Step192CompleteOut : WindowBank := s2Step192FrontOut.repacked s2Step192CompleteMoves

private def s2Step192EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step192EarlyControlPositiveArena,[840],s2Step192EarlyControlEqualityArena,[794],⟨⟨817,false⟩,[⟨⟨840,false⟩,794⟩]⟩⟩

private def s2Step192EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step192EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step192EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,822⟩,⟨⟨774,false⟩,827⟩,⟨⟨775,false⟩,807⟩,⟨⟨776,false⟩,829⟩,⟨⟨777,false⟩,784⟩]⟩

private def s2Step192EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step192EarlyControlZeroArena,s2Step192EarlyControlZeroPlan,s2Step192EarlyControlClassPlan,s2Step192EarlyControlFlagArena,s2Step192EarlyControlFittedArena,s2Step192EarlyControlHistoryArena,s2Step192EarlyControlSigmaArena,s2Step192EarlyControlOutputArena,s2Step192EarlyControlLog⟩

private def s2Step192CounterWork : List Wire := [840, 794, 867, 877]

private theorem s2Step192Counter_bounded : s2Step192CounterWork.toFinset⊆arenaWires := by norm_num [s2Step192CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step192HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192CounterDuring : Arena := ⟨s2Step192HeadFvAfter.live∪s2Step192CounterWork.toFinset,Finset.union_subset s2Step192HeadFvAfter.bounded s2Step192Counter_bounded⟩

private def s2Step192EntryFFresh : List Wire := [827]

private def s2Step192EntryFvFresh : List Wire := []

private def s2Step192EntryGFresh : List Wire := []

private def s2Step192EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192EntryGvAfter : Arena := s2Step192EntryFAfter

private def s2Step192EntryGvFresh : List Wire := []

private def s2Step192ExitFExtra : List Wire := [827, 807]

private def s2Step192ExitGExtra : List Wire := [829, 784]

private def s2Step192ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192ExitGvExtra : List Wire := [822]

private def s2Step192Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192Add0Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step192Add0_bounded : s2Step192Add0Work.toFinset⊆arenaWires := by
  have h : s2Step192Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step192Add0During : Arena := ⟨s2Step192Add0Arena.live∪s2Step192Add0Work.toFinset,Finset.union_subset s2Step192Add0Arena.bounded s2Step192Add0_bounded⟩

private def s2Step192Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192Add1Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step192Add1_bounded : s2Step192Add1Work.toFinset⊆arenaWires := by
  have h : s2Step192Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step192Add1During : Arena := ⟨s2Step192Add1Arena.live∪s2Step192Add1Work.toFinset,Finset.union_subset s2Step192Add1Arena.bounded s2Step192Add1_bounded⟩

private def s2Step192F4FlagArena : Arena := ⟨s2Step192HeadFvAfter.live∪{840},Finset.union_subset s2Step192HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step192F4Plan : HmrHybridF4Plan := ⟨s2Step192F4FlagArena,[840],s2Step192Add0Arena,[794],s2Step192Add0During,s2Step192Add0Work,s2Step192Add1During,s2Step192Add1Work⟩

private def s2Step192HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 827, 807],768⟩

private def s2Step192HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803],770⟩

private def s2Step192HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829, 784],769⟩

private def s2Step192HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 822],771⟩

private def s2Step192FrontHead : WindowBank := ⟨s2Step192HeadFOut,s2Step192HeadGOut,s2Step192HeadFvOut,s2Step192HeadGvOut⟩

private def s2Step192EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 827],768⟩

private def s2Step192EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799],770⟩

private def s2Step192EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829],769⟩

private def s2Step192EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825],771⟩

private def s2Step192FrontPair : WindowBank := ⟨s2Step192EntryFOut,s2Step192EntryGOut,s2Step192EntryFvOut,s2Step192EntryGvOut⟩

private def s2Step192FrontSigmaArena : Arena := ⟨s2Step192EntryGvAfter.live∪{817},Finset.union_subset s2Step192EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step192HeadFFresh : List Wire := [807]

private def s2Step192HeadFvFresh : List Wire := [803]

private def s2Step192HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192HeadGFresh : List Wire := [784]

private def s2Step192HeadGvFresh : List Wire := [822]

private def s2Step192FrontPlan : HmrSourceFront := ⟨s2Step192EntryGvAfter,s2Step192FrontPair,(growRow 768 s2Step192EntryFFresh ++ (growRow 769 s2Step192EntryGFresh ++ (growRow 770 s2Step192EntryFvFresh ++ (growRow 771 s2Step192EntryGvFresh ++ [])))),s2Step192FrontSigmaArena,[817],s2Step192HeadGBefore,[782],
  s2Step192HeadFvAfter,s2Step192FrontHead,(growRow 769 s2Step192HeadGFresh ++ (growRow 768 s2Step192HeadFFresh ++ (growRow 771 s2Step192HeadGvFresh ++ (growRow 770 s2Step192HeadFvFresh ++ [])))),s2Step192F4Plan,s2Step192CounterDuring,s2Step192CounterWork,s2Step192ExitGvAfter,s2Step192FrontOut,(shrinkRow 769 s2Step192ExitGExtra ++ (shrinkRow 768 s2Step192ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step192ExitGvExtra ++ []))))⟩

private def s2Step192CompletePlan : HmrEarlyStepPlan := ⟨s2Step192FrontPlan,s2Step192EarlyControlArena,s2Step192EarlyControlPlan,s2Step192CompleteMoves⟩

private theorem s2Step192Complete_apart : List.Disjoint (s2Step192CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [817, 782, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] := by
  have nd : ((s2Step192CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[817, 782, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step192Complete_owned : (s2Step192CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step192EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step192EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192Complete_repack : s2Step192ExitGvAfter.checkRepack s2Step192CompleteMoves=some s2Step192EarlyControlArena := by rfl

private theorem s2Step192EarlyControl_branchOwned : ([782] : List Wire).toFinset⊆s2Step192EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step192EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192EarlyControl_branch : compileHmrBranchRetirement s2Step192EarlyControlSigmaArena 782=some s2Step192EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step192EarlyControl_branchOwned
  · ext q
    simp [s2Step192EarlyControlOutputArena,s2Step192EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step192EarlyControl_classEqualityBorrow : s2Step192EarlyControlPositiveArena.checkBorrow (([817, 840] : List Wire).length-1) s2Step192EarlyControlLog.classWork=some s2Step192EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step192EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step192EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step192EarlyControlEqualityArena,s2Step192EarlyControlPositiveArena,s2Step192EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step192EarlyControl_classEqualityOwned : ([817, 840] : List Wire).toFinset⊆s2Step192EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step192EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192EarlyControl_classEquality : compileHmrEqualityLog s2Step192EarlyControlPositiveArena [817, 840] 0 s2Step192EarlyControlLog.classWork=some (s2Step192EarlyControlEqualityArena,s2Step192EarlyControlLog.classWork,s2Step192EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step192EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step192EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step192EarlyControl_classOwned : ([777, 784, 817] : List Wire).toFinset⊆s2Step192EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step192EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192EarlyControl_positiveBorrow : s2Step192EarlyControlZeroArena.checkBorrow (1) s2Step192EarlyControlLog.positiveWork=some s2Step192EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step192EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step192EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step192EarlyControlPositiveArena,s2Step192EarlyControlZeroArena,s2Step192EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step192EarlyControl_class : compileHmrSourceClassLog s2Step192EarlyControlZeroArena false 777 s2Step192EarlyControlZeroPlan.top 0 817 s2Step192EarlyControlLog.positiveWork s2Step192EarlyControlLog.classWork=some s2Step192EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step192EarlyControlClassPlan s2Step192EarlyControlZeroArena false 777 s2Step192EarlyControlZeroPlan.top 0 817
  constructor
  · decide +kernel
  · exact s2Step192EarlyControl_classOwned
  · exact s2Step192EarlyControl_positiveBorrow
  · exact s2Step192EarlyControl_classEquality

private theorem s2Step192EarlyControl_entryRecordOwned : ([782, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step192EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step192EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192EarlyControl_entrySigmaOwned : ([817, 254] : List Wire).toFinset⊆s2Step192EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step192EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192EarlyControl_fitBorrow : s2Step192EarlyControlFlagArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step192EarlyControlLog.recordFresh=some s2Step192EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step192EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step192EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
      decide +kernel
    · ext q
      simp [s2Step192EarlyControlFittedArena,s2Step192EarlyControlFlagArena,s2Step192EarlyControlLog,arenaWires]

private theorem s2Step192EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step192EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step192EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step192EarlyControl_fit : compileHmrRecordGrowLog s2Step192EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step192EarlyControlLog.recordFresh=some s2Step192EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step192EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step192EarlyControl_fitBorrow

private theorem s2Step192EarlyControl_flagsBorrow : s2Step192EarlyControlEqualityArena.checkBorrow (6) s2Step192EarlyControlLog.flagWork=some s2Step192EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step192EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step192EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step192EarlyControlFlagArena,s2Step192EarlyControlEqualityArena,s2Step192EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step192EarlyControl_flagsOwned : ([794, 253, 252, 251] : List Wire).toFinset⊆s2Step192EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step192EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192EarlyControl_flags : compileHmrFlagsLog s2Step192EarlyControlClassPlan.equalityArena s2Step192EarlyControlClassPlan.equality.top 253 252 251 s2Step192EarlyControlLog.flagWork=some s2Step192EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step192EarlyControl_flagsOwned⟩
  · exact s2Step192EarlyControl_flagsBorrow

private theorem s2Step192EarlyControl_historyBorrow : s2Step192EarlyControlArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step192EarlyControlLog.recordFresh=some s2Step192EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step192EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step192EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step192EarlyControlHistoryArena,s2Step192EarlyControlArena,s2Step192EarlyControlLog,arenaWires]

private theorem s2Step192EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step192EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step192EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192EarlyControl_history : compileHmrRecordGrowLog s2Step192EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step192EarlyControlLog.recordFresh=some s2Step192EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step192EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step192EarlyControl_historyBorrow

private theorem s2Step192EarlyControl_sigmaOwned : ([254, 817] : List Wire).toFinset⊆s2Step192EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step192EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192EarlyControl_sigmaReleaseOwned : ([817] : List Wire).toFinset⊆s2Step192EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step192EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192EarlyControl_sigmaRelease : s2Step192EarlyControlHistoryArena.release {817} (fun _ => false)=some s2Step192EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step192EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step192EarlyControlSigmaArena,s2Step192EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step192EarlyControl_sigma : compileHmrSigmaDropLog s2Step192EarlyControlHistoryArena false 0 0 254 817 []=some s2Step192EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step192EarlyControl_sigmaOwned⟩
  · exact s2Step192EarlyControl_sigmaRelease

private theorem s2Step192EarlyControl_zeroBorrow : s2Step192EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step192EarlyControlLog.zeroWork=some s2Step192EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step192EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step192EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step192EarlyControlZeroArena,s2Step192EarlyControlArena,s2Step192EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step192EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step192EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step192EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192EarlyControl_zero : compileHmrEqualityLog s2Step192EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step192EarlyControlLog.zeroWork=some (s2Step192EarlyControlZeroArena,s2Step192EarlyControlLog.zeroWork,s2Step192EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step192EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step192EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step192EarlyControl_logged : s2Step192EarlyControlPlan.Logged s2Step192EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 817 254 253 252 251 782 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step192EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step192EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step192EarlyControl_zero
  · exact s2Step192EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step192EarlyControl_flags
  · exact s2Step192EarlyControl_fit
  · exact s2Step192EarlyControl_history
  · exact s2Step192EarlyControl_sigma
  · exact s2Step192EarlyControl_branch

private theorem s2Step192EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step192EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 817 254 253 252 251 782 43 s2Step192EarlyControlLog=some s2Step192EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step192EarlyControlPlan s2Step192EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 817 254 253 252 251 782 43 s2Step192EarlyControl_logged

private def s2Step192EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684],768⟩

private def s2Step192EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799],770⟩

private def s2Step192EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829],769⟩

private def s2Step192EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825],771⟩

private def s2Step192FrontBank : WindowBank := ⟨s2Step192EntryFRow,s2Step192EntryGRow,s2Step192EntryFvRow,s2Step192EntryGvRow⟩

private def s2Step192Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 827, 807, 768]

private def s2Step192Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829, 784, 769]

private def s2Step192Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 770]

private def s2Step192Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 822, 771]

private theorem s2Step192Counter_apart : Disjoint s2Step192HeadFvAfter.live s2Step192CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step192HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192Counter_borrowed : s2Step192HeadFvAfter.checkBorrow 4 s2Step192CounterWork=some s2Step192CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step192HeadFvAfter s2Step192CounterDuring s2Step192CounterWork.toFinset s2Step192Counter_bounded s2Step192Counter_apart rfl

private theorem s2Step192Counter_owned : (817::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step192HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step192HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192Counter_checked : compileHmrCounterStepLog s2Step192HeadFvAfter true 817 [772, 773, 774, 775, 776, 777] s2Step192CounterWork=some s2Step192CounterDuring := by
  have owned : ∀q∈817::[772, 773, 774, 775, 776, 777],q∈s2Step192HeadFvAfter.live := fun q hq => s2Step192Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step192Counter_borrowed

private theorem s2Step192EntryBank_incomingDistinct : ([s2Step192EntryFRow,s2Step192EntryGRow,s2Step192EntryFvRow,s2Step192EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192EntryF_Incoming : rowsOwned s2Step192EntryFBefore [s2Step192EntryFRow,s2Step192EntryGRow,s2Step192EntryFvRow,s2Step192EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step192EntryFRow,s2Step192EntryGRow,s2Step192EntryFvRow,s2Step192EntryGvRow] 0 s2Step192EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step192EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step192EntryBank_outgoingOwned : rowsOwned s2Step192EntryGvAfter [s2Step192EntryFOut,s2Step192EntryGOut,s2Step192EntryFvOut,s2Step192EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step192EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step192EntryF_Outgoing : rowsOwned s2Step192EntryGvAfter [s2Step192EntryFOut,s2Step192EntryGOut,s2Step192EntryFvOut,s2Step192EntryGvOut] :=
  hmrRows_owned_drop s2Step192EntryGvAfter [s2Step192EntryFOut,s2Step192EntryGOut,s2Step192EntryFvOut,s2Step192EntryGvOut] 0 s2Step192EntryBank_outgoingOwned

private theorem s2Step192EntryF_distinct : (s2Step192EntryFRow.sign::s2Step192EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192EntryF_owned : (s2Step192EntryFRow.sign::s2Step192EntryFRow.payload).toFinset⊆s2Step192EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step192EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192EntryF_reserved : s2Step192EntryFBefore.reserve s2Step192EntryFFresh.toFinset=some s2Step192EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step192EntryFFresh,arenaWires]
  · norm_num [s2Step192EntryFBefore,s2Step192EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step192EntryFAfter,s2Step192EntryFBefore,s2Step192EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step192EntryF_checked : planRowResizeLog s2Step192EntryFBefore s2Step192EntryFRow 174 s2Step192EntryFFresh=
    some (s2Step192EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 827],768⟩,growRow 768 s2Step192EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step192EntryFBefore s2Step192EntryFAfter s2Step192EntryFRow 174 s2Step192EntryFFresh
    s2Step192EntryF_distinct s2Step192EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step192EntryF_reserved
  have rowEq : WindowRow.mk (s2Step192EntryFRow.payload++s2Step192EntryFFresh) s2Step192EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 827],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step192EntryFvAfter : Arena := s2Step192EntryFAfter

private def s2Step192EntryFvBefore : Arena := s2Step192EntryFAfter

private theorem s2Step192EntryFv_Incoming : rowsOwned s2Step192EntryFvBefore [s2Step192EntryFvRow,s2Step192EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step192EntryFRow,s2Step192EntryGRow,s2Step192EntryFvRow,s2Step192EntryGvRow] 2 s2Step192EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step192EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step192EntryFv_Outgoing : rowsOwned s2Step192EntryGvAfter [s2Step192EntryFvOut,s2Step192EntryGvOut] :=
  hmrRows_owned_drop s2Step192EntryGvAfter [s2Step192EntryFOut,s2Step192EntryGOut,s2Step192EntryFvOut,s2Step192EntryGvOut] 2 s2Step192EntryBank_outgoingOwned

private theorem s2Step192EntryFv_distinct : (s2Step192EntryFvRow.sign::s2Step192EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192EntryFv_owned : (s2Step192EntryFvRow.sign::s2Step192EntryFvRow.payload).toFinset⊆s2Step192EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step192EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192EntryFv_reserved : s2Step192EntryFvBefore.reserve s2Step192EntryFvFresh.toFinset=some s2Step192EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step192EntryFvFresh,arenaWires]
  · norm_num [s2Step192EntryFvBefore,s2Step192EntryFAfter,s2Step192EntryFvFresh,arenaWires]
  · simp only [s2Step192EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step192EntryFv_checked : planRowResizeLog s2Step192EntryFvBefore s2Step192EntryFvRow 110 s2Step192EntryFvFresh=
    some (s2Step192EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799],770⟩,growRow 770 s2Step192EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step192EntryFvBefore s2Step192EntryFvAfter s2Step192EntryFvRow 110 s2Step192EntryFvFresh
    s2Step192EntryFv_distinct s2Step192EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step192EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step192EntryFvRow.payload++s2Step192EntryFvFresh) s2Step192EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step192EntryGAfter : Arena := s2Step192EntryFAfter

private def s2Step192EntryGBefore : Arena := s2Step192EntryFAfter

private theorem s2Step192EntryG_Incoming : rowsOwned s2Step192EntryGBefore [s2Step192EntryGRow,s2Step192EntryFvRow,s2Step192EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step192EntryFRow,s2Step192EntryGRow,s2Step192EntryFvRow,s2Step192EntryGvRow] 1 s2Step192EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step192EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step192EntryG_Outgoing : rowsOwned s2Step192EntryGvAfter [s2Step192EntryGOut,s2Step192EntryFvOut,s2Step192EntryGvOut] :=
  hmrRows_owned_drop s2Step192EntryGvAfter [s2Step192EntryFOut,s2Step192EntryGOut,s2Step192EntryFvOut,s2Step192EntryGvOut] 1 s2Step192EntryBank_outgoingOwned

private theorem s2Step192EntryG_distinct : (s2Step192EntryGRow.sign::s2Step192EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192EntryG_owned : (s2Step192EntryGRow.sign::s2Step192EntryGRow.payload).toFinset⊆s2Step192EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step192EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192EntryG_reserved : s2Step192EntryGBefore.reserve s2Step192EntryGFresh.toFinset=some s2Step192EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step192EntryGFresh,arenaWires]
  · norm_num [s2Step192EntryGBefore,s2Step192EntryFAfter,s2Step192EntryGFresh,arenaWires]
  · simp only [s2Step192EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step192EntryG_checked : planRowResizeLog s2Step192EntryGBefore s2Step192EntryGRow 174 s2Step192EntryGFresh=
    some (s2Step192EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829],769⟩,growRow 769 s2Step192EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step192EntryGBefore s2Step192EntryGAfter s2Step192EntryGRow 174 s2Step192EntryGFresh
    s2Step192EntryG_distinct s2Step192EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step192EntryG_reserved
  have rowEq : WindowRow.mk (s2Step192EntryGRow.payload++s2Step192EntryGFresh) s2Step192EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step192EntryGvBefore : Arena := s2Step192EntryFAfter

private theorem s2Step192EntryGv_Incoming : rowsOwned s2Step192EntryGvBefore [s2Step192EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step192EntryFRow,s2Step192EntryGRow,s2Step192EntryFvRow,s2Step192EntryGvRow] 3 s2Step192EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step192EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step192EntryGv_Outgoing : rowsOwned s2Step192EntryGvAfter [s2Step192EntryGvOut] :=
  hmrRows_owned_drop s2Step192EntryGvAfter [s2Step192EntryFOut,s2Step192EntryGOut,s2Step192EntryFvOut,s2Step192EntryGvOut] 3 s2Step192EntryBank_outgoingOwned

private theorem s2Step192EntryGv_distinct : (s2Step192EntryGvRow.sign::s2Step192EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192EntryGv_owned : (s2Step192EntryGvRow.sign::s2Step192EntryGvRow.payload).toFinset⊆s2Step192EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step192EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192EntryGv_reserved : s2Step192EntryGvBefore.reserve s2Step192EntryGvFresh.toFinset=some s2Step192EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step192EntryGvFresh,arenaWires]
  · norm_num [s2Step192EntryGvBefore,s2Step192EntryFAfter,s2Step192EntryGvFresh,arenaWires]
  · simp only [s2Step192EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step192EntryGv_checked : planRowResizeLog s2Step192EntryGvBefore s2Step192EntryGvRow 110 s2Step192EntryGvFresh=
    some (s2Step192EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825],771⟩,growRow 771 s2Step192EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step192EntryGvBefore s2Step192EntryGvAfter s2Step192EntryGvRow 110 s2Step192EntryGvFresh
    s2Step192EntryGv_distinct s2Step192EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step192EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step192EntryGvRow.payload++s2Step192EntryGvFresh) s2Step192EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step192EntryBank_rows : planWindowRowsLog s2Step192EntryFBefore [(s2Step192EntryFRow,174),(s2Step192EntryGRow,174),(s2Step192EntryFvRow,110),(s2Step192EntryGvRow,110)] [s2Step192EntryFFresh,s2Step192EntryGFresh,s2Step192EntryFvFresh,s2Step192EntryGvFresh]=
    some (s2Step192EntryGvAfter,[s2Step192EntryFOut,s2Step192EntryGOut,s2Step192EntryFvOut,s2Step192EntryGvOut],(growRow 768 s2Step192EntryFFresh ++ (growRow 769 s2Step192EntryGFresh ++ (growRow 770 s2Step192EntryFvFresh ++ (growRow 771 s2Step192EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step192EntryGvAfter [] []=some (s2Step192EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step192EntryGvBefore s2Step192EntryGvAfter s2Step192EntryGvAfter
    s2Step192EntryGvRow s2Step192EntryGvOut 110 s2Step192EntryGvFresh [] [] []
    (growRow 771 s2Step192EntryGvFresh) ([]) s2Step192EntryGv_Incoming s2Step192EntryGv_checked h4 s2Step192EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step192EntryFvBefore s2Step192EntryFvAfter s2Step192EntryGvAfter
    s2Step192EntryFvRow s2Step192EntryFvOut 110 s2Step192EntryFvFresh [(s2Step192EntryGvRow,110)] [s2Step192EntryGvFresh] [s2Step192EntryGvOut]
    (growRow 770 s2Step192EntryFvFresh) ((growRow 771 s2Step192EntryGvFresh ++ [])) s2Step192EntryFv_Incoming s2Step192EntryFv_checked h3 s2Step192EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step192EntryGBefore s2Step192EntryGAfter s2Step192EntryGvAfter
    s2Step192EntryGRow s2Step192EntryGOut 174 s2Step192EntryGFresh [(s2Step192EntryFvRow,110),(s2Step192EntryGvRow,110)] [s2Step192EntryFvFresh,s2Step192EntryGvFresh] [s2Step192EntryFvOut,s2Step192EntryGvOut]
    (growRow 769 s2Step192EntryGFresh) ((growRow 770 s2Step192EntryFvFresh ++ (growRow 771 s2Step192EntryGvFresh ++ []))) s2Step192EntryG_Incoming s2Step192EntryG_checked h2 s2Step192EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step192EntryFBefore s2Step192EntryFAfter s2Step192EntryGvAfter
    s2Step192EntryFRow s2Step192EntryFOut 174 s2Step192EntryFFresh [(s2Step192EntryGRow,174),(s2Step192EntryFvRow,110),(s2Step192EntryGvRow,110)] [s2Step192EntryGFresh,s2Step192EntryFvFresh,s2Step192EntryGvFresh] [s2Step192EntryGOut,s2Step192EntryFvOut,s2Step192EntryGvOut]
    (growRow 768 s2Step192EntryFFresh) ((growRow 769 s2Step192EntryGFresh ++ (growRow 770 s2Step192EntryFvFresh ++ (growRow 771 s2Step192EntryGvFresh ++ [])))) s2Step192EntryF_Incoming s2Step192EntryF_checked h1 s2Step192EntryF_Outgoing
  exact h0

private theorem s2Step192EntryBank_checked : compileHmrBankResizeLog .entry s2Step192EntryFBefore ⟨s2Step192EntryFRow,s2Step192EntryGRow,s2Step192EntryFvRow,s2Step192EntryGvRow⟩ ⟨174,174,110,110⟩ [s2Step192EntryFFresh,s2Step192EntryGFresh,s2Step192EntryFvFresh,s2Step192EntryGvFresh]=
    some (s2Step192EntryGvAfter,⟨s2Step192EntryFOut,s2Step192EntryGOut,s2Step192EntryFvOut,s2Step192EntryGvOut⟩,(growRow 768 s2Step192EntryFFresh ++ (growRow 769 s2Step192EntryGFresh ++ (growRow 770 s2Step192EntryFvFresh ++ (growRow 771 s2Step192EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step192EntryBank_rows]
  rfl

private def s2Step192ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192ExitFBefore : Arena := s2Step192ExitGAfter

private def s2Step192ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 827, 807],768⟩

private def s2Step192ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803],770⟩

private def s2Step192ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829, 784],769⟩

private def s2Step192ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 822],771⟩

private theorem s2Step192ExitBank_incomingDistinct : ([s2Step192ExitGRow,s2Step192ExitFRow,s2Step192ExitFvRow,s2Step192ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192ExitF_Incoming : rowsOwned s2Step192ExitFBefore [s2Step192ExitFRow,s2Step192ExitFvRow,s2Step192ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step192ExitGRow,s2Step192ExitFRow,s2Step192ExitFvRow,s2Step192ExitGvRow] 1 s2Step192ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step192ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step192ExitBank_outgoingOwned : rowsOwned s2Step192ExitGvAfter [s2Step192ExitGOut,s2Step192ExitFOut,s2Step192ExitFvOut,s2Step192ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step192ExitGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step192ExitF_Outgoing : rowsOwned s2Step192ExitGvAfter [s2Step192ExitFOut,s2Step192ExitFvOut,s2Step192ExitGvOut] :=
  hmrRows_owned_drop s2Step192ExitGvAfter [s2Step192ExitGOut,s2Step192ExitFOut,s2Step192ExitFvOut,s2Step192ExitGvOut] 1 s2Step192ExitBank_outgoingOwned

private theorem s2Step192ExitF_distinct : (s2Step192ExitFRow.sign::s2Step192ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192ExitF_owned : (s2Step192ExitFRow.sign::s2Step192ExitFRow.payload).toFinset⊆s2Step192ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step192ExitFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192ExitF_retired : s2Step192ExitFBefore.retireSet s2Step192ExitFExtra.toFinset=s2Step192ExitFAfter := by
  unfold Arena.retireSet s2Step192ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step192ExitFBefore,s2Step192ExitGAfter,s2Step192ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step192ExitF_checked : planRowResizeLog s2Step192ExitFBefore s2Step192ExitFRow 173 []=
    some (s2Step192ExitFAfter,s2Step192ExitFOut,shrinkRow 768 s2Step192ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step192ExitFBefore s2Step192ExitFRow 173 s2Step192ExitF_distinct s2Step192ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step192ExitFRow.payload.take 173) s2Step192ExitFRow.sign=s2Step192ExitFOut := by decide +kernel
  have hi : s2Step192ExitFRow.payload.drop 173=s2Step192ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step192ExitF_retired] at result
  exact result

private def s2Step192ExitFvAfter : Arena := s2Step192ExitFAfter

private def s2Step192ExitFvBefore : Arena := s2Step192ExitFAfter

private theorem s2Step192ExitFv_Incoming : rowsOwned s2Step192ExitFvBefore [s2Step192ExitFvRow,s2Step192ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step192ExitGRow,s2Step192ExitFRow,s2Step192ExitFvRow,s2Step192ExitGvRow] 2 s2Step192ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step192ExitFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step192ExitFv_Outgoing : rowsOwned s2Step192ExitGvAfter [s2Step192ExitFvOut,s2Step192ExitGvOut] :=
  hmrRows_owned_drop s2Step192ExitGvAfter [s2Step192ExitGOut,s2Step192ExitFOut,s2Step192ExitFvOut,s2Step192ExitGvOut] 2 s2Step192ExitBank_outgoingOwned

private theorem s2Step192ExitFv_distinct : (s2Step192ExitFvRow.sign::s2Step192ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192ExitFv_owned : (s2Step192ExitFvRow.sign::s2Step192ExitFvRow.payload).toFinset⊆s2Step192ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step192ExitFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192ExitFv_reserved : s2Step192ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step192ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step192ExitFv_checked : planRowResizeLog s2Step192ExitFvBefore s2Step192ExitFvRow 111 []=
    some (s2Step192ExitFvAfter,s2Step192ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step192ExitFvBefore s2Step192ExitFvAfter s2Step192ExitFvRow 111 []
    s2Step192ExitFv_distinct s2Step192ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step192ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step192ExitFvRow.payload++[]) s2Step192ExitFvRow.sign=s2Step192ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step192ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step192ExitG_Incoming : rowsOwned s2Step192ExitGBefore [s2Step192ExitGRow,s2Step192ExitFRow,s2Step192ExitFvRow,s2Step192ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step192ExitGRow,s2Step192ExitFRow,s2Step192ExitFvRow,s2Step192ExitGvRow] 0 s2Step192ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step192ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step192ExitG_Outgoing : rowsOwned s2Step192ExitGvAfter [s2Step192ExitGOut,s2Step192ExitFOut,s2Step192ExitFvOut,s2Step192ExitGvOut] :=
  hmrRows_owned_drop s2Step192ExitGvAfter [s2Step192ExitGOut,s2Step192ExitFOut,s2Step192ExitFvOut,s2Step192ExitGvOut] 0 s2Step192ExitBank_outgoingOwned

private theorem s2Step192ExitG_distinct : (s2Step192ExitGRow.sign::s2Step192ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192ExitG_owned : (s2Step192ExitGRow.sign::s2Step192ExitGRow.payload).toFinset⊆s2Step192ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step192ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192ExitG_retired : s2Step192ExitGBefore.retireSet s2Step192ExitGExtra.toFinset=s2Step192ExitGAfter := by
  unfold Arena.retireSet s2Step192ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step192ExitGBefore,s2Step192ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step192ExitG_checked : planRowResizeLog s2Step192ExitGBefore s2Step192ExitGRow 173 []=
    some (s2Step192ExitGAfter,s2Step192ExitGOut,shrinkRow 769 s2Step192ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step192ExitGBefore s2Step192ExitGRow 173 s2Step192ExitG_distinct s2Step192ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step192ExitGRow.payload.take 173) s2Step192ExitGRow.sign=s2Step192ExitGOut := by decide +kernel
  have hi : s2Step192ExitGRow.payload.drop 173=s2Step192ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step192ExitG_retired] at result
  exact result

private def s2Step192ExitGvBefore : Arena := s2Step192ExitFAfter

private theorem s2Step192ExitGv_Incoming : rowsOwned s2Step192ExitGvBefore [s2Step192ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step192ExitGRow,s2Step192ExitFRow,s2Step192ExitFvRow,s2Step192ExitGvRow] 3 s2Step192ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step192ExitGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step192ExitGv_Outgoing : rowsOwned s2Step192ExitGvAfter [s2Step192ExitGvOut] :=
  hmrRows_owned_drop s2Step192ExitGvAfter [s2Step192ExitGOut,s2Step192ExitFOut,s2Step192ExitFvOut,s2Step192ExitGvOut] 3 s2Step192ExitBank_outgoingOwned

private theorem s2Step192ExitGv_distinct : (s2Step192ExitGvRow.sign::s2Step192ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192ExitGv_owned : (s2Step192ExitGvRow.sign::s2Step192ExitGvRow.payload).toFinset⊆s2Step192ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step192ExitGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192ExitGv_retired : s2Step192ExitGvBefore.retireSet s2Step192ExitGvExtra.toFinset=s2Step192ExitGvAfter := by
  unfold Arena.retireSet s2Step192ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step192ExitGvBefore,s2Step192ExitFAfter,s2Step192ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step192ExitGv_checked : planRowResizeLog s2Step192ExitGvBefore s2Step192ExitGvRow 110 []=
    some (s2Step192ExitGvAfter,s2Step192ExitGvOut,shrinkRow 771 s2Step192ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step192ExitGvBefore s2Step192ExitGvRow 110 s2Step192ExitGv_distinct s2Step192ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step192ExitGvRow.payload.take 110) s2Step192ExitGvRow.sign=s2Step192ExitGvOut := by decide +kernel
  have hi : s2Step192ExitGvRow.payload.drop 110=s2Step192ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step192ExitGv_retired] at result
  exact result

private theorem s2Step192ExitBank_rows : planWindowRowsLog s2Step192ExitGBefore [(s2Step192ExitGRow,173),(s2Step192ExitFRow,173),(s2Step192ExitFvRow,111),(s2Step192ExitGvRow,110)] [[],[],[],[]]=
    some (s2Step192ExitGvAfter,[s2Step192ExitGOut,s2Step192ExitFOut,s2Step192ExitFvOut,s2Step192ExitGvOut],(shrinkRow 769 s2Step192ExitGExtra ++ (shrinkRow 768 s2Step192ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step192ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step192ExitGvAfter [] []=some (s2Step192ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step192ExitGvBefore s2Step192ExitGvAfter s2Step192ExitGvAfter
    s2Step192ExitGvRow s2Step192ExitGvOut 110 [] [] [] []
    (shrinkRow 771 s2Step192ExitGvExtra) ([]) s2Step192ExitGv_Incoming s2Step192ExitGv_checked h4 s2Step192ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step192ExitFvBefore s2Step192ExitFvAfter s2Step192ExitGvAfter
    s2Step192ExitFvRow s2Step192ExitFvOut 111 [] [(s2Step192ExitGvRow,110)] [[]] [s2Step192ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step192ExitGvExtra ++ [])) s2Step192ExitFv_Incoming s2Step192ExitFv_checked h3 s2Step192ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step192ExitFBefore s2Step192ExitFAfter s2Step192ExitGvAfter
    s2Step192ExitFRow s2Step192ExitFOut 173 [] [(s2Step192ExitFvRow,111),(s2Step192ExitGvRow,110)] [[],[]] [s2Step192ExitFvOut,s2Step192ExitGvOut]
    (shrinkRow 768 s2Step192ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step192ExitGvExtra ++ []))) s2Step192ExitF_Incoming s2Step192ExitF_checked h2 s2Step192ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step192ExitGBefore s2Step192ExitGAfter s2Step192ExitGvAfter
    s2Step192ExitGRow s2Step192ExitGOut 173 [] [(s2Step192ExitFRow,173),(s2Step192ExitFvRow,111),(s2Step192ExitGvRow,110)] [[],[],[]] [s2Step192ExitFOut,s2Step192ExitFvOut,s2Step192ExitGvOut]
    (shrinkRow 769 s2Step192ExitGExtra) ((shrinkRow 768 s2Step192ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step192ExitGvExtra ++ [])))) s2Step192ExitG_Incoming s2Step192ExitG_checked h1 s2Step192ExitG_Outgoing
  exact h0

private theorem s2Step192ExitBank_checked : compileHmrBankResizeLog .exit s2Step192ExitGBefore ⟨s2Step192ExitFRow,s2Step192ExitGRow,s2Step192ExitFvRow,s2Step192ExitGvRow⟩ ⟨173,173,111,110⟩ [[],[],[],[]]=
    some (s2Step192ExitGvAfter,⟨s2Step192ExitFOut,s2Step192ExitGOut,s2Step192ExitFvOut,s2Step192ExitGvOut⟩,(shrinkRow 769 s2Step192ExitGExtra ++ (shrinkRow 768 s2Step192ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step192ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step192ExitBank_rows]
  rfl

private theorem s2Step192Add0_apart : Disjoint s2Step192Add0Arena.live s2Step192Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step192Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192Add0_card : s2Step192Add0Arena.live.card=885 := by
  decide +kernel

private theorem s2Step192Add0_borrowed : s2Step192Add0Arena.checkBorrow (hmrHybridCount s2Step192Add0Arena s2Step192Add0B.length) s2Step192Add0Work=some s2Step192Add0During := by
  have len : s2Step192Add0Work.length=hmrHybridCount s2Step192Add0Arena s2Step192Add0B.length := by
    rw [hmrHybridCount,s2Step192Add0_card]
    decide +kernel
  have nd : s2Step192Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step192Add0Arena s2Step192Add0During s2Step192Add0Work.toFinset s2Step192Add0_bounded s2Step192Add0_apart rfl

private theorem s2Step192Add0_distinct : (840::782::794::(s2Step192Add0A++s2Step192Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192Add0_owned : (840::782::794::(s2Step192Add0A++s2Step192Add0B)).toFinset⊆s2Step192Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step192Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192Add0_checked : compileHmrHybridCinLog s2Step192Add0Arena 782 840 794 s2Step192Add0A s2Step192Add0B s2Step192Add0Work=some s2Step192Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step192Add0Arena s2Step192Add0During 782 840 794 s2Step192Add0A s2Step192Add0B s2Step192Add0Work
    (by decide +kernel) (by decide +kernel) s2Step192Add0_distinct
    (fun q hq => s2Step192Add0_owned (List.mem_toFinset.mpr hq)) s2Step192Add0_borrowed

private theorem s2Step192Add1_apart : Disjoint s2Step192Add1Arena.live s2Step192Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step192Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192Add1_card : s2Step192Add1Arena.live.card=885 := by
  decide +kernel

private theorem s2Step192Add1_borrowed : s2Step192Add1Arena.checkBorrow (hmrHybridCount s2Step192Add1Arena s2Step192Add1B.length) s2Step192Add1Work=some s2Step192Add1During := by
  have len : s2Step192Add1Work.length=hmrHybridCount s2Step192Add1Arena s2Step192Add1B.length := by
    rw [hmrHybridCount,s2Step192Add1_card]
    decide +kernel
  have nd : s2Step192Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step192Add1Arena s2Step192Add1During s2Step192Add1Work.toFinset s2Step192Add1_bounded s2Step192Add1_apart rfl

private theorem s2Step192Add1_distinct : (840::782::794::(s2Step192Add1A++s2Step192Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192Add1_owned : (840::782::794::(s2Step192Add1A++s2Step192Add1B)).toFinset⊆s2Step192Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step192Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192Add1_checked : compileHmrHybridCinLog s2Step192Add1Arena 782 840 794 s2Step192Add1A s2Step192Add1B s2Step192Add1Work=some s2Step192Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step192Add1Arena s2Step192Add1During 782 840 794 s2Step192Add1A s2Step192Add1B s2Step192Add1Work
    (by decide +kernel) (by decide +kernel) s2Step192Add1_distinct
    (fun q hq => s2Step192Add1_owned (List.mem_toFinset.mpr hq)) s2Step192Add1_borrowed

private theorem s2Step192F4_apart : Disjoint (s2Step192Add0A++s2Step192Add0B).toFinset (s2Step192Add1A++s2Step192Add1B).toFinset := by
  have nd : ((s2Step192Add0A++s2Step192Add0B)++(s2Step192Add1A++s2Step192Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step192F4_carry : s2Step192F4FlagArena.checkBorrow 1 [794]=some s2Step192Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step192F4FlagArena,s2Step192HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step192F4FlagArena,s2Step192HeadFvAfter,s2Step192Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step192F4_distinct : (817::782::840::794::((s2Step192Add0A++s2Step192Add1A)++(s2Step192Add0B++s2Step192Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192F4_flag : s2Step192HeadFvAfter.checkBorrow 1 [840]=some s2Step192F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step192HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step192F4_owned : (817::782::((s2Step192Add0A++s2Step192Add1A)++(s2Step192Add0B++s2Step192Add1B))).toFinset⊆s2Step192HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step192HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192F4_checked : compileHmrHybridF4Log s2Step192HeadFvAfter 817 782 s2Step192Add0A s2Step192Add0B s2Step192Add1A s2Step192Add1B [840] [794] s2Step192Add0Work s2Step192Add1Work=some s2Step192F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step192HeadFvAfter s2Step192F4FlagArena s2Step192Add0Arena s2Step192Add0During s2Step192Add1During 817 782
    s2Step192Add0A s2Step192Add0B s2Step192Add1A s2Step192Add1B [840] [794] s2Step192Add0Work s2Step192Add1Work
    (fun q hq => s2Step192F4_owned (List.mem_toFinset.mpr hq)) s2Step192F4_flag s2Step192F4_carry
    s2Step192F4_distinct s2Step192F4_apart s2Step192Add0_checked s2Step192Add1_checked

private theorem s2Step192Front_branch : s2Step192FrontSigmaArena.checkBorrow 1 [782]=some s2Step192HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step192FrontSigmaArena,s2Step192EntryGvAfter,s2Step192EntryFAfter,arenaWires]
  · ext q
    simp only [s2Step192FrontSigmaArena,s2Step192EntryGvAfter,s2Step192EntryFAfter,s2Step192HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step192Front_entry : HmrFrontEntryValid s2Step192EntryFBefore s2Step192FrontBank 174 110 ⟨173,173,111,110⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step192FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step192EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step192EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step192FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step192Front_sigma : s2Step192EntryGvAfter.checkBorrow 1 [817]=some s2Step192FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step192EntryGvAfter,s2Step192EntryFAfter,arenaWires]
  · rfl

private def s2Step192HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192HeadFBefore : Arena := s2Step192HeadGAfter

private def s2Step192HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 827],768⟩

private def s2Step192HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799],770⟩

private def s2Step192HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829],769⟩

private def s2Step192HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825],771⟩

private theorem s2Step192HeadBank_incomingDistinct : ([s2Step192HeadGRow,s2Step192HeadFRow,s2Step192HeadGvRow,s2Step192HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192HeadF_Incoming : rowsOwned s2Step192HeadFBefore [s2Step192HeadFRow,s2Step192HeadGvRow,s2Step192HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step192HeadGRow,s2Step192HeadFRow,s2Step192HeadGvRow,s2Step192HeadFvRow] 1 s2Step192HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step192HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step192HeadBank_outgoingOwned : rowsOwned s2Step192HeadFvAfter [s2Step192HeadGOut,s2Step192HeadFOut,s2Step192HeadGvOut,s2Step192HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step192HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step192HeadF_Outgoing : rowsOwned s2Step192HeadFvAfter [s2Step192HeadFOut,s2Step192HeadGvOut,s2Step192HeadFvOut] :=
  hmrRows_owned_drop s2Step192HeadFvAfter [s2Step192HeadGOut,s2Step192HeadFOut,s2Step192HeadGvOut,s2Step192HeadFvOut] 1 s2Step192HeadBank_outgoingOwned

private theorem s2Step192HeadF_distinct : (s2Step192HeadFRow.sign::s2Step192HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192HeadF_owned : (s2Step192HeadFRow.sign::s2Step192HeadFRow.payload).toFinset⊆s2Step192HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step192HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192HeadF_reserved : s2Step192HeadFBefore.reserve s2Step192HeadFFresh.toFinset=some s2Step192HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step192HeadFFresh,arenaWires]
  · norm_num [s2Step192HeadFBefore,s2Step192HeadGAfter,s2Step192HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step192HeadFAfter,s2Step192HeadFBefore,s2Step192HeadGAfter,s2Step192HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step192HeadF_checked : planRowResizeLog s2Step192HeadFBefore s2Step192HeadFRow 175 s2Step192HeadFFresh=
    some (s2Step192HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 827, 807],768⟩,growRow 768 s2Step192HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step192HeadFBefore s2Step192HeadFAfter s2Step192HeadFRow 175 s2Step192HeadFFresh
    s2Step192HeadF_distinct s2Step192HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step192HeadF_reserved
  have rowEq : WindowRow.mk (s2Step192HeadFRow.payload++s2Step192HeadFFresh) s2Step192HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 827, 807],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step192HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step192HeadFvBefore : Arena := s2Step192HeadGvAfter

private theorem s2Step192HeadFv_Incoming : rowsOwned s2Step192HeadFvBefore [s2Step192HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step192HeadGRow,s2Step192HeadFRow,s2Step192HeadGvRow,s2Step192HeadFvRow] 3 s2Step192HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step192HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step192HeadFv_Outgoing : rowsOwned s2Step192HeadFvAfter [s2Step192HeadFvOut] :=
  hmrRows_owned_drop s2Step192HeadFvAfter [s2Step192HeadGOut,s2Step192HeadFOut,s2Step192HeadGvOut,s2Step192HeadFvOut] 3 s2Step192HeadBank_outgoingOwned

private theorem s2Step192HeadFv_distinct : (s2Step192HeadFvRow.sign::s2Step192HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192HeadFv_owned : (s2Step192HeadFvRow.sign::s2Step192HeadFvRow.payload).toFinset⊆s2Step192HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step192HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192HeadFv_reserved : s2Step192HeadFvBefore.reserve s2Step192HeadFvFresh.toFinset=some s2Step192HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step192HeadFvFresh,arenaWires]
  · norm_num [s2Step192HeadFvBefore,s2Step192HeadGvAfter,s2Step192HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step192HeadFvAfter,s2Step192HeadFvBefore,s2Step192HeadGvAfter,s2Step192HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step192HeadFv_checked : planRowResizeLog s2Step192HeadFvBefore s2Step192HeadFvRow 111 s2Step192HeadFvFresh=
    some (s2Step192HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803],770⟩,growRow 770 s2Step192HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step192HeadFvBefore s2Step192HeadFvAfter s2Step192HeadFvRow 111 s2Step192HeadFvFresh
    s2Step192HeadFv_distinct s2Step192HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step192HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step192HeadFvRow.payload++s2Step192HeadFvFresh) s2Step192HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step192HeadG_Incoming : rowsOwned s2Step192HeadGBefore [s2Step192HeadGRow,s2Step192HeadFRow,s2Step192HeadGvRow,s2Step192HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step192HeadGRow,s2Step192HeadFRow,s2Step192HeadGvRow,s2Step192HeadFvRow] 0 s2Step192HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step192HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step192HeadG_Outgoing : rowsOwned s2Step192HeadFvAfter [s2Step192HeadGOut,s2Step192HeadFOut,s2Step192HeadGvOut,s2Step192HeadFvOut] :=
  hmrRows_owned_drop s2Step192HeadFvAfter [s2Step192HeadGOut,s2Step192HeadFOut,s2Step192HeadGvOut,s2Step192HeadFvOut] 0 s2Step192HeadBank_outgoingOwned

private theorem s2Step192HeadG_distinct : (s2Step192HeadGRow.sign::s2Step192HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192HeadG_owned : (s2Step192HeadGRow.sign::s2Step192HeadGRow.payload).toFinset⊆s2Step192HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step192HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192HeadG_reserved : s2Step192HeadGBefore.reserve s2Step192HeadGFresh.toFinset=some s2Step192HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step192HeadGFresh,arenaWires]
  · norm_num [s2Step192HeadGBefore,s2Step192HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step192HeadGAfter,s2Step192HeadGBefore,s2Step192HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step192HeadG_checked : planRowResizeLog s2Step192HeadGBefore s2Step192HeadGRow 175 s2Step192HeadGFresh=
    some (s2Step192HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829, 784],769⟩,growRow 769 s2Step192HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step192HeadGBefore s2Step192HeadGAfter s2Step192HeadGRow 175 s2Step192HeadGFresh
    s2Step192HeadG_distinct s2Step192HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step192HeadG_reserved
  have rowEq : WindowRow.mk (s2Step192HeadGRow.payload++s2Step192HeadGFresh) s2Step192HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 829, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step192HeadGvBefore : Arena := s2Step192HeadFAfter

private theorem s2Step192HeadGv_Incoming : rowsOwned s2Step192HeadGvBefore [s2Step192HeadGvRow,s2Step192HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step192HeadGRow,s2Step192HeadFRow,s2Step192HeadGvRow,s2Step192HeadFvRow] 2 s2Step192HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step192HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step192HeadGv_Outgoing : rowsOwned s2Step192HeadFvAfter [s2Step192HeadGvOut,s2Step192HeadFvOut] :=
  hmrRows_owned_drop s2Step192HeadFvAfter [s2Step192HeadGOut,s2Step192HeadFOut,s2Step192HeadGvOut,s2Step192HeadFvOut] 2 s2Step192HeadBank_outgoingOwned

private theorem s2Step192HeadGv_distinct : (s2Step192HeadGvRow.sign::s2Step192HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step192HeadGv_owned : (s2Step192HeadGvRow.sign::s2Step192HeadGvRow.payload).toFinset⊆s2Step192HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step192HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step192HeadGv_reserved : s2Step192HeadGvBefore.reserve s2Step192HeadGvFresh.toFinset=some s2Step192HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step192HeadGvFresh,arenaWires]
  · norm_num [s2Step192HeadGvBefore,s2Step192HeadFAfter,s2Step192HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step192HeadGvAfter,s2Step192HeadGvBefore,s2Step192HeadFAfter,s2Step192HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step192HeadGv_checked : planRowResizeLog s2Step192HeadGvBefore s2Step192HeadGvRow 111 s2Step192HeadGvFresh=
    some (s2Step192HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 822],771⟩,growRow 771 s2Step192HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step192HeadGvBefore s2Step192HeadGvAfter s2Step192HeadGvRow 111 s2Step192HeadGvFresh
    s2Step192HeadGv_distinct s2Step192HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step192HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step192HeadGvRow.payload++s2Step192HeadGvFresh) s2Step192HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step192HeadBank_rows : planWindowRowsLog s2Step192HeadGBefore [(s2Step192HeadGRow,175),(s2Step192HeadFRow,175),(s2Step192HeadGvRow,111),(s2Step192HeadFvRow,111)] [s2Step192HeadGFresh,s2Step192HeadFFresh,s2Step192HeadGvFresh,s2Step192HeadFvFresh]=
    some (s2Step192HeadFvAfter,[s2Step192HeadGOut,s2Step192HeadFOut,s2Step192HeadGvOut,s2Step192HeadFvOut],(growRow 769 s2Step192HeadGFresh ++ (growRow 768 s2Step192HeadFFresh ++ (growRow 771 s2Step192HeadGvFresh ++ (growRow 770 s2Step192HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step192HeadFvAfter [] []=some (s2Step192HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step192HeadFvBefore s2Step192HeadFvAfter s2Step192HeadFvAfter
    s2Step192HeadFvRow s2Step192HeadFvOut 111 s2Step192HeadFvFresh [] [] []
    (growRow 770 s2Step192HeadFvFresh) ([]) s2Step192HeadFv_Incoming s2Step192HeadFv_checked h4 s2Step192HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step192HeadGvBefore s2Step192HeadGvAfter s2Step192HeadFvAfter
    s2Step192HeadGvRow s2Step192HeadGvOut 111 s2Step192HeadGvFresh [(s2Step192HeadFvRow,111)] [s2Step192HeadFvFresh] [s2Step192HeadFvOut]
    (growRow 771 s2Step192HeadGvFresh) ((growRow 770 s2Step192HeadFvFresh ++ [])) s2Step192HeadGv_Incoming s2Step192HeadGv_checked h3 s2Step192HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step192HeadFBefore s2Step192HeadFAfter s2Step192HeadFvAfter
    s2Step192HeadFRow s2Step192HeadFOut 175 s2Step192HeadFFresh [(s2Step192HeadGvRow,111),(s2Step192HeadFvRow,111)] [s2Step192HeadGvFresh,s2Step192HeadFvFresh] [s2Step192HeadGvOut,s2Step192HeadFvOut]
    (growRow 768 s2Step192HeadFFresh) ((growRow 771 s2Step192HeadGvFresh ++ (growRow 770 s2Step192HeadFvFresh ++ []))) s2Step192HeadF_Incoming s2Step192HeadF_checked h2 s2Step192HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step192HeadGBefore s2Step192HeadGAfter s2Step192HeadFvAfter
    s2Step192HeadGRow s2Step192HeadGOut 175 s2Step192HeadGFresh [(s2Step192HeadFRow,175),(s2Step192HeadGvRow,111),(s2Step192HeadFvRow,111)] [s2Step192HeadFFresh,s2Step192HeadGvFresh,s2Step192HeadFvFresh] [s2Step192HeadFOut,s2Step192HeadGvOut,s2Step192HeadFvOut]
    (growRow 769 s2Step192HeadGFresh) ((growRow 768 s2Step192HeadFFresh ++ (growRow 771 s2Step192HeadGvFresh ++ (growRow 770 s2Step192HeadFvFresh ++ [])))) s2Step192HeadG_Incoming s2Step192HeadG_checked h1 s2Step192HeadG_Outgoing
  exact h0

private theorem s2Step192HeadBank_checked : compileHmrBankResizeLog .headroom s2Step192HeadGBefore ⟨s2Step192HeadFRow,s2Step192HeadGRow,s2Step192HeadFvRow,s2Step192HeadGvRow⟩ ⟨175,175,111,111⟩ [s2Step192HeadGFresh,s2Step192HeadFFresh,s2Step192HeadGvFresh,s2Step192HeadFvFresh]=
    some (s2Step192HeadFvAfter,⟨s2Step192HeadFOut,s2Step192HeadGOut,s2Step192HeadFvOut,s2Step192HeadGvOut⟩,(growRow 769 s2Step192HeadGFresh ++ (growRow 768 s2Step192HeadFFresh ++ (growRow 771 s2Step192HeadGvFresh ++ (growRow 770 s2Step192HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step192HeadBank_rows]
  rfl

private theorem s2Step192Front_checked : compileHmrSourceFrontLog s2Step192EntryFBefore s2Step192FrontBank 174 110 ⟨173,173,111,110⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step192FrontLog=some s2Step192FrontPlan := by
  have pairEq : s2Step192FrontPair=⟨s2Step192HeadFRow,s2Step192HeadGRow,s2Step192HeadFvRow,s2Step192HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step192FrontHead=⟨s2Step192ExitFRow,s2Step192ExitGRow,s2Step192ExitFvRow,s2Step192ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step192Add0A=s2Step192FrontHead.f.wires := by decide +kernel
  have gEq : s2Step192Add0B=s2Step192FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step192Add1A=s2Step192FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step192Add1B=s2Step192FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step192EntryFBefore s2Step192FrontBank 174 110 ⟨173,173,111,110⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step192FrontLog s2Step192FrontPlan
  · exact s2Step192Front_entry
  · exact s2Step192EntryBank_checked
  · exact s2Step192Front_sigma
  · rfl
  · exact s2Step192Front_branch
  · rfl
  · simpa only [s2Step192FrontPlan,pairEq] using s2Step192HeadBank_checked
  · simpa only [s2Step192FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step192F4_checked
  · exact s2Step192Counter_checked
  · rfl
  · simpa only [s2Step192FrontPlan,headEq] using s2Step192ExitBank_checked

private theorem s2Step192Complete_explicit_checked : compileHmrEarlyStepLog s2Step192EntryFBefore s2Step192FrontBank 174 110 ⟨173,173,111,110⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step192CompleteLog=some s2Step192CompletePlan := by
  let Q := s2Step192EarlyControlPlan
  have hq := s2Step192EarlyControl_plan_checked
  have fv1 : s2Step192CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step192CompleteOut.fv.payload[2]?.getD s2Step192CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step192CompleteOut.fv.payload[3]?.getD s2Step192CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step192CompleteOut.fv.payload[4]?.getD s2Step192CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step192EntryFBefore s2Step192EarlyControlArena s2Step192FrontBank 174 110 ⟨173,173,111,110⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step192CompleteLog s2Step192FrontPlan Q
    s2Step192Front_checked s2Step192Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step192Complete_owned s2Step192Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step192EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 817 s2Step192CompleteOut.fv.second (s2Step192CompleteOut.fv.payload[2]?.getD s2Step192CompleteOut.fv.sign) (s2Step192CompleteOut.fv.payload[3]?.getD s2Step192CompleteOut.fv.sign) (s2Step192CompleteOut.fv.payload[4]?.getD s2Step192CompleteOut.fv.sign) 782 43 s2Step192EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep192Arena : Arena := s2Step192EntryFBefore
def s2PrivateStep192Bank : WindowBank := s2Step192FrontBank
def s2PrivateStep192Spec : HmrSourceWalkStepLog := ⟨174,110,⟨173,173,111,110⟩,43,.early s2Step192CompleteLog⟩
def s2PrivateStep192Plan : HmrSourceStepPlan := .early s2Step192CompletePlan
theorem s2PrivateStep192_source : s2PrivateStep192Spec=s2ObservedLogs192[0] := rfl
theorem s2PrivateStep192_checked : compileHmrSourceStepLog s2PrivateStep192Arena s2PrivateStep192Bank
    s2PrivateStep192Spec.fgWidth s2PrivateStep192Spec.vWidth s2PrivateStep192Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]
    6 498 192 s2PrivateStep192Spec.need none s2PrivateStep192Spec.log=some s2PrivateStep192Plan := by
  change compileHmrSourceStepLog s2Step192EntryFBefore s2Step192FrontBank 174 110 ⟨173,173,111,110⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 6 498 192 43 none (.early s2Step192CompleteLog)=some (.early s2Step192CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 192<498)]
  rw [s2Step192Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
