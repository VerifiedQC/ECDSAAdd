import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep177
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

private def s2Step179CompleteMoves : List (Wire × Wire) := [(832,691)]

private def s2Step179EarlyControlLog : HmrEarlyControlLog := ⟨[832, 806, 785, 830, 794],[803],[799],[867, 877, 879, 882, 885, 888],[]⟩

private def s2Step179FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [807], [], []],[[785], [806], [792], [819]],[[], [], [], []]⟩,[846],[824],[830],[794],[803, 799, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[803, 799, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 794, 803, 799]⟩

private def s2Step179CompleteLog : HmrEarlyStepLog := ⟨s2Step179FrontLog,s2Step179CompleteMoves,s2Step179EarlyControlLog⟩

private def s2Step179ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690],768⟩

private def s2Step179ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819],770⟩

private def s2Step179ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807],769⟩

private def s2Step179ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩

private def s2Step179FrontOut : WindowBank := ⟨s2Step179ExitFOut,s2Step179ExitGOut,s2Step179ExitFvOut,s2Step179ExitGvOut⟩

private def s2Step179CompleteOut : WindowBank := s2Step179FrontOut.repacked s2Step179CompleteMoves

private def s2Step179EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step179EarlyControlPositiveArena,[803],s2Step179EarlyControlEqualityArena,[799],⟨⟨846,false⟩,[⟨⟨803,false⟩,799⟩]⟩⟩

private def s2Step179EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,832⟩,⟨⟨774,false⟩,806⟩,⟨⟨775,false⟩,785⟩,⟨⟨776,false⟩,830⟩,⟨⟨777,false⟩,794⟩]⟩

private def s2Step179EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step179EarlyControlZeroArena,s2Step179EarlyControlZeroPlan,s2Step179EarlyControlClassPlan,s2Step179EarlyControlFlagArena,s2Step179EarlyControlFittedArena,s2Step179EarlyControlHistoryArena,s2Step179EarlyControlSigmaArena,s2Step179EarlyControlOutputArena,s2Step179EarlyControlLog⟩

private def s2Step179CounterWork : List Wire := [830, 794, 803, 799]

private theorem s2Step179Counter_bounded : s2Step179CounterWork.toFinset⊆arenaWires := by norm_num [s2Step179CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step179HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179CounterDuring : Arena := ⟨s2Step179HeadFvAfter.live∪s2Step179CounterWork.toFinset,Finset.union_subset s2Step179HeadFvAfter.bounded s2Step179Counter_bounded⟩

private def s2Step179EntryFFresh : List Wire := []

private def s2Step179EntryFvFresh : List Wire := []

private def s2Step179EntryGFresh : List Wire := [807]

private def s2Step179EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179EntryGvAfter : Arena := s2Step179EntryGAfter

private def s2Step179EntryGvFresh : List Wire := []

private def s2Step179ExitFExtra : List Wire := [691, 806]

private def s2Step179ExitGExtra : List Wire := [785]

private def s2Step179ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<691) ∨ (692≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179ExitGvAfter : Arena := s2Step179ExitFAfter

private def s2Step179Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179Add0Work : List Wire := [803, 799, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step179Add0_bounded : s2Step179Add0Work.toFinset⊆arenaWires := by
  have h : s2Step179Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step179Add0During : Arena := ⟨s2Step179Add0Arena.live∪s2Step179Add0Work.toFinset,Finset.union_subset s2Step179Add0Arena.bounded s2Step179Add0_bounded⟩

private def s2Step179Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179Add1Work : List Wire := [803, 799, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step179Add1_bounded : s2Step179Add1Work.toFinset⊆arenaWires := by
  have h : s2Step179Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step179Add1During : Arena := ⟨s2Step179Add1Arena.live∪s2Step179Add1Work.toFinset,Finset.union_subset s2Step179Add1Arena.bounded s2Step179Add1_bounded⟩

private def s2Step179F4FlagArena : Arena := ⟨s2Step179HeadFvAfter.live∪{830},Finset.union_subset s2Step179HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step179F4Plan : HmrHybridF4Plan := ⟨s2Step179F4FlagArena,[830],s2Step179Add0Arena,[794],s2Step179Add0During,s2Step179Add0Work,s2Step179Add1During,s2Step179Add1Work⟩

private def s2Step179HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 806],768⟩

private def s2Step179HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819],770⟩

private def s2Step179HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807, 785],769⟩

private def s2Step179HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩

private def s2Step179FrontHead : WindowBank := ⟨s2Step179HeadFOut,s2Step179HeadGOut,s2Step179HeadFvOut,s2Step179HeadGvOut⟩

private def s2Step179EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691],768⟩

private def s2Step179EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩

private def s2Step179EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807],769⟩

private def s2Step179EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847],771⟩

private def s2Step179FrontPair : WindowBank := ⟨s2Step179EntryFOut,s2Step179EntryGOut,s2Step179EntryFvOut,s2Step179EntryGvOut⟩

private def s2Step179FrontSigmaArena : Arena := ⟨s2Step179EntryGvAfter.live∪{846},Finset.union_subset s2Step179EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step179HeadFFresh : List Wire := [806]

private def s2Step179HeadFvFresh : List Wire := [819]

private def s2Step179HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179HeadGFresh : List Wire := [785]

private def s2Step179HeadGvFresh : List Wire := [792]

private def s2Step179FrontPlan : HmrSourceFront := ⟨s2Step179EntryGvAfter,s2Step179FrontPair,(growRow 768 s2Step179EntryFFresh ++ (growRow 769 s2Step179EntryGFresh ++ (growRow 770 s2Step179EntryFvFresh ++ (growRow 771 s2Step179EntryGvFresh ++ [])))),s2Step179FrontSigmaArena,[846],s2Step179HeadGBefore,[824],
  s2Step179HeadFvAfter,s2Step179FrontHead,(growRow 769 s2Step179HeadGFresh ++ (growRow 768 s2Step179HeadFFresh ++ (growRow 771 s2Step179HeadGvFresh ++ (growRow 770 s2Step179HeadFvFresh ++ [])))),s2Step179F4Plan,s2Step179CounterDuring,s2Step179CounterWork,s2Step179ExitGvAfter,s2Step179FrontOut,(shrinkRow 769 s2Step179ExitGExtra ++ (shrinkRow 768 s2Step179ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step179CompletePlan : HmrEarlyStepPlan := ⟨s2Step179FrontPlan,s2Step179EarlyControlArena,s2Step179EarlyControlPlan,s2Step179CompleteMoves⟩

private theorem s2Step179Complete_apart : List.Disjoint (s2Step179CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [846, 824, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step179CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[846, 824, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step179Complete_owned : (s2Step179CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step179EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step179EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step179CompleteMoveArena : Arena := ⟨s2Step179ExitGvAfter.live∪{691},Finset.union_subset s2Step179ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step179Complete_repack : s2Step179ExitGvAfter.checkRepack s2Step179CompleteMoves=some s2Step179EarlyControlArena := by
  have owned : 832∈s2Step179ExitGvAfter.live := by norm_num [s2Step179ExitGvAfter,s2Step179ExitFAfter,arenaWires]
  have reserve : s2Step179ExitGvAfter.reserve {691}=some s2Step179CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step179ExitGvAfter,s2Step179ExitFAfter,arenaWires]
    · rfl
  have retired : s2Step179CompleteMoveArena.retireSet {832}=s2Step179EarlyControlArena := by
    unfold Arena.retireSet s2Step179EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step179CompleteMoveArena,s2Step179ExitGvAfter,s2Step179ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step179CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step179CompleteMoveArena.retireSet {832}).checkRepack []=some s2Step179EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step179EarlyControl_branchOwned : ([824] : List Wire).toFinset⊆s2Step179EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step179EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179EarlyControl_branch : compileHmrBranchRetirement s2Step179EarlyControlSigmaArena 824=some s2Step179EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step179EarlyControl_branchOwned
  · ext q
    simp [s2Step179EarlyControlOutputArena,s2Step179EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step179EarlyControl_classEqualityBorrow : s2Step179EarlyControlPositiveArena.checkBorrow (([846, 803] : List Wire).length-1) s2Step179EarlyControlLog.classWork=some s2Step179EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step179EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step179EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step179EarlyControlEqualityArena,s2Step179EarlyControlPositiveArena,s2Step179EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step179EarlyControl_classEqualityOwned : ([846, 803] : List Wire).toFinset⊆s2Step179EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step179EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179EarlyControl_classEquality : compileHmrEqualityLog s2Step179EarlyControlPositiveArena [846, 803] 0 s2Step179EarlyControlLog.classWork=some (s2Step179EarlyControlEqualityArena,s2Step179EarlyControlLog.classWork,s2Step179EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step179EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step179EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step179EarlyControl_classOwned : ([777, 794, 846] : List Wire).toFinset⊆s2Step179EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step179EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179EarlyControl_positiveBorrow : s2Step179EarlyControlZeroArena.checkBorrow (1) s2Step179EarlyControlLog.positiveWork=some s2Step179EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step179EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step179EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step179EarlyControlPositiveArena,s2Step179EarlyControlZeroArena,s2Step179EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step179EarlyControl_class : compileHmrSourceClassLog s2Step179EarlyControlZeroArena false 777 s2Step179EarlyControlZeroPlan.top 0 846 s2Step179EarlyControlLog.positiveWork s2Step179EarlyControlLog.classWork=some s2Step179EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step179EarlyControlClassPlan s2Step179EarlyControlZeroArena false 777 s2Step179EarlyControlZeroPlan.top 0 846
  constructor
  · decide +kernel
  · exact s2Step179EarlyControl_classOwned
  · exact s2Step179EarlyControl_positiveBorrow
  · exact s2Step179EarlyControl_classEquality

private theorem s2Step179EarlyControl_entryRecordOwned : ([824, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step179EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step179EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179EarlyControl_entrySigmaOwned : ([846, 254] : List Wire).toFinset⊆s2Step179EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step179EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179EarlyControl_fitBorrow : s2Step179EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step179EarlyControlLog.recordFresh=some s2Step179EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step179EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step179EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step179EarlyControlFittedArena,s2Step179EarlyControlFlagArena,s2Step179EarlyControlLog,arenaWires]

private theorem s2Step179EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step179EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step179EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179EarlyControl_fit : compileHmrRecordGrowLog s2Step179EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step179EarlyControlLog.recordFresh=some s2Step179EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step179EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step179EarlyControl_fitBorrow

private theorem s2Step179EarlyControl_flagsBorrow : s2Step179EarlyControlEqualityArena.checkBorrow (6) s2Step179EarlyControlLog.flagWork=some s2Step179EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step179EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step179EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step179EarlyControlFlagArena,s2Step179EarlyControlEqualityArena,s2Step179EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step179EarlyControl_flagsOwned : ([799, 253, 252, 251] : List Wire).toFinset⊆s2Step179EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step179EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179EarlyControl_flags : compileHmrFlagsLog s2Step179EarlyControlClassPlan.equalityArena s2Step179EarlyControlClassPlan.equality.top 253 252 251 s2Step179EarlyControlLog.flagWork=some s2Step179EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step179EarlyControl_flagsOwned⟩
  · exact s2Step179EarlyControl_flagsBorrow

private theorem s2Step179EarlyControl_historyBorrow : s2Step179EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step179EarlyControlLog.recordFresh=some s2Step179EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step179EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step179EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step179EarlyControlHistoryArena,s2Step179EarlyControlArena,s2Step179EarlyControlLog,arenaWires]

private theorem s2Step179EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step179EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step179EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179EarlyControl_history : compileHmrRecordGrowLog s2Step179EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step179EarlyControlLog.recordFresh=some s2Step179EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step179EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step179EarlyControl_historyBorrow

private theorem s2Step179EarlyControl_sigmaOwned : ([254, 846] : List Wire).toFinset⊆s2Step179EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step179EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179EarlyControl_sigmaReleaseOwned : ([846] : List Wire).toFinset⊆s2Step179EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step179EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179EarlyControl_sigmaRelease : s2Step179EarlyControlHistoryArena.release {846} (fun _ => false)=some s2Step179EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step179EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step179EarlyControlSigmaArena,s2Step179EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step179EarlyControl_sigma : compileHmrSigmaDropLog s2Step179EarlyControlHistoryArena false 0 0 254 846 []=some s2Step179EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step179EarlyControl_sigmaOwned⟩
  · exact s2Step179EarlyControl_sigmaRelease

private theorem s2Step179EarlyControl_zeroBorrow : s2Step179EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step179EarlyControlLog.zeroWork=some s2Step179EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step179EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step179EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step179EarlyControlZeroArena,s2Step179EarlyControlArena,s2Step179EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step179EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step179EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step179EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179EarlyControl_zero : compileHmrEqualityLog s2Step179EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step179EarlyControlLog.zeroWork=some (s2Step179EarlyControlZeroArena,s2Step179EarlyControlLog.zeroWork,s2Step179EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step179EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step179EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step179EarlyControl_logged : s2Step179EarlyControlPlan.Logged s2Step179EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 824 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step179EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step179EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step179EarlyControl_zero
  · exact s2Step179EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step179EarlyControl_flags
  · exact s2Step179EarlyControl_fit
  · exact s2Step179EarlyControl_history
  · exact s2Step179EarlyControl_sigma
  · exact s2Step179EarlyControl_branch

private theorem s2Step179EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step179EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 824 42 s2Step179EarlyControlLog=some s2Step179EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step179EarlyControlPlan s2Step179EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 824 42 s2Step179EarlyControl_logged

private def s2Step179EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691],768⟩

private def s2Step179EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩

private def s2Step179EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178],769⟩

private def s2Step179EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847],771⟩

private def s2Step179FrontBank : WindowBank := ⟨s2Step179EntryFRow,s2Step179EntryGRow,s2Step179EntryFvRow,s2Step179EntryGvRow⟩

private def s2Step179Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 806, 768]

private def s2Step179Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807, 785, 769]

private def s2Step179Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 770]

private def s2Step179Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 771]

private theorem s2Step179Counter_apart : Disjoint s2Step179HeadFvAfter.live s2Step179CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step179HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179Counter_borrowed : s2Step179HeadFvAfter.checkBorrow 4 s2Step179CounterWork=some s2Step179CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step179HeadFvAfter s2Step179CounterDuring s2Step179CounterWork.toFinset s2Step179Counter_bounded s2Step179Counter_apart rfl

private theorem s2Step179Counter_owned : (846::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step179HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step179HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179Counter_checked : compileHmrCounterStepLog s2Step179HeadFvAfter true 846 [772, 773, 774, 775, 776, 777] s2Step179CounterWork=some s2Step179CounterDuring := by
  have owned : ∀q∈846::[772, 773, 774, 775, 776, 777],q∈s2Step179HeadFvAfter.live := fun q hq => s2Step179Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step179Counter_borrowed

private def s2Step179EntryFAfter : Arena := s2Step179EntryFBefore

private theorem s2Step179EntryBank_incomingDistinct : ([s2Step179EntryFRow,s2Step179EntryGRow,s2Step179EntryFvRow,s2Step179EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179EntryF_Incoming : rowsOwned s2Step179EntryFBefore [s2Step179EntryFRow,s2Step179EntryGRow,s2Step179EntryFvRow,s2Step179EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step179EntryFRow,s2Step179EntryGRow,s2Step179EntryFvRow,s2Step179EntryGvRow] 0 s2Step179EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step179EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step179EntryBank_outgoingOwned : rowsOwned s2Step179EntryGvAfter [s2Step179EntryFOut,s2Step179EntryGOut,s2Step179EntryFvOut,s2Step179EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step179EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step179EntryF_Outgoing : rowsOwned s2Step179EntryGvAfter [s2Step179EntryFOut,s2Step179EntryGOut,s2Step179EntryFvOut,s2Step179EntryGvOut] :=
  hmrRows_owned_drop s2Step179EntryGvAfter [s2Step179EntryFOut,s2Step179EntryGOut,s2Step179EntryFvOut,s2Step179EntryGvOut] 0 s2Step179EntryBank_outgoingOwned

private theorem s2Step179EntryF_distinct : (s2Step179EntryFRow.sign::s2Step179EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179EntryF_owned : (s2Step179EntryFRow.sign::s2Step179EntryFRow.payload).toFinset⊆s2Step179EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step179EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179EntryF_reserved : s2Step179EntryFBefore.reserve s2Step179EntryFFresh.toFinset=some s2Step179EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step179EntryFFresh,arenaWires]
  · norm_num [s2Step179EntryFBefore,s2Step179EntryFFresh,arenaWires]
  · simp only [s2Step179EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step179EntryF_checked : planRowResizeLog s2Step179EntryFBefore s2Step179EntryFRow 180 s2Step179EntryFFresh=
    some (s2Step179EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691],768⟩,growRow 768 s2Step179EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step179EntryFBefore s2Step179EntryFAfter s2Step179EntryFRow 180 s2Step179EntryFFresh
    s2Step179EntryF_distinct s2Step179EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step179EntryF_reserved
  have rowEq : WindowRow.mk (s2Step179EntryFRow.payload++s2Step179EntryFFresh) s2Step179EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step179EntryFvAfter : Arena := s2Step179EntryGAfter

private def s2Step179EntryFvBefore : Arena := s2Step179EntryGAfter

private theorem s2Step179EntryFv_Incoming : rowsOwned s2Step179EntryFvBefore [s2Step179EntryFvRow,s2Step179EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step179EntryFRow,s2Step179EntryGRow,s2Step179EntryFvRow,s2Step179EntryGvRow] 2 s2Step179EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step179EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step179EntryFv_Outgoing : rowsOwned s2Step179EntryGvAfter [s2Step179EntryFvOut,s2Step179EntryGvOut] :=
  hmrRows_owned_drop s2Step179EntryGvAfter [s2Step179EntryFOut,s2Step179EntryGOut,s2Step179EntryFvOut,s2Step179EntryGvOut] 2 s2Step179EntryBank_outgoingOwned

private theorem s2Step179EntryFv_distinct : (s2Step179EntryFvRow.sign::s2Step179EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179EntryFv_owned : (s2Step179EntryFvRow.sign::s2Step179EntryFvRow.payload).toFinset⊆s2Step179EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step179EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179EntryFv_reserved : s2Step179EntryFvBefore.reserve s2Step179EntryFvFresh.toFinset=some s2Step179EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step179EntryFvFresh,arenaWires]
  · norm_num [s2Step179EntryFvBefore,s2Step179EntryGAfter,s2Step179EntryFvFresh,arenaWires]
  · simp only [s2Step179EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step179EntryFv_checked : planRowResizeLog s2Step179EntryFvBefore s2Step179EntryFvRow 103 s2Step179EntryFvFresh=
    some (s2Step179EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩,growRow 770 s2Step179EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step179EntryFvBefore s2Step179EntryFvAfter s2Step179EntryFvRow 103 s2Step179EntryFvFresh
    s2Step179EntryFv_distinct s2Step179EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step179EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step179EntryFvRow.payload++s2Step179EntryFvFresh) s2Step179EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step179EntryGBefore : Arena := s2Step179EntryFBefore

private theorem s2Step179EntryG_Incoming : rowsOwned s2Step179EntryGBefore [s2Step179EntryGRow,s2Step179EntryFvRow,s2Step179EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step179EntryFRow,s2Step179EntryGRow,s2Step179EntryFvRow,s2Step179EntryGvRow] 1 s2Step179EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step179EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step179EntryG_Outgoing : rowsOwned s2Step179EntryGvAfter [s2Step179EntryGOut,s2Step179EntryFvOut,s2Step179EntryGvOut] :=
  hmrRows_owned_drop s2Step179EntryGvAfter [s2Step179EntryFOut,s2Step179EntryGOut,s2Step179EntryFvOut,s2Step179EntryGvOut] 1 s2Step179EntryBank_outgoingOwned

private theorem s2Step179EntryG_distinct : (s2Step179EntryGRow.sign::s2Step179EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179EntryG_owned : (s2Step179EntryGRow.sign::s2Step179EntryGRow.payload).toFinset⊆s2Step179EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step179EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179EntryG_reserved : s2Step179EntryGBefore.reserve s2Step179EntryGFresh.toFinset=some s2Step179EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step179EntryGFresh,arenaWires]
  · norm_num [s2Step179EntryGBefore,s2Step179EntryFBefore,s2Step179EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step179EntryGAfter,s2Step179EntryGBefore,s2Step179EntryFBefore,s2Step179EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step179EntryG_checked : planRowResizeLog s2Step179EntryGBefore s2Step179EntryGRow 180 s2Step179EntryGFresh=
    some (s2Step179EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807],769⟩,growRow 769 s2Step179EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step179EntryGBefore s2Step179EntryGAfter s2Step179EntryGRow 180 s2Step179EntryGFresh
    s2Step179EntryG_distinct s2Step179EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step179EntryG_reserved
  have rowEq : WindowRow.mk (s2Step179EntryGRow.payload++s2Step179EntryGFresh) s2Step179EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step179EntryGvBefore : Arena := s2Step179EntryGAfter

private theorem s2Step179EntryGv_Incoming : rowsOwned s2Step179EntryGvBefore [s2Step179EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step179EntryFRow,s2Step179EntryGRow,s2Step179EntryFvRow,s2Step179EntryGvRow] 3 s2Step179EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step179EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step179EntryGv_Outgoing : rowsOwned s2Step179EntryGvAfter [s2Step179EntryGvOut] :=
  hmrRows_owned_drop s2Step179EntryGvAfter [s2Step179EntryFOut,s2Step179EntryGOut,s2Step179EntryFvOut,s2Step179EntryGvOut] 3 s2Step179EntryBank_outgoingOwned

private theorem s2Step179EntryGv_distinct : (s2Step179EntryGvRow.sign::s2Step179EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179EntryGv_owned : (s2Step179EntryGvRow.sign::s2Step179EntryGvRow.payload).toFinset⊆s2Step179EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step179EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179EntryGv_reserved : s2Step179EntryGvBefore.reserve s2Step179EntryGvFresh.toFinset=some s2Step179EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step179EntryGvFresh,arenaWires]
  · norm_num [s2Step179EntryGvBefore,s2Step179EntryGAfter,s2Step179EntryGvFresh,arenaWires]
  · simp only [s2Step179EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step179EntryGv_checked : planRowResizeLog s2Step179EntryGvBefore s2Step179EntryGvRow 103 s2Step179EntryGvFresh=
    some (s2Step179EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847],771⟩,growRow 771 s2Step179EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step179EntryGvBefore s2Step179EntryGvAfter s2Step179EntryGvRow 103 s2Step179EntryGvFresh
    s2Step179EntryGv_distinct s2Step179EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step179EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step179EntryGvRow.payload++s2Step179EntryGvFresh) s2Step179EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step179EntryBank_rows : planWindowRowsLog s2Step179EntryFBefore [(s2Step179EntryFRow,180),(s2Step179EntryGRow,180),(s2Step179EntryFvRow,103),(s2Step179EntryGvRow,103)] [s2Step179EntryFFresh,s2Step179EntryGFresh,s2Step179EntryFvFresh,s2Step179EntryGvFresh]=
    some (s2Step179EntryGvAfter,[s2Step179EntryFOut,s2Step179EntryGOut,s2Step179EntryFvOut,s2Step179EntryGvOut],(growRow 768 s2Step179EntryFFresh ++ (growRow 769 s2Step179EntryGFresh ++ (growRow 770 s2Step179EntryFvFresh ++ (growRow 771 s2Step179EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step179EntryGvAfter [] []=some (s2Step179EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step179EntryGvBefore s2Step179EntryGvAfter s2Step179EntryGvAfter
    s2Step179EntryGvRow s2Step179EntryGvOut 103 s2Step179EntryGvFresh [] [] []
    (growRow 771 s2Step179EntryGvFresh) ([]) s2Step179EntryGv_Incoming s2Step179EntryGv_checked h4 s2Step179EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step179EntryFvBefore s2Step179EntryFvAfter s2Step179EntryGvAfter
    s2Step179EntryFvRow s2Step179EntryFvOut 103 s2Step179EntryFvFresh [(s2Step179EntryGvRow,103)] [s2Step179EntryGvFresh] [s2Step179EntryGvOut]
    (growRow 770 s2Step179EntryFvFresh) ((growRow 771 s2Step179EntryGvFresh ++ [])) s2Step179EntryFv_Incoming s2Step179EntryFv_checked h3 s2Step179EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step179EntryGBefore s2Step179EntryGAfter s2Step179EntryGvAfter
    s2Step179EntryGRow s2Step179EntryGOut 180 s2Step179EntryGFresh [(s2Step179EntryFvRow,103),(s2Step179EntryGvRow,103)] [s2Step179EntryFvFresh,s2Step179EntryGvFresh] [s2Step179EntryFvOut,s2Step179EntryGvOut]
    (growRow 769 s2Step179EntryGFresh) ((growRow 770 s2Step179EntryFvFresh ++ (growRow 771 s2Step179EntryGvFresh ++ []))) s2Step179EntryG_Incoming s2Step179EntryG_checked h2 s2Step179EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step179EntryFBefore s2Step179EntryFAfter s2Step179EntryGvAfter
    s2Step179EntryFRow s2Step179EntryFOut 180 s2Step179EntryFFresh [(s2Step179EntryGRow,180),(s2Step179EntryFvRow,103),(s2Step179EntryGvRow,103)] [s2Step179EntryGFresh,s2Step179EntryFvFresh,s2Step179EntryGvFresh] [s2Step179EntryGOut,s2Step179EntryFvOut,s2Step179EntryGvOut]
    (growRow 768 s2Step179EntryFFresh) ((growRow 769 s2Step179EntryGFresh ++ (growRow 770 s2Step179EntryFvFresh ++ (growRow 771 s2Step179EntryGvFresh ++ [])))) s2Step179EntryF_Incoming s2Step179EntryF_checked h1 s2Step179EntryF_Outgoing
  exact h0

private theorem s2Step179EntryBank_checked : compileHmrBankResizeLog .entry s2Step179EntryFBefore ⟨s2Step179EntryFRow,s2Step179EntryGRow,s2Step179EntryFvRow,s2Step179EntryGvRow⟩ ⟨180,180,103,103⟩ [s2Step179EntryFFresh,s2Step179EntryGFresh,s2Step179EntryFvFresh,s2Step179EntryGvFresh]=
    some (s2Step179EntryGvAfter,⟨s2Step179EntryFOut,s2Step179EntryGOut,s2Step179EntryFvOut,s2Step179EntryGvOut⟩,(growRow 768 s2Step179EntryFFresh ++ (growRow 769 s2Step179EntryGFresh ++ (growRow 770 s2Step179EntryFvFresh ++ (growRow 771 s2Step179EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step179EntryBank_rows]
  rfl

private def s2Step179ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179ExitFBefore : Arena := s2Step179ExitGAfter

private def s2Step179ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 806],768⟩

private def s2Step179ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819],770⟩

private def s2Step179ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807, 785],769⟩

private def s2Step179ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩

private theorem s2Step179ExitBank_incomingDistinct : ([s2Step179ExitGRow,s2Step179ExitFRow,s2Step179ExitFvRow,s2Step179ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179ExitF_Incoming : rowsOwned s2Step179ExitFBefore [s2Step179ExitFRow,s2Step179ExitFvRow,s2Step179ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step179ExitGRow,s2Step179ExitFRow,s2Step179ExitFvRow,s2Step179ExitGvRow] 1 s2Step179ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step179ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step179ExitBank_outgoingOwned : rowsOwned s2Step179ExitGvAfter [s2Step179ExitGOut,s2Step179ExitFOut,s2Step179ExitFvOut,s2Step179ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step179ExitGvAfter (fun q => (0≤q ∧ q<691) ∨ (692≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step179ExitF_Outgoing : rowsOwned s2Step179ExitGvAfter [s2Step179ExitFOut,s2Step179ExitFvOut,s2Step179ExitGvOut] :=
  hmrRows_owned_drop s2Step179ExitGvAfter [s2Step179ExitGOut,s2Step179ExitFOut,s2Step179ExitFvOut,s2Step179ExitGvOut] 1 s2Step179ExitBank_outgoingOwned

private theorem s2Step179ExitF_distinct : (s2Step179ExitFRow.sign::s2Step179ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179ExitF_owned : (s2Step179ExitFRow.sign::s2Step179ExitFRow.payload).toFinset⊆s2Step179ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step179ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179ExitF_retired : s2Step179ExitFBefore.retireSet s2Step179ExitFExtra.toFinset=s2Step179ExitFAfter := by
  unfold Arena.retireSet s2Step179ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step179ExitFBefore,s2Step179ExitGAfter,s2Step179ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step179ExitF_checked : planRowResizeLog s2Step179ExitFBefore s2Step179ExitFRow 179 []=
    some (s2Step179ExitFAfter,s2Step179ExitFOut,shrinkRow 768 s2Step179ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step179ExitFBefore s2Step179ExitFRow 179 s2Step179ExitF_distinct s2Step179ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step179ExitFRow.payload.take 179) s2Step179ExitFRow.sign=s2Step179ExitFOut := by decide +kernel
  have hi : s2Step179ExitFRow.payload.drop 179=s2Step179ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step179ExitF_retired] at result
  exact result

private def s2Step179ExitFvAfter : Arena := s2Step179ExitFAfter

private def s2Step179ExitFvBefore : Arena := s2Step179ExitFAfter

private theorem s2Step179ExitFv_Incoming : rowsOwned s2Step179ExitFvBefore [s2Step179ExitFvRow,s2Step179ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step179ExitGRow,s2Step179ExitFRow,s2Step179ExitFvRow,s2Step179ExitGvRow] 2 s2Step179ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step179ExitFvBefore (fun q => (0≤q ∧ q<691) ∨ (692≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step179ExitFv_Outgoing : rowsOwned s2Step179ExitGvAfter [s2Step179ExitFvOut,s2Step179ExitGvOut] :=
  hmrRows_owned_drop s2Step179ExitGvAfter [s2Step179ExitGOut,s2Step179ExitFOut,s2Step179ExitFvOut,s2Step179ExitGvOut] 2 s2Step179ExitBank_outgoingOwned

private theorem s2Step179ExitFv_distinct : (s2Step179ExitFvRow.sign::s2Step179ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179ExitFv_owned : (s2Step179ExitFvRow.sign::s2Step179ExitFvRow.payload).toFinset⊆s2Step179ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step179ExitFvBefore (fun q => (0≤q ∧ q<691) ∨ (692≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179ExitFv_reserved : s2Step179ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step179ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step179ExitFv_checked : planRowResizeLog s2Step179ExitFvBefore s2Step179ExitFvRow 104 []=
    some (s2Step179ExitFvAfter,s2Step179ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step179ExitFvBefore s2Step179ExitFvAfter s2Step179ExitFvRow 104 []
    s2Step179ExitFv_distinct s2Step179ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step179ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step179ExitFvRow.payload++[]) s2Step179ExitFvRow.sign=s2Step179ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step179ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step179ExitG_Incoming : rowsOwned s2Step179ExitGBefore [s2Step179ExitGRow,s2Step179ExitFRow,s2Step179ExitFvRow,s2Step179ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step179ExitGRow,s2Step179ExitFRow,s2Step179ExitFvRow,s2Step179ExitGvRow] 0 s2Step179ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step179ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step179ExitG_Outgoing : rowsOwned s2Step179ExitGvAfter [s2Step179ExitGOut,s2Step179ExitFOut,s2Step179ExitFvOut,s2Step179ExitGvOut] :=
  hmrRows_owned_drop s2Step179ExitGvAfter [s2Step179ExitGOut,s2Step179ExitFOut,s2Step179ExitFvOut,s2Step179ExitGvOut] 0 s2Step179ExitBank_outgoingOwned

private theorem s2Step179ExitG_distinct : (s2Step179ExitGRow.sign::s2Step179ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179ExitG_owned : (s2Step179ExitGRow.sign::s2Step179ExitGRow.payload).toFinset⊆s2Step179ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step179ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179ExitG_retired : s2Step179ExitGBefore.retireSet s2Step179ExitGExtra.toFinset=s2Step179ExitGAfter := by
  unfold Arena.retireSet s2Step179ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step179ExitGBefore,s2Step179ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step179ExitG_checked : planRowResizeLog s2Step179ExitGBefore s2Step179ExitGRow 180 []=
    some (s2Step179ExitGAfter,s2Step179ExitGOut,shrinkRow 769 s2Step179ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step179ExitGBefore s2Step179ExitGRow 180 s2Step179ExitG_distinct s2Step179ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step179ExitGRow.payload.take 180) s2Step179ExitGRow.sign=s2Step179ExitGOut := by decide +kernel
  have hi : s2Step179ExitGRow.payload.drop 180=s2Step179ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step179ExitG_retired] at result
  exact result

private def s2Step179ExitGvBefore : Arena := s2Step179ExitFAfter

private theorem s2Step179ExitGv_Incoming : rowsOwned s2Step179ExitGvBefore [s2Step179ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step179ExitGRow,s2Step179ExitFRow,s2Step179ExitFvRow,s2Step179ExitGvRow] 3 s2Step179ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step179ExitGvBefore (fun q => (0≤q ∧ q<691) ∨ (692≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step179ExitGv_Outgoing : rowsOwned s2Step179ExitGvAfter [s2Step179ExitGvOut] :=
  hmrRows_owned_drop s2Step179ExitGvAfter [s2Step179ExitGOut,s2Step179ExitFOut,s2Step179ExitFvOut,s2Step179ExitGvOut] 3 s2Step179ExitBank_outgoingOwned

private theorem s2Step179ExitGv_distinct : (s2Step179ExitGvRow.sign::s2Step179ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179ExitGv_owned : (s2Step179ExitGvRow.sign::s2Step179ExitGvRow.payload).toFinset⊆s2Step179ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step179ExitGvBefore (fun q => (0≤q ∧ q<691) ∨ (692≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179ExitGv_reserved : s2Step179ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step179ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step179ExitGv_checked : planRowResizeLog s2Step179ExitGvBefore s2Step179ExitGvRow 104 []=
    some (s2Step179ExitGvAfter,s2Step179ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step179ExitGvBefore s2Step179ExitGvAfter s2Step179ExitGvRow 104 []
    s2Step179ExitGv_distinct s2Step179ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step179ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step179ExitGvRow.payload++[]) s2Step179ExitGvRow.sign=s2Step179ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step179ExitBank_rows : planWindowRowsLog s2Step179ExitGBefore [(s2Step179ExitGRow,180),(s2Step179ExitFRow,179),(s2Step179ExitFvRow,104),(s2Step179ExitGvRow,104)] [[],[],[],[]]=
    some (s2Step179ExitGvAfter,[s2Step179ExitGOut,s2Step179ExitFOut,s2Step179ExitFvOut,s2Step179ExitGvOut],(shrinkRow 769 s2Step179ExitGExtra ++ (shrinkRow 768 s2Step179ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step179ExitGvAfter [] []=some (s2Step179ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step179ExitGvBefore s2Step179ExitGvAfter s2Step179ExitGvAfter
    s2Step179ExitGvRow s2Step179ExitGvOut 104 [] [] [] []
    (growRow 771 []) ([]) s2Step179ExitGv_Incoming s2Step179ExitGv_checked h4 s2Step179ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step179ExitFvBefore s2Step179ExitFvAfter s2Step179ExitGvAfter
    s2Step179ExitFvRow s2Step179ExitFvOut 104 [] [(s2Step179ExitGvRow,104)] [[]] [s2Step179ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step179ExitFv_Incoming s2Step179ExitFv_checked h3 s2Step179ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step179ExitFBefore s2Step179ExitFAfter s2Step179ExitGvAfter
    s2Step179ExitFRow s2Step179ExitFOut 179 [] [(s2Step179ExitFvRow,104),(s2Step179ExitGvRow,104)] [[],[]] [s2Step179ExitFvOut,s2Step179ExitGvOut]
    (shrinkRow 768 s2Step179ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step179ExitF_Incoming s2Step179ExitF_checked h2 s2Step179ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step179ExitGBefore s2Step179ExitGAfter s2Step179ExitGvAfter
    s2Step179ExitGRow s2Step179ExitGOut 180 [] [(s2Step179ExitFRow,179),(s2Step179ExitFvRow,104),(s2Step179ExitGvRow,104)] [[],[],[]] [s2Step179ExitFOut,s2Step179ExitFvOut,s2Step179ExitGvOut]
    (shrinkRow 769 s2Step179ExitGExtra) ((shrinkRow 768 s2Step179ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step179ExitG_Incoming s2Step179ExitG_checked h1 s2Step179ExitG_Outgoing
  exact h0

private theorem s2Step179ExitBank_checked : compileHmrBankResizeLog .exit s2Step179ExitGBefore ⟨s2Step179ExitFRow,s2Step179ExitGRow,s2Step179ExitFvRow,s2Step179ExitGvRow⟩ ⟨179,180,104,104⟩ [[],[],[],[]]=
    some (s2Step179ExitGvAfter,⟨s2Step179ExitFOut,s2Step179ExitGOut,s2Step179ExitFvOut,s2Step179ExitGvOut⟩,(shrinkRow 769 s2Step179ExitGExtra ++ (shrinkRow 768 s2Step179ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step179ExitBank_rows]
  rfl

private theorem s2Step179Add0_apart : Disjoint s2Step179Add0Arena.live s2Step179Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step179Add0Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179Add0_card : s2Step179Add0Arena.live.card=882 := by
  decide +kernel

private theorem s2Step179Add0_borrowed : s2Step179Add0Arena.checkBorrow (hmrHybridCount s2Step179Add0Arena s2Step179Add0B.length) s2Step179Add0Work=some s2Step179Add0During := by
  have len : s2Step179Add0Work.length=hmrHybridCount s2Step179Add0Arena s2Step179Add0B.length := by
    rw [hmrHybridCount,s2Step179Add0_card]
    decide +kernel
  have nd : s2Step179Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step179Add0Arena s2Step179Add0During s2Step179Add0Work.toFinset s2Step179Add0_bounded s2Step179Add0_apart rfl

private theorem s2Step179Add0_distinct : (830::824::794::(s2Step179Add0A++s2Step179Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179Add0_owned : (830::824::794::(s2Step179Add0A++s2Step179Add0B)).toFinset⊆s2Step179Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step179Add0Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179Add0_checked : compileHmrHybridCinLog s2Step179Add0Arena 824 830 794 s2Step179Add0A s2Step179Add0B s2Step179Add0Work=some s2Step179Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step179Add0Arena s2Step179Add0During 824 830 794 s2Step179Add0A s2Step179Add0B s2Step179Add0Work
    (by decide +kernel) (by decide +kernel) s2Step179Add0_distinct
    (fun q hq => s2Step179Add0_owned (List.mem_toFinset.mpr hq)) s2Step179Add0_borrowed

private theorem s2Step179Add1_apart : Disjoint s2Step179Add1Arena.live s2Step179Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step179Add1Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179Add1_card : s2Step179Add1Arena.live.card=882 := by
  decide +kernel

private theorem s2Step179Add1_borrowed : s2Step179Add1Arena.checkBorrow (hmrHybridCount s2Step179Add1Arena s2Step179Add1B.length) s2Step179Add1Work=some s2Step179Add1During := by
  have len : s2Step179Add1Work.length=hmrHybridCount s2Step179Add1Arena s2Step179Add1B.length := by
    rw [hmrHybridCount,s2Step179Add1_card]
    decide +kernel
  have nd : s2Step179Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step179Add1Arena s2Step179Add1During s2Step179Add1Work.toFinset s2Step179Add1_bounded s2Step179Add1_apart rfl

private theorem s2Step179Add1_distinct : (830::824::794::(s2Step179Add1A++s2Step179Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179Add1_owned : (830::824::794::(s2Step179Add1A++s2Step179Add1B)).toFinset⊆s2Step179Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step179Add1Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179Add1_checked : compileHmrHybridCinLog s2Step179Add1Arena 824 830 794 s2Step179Add1A s2Step179Add1B s2Step179Add1Work=some s2Step179Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step179Add1Arena s2Step179Add1During 824 830 794 s2Step179Add1A s2Step179Add1B s2Step179Add1Work
    (by decide +kernel) (by decide +kernel) s2Step179Add1_distinct
    (fun q hq => s2Step179Add1_owned (List.mem_toFinset.mpr hq)) s2Step179Add1_borrowed

private theorem s2Step179F4_apart : Disjoint (s2Step179Add0A++s2Step179Add0B).toFinset (s2Step179Add1A++s2Step179Add1B).toFinset := by
  have nd : ((s2Step179Add0A++s2Step179Add0B)++(s2Step179Add1A++s2Step179Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step179F4_carry : s2Step179F4FlagArena.checkBorrow 1 [794]=some s2Step179Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step179F4FlagArena,s2Step179HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step179F4FlagArena,s2Step179HeadFvAfter,s2Step179Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step179F4_distinct : (846::824::830::794::((s2Step179Add0A++s2Step179Add1A)++(s2Step179Add0B++s2Step179Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179F4_flag : s2Step179HeadFvAfter.checkBorrow 1 [830]=some s2Step179F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step179HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step179F4_owned : (846::824::((s2Step179Add0A++s2Step179Add1A)++(s2Step179Add0B++s2Step179Add1B))).toFinset⊆s2Step179HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step179HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179F4_checked : compileHmrHybridF4Log s2Step179HeadFvAfter 846 824 s2Step179Add0A s2Step179Add0B s2Step179Add1A s2Step179Add1B [830] [794] s2Step179Add0Work s2Step179Add1Work=some s2Step179F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step179HeadFvAfter s2Step179F4FlagArena s2Step179Add0Arena s2Step179Add0During s2Step179Add1During 846 824
    s2Step179Add0A s2Step179Add0B s2Step179Add1A s2Step179Add1B [830] [794] s2Step179Add0Work s2Step179Add1Work
    (fun q hq => s2Step179F4_owned (List.mem_toFinset.mpr hq)) s2Step179F4_flag s2Step179F4_carry
    s2Step179F4_distinct s2Step179F4_apart s2Step179Add0_checked s2Step179Add1_checked

private theorem s2Step179Front_branch : s2Step179FrontSigmaArena.checkBorrow 1 [824]=some s2Step179HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step179FrontSigmaArena,s2Step179EntryGvAfter,s2Step179EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step179FrontSigmaArena,s2Step179EntryGvAfter,s2Step179EntryGAfter,s2Step179HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step179Front_entry : HmrFrontEntryValid s2Step179EntryFBefore s2Step179FrontBank 180 103 ⟨179,180,104,104⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step179FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step179EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step179EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step179FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step179Front_sigma : s2Step179EntryGvAfter.checkBorrow 1 [846]=some s2Step179FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step179EntryGvAfter,s2Step179EntryGAfter,arenaWires]
  · rfl

private def s2Step179HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179HeadFBefore : Arena := s2Step179HeadGAfter

private def s2Step179HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691],768⟩

private def s2Step179HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩

private def s2Step179HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807],769⟩

private def s2Step179HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847],771⟩

private theorem s2Step179HeadBank_incomingDistinct : ([s2Step179HeadGRow,s2Step179HeadFRow,s2Step179HeadGvRow,s2Step179HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179HeadF_Incoming : rowsOwned s2Step179HeadFBefore [s2Step179HeadFRow,s2Step179HeadGvRow,s2Step179HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step179HeadGRow,s2Step179HeadFRow,s2Step179HeadGvRow,s2Step179HeadFvRow] 1 s2Step179HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step179HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step179HeadBank_outgoingOwned : rowsOwned s2Step179HeadFvAfter [s2Step179HeadGOut,s2Step179HeadFOut,s2Step179HeadGvOut,s2Step179HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step179HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step179HeadF_Outgoing : rowsOwned s2Step179HeadFvAfter [s2Step179HeadFOut,s2Step179HeadGvOut,s2Step179HeadFvOut] :=
  hmrRows_owned_drop s2Step179HeadFvAfter [s2Step179HeadGOut,s2Step179HeadFOut,s2Step179HeadGvOut,s2Step179HeadFvOut] 1 s2Step179HeadBank_outgoingOwned

private theorem s2Step179HeadF_distinct : (s2Step179HeadFRow.sign::s2Step179HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179HeadF_owned : (s2Step179HeadFRow.sign::s2Step179HeadFRow.payload).toFinset⊆s2Step179HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step179HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179HeadF_reserved : s2Step179HeadFBefore.reserve s2Step179HeadFFresh.toFinset=some s2Step179HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step179HeadFFresh,arenaWires]
  · norm_num [s2Step179HeadFBefore,s2Step179HeadGAfter,s2Step179HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step179HeadFAfter,s2Step179HeadFBefore,s2Step179HeadGAfter,s2Step179HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step179HeadF_checked : planRowResizeLog s2Step179HeadFBefore s2Step179HeadFRow 181 s2Step179HeadFFresh=
    some (s2Step179HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 806],768⟩,growRow 768 s2Step179HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step179HeadFBefore s2Step179HeadFAfter s2Step179HeadFRow 181 s2Step179HeadFFresh
    s2Step179HeadF_distinct s2Step179HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step179HeadF_reserved
  have rowEq : WindowRow.mk (s2Step179HeadFRow.payload++s2Step179HeadFFresh) s2Step179HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 806],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step179HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step179HeadFvBefore : Arena := s2Step179HeadGvAfter

private theorem s2Step179HeadFv_Incoming : rowsOwned s2Step179HeadFvBefore [s2Step179HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step179HeadGRow,s2Step179HeadFRow,s2Step179HeadGvRow,s2Step179HeadFvRow] 3 s2Step179HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step179HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step179HeadFv_Outgoing : rowsOwned s2Step179HeadFvAfter [s2Step179HeadFvOut] :=
  hmrRows_owned_drop s2Step179HeadFvAfter [s2Step179HeadGOut,s2Step179HeadFOut,s2Step179HeadGvOut,s2Step179HeadFvOut] 3 s2Step179HeadBank_outgoingOwned

private theorem s2Step179HeadFv_distinct : (s2Step179HeadFvRow.sign::s2Step179HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179HeadFv_owned : (s2Step179HeadFvRow.sign::s2Step179HeadFvRow.payload).toFinset⊆s2Step179HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step179HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179HeadFv_reserved : s2Step179HeadFvBefore.reserve s2Step179HeadFvFresh.toFinset=some s2Step179HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step179HeadFvFresh,arenaWires]
  · norm_num [s2Step179HeadFvBefore,s2Step179HeadGvAfter,s2Step179HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step179HeadFvAfter,s2Step179HeadFvBefore,s2Step179HeadGvAfter,s2Step179HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step179HeadFv_checked : planRowResizeLog s2Step179HeadFvBefore s2Step179HeadFvRow 104 s2Step179HeadFvFresh=
    some (s2Step179HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819],770⟩,growRow 770 s2Step179HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step179HeadFvBefore s2Step179HeadFvAfter s2Step179HeadFvRow 104 s2Step179HeadFvFresh
    s2Step179HeadFv_distinct s2Step179HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step179HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step179HeadFvRow.payload++s2Step179HeadFvFresh) s2Step179HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step179HeadG_Incoming : rowsOwned s2Step179HeadGBefore [s2Step179HeadGRow,s2Step179HeadFRow,s2Step179HeadGvRow,s2Step179HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step179HeadGRow,s2Step179HeadFRow,s2Step179HeadGvRow,s2Step179HeadFvRow] 0 s2Step179HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step179HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step179HeadG_Outgoing : rowsOwned s2Step179HeadFvAfter [s2Step179HeadGOut,s2Step179HeadFOut,s2Step179HeadGvOut,s2Step179HeadFvOut] :=
  hmrRows_owned_drop s2Step179HeadFvAfter [s2Step179HeadGOut,s2Step179HeadFOut,s2Step179HeadGvOut,s2Step179HeadFvOut] 0 s2Step179HeadBank_outgoingOwned

private theorem s2Step179HeadG_distinct : (s2Step179HeadGRow.sign::s2Step179HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179HeadG_owned : (s2Step179HeadGRow.sign::s2Step179HeadGRow.payload).toFinset⊆s2Step179HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step179HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179HeadG_reserved : s2Step179HeadGBefore.reserve s2Step179HeadGFresh.toFinset=some s2Step179HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step179HeadGFresh,arenaWires]
  · norm_num [s2Step179HeadGBefore,s2Step179HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step179HeadGAfter,s2Step179HeadGBefore,s2Step179HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step179HeadG_checked : planRowResizeLog s2Step179HeadGBefore s2Step179HeadGRow 181 s2Step179HeadGFresh=
    some (s2Step179HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807, 785],769⟩,growRow 769 s2Step179HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step179HeadGBefore s2Step179HeadGAfter s2Step179HeadGRow 181 s2Step179HeadGFresh
    s2Step179HeadG_distinct s2Step179HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step179HeadG_reserved
  have rowEq : WindowRow.mk (s2Step179HeadGRow.payload++s2Step179HeadGFresh) s2Step179HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step179HeadGvBefore : Arena := s2Step179HeadFAfter

private theorem s2Step179HeadGv_Incoming : rowsOwned s2Step179HeadGvBefore [s2Step179HeadGvRow,s2Step179HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step179HeadGRow,s2Step179HeadFRow,s2Step179HeadGvRow,s2Step179HeadFvRow] 2 s2Step179HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step179HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step179HeadGv_Outgoing : rowsOwned s2Step179HeadFvAfter [s2Step179HeadGvOut,s2Step179HeadFvOut] :=
  hmrRows_owned_drop s2Step179HeadFvAfter [s2Step179HeadGOut,s2Step179HeadFOut,s2Step179HeadGvOut,s2Step179HeadFvOut] 2 s2Step179HeadBank_outgoingOwned

private theorem s2Step179HeadGv_distinct : (s2Step179HeadGvRow.sign::s2Step179HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step179HeadGv_owned : (s2Step179HeadGvRow.sign::s2Step179HeadGvRow.payload).toFinset⊆s2Step179HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step179HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step179HeadGv_reserved : s2Step179HeadGvBefore.reserve s2Step179HeadGvFresh.toFinset=some s2Step179HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step179HeadGvFresh,arenaWires]
  · norm_num [s2Step179HeadGvBefore,s2Step179HeadFAfter,s2Step179HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step179HeadGvAfter,s2Step179HeadGvBefore,s2Step179HeadFAfter,s2Step179HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step179HeadGv_checked : planRowResizeLog s2Step179HeadGvBefore s2Step179HeadGvRow 104 s2Step179HeadGvFresh=
    some (s2Step179HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩,growRow 771 s2Step179HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step179HeadGvBefore s2Step179HeadGvAfter s2Step179HeadGvRow 104 s2Step179HeadGvFresh
    s2Step179HeadGv_distinct s2Step179HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step179HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step179HeadGvRow.payload++s2Step179HeadGvFresh) s2Step179HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step179HeadBank_rows : planWindowRowsLog s2Step179HeadGBefore [(s2Step179HeadGRow,181),(s2Step179HeadFRow,181),(s2Step179HeadGvRow,104),(s2Step179HeadFvRow,104)] [s2Step179HeadGFresh,s2Step179HeadFFresh,s2Step179HeadGvFresh,s2Step179HeadFvFresh]=
    some (s2Step179HeadFvAfter,[s2Step179HeadGOut,s2Step179HeadFOut,s2Step179HeadGvOut,s2Step179HeadFvOut],(growRow 769 s2Step179HeadGFresh ++ (growRow 768 s2Step179HeadFFresh ++ (growRow 771 s2Step179HeadGvFresh ++ (growRow 770 s2Step179HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step179HeadFvAfter [] []=some (s2Step179HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step179HeadFvBefore s2Step179HeadFvAfter s2Step179HeadFvAfter
    s2Step179HeadFvRow s2Step179HeadFvOut 104 s2Step179HeadFvFresh [] [] []
    (growRow 770 s2Step179HeadFvFresh) ([]) s2Step179HeadFv_Incoming s2Step179HeadFv_checked h4 s2Step179HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step179HeadGvBefore s2Step179HeadGvAfter s2Step179HeadFvAfter
    s2Step179HeadGvRow s2Step179HeadGvOut 104 s2Step179HeadGvFresh [(s2Step179HeadFvRow,104)] [s2Step179HeadFvFresh] [s2Step179HeadFvOut]
    (growRow 771 s2Step179HeadGvFresh) ((growRow 770 s2Step179HeadFvFresh ++ [])) s2Step179HeadGv_Incoming s2Step179HeadGv_checked h3 s2Step179HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step179HeadFBefore s2Step179HeadFAfter s2Step179HeadFvAfter
    s2Step179HeadFRow s2Step179HeadFOut 181 s2Step179HeadFFresh [(s2Step179HeadGvRow,104),(s2Step179HeadFvRow,104)] [s2Step179HeadGvFresh,s2Step179HeadFvFresh] [s2Step179HeadGvOut,s2Step179HeadFvOut]
    (growRow 768 s2Step179HeadFFresh) ((growRow 771 s2Step179HeadGvFresh ++ (growRow 770 s2Step179HeadFvFresh ++ []))) s2Step179HeadF_Incoming s2Step179HeadF_checked h2 s2Step179HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step179HeadGBefore s2Step179HeadGAfter s2Step179HeadFvAfter
    s2Step179HeadGRow s2Step179HeadGOut 181 s2Step179HeadGFresh [(s2Step179HeadFRow,181),(s2Step179HeadGvRow,104),(s2Step179HeadFvRow,104)] [s2Step179HeadFFresh,s2Step179HeadGvFresh,s2Step179HeadFvFresh] [s2Step179HeadFOut,s2Step179HeadGvOut,s2Step179HeadFvOut]
    (growRow 769 s2Step179HeadGFresh) ((growRow 768 s2Step179HeadFFresh ++ (growRow 771 s2Step179HeadGvFresh ++ (growRow 770 s2Step179HeadFvFresh ++ [])))) s2Step179HeadG_Incoming s2Step179HeadG_checked h1 s2Step179HeadG_Outgoing
  exact h0

private theorem s2Step179HeadBank_checked : compileHmrBankResizeLog .headroom s2Step179HeadGBefore ⟨s2Step179HeadFRow,s2Step179HeadGRow,s2Step179HeadFvRow,s2Step179HeadGvRow⟩ ⟨181,181,104,104⟩ [s2Step179HeadGFresh,s2Step179HeadFFresh,s2Step179HeadGvFresh,s2Step179HeadFvFresh]=
    some (s2Step179HeadFvAfter,⟨s2Step179HeadFOut,s2Step179HeadGOut,s2Step179HeadFvOut,s2Step179HeadGvOut⟩,(growRow 769 s2Step179HeadGFresh ++ (growRow 768 s2Step179HeadFFresh ++ (growRow 771 s2Step179HeadGvFresh ++ (growRow 770 s2Step179HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step179HeadBank_rows]
  rfl

private theorem s2Step179Front_checked : compileHmrSourceFrontLog s2Step179EntryFBefore s2Step179FrontBank 180 103 ⟨179,180,104,104⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step179FrontLog=some s2Step179FrontPlan := by
  have pairEq : s2Step179FrontPair=⟨s2Step179HeadFRow,s2Step179HeadGRow,s2Step179HeadFvRow,s2Step179HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step179FrontHead=⟨s2Step179ExitFRow,s2Step179ExitGRow,s2Step179ExitFvRow,s2Step179ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step179Add0A=s2Step179FrontHead.f.wires := by decide +kernel
  have gEq : s2Step179Add0B=s2Step179FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step179Add1A=s2Step179FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step179Add1B=s2Step179FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step179EntryFBefore s2Step179FrontBank 180 103 ⟨179,180,104,104⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step179FrontLog s2Step179FrontPlan
  · exact s2Step179Front_entry
  · exact s2Step179EntryBank_checked
  · exact s2Step179Front_sigma
  · rfl
  · exact s2Step179Front_branch
  · rfl
  · simpa only [s2Step179FrontPlan,pairEq] using s2Step179HeadBank_checked
  · simpa only [s2Step179FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step179F4_checked
  · exact s2Step179Counter_checked
  · rfl
  · simpa only [s2Step179FrontPlan,headEq] using s2Step179ExitBank_checked

private theorem s2Step179Complete_explicit_checked : compileHmrEarlyStepLog s2Step179EntryFBefore s2Step179FrontBank 180 103 ⟨179,180,104,104⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step179CompleteLog=some s2Step179CompletePlan := by
  let Q := s2Step179EarlyControlPlan
  have hq := s2Step179EarlyControl_plan_checked
  have fv1 : s2Step179CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step179CompleteOut.fv.payload[2]?.getD s2Step179CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step179CompleteOut.fv.payload[3]?.getD s2Step179CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step179CompleteOut.fv.payload[4]?.getD s2Step179CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step179EntryFBefore s2Step179EarlyControlArena s2Step179FrontBank 180 103 ⟨179,180,104,104⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step179CompleteLog s2Step179FrontPlan Q
    s2Step179Front_checked s2Step179Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step179Complete_owned s2Step179Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step179EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 s2Step179CompleteOut.fv.second (s2Step179CompleteOut.fv.payload[2]?.getD s2Step179CompleteOut.fv.sign) (s2Step179CompleteOut.fv.payload[3]?.getD s2Step179CompleteOut.fv.sign) (s2Step179CompleteOut.fv.payload[4]?.getD s2Step179CompleteOut.fv.sign) 824 42 s2Step179EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep179Arena : Arena := s2Step179EntryFBefore
def s2PrivateStep179Bank : WindowBank := s2Step179FrontBank
def s2PrivateStep179Spec : HmrSourceWalkStepLog := ⟨180,103,⟨179,180,104,104⟩,42,.early s2Step179CompleteLog⟩
def s2PrivateStep179Plan : HmrSourceStepPlan := .early s2Step179CompletePlan
theorem s2PrivateStep179_source : s2PrivateStep179Spec=s2ObservedLogs176[3] := rfl
theorem s2PrivateStep179_checked : compileHmrSourceStepLog s2PrivateStep179Arena s2PrivateStep179Bank
    s2PrivateStep179Spec.fgWidth s2PrivateStep179Spec.vWidth s2PrivateStep179Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 179 s2PrivateStep179Spec.need none s2PrivateStep179Spec.log=some s2PrivateStep179Plan := by
  change compileHmrSourceStepLog s2Step179EntryFBefore s2Step179FrontBank 180 103 ⟨179,180,104,104⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 179 42 none (.early s2Step179CompleteLog)=some (.early s2Step179CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 179<498)]
  rw [s2Step179Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
