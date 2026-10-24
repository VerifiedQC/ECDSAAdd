import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep186
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

private def s2Step188CompleteMoves : List (Wire × Wire) := [(784,687)]

private def s2Step188EarlyControlLog : HmrEarlyControlLog := ⟨[784, 799, 803, 807, 822],[840],[794],[867, 877, 879, 882, 885, 890],[]⟩

private def s2Step188FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [807], [], []],[[822], [803], [799], [824]],[[], [], [], []]⟩,[825],[835],[840],[794],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[840, 794, 867, 877]⟩

private def s2Step188CompleteLog : HmrEarlyStepLog := ⟨s2Step188FrontLog,s2Step188CompleteMoves,s2Step188EarlyControlLog⟩

private def s2Step188ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686],768⟩

private def s2Step188ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824],770⟩

private def s2Step188ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174],769⟩

private def s2Step188ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802],771⟩

private def s2Step188FrontOut : WindowBank := ⟨s2Step188ExitFOut,s2Step188ExitGOut,s2Step188ExitFvOut,s2Step188ExitGvOut⟩

private def s2Step188CompleteOut : WindowBank := s2Step188FrontOut.repacked s2Step188CompleteMoves

private def s2Step188EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step188EarlyControlPositiveArena,[840],s2Step188EarlyControlEqualityArena,[794],⟨⟨825,false⟩,[⟨⟨840,false⟩,794⟩]⟩⟩

private def s2Step188EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step188EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step188EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,784⟩,⟨⟨774,false⟩,799⟩,⟨⟨775,false⟩,803⟩,⟨⟨776,false⟩,807⟩,⟨⟨777,false⟩,822⟩]⟩

private def s2Step188EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step188EarlyControlZeroArena,s2Step188EarlyControlZeroPlan,s2Step188EarlyControlClassPlan,s2Step188EarlyControlFlagArena,s2Step188EarlyControlFittedArena,s2Step188EarlyControlHistoryArena,s2Step188EarlyControlSigmaArena,s2Step188EarlyControlOutputArena,s2Step188EarlyControlLog⟩

private def s2Step188CounterWork : List Wire := [840, 794, 867, 877]

private theorem s2Step188Counter_bounded : s2Step188CounterWork.toFinset⊆arenaWires := by norm_num [s2Step188CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step188HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188CounterDuring : Arena := ⟨s2Step188HeadFvAfter.live∪s2Step188CounterWork.toFinset,Finset.union_subset s2Step188HeadFvAfter.bounded s2Step188Counter_bounded⟩

private def s2Step188EntryFFresh : List Wire := []

private def s2Step188EntryFvFresh : List Wire := []

private def s2Step188EntryGFresh : List Wire := [807]

private def s2Step188EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188EntryGvAfter : Arena := s2Step188EntryGAfter

private def s2Step188EntryGvFresh : List Wire := []

private def s2Step188ExitFExtra : List Wire := [687, 803]

private def s2Step188ExitGExtra : List Wire := [807, 822]

private def s2Step188ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<687) ∨ (688≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188ExitGvExtra : List Wire := [799]

private def s2Step188Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188Add0Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step188Add0_bounded : s2Step188Add0Work.toFinset⊆arenaWires := by
  have h : s2Step188Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step188Add0During : Arena := ⟨s2Step188Add0Arena.live∪s2Step188Add0Work.toFinset,Finset.union_subset s2Step188Add0Arena.bounded s2Step188Add0_bounded⟩

private def s2Step188Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188Add1Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step188Add1_bounded : s2Step188Add1Work.toFinset⊆arenaWires := by
  have h : s2Step188Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step188Add1During : Arena := ⟨s2Step188Add1Arena.live∪s2Step188Add1Work.toFinset,Finset.union_subset s2Step188Add1Arena.bounded s2Step188Add1_bounded⟩

private def s2Step188F4FlagArena : Arena := ⟨s2Step188HeadFvAfter.live∪{840},Finset.union_subset s2Step188HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step188F4Plan : HmrHybridF4Plan := ⟨s2Step188F4FlagArena,[840],s2Step188Add0Arena,[794],s2Step188Add0During,s2Step188Add0Work,s2Step188Add1During,s2Step188Add1Work⟩

private def s2Step188HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 803],768⟩

private def s2Step188HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824],770⟩

private def s2Step188HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 807, 822],769⟩

private def s2Step188HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 799],771⟩

private def s2Step188FrontHead : WindowBank := ⟨s2Step188HeadFOut,s2Step188HeadGOut,s2Step188HeadFvOut,s2Step188HeadGvOut⟩

private def s2Step188EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687],768⟩

private def s2Step188EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846],770⟩

private def s2Step188EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 807],769⟩

private def s2Step188EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802],771⟩

private def s2Step188FrontPair : WindowBank := ⟨s2Step188EntryFOut,s2Step188EntryGOut,s2Step188EntryFvOut,s2Step188EntryGvOut⟩

private def s2Step188FrontSigmaArena : Arena := ⟨s2Step188EntryGvAfter.live∪{825},Finset.union_subset s2Step188EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step188HeadFFresh : List Wire := [803]

private def s2Step188HeadFvFresh : List Wire := [824]

private def s2Step188HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188HeadGFresh : List Wire := [822]

private def s2Step188HeadGvFresh : List Wire := [799]

private def s2Step188FrontPlan : HmrSourceFront := ⟨s2Step188EntryGvAfter,s2Step188FrontPair,(growRow 768 s2Step188EntryFFresh ++ (growRow 769 s2Step188EntryGFresh ++ (growRow 770 s2Step188EntryFvFresh ++ (growRow 771 s2Step188EntryGvFresh ++ [])))),s2Step188FrontSigmaArena,[825],s2Step188HeadGBefore,[835],
  s2Step188HeadFvAfter,s2Step188FrontHead,(growRow 769 s2Step188HeadGFresh ++ (growRow 768 s2Step188HeadFFresh ++ (growRow 771 s2Step188HeadGvFresh ++ (growRow 770 s2Step188HeadFvFresh ++ [])))),s2Step188F4Plan,s2Step188CounterDuring,s2Step188CounterWork,s2Step188ExitGvAfter,s2Step188FrontOut,(shrinkRow 769 s2Step188ExitGExtra ++ (shrinkRow 768 s2Step188ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step188ExitGvExtra ++ []))))⟩

private def s2Step188CompletePlan : HmrEarlyStepPlan := ⟨s2Step188FrontPlan,s2Step188EarlyControlArena,s2Step188EarlyControlPlan,s2Step188CompleteMoves⟩

private theorem s2Step188Complete_apart : List.Disjoint (s2Step188CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [825, 835, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] := by
  have nd : ((s2Step188CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[825, 835, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step188Complete_owned : (s2Step188CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step188EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step188EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step188CompleteMoveArena : Arena := ⟨s2Step188ExitGvAfter.live∪{687},Finset.union_subset s2Step188ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step188Complete_repack : s2Step188ExitGvAfter.checkRepack s2Step188CompleteMoves=some s2Step188EarlyControlArena := by
  have owned : 784∈s2Step188ExitGvAfter.live := by norm_num [s2Step188ExitGvAfter,arenaWires]
  have reserve : s2Step188ExitGvAfter.reserve {687}=some s2Step188CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step188ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step188CompleteMoveArena.retireSet {784}=s2Step188EarlyControlArena := by
    unfold Arena.retireSet s2Step188EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step188CompleteMoveArena,s2Step188ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step188CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step188CompleteMoveArena.retireSet {784}).checkRepack []=some s2Step188EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step188EarlyControl_branchOwned : ([835] : List Wire).toFinset⊆s2Step188EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step188EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188EarlyControl_branch : compileHmrBranchRetirement s2Step188EarlyControlSigmaArena 835=some s2Step188EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step188EarlyControl_branchOwned
  · ext q
    simp [s2Step188EarlyControlOutputArena,s2Step188EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step188EarlyControl_classEqualityBorrow : s2Step188EarlyControlPositiveArena.checkBorrow (([825, 840] : List Wire).length-1) s2Step188EarlyControlLog.classWork=some s2Step188EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step188EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step188EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step188EarlyControlEqualityArena,s2Step188EarlyControlPositiveArena,s2Step188EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step188EarlyControl_classEqualityOwned : ([825, 840] : List Wire).toFinset⊆s2Step188EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step188EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188EarlyControl_classEquality : compileHmrEqualityLog s2Step188EarlyControlPositiveArena [825, 840] 0 s2Step188EarlyControlLog.classWork=some (s2Step188EarlyControlEqualityArena,s2Step188EarlyControlLog.classWork,s2Step188EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step188EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step188EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step188EarlyControl_classOwned : ([777, 822, 825] : List Wire).toFinset⊆s2Step188EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step188EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188EarlyControl_positiveBorrow : s2Step188EarlyControlZeroArena.checkBorrow (1) s2Step188EarlyControlLog.positiveWork=some s2Step188EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step188EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step188EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step188EarlyControlPositiveArena,s2Step188EarlyControlZeroArena,s2Step188EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step188EarlyControl_class : compileHmrSourceClassLog s2Step188EarlyControlZeroArena false 777 s2Step188EarlyControlZeroPlan.top 0 825 s2Step188EarlyControlLog.positiveWork s2Step188EarlyControlLog.classWork=some s2Step188EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step188EarlyControlClassPlan s2Step188EarlyControlZeroArena false 777 s2Step188EarlyControlZeroPlan.top 0 825
  constructor
  · decide +kernel
  · exact s2Step188EarlyControl_classOwned
  · exact s2Step188EarlyControl_positiveBorrow
  · exact s2Step188EarlyControl_classEquality

private theorem s2Step188EarlyControl_entryRecordOwned : ([835, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step188EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step188EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188EarlyControl_entrySigmaOwned : ([825, 254] : List Wire).toFinset⊆s2Step188EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step188EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188EarlyControl_fitBorrow : s2Step188EarlyControlFlagArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step188EarlyControlLog.recordFresh=some s2Step188EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step188EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step188EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
      decide +kernel
    · ext q
      simp [s2Step188EarlyControlFittedArena,s2Step188EarlyControlFlagArena,s2Step188EarlyControlLog,arenaWires]

private theorem s2Step188EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step188EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step188EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step188EarlyControl_fit : compileHmrRecordGrowLog s2Step188EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step188EarlyControlLog.recordFresh=some s2Step188EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step188EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step188EarlyControl_fitBorrow

private theorem s2Step188EarlyControl_flagsBorrow : s2Step188EarlyControlEqualityArena.checkBorrow (6) s2Step188EarlyControlLog.flagWork=some s2Step188EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step188EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step188EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step188EarlyControlFlagArena,s2Step188EarlyControlEqualityArena,s2Step188EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step188EarlyControl_flagsOwned : ([794, 253, 252, 251] : List Wire).toFinset⊆s2Step188EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step188EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188EarlyControl_flags : compileHmrFlagsLog s2Step188EarlyControlClassPlan.equalityArena s2Step188EarlyControlClassPlan.equality.top 253 252 251 s2Step188EarlyControlLog.flagWork=some s2Step188EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step188EarlyControl_flagsOwned⟩
  · exact s2Step188EarlyControl_flagsBorrow

private theorem s2Step188EarlyControl_historyBorrow : s2Step188EarlyControlArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step188EarlyControlLog.recordFresh=some s2Step188EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step188EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step188EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step188EarlyControlHistoryArena,s2Step188EarlyControlArena,s2Step188EarlyControlLog,arenaWires]

private theorem s2Step188EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step188EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step188EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188EarlyControl_history : compileHmrRecordGrowLog s2Step188EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step188EarlyControlLog.recordFresh=some s2Step188EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step188EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step188EarlyControl_historyBorrow

private theorem s2Step188EarlyControl_sigmaOwned : ([254, 825] : List Wire).toFinset⊆s2Step188EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step188EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188EarlyControl_sigmaReleaseOwned : ([825] : List Wire).toFinset⊆s2Step188EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step188EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188EarlyControl_sigmaRelease : s2Step188EarlyControlHistoryArena.release {825} (fun _ => false)=some s2Step188EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step188EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step188EarlyControlSigmaArena,s2Step188EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step188EarlyControl_sigma : compileHmrSigmaDropLog s2Step188EarlyControlHistoryArena false 0 0 254 825 []=some s2Step188EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step188EarlyControl_sigmaOwned⟩
  · exact s2Step188EarlyControl_sigmaRelease

private theorem s2Step188EarlyControl_zeroBorrow : s2Step188EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step188EarlyControlLog.zeroWork=some s2Step188EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step188EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step188EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step188EarlyControlZeroArena,s2Step188EarlyControlArena,s2Step188EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step188EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step188EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step188EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188EarlyControl_zero : compileHmrEqualityLog s2Step188EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step188EarlyControlLog.zeroWork=some (s2Step188EarlyControlZeroArena,s2Step188EarlyControlLog.zeroWork,s2Step188EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step188EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step188EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step188EarlyControl_logged : s2Step188EarlyControlPlan.Logged s2Step188EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 254 253 252 251 835 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step188EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step188EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step188EarlyControl_zero
  · exact s2Step188EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step188EarlyControl_flags
  · exact s2Step188EarlyControl_fit
  · exact s2Step188EarlyControl_history
  · exact s2Step188EarlyControl_sigma
  · exact s2Step188EarlyControl_branch

private theorem s2Step188EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step188EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 254 253 252 251 835 43 s2Step188EarlyControlLog=some s2Step188EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step188EarlyControlPlan s2Step188EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 254 253 252 251 835 43 s2Step188EarlyControl_logged

private def s2Step188EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687],768⟩

private def s2Step188EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846],770⟩

private def s2Step188EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174],769⟩

private def s2Step188EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802],771⟩

private def s2Step188FrontBank : WindowBank := ⟨s2Step188EntryFRow,s2Step188EntryGRow,s2Step188EntryFvRow,s2Step188EntryGvRow⟩

private def s2Step188Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 803, 768]

private def s2Step188Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 807, 822, 769]

private def s2Step188Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 770]

private def s2Step188Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 799, 771]

private theorem s2Step188Counter_apart : Disjoint s2Step188HeadFvAfter.live s2Step188CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step188HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188Counter_borrowed : s2Step188HeadFvAfter.checkBorrow 4 s2Step188CounterWork=some s2Step188CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step188HeadFvAfter s2Step188CounterDuring s2Step188CounterWork.toFinset s2Step188Counter_bounded s2Step188Counter_apart rfl

private theorem s2Step188Counter_owned : (825::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step188HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step188HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188Counter_checked : compileHmrCounterStepLog s2Step188HeadFvAfter true 825 [772, 773, 774, 775, 776, 777] s2Step188CounterWork=some s2Step188CounterDuring := by
  have owned : ∀q∈825::[772, 773, 774, 775, 776, 777],q∈s2Step188HeadFvAfter.live := fun q hq => s2Step188Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step188Counter_borrowed

private def s2Step188EntryFAfter : Arena := s2Step188EntryFBefore

private theorem s2Step188EntryBank_incomingDistinct : ([s2Step188EntryFRow,s2Step188EntryGRow,s2Step188EntryFvRow,s2Step188EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188EntryF_Incoming : rowsOwned s2Step188EntryFBefore [s2Step188EntryFRow,s2Step188EntryGRow,s2Step188EntryFvRow,s2Step188EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step188EntryFRow,s2Step188EntryGRow,s2Step188EntryFvRow,s2Step188EntryGvRow] 0 s2Step188EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step188EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step188EntryBank_outgoingOwned : rowsOwned s2Step188EntryGvAfter [s2Step188EntryFOut,s2Step188EntryGOut,s2Step188EntryFvOut,s2Step188EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step188EntryGvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step188EntryF_Outgoing : rowsOwned s2Step188EntryGvAfter [s2Step188EntryFOut,s2Step188EntryGOut,s2Step188EntryFvOut,s2Step188EntryGvOut] :=
  hmrRows_owned_drop s2Step188EntryGvAfter [s2Step188EntryFOut,s2Step188EntryGOut,s2Step188EntryFvOut,s2Step188EntryGvOut] 0 s2Step188EntryBank_outgoingOwned

private theorem s2Step188EntryF_distinct : (s2Step188EntryFRow.sign::s2Step188EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188EntryF_owned : (s2Step188EntryFRow.sign::s2Step188EntryFRow.payload).toFinset⊆s2Step188EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step188EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188EntryF_reserved : s2Step188EntryFBefore.reserve s2Step188EntryFFresh.toFinset=some s2Step188EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step188EntryFFresh,arenaWires]
  · norm_num [s2Step188EntryFBefore,s2Step188EntryFFresh,arenaWires]
  · simp only [s2Step188EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step188EntryF_checked : planRowResizeLog s2Step188EntryFBefore s2Step188EntryFRow 176 s2Step188EntryFFresh=
    some (s2Step188EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687],768⟩,growRow 768 s2Step188EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step188EntryFBefore s2Step188EntryFAfter s2Step188EntryFRow 176 s2Step188EntryFFresh
    s2Step188EntryF_distinct s2Step188EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step188EntryF_reserved
  have rowEq : WindowRow.mk (s2Step188EntryFRow.payload++s2Step188EntryFFresh) s2Step188EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step188EntryFvAfter : Arena := s2Step188EntryGAfter

private def s2Step188EntryFvBefore : Arena := s2Step188EntryGAfter

private theorem s2Step188EntryFv_Incoming : rowsOwned s2Step188EntryFvBefore [s2Step188EntryFvRow,s2Step188EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step188EntryFRow,s2Step188EntryGRow,s2Step188EntryFvRow,s2Step188EntryGvRow] 2 s2Step188EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step188EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step188EntryFv_Outgoing : rowsOwned s2Step188EntryGvAfter [s2Step188EntryFvOut,s2Step188EntryGvOut] :=
  hmrRows_owned_drop s2Step188EntryGvAfter [s2Step188EntryFOut,s2Step188EntryGOut,s2Step188EntryFvOut,s2Step188EntryGvOut] 2 s2Step188EntryBank_outgoingOwned

private theorem s2Step188EntryFv_distinct : (s2Step188EntryFvRow.sign::s2Step188EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188EntryFv_owned : (s2Step188EntryFvRow.sign::s2Step188EntryFvRow.payload).toFinset⊆s2Step188EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step188EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188EntryFv_reserved : s2Step188EntryFvBefore.reserve s2Step188EntryFvFresh.toFinset=some s2Step188EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step188EntryFvFresh,arenaWires]
  · norm_num [s2Step188EntryFvBefore,s2Step188EntryGAfter,s2Step188EntryFvFresh,arenaWires]
  · simp only [s2Step188EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step188EntryFv_checked : planRowResizeLog s2Step188EntryFvBefore s2Step188EntryFvRow 108 s2Step188EntryFvFresh=
    some (s2Step188EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846],770⟩,growRow 770 s2Step188EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step188EntryFvBefore s2Step188EntryFvAfter s2Step188EntryFvRow 108 s2Step188EntryFvFresh
    s2Step188EntryFv_distinct s2Step188EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step188EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step188EntryFvRow.payload++s2Step188EntryFvFresh) s2Step188EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step188EntryGBefore : Arena := s2Step188EntryFBefore

private theorem s2Step188EntryG_Incoming : rowsOwned s2Step188EntryGBefore [s2Step188EntryGRow,s2Step188EntryFvRow,s2Step188EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step188EntryFRow,s2Step188EntryGRow,s2Step188EntryFvRow,s2Step188EntryGvRow] 1 s2Step188EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step188EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step188EntryG_Outgoing : rowsOwned s2Step188EntryGvAfter [s2Step188EntryGOut,s2Step188EntryFvOut,s2Step188EntryGvOut] :=
  hmrRows_owned_drop s2Step188EntryGvAfter [s2Step188EntryFOut,s2Step188EntryGOut,s2Step188EntryFvOut,s2Step188EntryGvOut] 1 s2Step188EntryBank_outgoingOwned

private theorem s2Step188EntryG_distinct : (s2Step188EntryGRow.sign::s2Step188EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188EntryG_owned : (s2Step188EntryGRow.sign::s2Step188EntryGRow.payload).toFinset⊆s2Step188EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step188EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188EntryG_reserved : s2Step188EntryGBefore.reserve s2Step188EntryGFresh.toFinset=some s2Step188EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step188EntryGFresh,arenaWires]
  · norm_num [s2Step188EntryGBefore,s2Step188EntryFBefore,s2Step188EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step188EntryGAfter,s2Step188EntryGBefore,s2Step188EntryFBefore,s2Step188EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step188EntryG_checked : planRowResizeLog s2Step188EntryGBefore s2Step188EntryGRow 176 s2Step188EntryGFresh=
    some (s2Step188EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 807],769⟩,growRow 769 s2Step188EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step188EntryGBefore s2Step188EntryGAfter s2Step188EntryGRow 176 s2Step188EntryGFresh
    s2Step188EntryG_distinct s2Step188EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step188EntryG_reserved
  have rowEq : WindowRow.mk (s2Step188EntryGRow.payload++s2Step188EntryGFresh) s2Step188EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 807],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step188EntryGvBefore : Arena := s2Step188EntryGAfter

private theorem s2Step188EntryGv_Incoming : rowsOwned s2Step188EntryGvBefore [s2Step188EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step188EntryFRow,s2Step188EntryGRow,s2Step188EntryFvRow,s2Step188EntryGvRow] 3 s2Step188EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step188EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step188EntryGv_Outgoing : rowsOwned s2Step188EntryGvAfter [s2Step188EntryGvOut] :=
  hmrRows_owned_drop s2Step188EntryGvAfter [s2Step188EntryFOut,s2Step188EntryGOut,s2Step188EntryFvOut,s2Step188EntryGvOut] 3 s2Step188EntryBank_outgoingOwned

private theorem s2Step188EntryGv_distinct : (s2Step188EntryGvRow.sign::s2Step188EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188EntryGv_owned : (s2Step188EntryGvRow.sign::s2Step188EntryGvRow.payload).toFinset⊆s2Step188EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step188EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188EntryGv_reserved : s2Step188EntryGvBefore.reserve s2Step188EntryGvFresh.toFinset=some s2Step188EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step188EntryGvFresh,arenaWires]
  · norm_num [s2Step188EntryGvBefore,s2Step188EntryGAfter,s2Step188EntryGvFresh,arenaWires]
  · simp only [s2Step188EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step188EntryGv_checked : planRowResizeLog s2Step188EntryGvBefore s2Step188EntryGvRow 108 s2Step188EntryGvFresh=
    some (s2Step188EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802],771⟩,growRow 771 s2Step188EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step188EntryGvBefore s2Step188EntryGvAfter s2Step188EntryGvRow 108 s2Step188EntryGvFresh
    s2Step188EntryGv_distinct s2Step188EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step188EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step188EntryGvRow.payload++s2Step188EntryGvFresh) s2Step188EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step188EntryBank_rows : planWindowRowsLog s2Step188EntryFBefore [(s2Step188EntryFRow,176),(s2Step188EntryGRow,176),(s2Step188EntryFvRow,108),(s2Step188EntryGvRow,108)] [s2Step188EntryFFresh,s2Step188EntryGFresh,s2Step188EntryFvFresh,s2Step188EntryGvFresh]=
    some (s2Step188EntryGvAfter,[s2Step188EntryFOut,s2Step188EntryGOut,s2Step188EntryFvOut,s2Step188EntryGvOut],(growRow 768 s2Step188EntryFFresh ++ (growRow 769 s2Step188EntryGFresh ++ (growRow 770 s2Step188EntryFvFresh ++ (growRow 771 s2Step188EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step188EntryGvAfter [] []=some (s2Step188EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step188EntryGvBefore s2Step188EntryGvAfter s2Step188EntryGvAfter
    s2Step188EntryGvRow s2Step188EntryGvOut 108 s2Step188EntryGvFresh [] [] []
    (growRow 771 s2Step188EntryGvFresh) ([]) s2Step188EntryGv_Incoming s2Step188EntryGv_checked h4 s2Step188EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step188EntryFvBefore s2Step188EntryFvAfter s2Step188EntryGvAfter
    s2Step188EntryFvRow s2Step188EntryFvOut 108 s2Step188EntryFvFresh [(s2Step188EntryGvRow,108)] [s2Step188EntryGvFresh] [s2Step188EntryGvOut]
    (growRow 770 s2Step188EntryFvFresh) ((growRow 771 s2Step188EntryGvFresh ++ [])) s2Step188EntryFv_Incoming s2Step188EntryFv_checked h3 s2Step188EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step188EntryGBefore s2Step188EntryGAfter s2Step188EntryGvAfter
    s2Step188EntryGRow s2Step188EntryGOut 176 s2Step188EntryGFresh [(s2Step188EntryFvRow,108),(s2Step188EntryGvRow,108)] [s2Step188EntryFvFresh,s2Step188EntryGvFresh] [s2Step188EntryFvOut,s2Step188EntryGvOut]
    (growRow 769 s2Step188EntryGFresh) ((growRow 770 s2Step188EntryFvFresh ++ (growRow 771 s2Step188EntryGvFresh ++ []))) s2Step188EntryG_Incoming s2Step188EntryG_checked h2 s2Step188EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step188EntryFBefore s2Step188EntryFAfter s2Step188EntryGvAfter
    s2Step188EntryFRow s2Step188EntryFOut 176 s2Step188EntryFFresh [(s2Step188EntryGRow,176),(s2Step188EntryFvRow,108),(s2Step188EntryGvRow,108)] [s2Step188EntryGFresh,s2Step188EntryFvFresh,s2Step188EntryGvFresh] [s2Step188EntryGOut,s2Step188EntryFvOut,s2Step188EntryGvOut]
    (growRow 768 s2Step188EntryFFresh) ((growRow 769 s2Step188EntryGFresh ++ (growRow 770 s2Step188EntryFvFresh ++ (growRow 771 s2Step188EntryGvFresh ++ [])))) s2Step188EntryF_Incoming s2Step188EntryF_checked h1 s2Step188EntryF_Outgoing
  exact h0

private theorem s2Step188EntryBank_checked : compileHmrBankResizeLog .entry s2Step188EntryFBefore ⟨s2Step188EntryFRow,s2Step188EntryGRow,s2Step188EntryFvRow,s2Step188EntryGvRow⟩ ⟨176,176,108,108⟩ [s2Step188EntryFFresh,s2Step188EntryGFresh,s2Step188EntryFvFresh,s2Step188EntryGvFresh]=
    some (s2Step188EntryGvAfter,⟨s2Step188EntryFOut,s2Step188EntryGOut,s2Step188EntryFvOut,s2Step188EntryGvOut⟩,(growRow 768 s2Step188EntryFFresh ++ (growRow 769 s2Step188EntryGFresh ++ (growRow 770 s2Step188EntryFvFresh ++ (growRow 771 s2Step188EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step188EntryBank_rows]
  rfl

private def s2Step188ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<687) ∨ (688≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188ExitFBefore : Arena := s2Step188ExitGAfter

private def s2Step188ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 803],768⟩

private def s2Step188ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824],770⟩

private def s2Step188ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 807, 822],769⟩

private def s2Step188ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 799],771⟩

private theorem s2Step188ExitBank_incomingDistinct : ([s2Step188ExitGRow,s2Step188ExitFRow,s2Step188ExitFvRow,s2Step188ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188ExitF_Incoming : rowsOwned s2Step188ExitFBefore [s2Step188ExitFRow,s2Step188ExitFvRow,s2Step188ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step188ExitGRow,s2Step188ExitFRow,s2Step188ExitFvRow,s2Step188ExitGvRow] 1 s2Step188ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step188ExitFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step188ExitBank_outgoingOwned : rowsOwned s2Step188ExitGvAfter [s2Step188ExitGOut,s2Step188ExitFOut,s2Step188ExitFvOut,s2Step188ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step188ExitGvAfter (fun q => (0≤q ∧ q<687) ∨ (688≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step188ExitF_Outgoing : rowsOwned s2Step188ExitGvAfter [s2Step188ExitFOut,s2Step188ExitFvOut,s2Step188ExitGvOut] :=
  hmrRows_owned_drop s2Step188ExitGvAfter [s2Step188ExitGOut,s2Step188ExitFOut,s2Step188ExitFvOut,s2Step188ExitGvOut] 1 s2Step188ExitBank_outgoingOwned

private theorem s2Step188ExitF_distinct : (s2Step188ExitFRow.sign::s2Step188ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188ExitF_owned : (s2Step188ExitFRow.sign::s2Step188ExitFRow.payload).toFinset⊆s2Step188ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step188ExitFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188ExitF_retired : s2Step188ExitFBefore.retireSet s2Step188ExitFExtra.toFinset=s2Step188ExitFAfter := by
  unfold Arena.retireSet s2Step188ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step188ExitFBefore,s2Step188ExitGAfter,s2Step188ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step188ExitF_checked : planRowResizeLog s2Step188ExitFBefore s2Step188ExitFRow 175 []=
    some (s2Step188ExitFAfter,s2Step188ExitFOut,shrinkRow 768 s2Step188ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step188ExitFBefore s2Step188ExitFRow 175 s2Step188ExitF_distinct s2Step188ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step188ExitFRow.payload.take 175) s2Step188ExitFRow.sign=s2Step188ExitFOut := by decide +kernel
  have hi : s2Step188ExitFRow.payload.drop 175=s2Step188ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step188ExitF_retired] at result
  exact result

private def s2Step188ExitFvAfter : Arena := s2Step188ExitFAfter

private def s2Step188ExitFvBefore : Arena := s2Step188ExitFAfter

private theorem s2Step188ExitFv_Incoming : rowsOwned s2Step188ExitFvBefore [s2Step188ExitFvRow,s2Step188ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step188ExitGRow,s2Step188ExitFRow,s2Step188ExitFvRow,s2Step188ExitGvRow] 2 s2Step188ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step188ExitFvBefore (fun q => (0≤q ∧ q<687) ∨ (688≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step188ExitFv_Outgoing : rowsOwned s2Step188ExitGvAfter [s2Step188ExitFvOut,s2Step188ExitGvOut] :=
  hmrRows_owned_drop s2Step188ExitGvAfter [s2Step188ExitGOut,s2Step188ExitFOut,s2Step188ExitFvOut,s2Step188ExitGvOut] 2 s2Step188ExitBank_outgoingOwned

private theorem s2Step188ExitFv_distinct : (s2Step188ExitFvRow.sign::s2Step188ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188ExitFv_owned : (s2Step188ExitFvRow.sign::s2Step188ExitFvRow.payload).toFinset⊆s2Step188ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step188ExitFvBefore (fun q => (0≤q ∧ q<687) ∨ (688≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188ExitFv_reserved : s2Step188ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step188ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step188ExitFv_checked : planRowResizeLog s2Step188ExitFvBefore s2Step188ExitFvRow 109 []=
    some (s2Step188ExitFvAfter,s2Step188ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step188ExitFvBefore s2Step188ExitFvAfter s2Step188ExitFvRow 109 []
    s2Step188ExitFv_distinct s2Step188ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step188ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step188ExitFvRow.payload++[]) s2Step188ExitFvRow.sign=s2Step188ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step188ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step188ExitG_Incoming : rowsOwned s2Step188ExitGBefore [s2Step188ExitGRow,s2Step188ExitFRow,s2Step188ExitFvRow,s2Step188ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step188ExitGRow,s2Step188ExitFRow,s2Step188ExitFvRow,s2Step188ExitGvRow] 0 s2Step188ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step188ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step188ExitG_Outgoing : rowsOwned s2Step188ExitGvAfter [s2Step188ExitGOut,s2Step188ExitFOut,s2Step188ExitFvOut,s2Step188ExitGvOut] :=
  hmrRows_owned_drop s2Step188ExitGvAfter [s2Step188ExitGOut,s2Step188ExitFOut,s2Step188ExitFvOut,s2Step188ExitGvOut] 0 s2Step188ExitBank_outgoingOwned

private theorem s2Step188ExitG_distinct : (s2Step188ExitGRow.sign::s2Step188ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188ExitG_owned : (s2Step188ExitGRow.sign::s2Step188ExitGRow.payload).toFinset⊆s2Step188ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step188ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188ExitG_retired : s2Step188ExitGBefore.retireSet s2Step188ExitGExtra.toFinset=s2Step188ExitGAfter := by
  unfold Arena.retireSet s2Step188ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step188ExitGBefore,s2Step188ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step188ExitG_checked : planRowResizeLog s2Step188ExitGBefore s2Step188ExitGRow 175 []=
    some (s2Step188ExitGAfter,s2Step188ExitGOut,shrinkRow 769 s2Step188ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step188ExitGBefore s2Step188ExitGRow 175 s2Step188ExitG_distinct s2Step188ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step188ExitGRow.payload.take 175) s2Step188ExitGRow.sign=s2Step188ExitGOut := by decide +kernel
  have hi : s2Step188ExitGRow.payload.drop 175=s2Step188ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step188ExitG_retired] at result
  exact result

private def s2Step188ExitGvBefore : Arena := s2Step188ExitFAfter

private theorem s2Step188ExitGv_Incoming : rowsOwned s2Step188ExitGvBefore [s2Step188ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step188ExitGRow,s2Step188ExitFRow,s2Step188ExitFvRow,s2Step188ExitGvRow] 3 s2Step188ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step188ExitGvBefore (fun q => (0≤q ∧ q<687) ∨ (688≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step188ExitGv_Outgoing : rowsOwned s2Step188ExitGvAfter [s2Step188ExitGvOut] :=
  hmrRows_owned_drop s2Step188ExitGvAfter [s2Step188ExitGOut,s2Step188ExitFOut,s2Step188ExitFvOut,s2Step188ExitGvOut] 3 s2Step188ExitBank_outgoingOwned

private theorem s2Step188ExitGv_distinct : (s2Step188ExitGvRow.sign::s2Step188ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188ExitGv_owned : (s2Step188ExitGvRow.sign::s2Step188ExitGvRow.payload).toFinset⊆s2Step188ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step188ExitGvBefore (fun q => (0≤q ∧ q<687) ∨ (688≤q ∧ q<794) ∨ (795≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188ExitGv_retired : s2Step188ExitGvBefore.retireSet s2Step188ExitGvExtra.toFinset=s2Step188ExitGvAfter := by
  unfold Arena.retireSet s2Step188ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step188ExitGvBefore,s2Step188ExitFAfter,s2Step188ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step188ExitGv_checked : planRowResizeLog s2Step188ExitGvBefore s2Step188ExitGvRow 108 []=
    some (s2Step188ExitGvAfter,s2Step188ExitGvOut,shrinkRow 771 s2Step188ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step188ExitGvBefore s2Step188ExitGvRow 108 s2Step188ExitGv_distinct s2Step188ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step188ExitGvRow.payload.take 108) s2Step188ExitGvRow.sign=s2Step188ExitGvOut := by decide +kernel
  have hi : s2Step188ExitGvRow.payload.drop 108=s2Step188ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step188ExitGv_retired] at result
  exact result

private theorem s2Step188ExitBank_rows : planWindowRowsLog s2Step188ExitGBefore [(s2Step188ExitGRow,175),(s2Step188ExitFRow,175),(s2Step188ExitFvRow,109),(s2Step188ExitGvRow,108)] [[],[],[],[]]=
    some (s2Step188ExitGvAfter,[s2Step188ExitGOut,s2Step188ExitFOut,s2Step188ExitFvOut,s2Step188ExitGvOut],(shrinkRow 769 s2Step188ExitGExtra ++ (shrinkRow 768 s2Step188ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step188ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step188ExitGvAfter [] []=some (s2Step188ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step188ExitGvBefore s2Step188ExitGvAfter s2Step188ExitGvAfter
    s2Step188ExitGvRow s2Step188ExitGvOut 108 [] [] [] []
    (shrinkRow 771 s2Step188ExitGvExtra) ([]) s2Step188ExitGv_Incoming s2Step188ExitGv_checked h4 s2Step188ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step188ExitFvBefore s2Step188ExitFvAfter s2Step188ExitGvAfter
    s2Step188ExitFvRow s2Step188ExitFvOut 109 [] [(s2Step188ExitGvRow,108)] [[]] [s2Step188ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step188ExitGvExtra ++ [])) s2Step188ExitFv_Incoming s2Step188ExitFv_checked h3 s2Step188ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step188ExitFBefore s2Step188ExitFAfter s2Step188ExitGvAfter
    s2Step188ExitFRow s2Step188ExitFOut 175 [] [(s2Step188ExitFvRow,109),(s2Step188ExitGvRow,108)] [[],[]] [s2Step188ExitFvOut,s2Step188ExitGvOut]
    (shrinkRow 768 s2Step188ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step188ExitGvExtra ++ []))) s2Step188ExitF_Incoming s2Step188ExitF_checked h2 s2Step188ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step188ExitGBefore s2Step188ExitGAfter s2Step188ExitGvAfter
    s2Step188ExitGRow s2Step188ExitGOut 175 [] [(s2Step188ExitFRow,175),(s2Step188ExitFvRow,109),(s2Step188ExitGvRow,108)] [[],[],[]] [s2Step188ExitFOut,s2Step188ExitFvOut,s2Step188ExitGvOut]
    (shrinkRow 769 s2Step188ExitGExtra) ((shrinkRow 768 s2Step188ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step188ExitGvExtra ++ [])))) s2Step188ExitG_Incoming s2Step188ExitG_checked h1 s2Step188ExitG_Outgoing
  exact h0

private theorem s2Step188ExitBank_checked : compileHmrBankResizeLog .exit s2Step188ExitGBefore ⟨s2Step188ExitFRow,s2Step188ExitGRow,s2Step188ExitFvRow,s2Step188ExitGvRow⟩ ⟨175,175,109,108⟩ [[],[],[],[]]=
    some (s2Step188ExitGvAfter,⟨s2Step188ExitFOut,s2Step188ExitGOut,s2Step188ExitFvOut,s2Step188ExitGvOut⟩,(shrinkRow 769 s2Step188ExitGExtra ++ (shrinkRow 768 s2Step188ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step188ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step188ExitBank_rows]
  rfl

private theorem s2Step188Add0_apart : Disjoint s2Step188Add0Arena.live s2Step188Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step188Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188Add0_card : s2Step188Add0Arena.live.card=885 := by
  decide +kernel

private theorem s2Step188Add0_borrowed : s2Step188Add0Arena.checkBorrow (hmrHybridCount s2Step188Add0Arena s2Step188Add0B.length) s2Step188Add0Work=some s2Step188Add0During := by
  have len : s2Step188Add0Work.length=hmrHybridCount s2Step188Add0Arena s2Step188Add0B.length := by
    rw [hmrHybridCount,s2Step188Add0_card]
    decide +kernel
  have nd : s2Step188Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step188Add0Arena s2Step188Add0During s2Step188Add0Work.toFinset s2Step188Add0_bounded s2Step188Add0_apart rfl

private theorem s2Step188Add0_distinct : (840::835::794::(s2Step188Add0A++s2Step188Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188Add0_owned : (840::835::794::(s2Step188Add0A++s2Step188Add0B)).toFinset⊆s2Step188Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step188Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188Add0_checked : compileHmrHybridCinLog s2Step188Add0Arena 835 840 794 s2Step188Add0A s2Step188Add0B s2Step188Add0Work=some s2Step188Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step188Add0Arena s2Step188Add0During 835 840 794 s2Step188Add0A s2Step188Add0B s2Step188Add0Work
    (by decide +kernel) (by decide +kernel) s2Step188Add0_distinct
    (fun q hq => s2Step188Add0_owned (List.mem_toFinset.mpr hq)) s2Step188Add0_borrowed

private theorem s2Step188Add1_apart : Disjoint s2Step188Add1Arena.live s2Step188Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step188Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188Add1_card : s2Step188Add1Arena.live.card=885 := by
  decide +kernel

private theorem s2Step188Add1_borrowed : s2Step188Add1Arena.checkBorrow (hmrHybridCount s2Step188Add1Arena s2Step188Add1B.length) s2Step188Add1Work=some s2Step188Add1During := by
  have len : s2Step188Add1Work.length=hmrHybridCount s2Step188Add1Arena s2Step188Add1B.length := by
    rw [hmrHybridCount,s2Step188Add1_card]
    decide +kernel
  have nd : s2Step188Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step188Add1Arena s2Step188Add1During s2Step188Add1Work.toFinset s2Step188Add1_bounded s2Step188Add1_apart rfl

private theorem s2Step188Add1_distinct : (840::835::794::(s2Step188Add1A++s2Step188Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188Add1_owned : (840::835::794::(s2Step188Add1A++s2Step188Add1B)).toFinset⊆s2Step188Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step188Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188Add1_checked : compileHmrHybridCinLog s2Step188Add1Arena 835 840 794 s2Step188Add1A s2Step188Add1B s2Step188Add1Work=some s2Step188Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step188Add1Arena s2Step188Add1During 835 840 794 s2Step188Add1A s2Step188Add1B s2Step188Add1Work
    (by decide +kernel) (by decide +kernel) s2Step188Add1_distinct
    (fun q hq => s2Step188Add1_owned (List.mem_toFinset.mpr hq)) s2Step188Add1_borrowed

private theorem s2Step188F4_apart : Disjoint (s2Step188Add0A++s2Step188Add0B).toFinset (s2Step188Add1A++s2Step188Add1B).toFinset := by
  have nd : ((s2Step188Add0A++s2Step188Add0B)++(s2Step188Add1A++s2Step188Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step188F4_carry : s2Step188F4FlagArena.checkBorrow 1 [794]=some s2Step188Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step188F4FlagArena,s2Step188HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step188F4FlagArena,s2Step188HeadFvAfter,s2Step188Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step188F4_distinct : (825::835::840::794::((s2Step188Add0A++s2Step188Add1A)++(s2Step188Add0B++s2Step188Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188F4_flag : s2Step188HeadFvAfter.checkBorrow 1 [840]=some s2Step188F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step188HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step188F4_owned : (825::835::((s2Step188Add0A++s2Step188Add1A)++(s2Step188Add0B++s2Step188Add1B))).toFinset⊆s2Step188HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step188HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188F4_checked : compileHmrHybridF4Log s2Step188HeadFvAfter 825 835 s2Step188Add0A s2Step188Add0B s2Step188Add1A s2Step188Add1B [840] [794] s2Step188Add0Work s2Step188Add1Work=some s2Step188F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step188HeadFvAfter s2Step188F4FlagArena s2Step188Add0Arena s2Step188Add0During s2Step188Add1During 825 835
    s2Step188Add0A s2Step188Add0B s2Step188Add1A s2Step188Add1B [840] [794] s2Step188Add0Work s2Step188Add1Work
    (fun q hq => s2Step188F4_owned (List.mem_toFinset.mpr hq)) s2Step188F4_flag s2Step188F4_carry
    s2Step188F4_distinct s2Step188F4_apart s2Step188Add0_checked s2Step188Add1_checked

private theorem s2Step188Front_branch : s2Step188FrontSigmaArena.checkBorrow 1 [835]=some s2Step188HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step188FrontSigmaArena,s2Step188EntryGvAfter,s2Step188EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step188FrontSigmaArena,s2Step188EntryGvAfter,s2Step188EntryGAfter,s2Step188HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step188Front_entry : HmrFrontEntryValid s2Step188EntryFBefore s2Step188FrontBank 176 108 ⟨175,175,109,108⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step188FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step188EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step188EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step188FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step188Front_sigma : s2Step188EntryGvAfter.checkBorrow 1 [825]=some s2Step188FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step188EntryGvAfter,s2Step188EntryGAfter,arenaWires]
  · rfl

private def s2Step188HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188HeadFBefore : Arena := s2Step188HeadGAfter

private def s2Step188HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687],768⟩

private def s2Step188HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846],770⟩

private def s2Step188HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 807],769⟩

private def s2Step188HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802],771⟩

private theorem s2Step188HeadBank_incomingDistinct : ([s2Step188HeadGRow,s2Step188HeadFRow,s2Step188HeadGvRow,s2Step188HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188HeadF_Incoming : rowsOwned s2Step188HeadFBefore [s2Step188HeadFRow,s2Step188HeadGvRow,s2Step188HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step188HeadGRow,s2Step188HeadFRow,s2Step188HeadGvRow,s2Step188HeadFvRow] 1 s2Step188HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step188HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step188HeadBank_outgoingOwned : rowsOwned s2Step188HeadFvAfter [s2Step188HeadGOut,s2Step188HeadFOut,s2Step188HeadGvOut,s2Step188HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step188HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step188HeadF_Outgoing : rowsOwned s2Step188HeadFvAfter [s2Step188HeadFOut,s2Step188HeadGvOut,s2Step188HeadFvOut] :=
  hmrRows_owned_drop s2Step188HeadFvAfter [s2Step188HeadGOut,s2Step188HeadFOut,s2Step188HeadGvOut,s2Step188HeadFvOut] 1 s2Step188HeadBank_outgoingOwned

private theorem s2Step188HeadF_distinct : (s2Step188HeadFRow.sign::s2Step188HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188HeadF_owned : (s2Step188HeadFRow.sign::s2Step188HeadFRow.payload).toFinset⊆s2Step188HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step188HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188HeadF_reserved : s2Step188HeadFBefore.reserve s2Step188HeadFFresh.toFinset=some s2Step188HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step188HeadFFresh,arenaWires]
  · norm_num [s2Step188HeadFBefore,s2Step188HeadGAfter,s2Step188HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step188HeadFAfter,s2Step188HeadFBefore,s2Step188HeadGAfter,s2Step188HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step188HeadF_checked : planRowResizeLog s2Step188HeadFBefore s2Step188HeadFRow 177 s2Step188HeadFFresh=
    some (s2Step188HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 803],768⟩,growRow 768 s2Step188HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step188HeadFBefore s2Step188HeadFAfter s2Step188HeadFRow 177 s2Step188HeadFFresh
    s2Step188HeadF_distinct s2Step188HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step188HeadF_reserved
  have rowEq : WindowRow.mk (s2Step188HeadFRow.payload++s2Step188HeadFFresh) s2Step188HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 803],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step188HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step188HeadFvBefore : Arena := s2Step188HeadGvAfter

private theorem s2Step188HeadFv_Incoming : rowsOwned s2Step188HeadFvBefore [s2Step188HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step188HeadGRow,s2Step188HeadFRow,s2Step188HeadGvRow,s2Step188HeadFvRow] 3 s2Step188HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step188HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step188HeadFv_Outgoing : rowsOwned s2Step188HeadFvAfter [s2Step188HeadFvOut] :=
  hmrRows_owned_drop s2Step188HeadFvAfter [s2Step188HeadGOut,s2Step188HeadFOut,s2Step188HeadGvOut,s2Step188HeadFvOut] 3 s2Step188HeadBank_outgoingOwned

private theorem s2Step188HeadFv_distinct : (s2Step188HeadFvRow.sign::s2Step188HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188HeadFv_owned : (s2Step188HeadFvRow.sign::s2Step188HeadFvRow.payload).toFinset⊆s2Step188HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step188HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188HeadFv_reserved : s2Step188HeadFvBefore.reserve s2Step188HeadFvFresh.toFinset=some s2Step188HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step188HeadFvFresh,arenaWires]
  · norm_num [s2Step188HeadFvBefore,s2Step188HeadGvAfter,s2Step188HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step188HeadFvAfter,s2Step188HeadFvBefore,s2Step188HeadGvAfter,s2Step188HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step188HeadFv_checked : planRowResizeLog s2Step188HeadFvBefore s2Step188HeadFvRow 109 s2Step188HeadFvFresh=
    some (s2Step188HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824],770⟩,growRow 770 s2Step188HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step188HeadFvBefore s2Step188HeadFvAfter s2Step188HeadFvRow 109 s2Step188HeadFvFresh
    s2Step188HeadFv_distinct s2Step188HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step188HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step188HeadFvRow.payload++s2Step188HeadFvFresh) s2Step188HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step188HeadG_Incoming : rowsOwned s2Step188HeadGBefore [s2Step188HeadGRow,s2Step188HeadFRow,s2Step188HeadGvRow,s2Step188HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step188HeadGRow,s2Step188HeadFRow,s2Step188HeadGvRow,s2Step188HeadFvRow] 0 s2Step188HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step188HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step188HeadG_Outgoing : rowsOwned s2Step188HeadFvAfter [s2Step188HeadGOut,s2Step188HeadFOut,s2Step188HeadGvOut,s2Step188HeadFvOut] :=
  hmrRows_owned_drop s2Step188HeadFvAfter [s2Step188HeadGOut,s2Step188HeadFOut,s2Step188HeadGvOut,s2Step188HeadFvOut] 0 s2Step188HeadBank_outgoingOwned

private theorem s2Step188HeadG_distinct : (s2Step188HeadGRow.sign::s2Step188HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188HeadG_owned : (s2Step188HeadGRow.sign::s2Step188HeadGRow.payload).toFinset⊆s2Step188HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step188HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188HeadG_reserved : s2Step188HeadGBefore.reserve s2Step188HeadGFresh.toFinset=some s2Step188HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step188HeadGFresh,arenaWires]
  · norm_num [s2Step188HeadGBefore,s2Step188HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step188HeadGAfter,s2Step188HeadGBefore,s2Step188HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step188HeadG_checked : planRowResizeLog s2Step188HeadGBefore s2Step188HeadGRow 177 s2Step188HeadGFresh=
    some (s2Step188HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 807, 822],769⟩,growRow 769 s2Step188HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step188HeadGBefore s2Step188HeadGAfter s2Step188HeadGRow 177 s2Step188HeadGFresh
    s2Step188HeadG_distinct s2Step188HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step188HeadG_reserved
  have rowEq : WindowRow.mk (s2Step188HeadGRow.payload++s2Step188HeadGFresh) s2Step188HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 807, 822],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step188HeadGvBefore : Arena := s2Step188HeadFAfter

private theorem s2Step188HeadGv_Incoming : rowsOwned s2Step188HeadGvBefore [s2Step188HeadGvRow,s2Step188HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step188HeadGRow,s2Step188HeadFRow,s2Step188HeadGvRow,s2Step188HeadFvRow] 2 s2Step188HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step188HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step188HeadGv_Outgoing : rowsOwned s2Step188HeadFvAfter [s2Step188HeadGvOut,s2Step188HeadFvOut] :=
  hmrRows_owned_drop s2Step188HeadFvAfter [s2Step188HeadGOut,s2Step188HeadFOut,s2Step188HeadGvOut,s2Step188HeadFvOut] 2 s2Step188HeadBank_outgoingOwned

private theorem s2Step188HeadGv_distinct : (s2Step188HeadGvRow.sign::s2Step188HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step188HeadGv_owned : (s2Step188HeadGvRow.sign::s2Step188HeadGvRow.payload).toFinset⊆s2Step188HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step188HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step188HeadGv_reserved : s2Step188HeadGvBefore.reserve s2Step188HeadGvFresh.toFinset=some s2Step188HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step188HeadGvFresh,arenaWires]
  · norm_num [s2Step188HeadGvBefore,s2Step188HeadFAfter,s2Step188HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step188HeadGvAfter,s2Step188HeadGvBefore,s2Step188HeadFAfter,s2Step188HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step188HeadGv_checked : planRowResizeLog s2Step188HeadGvBefore s2Step188HeadGvRow 109 s2Step188HeadGvFresh=
    some (s2Step188HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 799],771⟩,growRow 771 s2Step188HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step188HeadGvBefore s2Step188HeadGvAfter s2Step188HeadGvRow 109 s2Step188HeadGvFresh
    s2Step188HeadGv_distinct s2Step188HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step188HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step188HeadGvRow.payload++s2Step188HeadGvFresh) s2Step188HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 799],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step188HeadBank_rows : planWindowRowsLog s2Step188HeadGBefore [(s2Step188HeadGRow,177),(s2Step188HeadFRow,177),(s2Step188HeadGvRow,109),(s2Step188HeadFvRow,109)] [s2Step188HeadGFresh,s2Step188HeadFFresh,s2Step188HeadGvFresh,s2Step188HeadFvFresh]=
    some (s2Step188HeadFvAfter,[s2Step188HeadGOut,s2Step188HeadFOut,s2Step188HeadGvOut,s2Step188HeadFvOut],(growRow 769 s2Step188HeadGFresh ++ (growRow 768 s2Step188HeadFFresh ++ (growRow 771 s2Step188HeadGvFresh ++ (growRow 770 s2Step188HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step188HeadFvAfter [] []=some (s2Step188HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step188HeadFvBefore s2Step188HeadFvAfter s2Step188HeadFvAfter
    s2Step188HeadFvRow s2Step188HeadFvOut 109 s2Step188HeadFvFresh [] [] []
    (growRow 770 s2Step188HeadFvFresh) ([]) s2Step188HeadFv_Incoming s2Step188HeadFv_checked h4 s2Step188HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step188HeadGvBefore s2Step188HeadGvAfter s2Step188HeadFvAfter
    s2Step188HeadGvRow s2Step188HeadGvOut 109 s2Step188HeadGvFresh [(s2Step188HeadFvRow,109)] [s2Step188HeadFvFresh] [s2Step188HeadFvOut]
    (growRow 771 s2Step188HeadGvFresh) ((growRow 770 s2Step188HeadFvFresh ++ [])) s2Step188HeadGv_Incoming s2Step188HeadGv_checked h3 s2Step188HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step188HeadFBefore s2Step188HeadFAfter s2Step188HeadFvAfter
    s2Step188HeadFRow s2Step188HeadFOut 177 s2Step188HeadFFresh [(s2Step188HeadGvRow,109),(s2Step188HeadFvRow,109)] [s2Step188HeadGvFresh,s2Step188HeadFvFresh] [s2Step188HeadGvOut,s2Step188HeadFvOut]
    (growRow 768 s2Step188HeadFFresh) ((growRow 771 s2Step188HeadGvFresh ++ (growRow 770 s2Step188HeadFvFresh ++ []))) s2Step188HeadF_Incoming s2Step188HeadF_checked h2 s2Step188HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step188HeadGBefore s2Step188HeadGAfter s2Step188HeadFvAfter
    s2Step188HeadGRow s2Step188HeadGOut 177 s2Step188HeadGFresh [(s2Step188HeadFRow,177),(s2Step188HeadGvRow,109),(s2Step188HeadFvRow,109)] [s2Step188HeadFFresh,s2Step188HeadGvFresh,s2Step188HeadFvFresh] [s2Step188HeadFOut,s2Step188HeadGvOut,s2Step188HeadFvOut]
    (growRow 769 s2Step188HeadGFresh) ((growRow 768 s2Step188HeadFFresh ++ (growRow 771 s2Step188HeadGvFresh ++ (growRow 770 s2Step188HeadFvFresh ++ [])))) s2Step188HeadG_Incoming s2Step188HeadG_checked h1 s2Step188HeadG_Outgoing
  exact h0

private theorem s2Step188HeadBank_checked : compileHmrBankResizeLog .headroom s2Step188HeadGBefore ⟨s2Step188HeadFRow,s2Step188HeadGRow,s2Step188HeadFvRow,s2Step188HeadGvRow⟩ ⟨177,177,109,109⟩ [s2Step188HeadGFresh,s2Step188HeadFFresh,s2Step188HeadGvFresh,s2Step188HeadFvFresh]=
    some (s2Step188HeadFvAfter,⟨s2Step188HeadFOut,s2Step188HeadGOut,s2Step188HeadFvOut,s2Step188HeadGvOut⟩,(growRow 769 s2Step188HeadGFresh ++ (growRow 768 s2Step188HeadFFresh ++ (growRow 771 s2Step188HeadGvFresh ++ (growRow 770 s2Step188HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step188HeadBank_rows]
  rfl

private theorem s2Step188Front_checked : compileHmrSourceFrontLog s2Step188EntryFBefore s2Step188FrontBank 176 108 ⟨175,175,109,108⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step188FrontLog=some s2Step188FrontPlan := by
  have pairEq : s2Step188FrontPair=⟨s2Step188HeadFRow,s2Step188HeadGRow,s2Step188HeadFvRow,s2Step188HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step188FrontHead=⟨s2Step188ExitFRow,s2Step188ExitGRow,s2Step188ExitFvRow,s2Step188ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step188Add0A=s2Step188FrontHead.f.wires := by decide +kernel
  have gEq : s2Step188Add0B=s2Step188FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step188Add1A=s2Step188FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step188Add1B=s2Step188FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step188EntryFBefore s2Step188FrontBank 176 108 ⟨175,175,109,108⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step188FrontLog s2Step188FrontPlan
  · exact s2Step188Front_entry
  · exact s2Step188EntryBank_checked
  · exact s2Step188Front_sigma
  · rfl
  · exact s2Step188Front_branch
  · rfl
  · simpa only [s2Step188FrontPlan,pairEq] using s2Step188HeadBank_checked
  · simpa only [s2Step188FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step188F4_checked
  · exact s2Step188Counter_checked
  · rfl
  · simpa only [s2Step188FrontPlan,headEq] using s2Step188ExitBank_checked

private theorem s2Step188Complete_explicit_checked : compileHmrEarlyStepLog s2Step188EntryFBefore s2Step188FrontBank 176 108 ⟨175,175,109,108⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step188CompleteLog=some s2Step188CompletePlan := by
  let Q := s2Step188EarlyControlPlan
  have hq := s2Step188EarlyControl_plan_checked
  have fv1 : s2Step188CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step188CompleteOut.fv.payload[2]?.getD s2Step188CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step188CompleteOut.fv.payload[3]?.getD s2Step188CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step188CompleteOut.fv.payload[4]?.getD s2Step188CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step188EntryFBefore s2Step188EarlyControlArena s2Step188FrontBank 176 108 ⟨175,175,109,108⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step188CompleteLog s2Step188FrontPlan Q
    s2Step188Front_checked s2Step188Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step188Complete_owned s2Step188Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step188EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 s2Step188CompleteOut.fv.second (s2Step188CompleteOut.fv.payload[2]?.getD s2Step188CompleteOut.fv.sign) (s2Step188CompleteOut.fv.payload[3]?.getD s2Step188CompleteOut.fv.sign) (s2Step188CompleteOut.fv.payload[4]?.getD s2Step188CompleteOut.fv.sign) 835 43 s2Step188EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep188Arena : Arena := s2Step188EntryFBefore
def s2PrivateStep188Bank : WindowBank := s2Step188FrontBank
def s2PrivateStep188Spec : HmrSourceWalkStepLog := ⟨176,108,⟨175,175,109,108⟩,43,.early s2Step188CompleteLog⟩
def s2PrivateStep188Plan : HmrSourceStepPlan := .early s2Step188CompletePlan
theorem s2PrivateStep188_source : s2PrivateStep188Spec=s2ObservedLogs176[12] := rfl
theorem s2PrivateStep188_checked : compileHmrSourceStepLog s2PrivateStep188Arena s2PrivateStep188Bank
    s2PrivateStep188Spec.fgWidth s2PrivateStep188Spec.vWidth s2PrivateStep188Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]
    6 498 188 s2PrivateStep188Spec.need none s2PrivateStep188Spec.log=some s2PrivateStep188Plan := by
  change compileHmrSourceStepLog s2Step188EntryFBefore s2Step188FrontBank 176 108 ⟨175,175,109,108⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 6 498 188 43 none (.early s2Step188CompleteLog)=some (.early s2Step188CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 188<498)]
  rw [s2Step188Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
