import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep179
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

private def s2Step181CompleteMoves : List (Wire × Wire) := [(825,178)]

private def s2Step181EarlyControlLog : HmrEarlyControlLog := ⟨[825, 824, 794, 830, 807],[806],[803],[799, 867, 877, 879, 882, 885],[]⟩

private def s2Step181FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[830], [794], [824], [785]],[[], [], [], []]⟩,[832],[846],[807],[806],[803, 799, 867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[803, 799, 867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[807, 806, 803, 799]⟩

private def s2Step181CompleteLog : HmrEarlyStepLog := ⟨s2Step181FrontLog,s2Step181CompleteMoves,s2Step181EarlyControlLog⟩

private def s2Step181ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690],768⟩

private def s2Step181ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785],770⟩

private def s2Step181ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177],769⟩

private def s2Step181ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩

private def s2Step181FrontOut : WindowBank := ⟨s2Step181ExitFOut,s2Step181ExitGOut,s2Step181ExitFvOut,s2Step181ExitGvOut⟩

private def s2Step181CompleteOut : WindowBank := s2Step181FrontOut.repacked s2Step181CompleteMoves

private def s2Step181EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step181EarlyControlPositiveArena,[806],s2Step181EarlyControlEqualityArena,[803],⟨⟨832,false⟩,[⟨⟨806,false⟩,803⟩]⟩⟩

private def s2Step181EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,825⟩,⟨⟨774,false⟩,824⟩,⟨⟨775,false⟩,794⟩,⟨⟨776,false⟩,830⟩,⟨⟨777,false⟩,807⟩]⟩

private def s2Step181EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step181EarlyControlZeroArena,s2Step181EarlyControlZeroPlan,s2Step181EarlyControlClassPlan,s2Step181EarlyControlFlagArena,s2Step181EarlyControlFittedArena,s2Step181EarlyControlHistoryArena,s2Step181EarlyControlSigmaArena,s2Step181EarlyControlOutputArena,s2Step181EarlyControlLog⟩

private def s2Step181CounterWork : List Wire := [807, 806, 803, 799]

private theorem s2Step181Counter_bounded : s2Step181CounterWork.toFinset⊆arenaWires := by norm_num [s2Step181CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step181HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181CounterDuring : Arena := ⟨s2Step181HeadFvAfter.live∪s2Step181CounterWork.toFinset,Finset.union_subset s2Step181HeadFvAfter.bounded s2Step181Counter_bounded⟩

private def s2Step181EntryFFresh : List Wire := []

private def s2Step181EntryFvFresh : List Wire := []

private def s2Step181EntryGFresh : List Wire := []

private def s2Step181EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181EntryGvAfter : Arena := s2Step181EntryFBefore

private def s2Step181EntryGvFresh : List Wire := []

private def s2Step181ExitFExtra : List Wire := [794]

private def s2Step181ExitGExtra : List Wire := [178, 830]

private def s2Step181ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<178) ∨ (179≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181ExitGvExtra : List Wire := [824]

private def s2Step181Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181Add0Work : List Wire := [803, 799, 867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step181Add0_bounded : s2Step181Add0Work.toFinset⊆arenaWires := by
  have h : s2Step181Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step181Add0During : Arena := ⟨s2Step181Add0Arena.live∪s2Step181Add0Work.toFinset,Finset.union_subset s2Step181Add0Arena.bounded s2Step181Add0_bounded⟩

private def s2Step181Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181Add1Work : List Wire := [803, 799, 867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step181Add1_bounded : s2Step181Add1Work.toFinset⊆arenaWires := by
  have h : s2Step181Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step181Add1During : Arena := ⟨s2Step181Add1Arena.live∪s2Step181Add1Work.toFinset,Finset.union_subset s2Step181Add1Arena.bounded s2Step181Add1_bounded⟩

private def s2Step181F4FlagArena : Arena := ⟨s2Step181HeadFvAfter.live∪{807},Finset.union_subset s2Step181HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step181F4Plan : HmrHybridF4Plan := ⟨s2Step181F4FlagArena,[807],s2Step181Add0Arena,[806],s2Step181Add0During,s2Step181Add0Work,s2Step181Add1During,s2Step181Add1Work⟩

private def s2Step181HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 794],768⟩

private def s2Step181HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785],770⟩

private def s2Step181HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 830],769⟩

private def s2Step181HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 824],771⟩

private def s2Step181FrontHead : WindowBank := ⟨s2Step181HeadFOut,s2Step181HeadGOut,s2Step181HeadFvOut,s2Step181HeadGvOut⟩

private def s2Step181EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690],768⟩

private def s2Step181EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819],770⟩

private def s2Step181EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178],769⟩

private def s2Step181EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩

private def s2Step181FrontPair : WindowBank := ⟨s2Step181EntryFOut,s2Step181EntryGOut,s2Step181EntryFvOut,s2Step181EntryGvOut⟩

private def s2Step181FrontSigmaArena : Arena := ⟨s2Step181EntryGvAfter.live∪{832},Finset.union_subset s2Step181EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step181HeadFFresh : List Wire := [794]

private def s2Step181HeadFvFresh : List Wire := [785]

private def s2Step181HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181HeadGFresh : List Wire := [830]

private def s2Step181HeadGvFresh : List Wire := [824]

private def s2Step181FrontPlan : HmrSourceFront := ⟨s2Step181EntryGvAfter,s2Step181FrontPair,(growRow 768 s2Step181EntryFFresh ++ (growRow 769 s2Step181EntryGFresh ++ (growRow 770 s2Step181EntryFvFresh ++ (growRow 771 s2Step181EntryGvFresh ++ [])))),s2Step181FrontSigmaArena,[832],s2Step181HeadGBefore,[846],
  s2Step181HeadFvAfter,s2Step181FrontHead,(growRow 769 s2Step181HeadGFresh ++ (growRow 768 s2Step181HeadFFresh ++ (growRow 771 s2Step181HeadGvFresh ++ (growRow 770 s2Step181HeadFvFresh ++ [])))),s2Step181F4Plan,s2Step181CounterDuring,s2Step181CounterWork,s2Step181ExitGvAfter,s2Step181FrontOut,(shrinkRow 769 s2Step181ExitGExtra ++ (shrinkRow 768 s2Step181ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step181ExitGvExtra ++ []))))⟩

private def s2Step181CompletePlan : HmrEarlyStepPlan := ⟨s2Step181FrontPlan,s2Step181EarlyControlArena,s2Step181EarlyControlPlan,s2Step181CompleteMoves⟩

private theorem s2Step181Complete_apart : List.Disjoint (s2Step181CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [832, 846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] := by
  have nd : ((s2Step181CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[832, 846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step181Complete_owned : (s2Step181CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step181EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step181EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step181CompleteMoveArena : Arena := ⟨s2Step181ExitGvAfter.live∪{178},Finset.union_subset s2Step181ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step181Complete_repack : s2Step181ExitGvAfter.checkRepack s2Step181CompleteMoves=some s2Step181EarlyControlArena := by
  have owned : 825∈s2Step181ExitGvAfter.live := by norm_num [s2Step181ExitGvAfter,arenaWires]
  have reserve : s2Step181ExitGvAfter.reserve {178}=some s2Step181CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step181ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step181CompleteMoveArena.retireSet {825}=s2Step181EarlyControlArena := by
    unfold Arena.retireSet s2Step181EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step181CompleteMoveArena,s2Step181ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step181CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step181CompleteMoveArena.retireSet {825}).checkRepack []=some s2Step181EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step181EarlyControl_branchOwned : ([846] : List Wire).toFinset⊆s2Step181EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step181EarlyControlSigmaArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181EarlyControl_branch : compileHmrBranchRetirement s2Step181EarlyControlSigmaArena 846=some s2Step181EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step181EarlyControl_branchOwned
  · ext q
    simp [s2Step181EarlyControlOutputArena,s2Step181EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step181EarlyControl_classEqualityBorrow : s2Step181EarlyControlPositiveArena.checkBorrow (([832, 806] : List Wire).length-1) s2Step181EarlyControlLog.classWork=some s2Step181EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step181EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step181EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step181EarlyControlEqualityArena,s2Step181EarlyControlPositiveArena,s2Step181EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step181EarlyControl_classEqualityOwned : ([832, 806] : List Wire).toFinset⊆s2Step181EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step181EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181EarlyControl_classEquality : compileHmrEqualityLog s2Step181EarlyControlPositiveArena [832, 806] 0 s2Step181EarlyControlLog.classWork=some (s2Step181EarlyControlEqualityArena,s2Step181EarlyControlLog.classWork,s2Step181EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step181EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step181EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step181EarlyControl_classOwned : ([777, 807, 832] : List Wire).toFinset⊆s2Step181EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step181EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181EarlyControl_positiveBorrow : s2Step181EarlyControlZeroArena.checkBorrow (1) s2Step181EarlyControlLog.positiveWork=some s2Step181EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step181EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step181EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step181EarlyControlPositiveArena,s2Step181EarlyControlZeroArena,s2Step181EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step181EarlyControl_class : compileHmrSourceClassLog s2Step181EarlyControlZeroArena false 777 s2Step181EarlyControlZeroPlan.top 0 832 s2Step181EarlyControlLog.positiveWork s2Step181EarlyControlLog.classWork=some s2Step181EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step181EarlyControlClassPlan s2Step181EarlyControlZeroArena false 777 s2Step181EarlyControlZeroPlan.top 0 832
  constructor
  · decide +kernel
  · exact s2Step181EarlyControl_classOwned
  · exact s2Step181EarlyControl_positiveBorrow
  · exact s2Step181EarlyControl_classEquality

private theorem s2Step181EarlyControl_entryRecordOwned : ([846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step181EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step181EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181EarlyControl_entrySigmaOwned : ([832, 254] : List Wire).toFinset⊆s2Step181EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step181EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181EarlyControl_fitBorrow : s2Step181EarlyControlFlagArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step181EarlyControlLog.recordFresh=some s2Step181EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step181EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step181EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step181EarlyControlFittedArena,s2Step181EarlyControlFlagArena,s2Step181EarlyControlLog,arenaWires]

private theorem s2Step181EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step181EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step181EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181EarlyControl_fit : compileHmrRecordGrowLog s2Step181EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step181EarlyControlLog.recordFresh=some s2Step181EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step181EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step181EarlyControl_fitBorrow

private theorem s2Step181EarlyControl_flagsBorrow : s2Step181EarlyControlEqualityArena.checkBorrow (6) s2Step181EarlyControlLog.flagWork=some s2Step181EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step181EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step181EarlyControlEqualityArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step181EarlyControlFlagArena,s2Step181EarlyControlEqualityArena,s2Step181EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step181EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s2Step181EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step181EarlyControlEqualityArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181EarlyControl_flags : compileHmrFlagsLog s2Step181EarlyControlClassPlan.equalityArena s2Step181EarlyControlClassPlan.equality.top 253 252 251 s2Step181EarlyControlLog.flagWork=some s2Step181EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step181EarlyControl_flagsOwned⟩
  · exact s2Step181EarlyControl_flagsBorrow

private theorem s2Step181EarlyControl_historyBorrow : s2Step181EarlyControlArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step181EarlyControlLog.recordFresh=some s2Step181EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step181EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step181EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step181EarlyControlHistoryArena,s2Step181EarlyControlArena,s2Step181EarlyControlLog,arenaWires]

private theorem s2Step181EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step181EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step181EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181EarlyControl_history : compileHmrRecordGrowLog s2Step181EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step181EarlyControlLog.recordFresh=some s2Step181EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step181EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step181EarlyControl_historyBorrow

private theorem s2Step181EarlyControl_sigmaOwned : ([254, 832] : List Wire).toFinset⊆s2Step181EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step181EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181EarlyControl_sigmaReleaseOwned : ([832] : List Wire).toFinset⊆s2Step181EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step181EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181EarlyControl_sigmaRelease : s2Step181EarlyControlHistoryArena.release {832} (fun _ => false)=some s2Step181EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step181EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step181EarlyControlSigmaArena,s2Step181EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step181EarlyControl_sigma : compileHmrSigmaDropLog s2Step181EarlyControlHistoryArena false 0 0 254 832 []=some s2Step181EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step181EarlyControl_sigmaOwned⟩
  · exact s2Step181EarlyControl_sigmaRelease

private theorem s2Step181EarlyControl_zeroBorrow : s2Step181EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step181EarlyControlLog.zeroWork=some s2Step181EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step181EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step181EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step181EarlyControlZeroArena,s2Step181EarlyControlArena,s2Step181EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step181EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step181EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step181EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181EarlyControl_zero : compileHmrEqualityLog s2Step181EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step181EarlyControlLog.zeroWork=some (s2Step181EarlyControlZeroArena,s2Step181EarlyControlLog.zeroWork,s2Step181EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step181EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step181EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step181EarlyControl_logged : s2Step181EarlyControlPlan.Logged s2Step181EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 832 254 253 252 251 846 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step181EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step181EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step181EarlyControl_zero
  · exact s2Step181EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step181EarlyControl_flags
  · exact s2Step181EarlyControl_fit
  · exact s2Step181EarlyControl_history
  · exact s2Step181EarlyControl_sigma
  · exact s2Step181EarlyControl_branch

private theorem s2Step181EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step181EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 832 254 253 252 251 846 43 s2Step181EarlyControlLog=some s2Step181EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step181EarlyControlPlan s2Step181EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 832 254 253 252 251 846 43 s2Step181EarlyControl_logged

private def s2Step181EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690],768⟩

private def s2Step181EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819],770⟩

private def s2Step181EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178],769⟩

private def s2Step181EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩

private def s2Step181FrontBank : WindowBank := ⟨s2Step181EntryFRow,s2Step181EntryGRow,s2Step181EntryFvRow,s2Step181EntryGvRow⟩

private def s2Step181Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 794, 768]

private def s2Step181Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 830, 769]

private def s2Step181Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 770]

private def s2Step181Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 824, 771]

private theorem s2Step181Counter_apart : Disjoint s2Step181HeadFvAfter.live s2Step181CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step181HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181Counter_borrowed : s2Step181HeadFvAfter.checkBorrow 4 s2Step181CounterWork=some s2Step181CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step181HeadFvAfter s2Step181CounterDuring s2Step181CounterWork.toFinset s2Step181Counter_bounded s2Step181Counter_apart rfl

private theorem s2Step181Counter_owned : (832::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step181HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step181HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181Counter_checked : compileHmrCounterStepLog s2Step181HeadFvAfter true 832 [772, 773, 774, 775, 776, 777] s2Step181CounterWork=some s2Step181CounterDuring := by
  have owned : ∀q∈832::[772, 773, 774, 775, 776, 777],q∈s2Step181HeadFvAfter.live := fun q hq => s2Step181Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step181Counter_borrowed

private def s2Step181EntryFAfter : Arena := s2Step181EntryFBefore

private theorem s2Step181EntryBank_incomingDistinct : ([s2Step181EntryFRow,s2Step181EntryGRow,s2Step181EntryFvRow,s2Step181EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181EntryF_Incoming : rowsOwned s2Step181EntryFBefore [s2Step181EntryFRow,s2Step181EntryGRow,s2Step181EntryFvRow,s2Step181EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step181EntryFRow,s2Step181EntryGRow,s2Step181EntryFvRow,s2Step181EntryGvRow] 0 s2Step181EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step181EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step181EntryBank_outgoingOwned : rowsOwned s2Step181EntryGvAfter [s2Step181EntryFOut,s2Step181EntryGOut,s2Step181EntryFvOut,s2Step181EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step181EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step181EntryF_Outgoing : rowsOwned s2Step181EntryGvAfter [s2Step181EntryFOut,s2Step181EntryGOut,s2Step181EntryFvOut,s2Step181EntryGvOut] :=
  hmrRows_owned_drop s2Step181EntryGvAfter [s2Step181EntryFOut,s2Step181EntryGOut,s2Step181EntryFvOut,s2Step181EntryGvOut] 0 s2Step181EntryBank_outgoingOwned

private theorem s2Step181EntryF_distinct : (s2Step181EntryFRow.sign::s2Step181EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181EntryF_owned : (s2Step181EntryFRow.sign::s2Step181EntryFRow.payload).toFinset⊆s2Step181EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step181EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181EntryF_reserved : s2Step181EntryFBefore.reserve s2Step181EntryFFresh.toFinset=some s2Step181EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step181EntryFFresh,arenaWires]
  · norm_num [s2Step181EntryFBefore,s2Step181EntryFFresh,arenaWires]
  · simp only [s2Step181EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step181EntryF_checked : planRowResizeLog s2Step181EntryFBefore s2Step181EntryFRow 179 s2Step181EntryFFresh=
    some (s2Step181EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690],768⟩,growRow 768 s2Step181EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step181EntryFBefore s2Step181EntryFAfter s2Step181EntryFRow 179 s2Step181EntryFFresh
    s2Step181EntryF_distinct s2Step181EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step181EntryF_reserved
  have rowEq : WindowRow.mk (s2Step181EntryFRow.payload++s2Step181EntryFFresh) s2Step181EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step181EntryFvAfter : Arena := s2Step181EntryFBefore

private def s2Step181EntryFvBefore : Arena := s2Step181EntryFBefore

private theorem s2Step181EntryFv_Incoming : rowsOwned s2Step181EntryFvBefore [s2Step181EntryFvRow,s2Step181EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step181EntryFRow,s2Step181EntryGRow,s2Step181EntryFvRow,s2Step181EntryGvRow] 2 s2Step181EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step181EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step181EntryFv_Outgoing : rowsOwned s2Step181EntryGvAfter [s2Step181EntryFvOut,s2Step181EntryGvOut] :=
  hmrRows_owned_drop s2Step181EntryGvAfter [s2Step181EntryFOut,s2Step181EntryGOut,s2Step181EntryFvOut,s2Step181EntryGvOut] 2 s2Step181EntryBank_outgoingOwned

private theorem s2Step181EntryFv_distinct : (s2Step181EntryFvRow.sign::s2Step181EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181EntryFv_owned : (s2Step181EntryFvRow.sign::s2Step181EntryFvRow.payload).toFinset⊆s2Step181EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step181EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181EntryFv_reserved : s2Step181EntryFvBefore.reserve s2Step181EntryFvFresh.toFinset=some s2Step181EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step181EntryFvFresh,arenaWires]
  · norm_num [s2Step181EntryFvBefore,s2Step181EntryFBefore,s2Step181EntryFvFresh,arenaWires]
  · simp only [s2Step181EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step181EntryFv_checked : planRowResizeLog s2Step181EntryFvBefore s2Step181EntryFvRow 104 s2Step181EntryFvFresh=
    some (s2Step181EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819],770⟩,growRow 770 s2Step181EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step181EntryFvBefore s2Step181EntryFvAfter s2Step181EntryFvRow 104 s2Step181EntryFvFresh
    s2Step181EntryFv_distinct s2Step181EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step181EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step181EntryFvRow.payload++s2Step181EntryFvFresh) s2Step181EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step181EntryGAfter : Arena := s2Step181EntryFBefore

private def s2Step181EntryGBefore : Arena := s2Step181EntryFBefore

private theorem s2Step181EntryG_Incoming : rowsOwned s2Step181EntryGBefore [s2Step181EntryGRow,s2Step181EntryFvRow,s2Step181EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step181EntryFRow,s2Step181EntryGRow,s2Step181EntryFvRow,s2Step181EntryGvRow] 1 s2Step181EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step181EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step181EntryG_Outgoing : rowsOwned s2Step181EntryGvAfter [s2Step181EntryGOut,s2Step181EntryFvOut,s2Step181EntryGvOut] :=
  hmrRows_owned_drop s2Step181EntryGvAfter [s2Step181EntryFOut,s2Step181EntryGOut,s2Step181EntryFvOut,s2Step181EntryGvOut] 1 s2Step181EntryBank_outgoingOwned

private theorem s2Step181EntryG_distinct : (s2Step181EntryGRow.sign::s2Step181EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181EntryG_owned : (s2Step181EntryGRow.sign::s2Step181EntryGRow.payload).toFinset⊆s2Step181EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step181EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181EntryG_reserved : s2Step181EntryGBefore.reserve s2Step181EntryGFresh.toFinset=some s2Step181EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step181EntryGFresh,arenaWires]
  · norm_num [s2Step181EntryGBefore,s2Step181EntryFBefore,s2Step181EntryGFresh,arenaWires]
  · simp only [s2Step181EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step181EntryG_checked : planRowResizeLog s2Step181EntryGBefore s2Step181EntryGRow 179 s2Step181EntryGFresh=
    some (s2Step181EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178],769⟩,growRow 769 s2Step181EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step181EntryGBefore s2Step181EntryGAfter s2Step181EntryGRow 179 s2Step181EntryGFresh
    s2Step181EntryG_distinct s2Step181EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step181EntryG_reserved
  have rowEq : WindowRow.mk (s2Step181EntryGRow.payload++s2Step181EntryGFresh) s2Step181EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step181EntryGvBefore : Arena := s2Step181EntryFBefore

private theorem s2Step181EntryGv_Incoming : rowsOwned s2Step181EntryGvBefore [s2Step181EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step181EntryFRow,s2Step181EntryGRow,s2Step181EntryFvRow,s2Step181EntryGvRow] 3 s2Step181EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step181EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step181EntryGv_Outgoing : rowsOwned s2Step181EntryGvAfter [s2Step181EntryGvOut] :=
  hmrRows_owned_drop s2Step181EntryGvAfter [s2Step181EntryFOut,s2Step181EntryGOut,s2Step181EntryFvOut,s2Step181EntryGvOut] 3 s2Step181EntryBank_outgoingOwned

private theorem s2Step181EntryGv_distinct : (s2Step181EntryGvRow.sign::s2Step181EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181EntryGv_owned : (s2Step181EntryGvRow.sign::s2Step181EntryGvRow.payload).toFinset⊆s2Step181EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step181EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181EntryGv_reserved : s2Step181EntryGvBefore.reserve s2Step181EntryGvFresh.toFinset=some s2Step181EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step181EntryGvFresh,arenaWires]
  · norm_num [s2Step181EntryGvBefore,s2Step181EntryFBefore,s2Step181EntryGvFresh,arenaWires]
  · simp only [s2Step181EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step181EntryGv_checked : planRowResizeLog s2Step181EntryGvBefore s2Step181EntryGvRow 104 s2Step181EntryGvFresh=
    some (s2Step181EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩,growRow 771 s2Step181EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step181EntryGvBefore s2Step181EntryGvAfter s2Step181EntryGvRow 104 s2Step181EntryGvFresh
    s2Step181EntryGv_distinct s2Step181EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step181EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step181EntryGvRow.payload++s2Step181EntryGvFresh) s2Step181EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step181EntryBank_rows : planWindowRowsLog s2Step181EntryFBefore [(s2Step181EntryFRow,179),(s2Step181EntryGRow,179),(s2Step181EntryFvRow,104),(s2Step181EntryGvRow,104)] [s2Step181EntryFFresh,s2Step181EntryGFresh,s2Step181EntryFvFresh,s2Step181EntryGvFresh]=
    some (s2Step181EntryGvAfter,[s2Step181EntryFOut,s2Step181EntryGOut,s2Step181EntryFvOut,s2Step181EntryGvOut],(growRow 768 s2Step181EntryFFresh ++ (growRow 769 s2Step181EntryGFresh ++ (growRow 770 s2Step181EntryFvFresh ++ (growRow 771 s2Step181EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step181EntryGvAfter [] []=some (s2Step181EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step181EntryGvBefore s2Step181EntryGvAfter s2Step181EntryGvAfter
    s2Step181EntryGvRow s2Step181EntryGvOut 104 s2Step181EntryGvFresh [] [] []
    (growRow 771 s2Step181EntryGvFresh) ([]) s2Step181EntryGv_Incoming s2Step181EntryGv_checked h4 s2Step181EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step181EntryFvBefore s2Step181EntryFvAfter s2Step181EntryGvAfter
    s2Step181EntryFvRow s2Step181EntryFvOut 104 s2Step181EntryFvFresh [(s2Step181EntryGvRow,104)] [s2Step181EntryGvFresh] [s2Step181EntryGvOut]
    (growRow 770 s2Step181EntryFvFresh) ((growRow 771 s2Step181EntryGvFresh ++ [])) s2Step181EntryFv_Incoming s2Step181EntryFv_checked h3 s2Step181EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step181EntryGBefore s2Step181EntryGAfter s2Step181EntryGvAfter
    s2Step181EntryGRow s2Step181EntryGOut 179 s2Step181EntryGFresh [(s2Step181EntryFvRow,104),(s2Step181EntryGvRow,104)] [s2Step181EntryFvFresh,s2Step181EntryGvFresh] [s2Step181EntryFvOut,s2Step181EntryGvOut]
    (growRow 769 s2Step181EntryGFresh) ((growRow 770 s2Step181EntryFvFresh ++ (growRow 771 s2Step181EntryGvFresh ++ []))) s2Step181EntryG_Incoming s2Step181EntryG_checked h2 s2Step181EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step181EntryFBefore s2Step181EntryFAfter s2Step181EntryGvAfter
    s2Step181EntryFRow s2Step181EntryFOut 179 s2Step181EntryFFresh [(s2Step181EntryGRow,179),(s2Step181EntryFvRow,104),(s2Step181EntryGvRow,104)] [s2Step181EntryGFresh,s2Step181EntryFvFresh,s2Step181EntryGvFresh] [s2Step181EntryGOut,s2Step181EntryFvOut,s2Step181EntryGvOut]
    (growRow 768 s2Step181EntryFFresh) ((growRow 769 s2Step181EntryGFresh ++ (growRow 770 s2Step181EntryFvFresh ++ (growRow 771 s2Step181EntryGvFresh ++ [])))) s2Step181EntryF_Incoming s2Step181EntryF_checked h1 s2Step181EntryF_Outgoing
  exact h0

private theorem s2Step181EntryBank_checked : compileHmrBankResizeLog .entry s2Step181EntryFBefore ⟨s2Step181EntryFRow,s2Step181EntryGRow,s2Step181EntryFvRow,s2Step181EntryGvRow⟩ ⟨179,179,104,104⟩ [s2Step181EntryFFresh,s2Step181EntryGFresh,s2Step181EntryFvFresh,s2Step181EntryGvFresh]=
    some (s2Step181EntryGvAfter,⟨s2Step181EntryFOut,s2Step181EntryGOut,s2Step181EntryFvOut,s2Step181EntryGvOut⟩,(growRow 768 s2Step181EntryFFresh ++ (growRow 769 s2Step181EntryGFresh ++ (growRow 770 s2Step181EntryFvFresh ++ (growRow 771 s2Step181EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step181EntryBank_rows]
  rfl

private def s2Step181ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<178) ∨ (179≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<178) ∨ (179≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181ExitFBefore : Arena := s2Step181ExitGAfter

private def s2Step181ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 794],768⟩

private def s2Step181ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785],770⟩

private def s2Step181ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 830],769⟩

private def s2Step181ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 824],771⟩

private theorem s2Step181ExitBank_incomingDistinct : ([s2Step181ExitGRow,s2Step181ExitFRow,s2Step181ExitFvRow,s2Step181ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181ExitF_Incoming : rowsOwned s2Step181ExitFBefore [s2Step181ExitFRow,s2Step181ExitFvRow,s2Step181ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step181ExitGRow,s2Step181ExitFRow,s2Step181ExitFvRow,s2Step181ExitGvRow] 1 s2Step181ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step181ExitFBefore (fun q => (0≤q ∧ q<178) ∨ (179≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step181ExitBank_outgoingOwned : rowsOwned s2Step181ExitGvAfter [s2Step181ExitGOut,s2Step181ExitFOut,s2Step181ExitFvOut,s2Step181ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step181ExitGvAfter (fun q => (0≤q ∧ q<178) ∨ (179≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step181ExitF_Outgoing : rowsOwned s2Step181ExitGvAfter [s2Step181ExitFOut,s2Step181ExitFvOut,s2Step181ExitGvOut] :=
  hmrRows_owned_drop s2Step181ExitGvAfter [s2Step181ExitGOut,s2Step181ExitFOut,s2Step181ExitFvOut,s2Step181ExitGvOut] 1 s2Step181ExitBank_outgoingOwned

private theorem s2Step181ExitF_distinct : (s2Step181ExitFRow.sign::s2Step181ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181ExitF_owned : (s2Step181ExitFRow.sign::s2Step181ExitFRow.payload).toFinset⊆s2Step181ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step181ExitFBefore (fun q => (0≤q ∧ q<178) ∨ (179≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181ExitF_retired : s2Step181ExitFBefore.retireSet s2Step181ExitFExtra.toFinset=s2Step181ExitFAfter := by
  unfold Arena.retireSet s2Step181ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step181ExitFBefore,s2Step181ExitGAfter,s2Step181ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step181ExitF_checked : planRowResizeLog s2Step181ExitFBefore s2Step181ExitFRow 179 []=
    some (s2Step181ExitFAfter,s2Step181ExitFOut,shrinkRow 768 s2Step181ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step181ExitFBefore s2Step181ExitFRow 179 s2Step181ExitF_distinct s2Step181ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step181ExitFRow.payload.take 179) s2Step181ExitFRow.sign=s2Step181ExitFOut := by decide +kernel
  have hi : s2Step181ExitFRow.payload.drop 179=s2Step181ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step181ExitF_retired] at result
  exact result

private def s2Step181ExitFvAfter : Arena := s2Step181ExitFAfter

private def s2Step181ExitFvBefore : Arena := s2Step181ExitFAfter

private theorem s2Step181ExitFv_Incoming : rowsOwned s2Step181ExitFvBefore [s2Step181ExitFvRow,s2Step181ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step181ExitGRow,s2Step181ExitFRow,s2Step181ExitFvRow,s2Step181ExitGvRow] 2 s2Step181ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step181ExitFvBefore (fun q => (0≤q ∧ q<178) ∨ (179≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step181ExitFv_Outgoing : rowsOwned s2Step181ExitGvAfter [s2Step181ExitFvOut,s2Step181ExitGvOut] :=
  hmrRows_owned_drop s2Step181ExitGvAfter [s2Step181ExitGOut,s2Step181ExitFOut,s2Step181ExitFvOut,s2Step181ExitGvOut] 2 s2Step181ExitBank_outgoingOwned

private theorem s2Step181ExitFv_distinct : (s2Step181ExitFvRow.sign::s2Step181ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181ExitFv_owned : (s2Step181ExitFvRow.sign::s2Step181ExitFvRow.payload).toFinset⊆s2Step181ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step181ExitFvBefore (fun q => (0≤q ∧ q<178) ∨ (179≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181ExitFv_reserved : s2Step181ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step181ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step181ExitFv_checked : planRowResizeLog s2Step181ExitFvBefore s2Step181ExitFvRow 105 []=
    some (s2Step181ExitFvAfter,s2Step181ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step181ExitFvBefore s2Step181ExitFvAfter s2Step181ExitFvRow 105 []
    s2Step181ExitFv_distinct s2Step181ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step181ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step181ExitFvRow.payload++[]) s2Step181ExitFvRow.sign=s2Step181ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step181ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step181ExitG_Incoming : rowsOwned s2Step181ExitGBefore [s2Step181ExitGRow,s2Step181ExitFRow,s2Step181ExitFvRow,s2Step181ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step181ExitGRow,s2Step181ExitFRow,s2Step181ExitFvRow,s2Step181ExitGvRow] 0 s2Step181ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step181ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step181ExitG_Outgoing : rowsOwned s2Step181ExitGvAfter [s2Step181ExitGOut,s2Step181ExitFOut,s2Step181ExitFvOut,s2Step181ExitGvOut] :=
  hmrRows_owned_drop s2Step181ExitGvAfter [s2Step181ExitGOut,s2Step181ExitFOut,s2Step181ExitFvOut,s2Step181ExitGvOut] 0 s2Step181ExitBank_outgoingOwned

private theorem s2Step181ExitG_distinct : (s2Step181ExitGRow.sign::s2Step181ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181ExitG_owned : (s2Step181ExitGRow.sign::s2Step181ExitGRow.payload).toFinset⊆s2Step181ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step181ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181ExitG_retired : s2Step181ExitGBefore.retireSet s2Step181ExitGExtra.toFinset=s2Step181ExitGAfter := by
  unfold Arena.retireSet s2Step181ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step181ExitGBefore,s2Step181ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step181ExitG_checked : planRowResizeLog s2Step181ExitGBefore s2Step181ExitGRow 178 []=
    some (s2Step181ExitGAfter,s2Step181ExitGOut,shrinkRow 769 s2Step181ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step181ExitGBefore s2Step181ExitGRow 178 s2Step181ExitG_distinct s2Step181ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step181ExitGRow.payload.take 178) s2Step181ExitGRow.sign=s2Step181ExitGOut := by decide +kernel
  have hi : s2Step181ExitGRow.payload.drop 178=s2Step181ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step181ExitG_retired] at result
  exact result

private def s2Step181ExitGvBefore : Arena := s2Step181ExitFAfter

private theorem s2Step181ExitGv_Incoming : rowsOwned s2Step181ExitGvBefore [s2Step181ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step181ExitGRow,s2Step181ExitFRow,s2Step181ExitFvRow,s2Step181ExitGvRow] 3 s2Step181ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step181ExitGvBefore (fun q => (0≤q ∧ q<178) ∨ (179≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step181ExitGv_Outgoing : rowsOwned s2Step181ExitGvAfter [s2Step181ExitGvOut] :=
  hmrRows_owned_drop s2Step181ExitGvAfter [s2Step181ExitGOut,s2Step181ExitFOut,s2Step181ExitFvOut,s2Step181ExitGvOut] 3 s2Step181ExitBank_outgoingOwned

private theorem s2Step181ExitGv_distinct : (s2Step181ExitGvRow.sign::s2Step181ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181ExitGv_owned : (s2Step181ExitGvRow.sign::s2Step181ExitGvRow.payload).toFinset⊆s2Step181ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step181ExitGvBefore (fun q => (0≤q ∧ q<178) ∨ (179≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181ExitGv_retired : s2Step181ExitGvBefore.retireSet s2Step181ExitGvExtra.toFinset=s2Step181ExitGvAfter := by
  unfold Arena.retireSet s2Step181ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step181ExitGvBefore,s2Step181ExitFAfter,s2Step181ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step181ExitGv_checked : planRowResizeLog s2Step181ExitGvBefore s2Step181ExitGvRow 104 []=
    some (s2Step181ExitGvAfter,s2Step181ExitGvOut,shrinkRow 771 s2Step181ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step181ExitGvBefore s2Step181ExitGvRow 104 s2Step181ExitGv_distinct s2Step181ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step181ExitGvRow.payload.take 104) s2Step181ExitGvRow.sign=s2Step181ExitGvOut := by decide +kernel
  have hi : s2Step181ExitGvRow.payload.drop 104=s2Step181ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step181ExitGv_retired] at result
  exact result

private theorem s2Step181ExitBank_rows : planWindowRowsLog s2Step181ExitGBefore [(s2Step181ExitGRow,178),(s2Step181ExitFRow,179),(s2Step181ExitFvRow,105),(s2Step181ExitGvRow,104)] [[],[],[],[]]=
    some (s2Step181ExitGvAfter,[s2Step181ExitGOut,s2Step181ExitFOut,s2Step181ExitFvOut,s2Step181ExitGvOut],(shrinkRow 769 s2Step181ExitGExtra ++ (shrinkRow 768 s2Step181ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step181ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step181ExitGvAfter [] []=some (s2Step181ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step181ExitGvBefore s2Step181ExitGvAfter s2Step181ExitGvAfter
    s2Step181ExitGvRow s2Step181ExitGvOut 104 [] [] [] []
    (shrinkRow 771 s2Step181ExitGvExtra) ([]) s2Step181ExitGv_Incoming s2Step181ExitGv_checked h4 s2Step181ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step181ExitFvBefore s2Step181ExitFvAfter s2Step181ExitGvAfter
    s2Step181ExitFvRow s2Step181ExitFvOut 105 [] [(s2Step181ExitGvRow,104)] [[]] [s2Step181ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step181ExitGvExtra ++ [])) s2Step181ExitFv_Incoming s2Step181ExitFv_checked h3 s2Step181ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step181ExitFBefore s2Step181ExitFAfter s2Step181ExitGvAfter
    s2Step181ExitFRow s2Step181ExitFOut 179 [] [(s2Step181ExitFvRow,105),(s2Step181ExitGvRow,104)] [[],[]] [s2Step181ExitFvOut,s2Step181ExitGvOut]
    (shrinkRow 768 s2Step181ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step181ExitGvExtra ++ []))) s2Step181ExitF_Incoming s2Step181ExitF_checked h2 s2Step181ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step181ExitGBefore s2Step181ExitGAfter s2Step181ExitGvAfter
    s2Step181ExitGRow s2Step181ExitGOut 178 [] [(s2Step181ExitFRow,179),(s2Step181ExitFvRow,105),(s2Step181ExitGvRow,104)] [[],[],[]] [s2Step181ExitFOut,s2Step181ExitFvOut,s2Step181ExitGvOut]
    (shrinkRow 769 s2Step181ExitGExtra) ((shrinkRow 768 s2Step181ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step181ExitGvExtra ++ [])))) s2Step181ExitG_Incoming s2Step181ExitG_checked h1 s2Step181ExitG_Outgoing
  exact h0

private theorem s2Step181ExitBank_checked : compileHmrBankResizeLog .exit s2Step181ExitGBefore ⟨s2Step181ExitFRow,s2Step181ExitGRow,s2Step181ExitFvRow,s2Step181ExitGvRow⟩ ⟨179,178,105,104⟩ [[],[],[],[]]=
    some (s2Step181ExitGvAfter,⟨s2Step181ExitFOut,s2Step181ExitGOut,s2Step181ExitFvOut,s2Step181ExitGvOut⟩,(shrinkRow 769 s2Step181ExitGExtra ++ (shrinkRow 768 s2Step181ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step181ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step181ExitBank_rows]
  rfl

private theorem s2Step181Add0_apart : Disjoint s2Step181Add0Arena.live s2Step181Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step181Add0Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181Add0_card : s2Step181Add0Arena.live.card=883 := by
  decide +kernel

private theorem s2Step181Add0_borrowed : s2Step181Add0Arena.checkBorrow (hmrHybridCount s2Step181Add0Arena s2Step181Add0B.length) s2Step181Add0Work=some s2Step181Add0During := by
  have len : s2Step181Add0Work.length=hmrHybridCount s2Step181Add0Arena s2Step181Add0B.length := by
    rw [hmrHybridCount,s2Step181Add0_card]
    decide +kernel
  have nd : s2Step181Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step181Add0Arena s2Step181Add0During s2Step181Add0Work.toFinset s2Step181Add0_bounded s2Step181Add0_apart rfl

private theorem s2Step181Add0_distinct : (807::846::806::(s2Step181Add0A++s2Step181Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181Add0_owned : (807::846::806::(s2Step181Add0A++s2Step181Add0B)).toFinset⊆s2Step181Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step181Add0Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181Add0_checked : compileHmrHybridCinLog s2Step181Add0Arena 846 807 806 s2Step181Add0A s2Step181Add0B s2Step181Add0Work=some s2Step181Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step181Add0Arena s2Step181Add0During 846 807 806 s2Step181Add0A s2Step181Add0B s2Step181Add0Work
    (by decide +kernel) (by decide +kernel) s2Step181Add0_distinct
    (fun q hq => s2Step181Add0_owned (List.mem_toFinset.mpr hq)) s2Step181Add0_borrowed

private theorem s2Step181Add1_apart : Disjoint s2Step181Add1Arena.live s2Step181Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step181Add1Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181Add1_card : s2Step181Add1Arena.live.card=883 := by
  decide +kernel

private theorem s2Step181Add1_borrowed : s2Step181Add1Arena.checkBorrow (hmrHybridCount s2Step181Add1Arena s2Step181Add1B.length) s2Step181Add1Work=some s2Step181Add1During := by
  have len : s2Step181Add1Work.length=hmrHybridCount s2Step181Add1Arena s2Step181Add1B.length := by
    rw [hmrHybridCount,s2Step181Add1_card]
    decide +kernel
  have nd : s2Step181Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step181Add1Arena s2Step181Add1During s2Step181Add1Work.toFinset s2Step181Add1_bounded s2Step181Add1_apart rfl

private theorem s2Step181Add1_distinct : (807::846::806::(s2Step181Add1A++s2Step181Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181Add1_owned : (807::846::806::(s2Step181Add1A++s2Step181Add1B)).toFinset⊆s2Step181Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step181Add1Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181Add1_checked : compileHmrHybridCinLog s2Step181Add1Arena 846 807 806 s2Step181Add1A s2Step181Add1B s2Step181Add1Work=some s2Step181Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step181Add1Arena s2Step181Add1During 846 807 806 s2Step181Add1A s2Step181Add1B s2Step181Add1Work
    (by decide +kernel) (by decide +kernel) s2Step181Add1_distinct
    (fun q hq => s2Step181Add1_owned (List.mem_toFinset.mpr hq)) s2Step181Add1_borrowed

private theorem s2Step181F4_apart : Disjoint (s2Step181Add0A++s2Step181Add0B).toFinset (s2Step181Add1A++s2Step181Add1B).toFinset := by
  have nd : ((s2Step181Add0A++s2Step181Add0B)++(s2Step181Add1A++s2Step181Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step181F4_carry : s2Step181F4FlagArena.checkBorrow 1 [806]=some s2Step181Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step181F4FlagArena,s2Step181HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step181F4FlagArena,s2Step181HeadFvAfter,s2Step181Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step181F4_distinct : (832::846::807::806::((s2Step181Add0A++s2Step181Add1A)++(s2Step181Add0B++s2Step181Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181F4_flag : s2Step181HeadFvAfter.checkBorrow 1 [807]=some s2Step181F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step181HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step181F4_owned : (832::846::((s2Step181Add0A++s2Step181Add1A)++(s2Step181Add0B++s2Step181Add1B))).toFinset⊆s2Step181HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step181HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181F4_checked : compileHmrHybridF4Log s2Step181HeadFvAfter 832 846 s2Step181Add0A s2Step181Add0B s2Step181Add1A s2Step181Add1B [807] [806] s2Step181Add0Work s2Step181Add1Work=some s2Step181F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step181HeadFvAfter s2Step181F4FlagArena s2Step181Add0Arena s2Step181Add0During s2Step181Add1During 832 846
    s2Step181Add0A s2Step181Add0B s2Step181Add1A s2Step181Add1B [807] [806] s2Step181Add0Work s2Step181Add1Work
    (fun q hq => s2Step181F4_owned (List.mem_toFinset.mpr hq)) s2Step181F4_flag s2Step181F4_carry
    s2Step181F4_distinct s2Step181F4_apart s2Step181Add0_checked s2Step181Add1_checked

private theorem s2Step181Front_branch : s2Step181FrontSigmaArena.checkBorrow 1 [846]=some s2Step181HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step181FrontSigmaArena,s2Step181EntryGvAfter,s2Step181EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step181FrontSigmaArena,s2Step181EntryGvAfter,s2Step181EntryFBefore,s2Step181HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step181Front_entry : HmrFrontEntryValid s2Step181EntryFBefore s2Step181FrontBank 179 104 ⟨179,178,105,104⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step181FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step181EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step181EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step181FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step181Front_sigma : s2Step181EntryGvAfter.checkBorrow 1 [832]=some s2Step181FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step181EntryGvAfter,s2Step181EntryFBefore,arenaWires]
  · rfl

private def s2Step181HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181HeadFBefore : Arena := s2Step181HeadGAfter

private def s2Step181HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690],768⟩

private def s2Step181HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819],770⟩

private def s2Step181HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178],769⟩

private def s2Step181HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩

private theorem s2Step181HeadBank_incomingDistinct : ([s2Step181HeadGRow,s2Step181HeadFRow,s2Step181HeadGvRow,s2Step181HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181HeadF_Incoming : rowsOwned s2Step181HeadFBefore [s2Step181HeadFRow,s2Step181HeadGvRow,s2Step181HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step181HeadGRow,s2Step181HeadFRow,s2Step181HeadGvRow,s2Step181HeadFvRow] 1 s2Step181HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step181HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step181HeadBank_outgoingOwned : rowsOwned s2Step181HeadFvAfter [s2Step181HeadGOut,s2Step181HeadFOut,s2Step181HeadGvOut,s2Step181HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step181HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step181HeadF_Outgoing : rowsOwned s2Step181HeadFvAfter [s2Step181HeadFOut,s2Step181HeadGvOut,s2Step181HeadFvOut] :=
  hmrRows_owned_drop s2Step181HeadFvAfter [s2Step181HeadGOut,s2Step181HeadFOut,s2Step181HeadGvOut,s2Step181HeadFvOut] 1 s2Step181HeadBank_outgoingOwned

private theorem s2Step181HeadF_distinct : (s2Step181HeadFRow.sign::s2Step181HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181HeadF_owned : (s2Step181HeadFRow.sign::s2Step181HeadFRow.payload).toFinset⊆s2Step181HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step181HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181HeadF_reserved : s2Step181HeadFBefore.reserve s2Step181HeadFFresh.toFinset=some s2Step181HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step181HeadFFresh,arenaWires]
  · norm_num [s2Step181HeadFBefore,s2Step181HeadGAfter,s2Step181HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step181HeadFAfter,s2Step181HeadFBefore,s2Step181HeadGAfter,s2Step181HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step181HeadF_checked : planRowResizeLog s2Step181HeadFBefore s2Step181HeadFRow 180 s2Step181HeadFFresh=
    some (s2Step181HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 794],768⟩,growRow 768 s2Step181HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step181HeadFBefore s2Step181HeadFAfter s2Step181HeadFRow 180 s2Step181HeadFFresh
    s2Step181HeadF_distinct s2Step181HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step181HeadF_reserved
  have rowEq : WindowRow.mk (s2Step181HeadFRow.payload++s2Step181HeadFFresh) s2Step181HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 794],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step181HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step181HeadFvBefore : Arena := s2Step181HeadGvAfter

private theorem s2Step181HeadFv_Incoming : rowsOwned s2Step181HeadFvBefore [s2Step181HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step181HeadGRow,s2Step181HeadFRow,s2Step181HeadGvRow,s2Step181HeadFvRow] 3 s2Step181HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step181HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step181HeadFv_Outgoing : rowsOwned s2Step181HeadFvAfter [s2Step181HeadFvOut] :=
  hmrRows_owned_drop s2Step181HeadFvAfter [s2Step181HeadGOut,s2Step181HeadFOut,s2Step181HeadGvOut,s2Step181HeadFvOut] 3 s2Step181HeadBank_outgoingOwned

private theorem s2Step181HeadFv_distinct : (s2Step181HeadFvRow.sign::s2Step181HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181HeadFv_owned : (s2Step181HeadFvRow.sign::s2Step181HeadFvRow.payload).toFinset⊆s2Step181HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step181HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181HeadFv_reserved : s2Step181HeadFvBefore.reserve s2Step181HeadFvFresh.toFinset=some s2Step181HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step181HeadFvFresh,arenaWires]
  · norm_num [s2Step181HeadFvBefore,s2Step181HeadGvAfter,s2Step181HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step181HeadFvAfter,s2Step181HeadFvBefore,s2Step181HeadGvAfter,s2Step181HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step181HeadFv_checked : planRowResizeLog s2Step181HeadFvBefore s2Step181HeadFvRow 105 s2Step181HeadFvFresh=
    some (s2Step181HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785],770⟩,growRow 770 s2Step181HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step181HeadFvBefore s2Step181HeadFvAfter s2Step181HeadFvRow 105 s2Step181HeadFvFresh
    s2Step181HeadFv_distinct s2Step181HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step181HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step181HeadFvRow.payload++s2Step181HeadFvFresh) s2Step181HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step181HeadG_Incoming : rowsOwned s2Step181HeadGBefore [s2Step181HeadGRow,s2Step181HeadFRow,s2Step181HeadGvRow,s2Step181HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step181HeadGRow,s2Step181HeadFRow,s2Step181HeadGvRow,s2Step181HeadFvRow] 0 s2Step181HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step181HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step181HeadG_Outgoing : rowsOwned s2Step181HeadFvAfter [s2Step181HeadGOut,s2Step181HeadFOut,s2Step181HeadGvOut,s2Step181HeadFvOut] :=
  hmrRows_owned_drop s2Step181HeadFvAfter [s2Step181HeadGOut,s2Step181HeadFOut,s2Step181HeadGvOut,s2Step181HeadFvOut] 0 s2Step181HeadBank_outgoingOwned

private theorem s2Step181HeadG_distinct : (s2Step181HeadGRow.sign::s2Step181HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181HeadG_owned : (s2Step181HeadGRow.sign::s2Step181HeadGRow.payload).toFinset⊆s2Step181HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step181HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181HeadG_reserved : s2Step181HeadGBefore.reserve s2Step181HeadGFresh.toFinset=some s2Step181HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step181HeadGFresh,arenaWires]
  · norm_num [s2Step181HeadGBefore,s2Step181HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step181HeadGAfter,s2Step181HeadGBefore,s2Step181HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step181HeadG_checked : planRowResizeLog s2Step181HeadGBefore s2Step181HeadGRow 180 s2Step181HeadGFresh=
    some (s2Step181HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 830],769⟩,growRow 769 s2Step181HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step181HeadGBefore s2Step181HeadGAfter s2Step181HeadGRow 180 s2Step181HeadGFresh
    s2Step181HeadG_distinct s2Step181HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step181HeadG_reserved
  have rowEq : WindowRow.mk (s2Step181HeadGRow.payload++s2Step181HeadGFresh) s2Step181HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 830],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step181HeadGvBefore : Arena := s2Step181HeadFAfter

private theorem s2Step181HeadGv_Incoming : rowsOwned s2Step181HeadGvBefore [s2Step181HeadGvRow,s2Step181HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step181HeadGRow,s2Step181HeadFRow,s2Step181HeadGvRow,s2Step181HeadFvRow] 2 s2Step181HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step181HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step181HeadGv_Outgoing : rowsOwned s2Step181HeadFvAfter [s2Step181HeadGvOut,s2Step181HeadFvOut] :=
  hmrRows_owned_drop s2Step181HeadFvAfter [s2Step181HeadGOut,s2Step181HeadFOut,s2Step181HeadGvOut,s2Step181HeadFvOut] 2 s2Step181HeadBank_outgoingOwned

private theorem s2Step181HeadGv_distinct : (s2Step181HeadGvRow.sign::s2Step181HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step181HeadGv_owned : (s2Step181HeadGvRow.sign::s2Step181HeadGvRow.payload).toFinset⊆s2Step181HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step181HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step181HeadGv_reserved : s2Step181HeadGvBefore.reserve s2Step181HeadGvFresh.toFinset=some s2Step181HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step181HeadGvFresh,arenaWires]
  · norm_num [s2Step181HeadGvBefore,s2Step181HeadFAfter,s2Step181HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step181HeadGvAfter,s2Step181HeadGvBefore,s2Step181HeadFAfter,s2Step181HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step181HeadGv_checked : planRowResizeLog s2Step181HeadGvBefore s2Step181HeadGvRow 105 s2Step181HeadGvFresh=
    some (s2Step181HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 824],771⟩,growRow 771 s2Step181HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step181HeadGvBefore s2Step181HeadGvAfter s2Step181HeadGvRow 105 s2Step181HeadGvFresh
    s2Step181HeadGv_distinct s2Step181HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step181HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step181HeadGvRow.payload++s2Step181HeadGvFresh) s2Step181HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 824],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step181HeadBank_rows : planWindowRowsLog s2Step181HeadGBefore [(s2Step181HeadGRow,180),(s2Step181HeadFRow,180),(s2Step181HeadGvRow,105),(s2Step181HeadFvRow,105)] [s2Step181HeadGFresh,s2Step181HeadFFresh,s2Step181HeadGvFresh,s2Step181HeadFvFresh]=
    some (s2Step181HeadFvAfter,[s2Step181HeadGOut,s2Step181HeadFOut,s2Step181HeadGvOut,s2Step181HeadFvOut],(growRow 769 s2Step181HeadGFresh ++ (growRow 768 s2Step181HeadFFresh ++ (growRow 771 s2Step181HeadGvFresh ++ (growRow 770 s2Step181HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step181HeadFvAfter [] []=some (s2Step181HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step181HeadFvBefore s2Step181HeadFvAfter s2Step181HeadFvAfter
    s2Step181HeadFvRow s2Step181HeadFvOut 105 s2Step181HeadFvFresh [] [] []
    (growRow 770 s2Step181HeadFvFresh) ([]) s2Step181HeadFv_Incoming s2Step181HeadFv_checked h4 s2Step181HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step181HeadGvBefore s2Step181HeadGvAfter s2Step181HeadFvAfter
    s2Step181HeadGvRow s2Step181HeadGvOut 105 s2Step181HeadGvFresh [(s2Step181HeadFvRow,105)] [s2Step181HeadFvFresh] [s2Step181HeadFvOut]
    (growRow 771 s2Step181HeadGvFresh) ((growRow 770 s2Step181HeadFvFresh ++ [])) s2Step181HeadGv_Incoming s2Step181HeadGv_checked h3 s2Step181HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step181HeadFBefore s2Step181HeadFAfter s2Step181HeadFvAfter
    s2Step181HeadFRow s2Step181HeadFOut 180 s2Step181HeadFFresh [(s2Step181HeadGvRow,105),(s2Step181HeadFvRow,105)] [s2Step181HeadGvFresh,s2Step181HeadFvFresh] [s2Step181HeadGvOut,s2Step181HeadFvOut]
    (growRow 768 s2Step181HeadFFresh) ((growRow 771 s2Step181HeadGvFresh ++ (growRow 770 s2Step181HeadFvFresh ++ []))) s2Step181HeadF_Incoming s2Step181HeadF_checked h2 s2Step181HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step181HeadGBefore s2Step181HeadGAfter s2Step181HeadFvAfter
    s2Step181HeadGRow s2Step181HeadGOut 180 s2Step181HeadGFresh [(s2Step181HeadFRow,180),(s2Step181HeadGvRow,105),(s2Step181HeadFvRow,105)] [s2Step181HeadFFresh,s2Step181HeadGvFresh,s2Step181HeadFvFresh] [s2Step181HeadFOut,s2Step181HeadGvOut,s2Step181HeadFvOut]
    (growRow 769 s2Step181HeadGFresh) ((growRow 768 s2Step181HeadFFresh ++ (growRow 771 s2Step181HeadGvFresh ++ (growRow 770 s2Step181HeadFvFresh ++ [])))) s2Step181HeadG_Incoming s2Step181HeadG_checked h1 s2Step181HeadG_Outgoing
  exact h0

private theorem s2Step181HeadBank_checked : compileHmrBankResizeLog .headroom s2Step181HeadGBefore ⟨s2Step181HeadFRow,s2Step181HeadGRow,s2Step181HeadFvRow,s2Step181HeadGvRow⟩ ⟨180,180,105,105⟩ [s2Step181HeadGFresh,s2Step181HeadFFresh,s2Step181HeadGvFresh,s2Step181HeadFvFresh]=
    some (s2Step181HeadFvAfter,⟨s2Step181HeadFOut,s2Step181HeadGOut,s2Step181HeadFvOut,s2Step181HeadGvOut⟩,(growRow 769 s2Step181HeadGFresh ++ (growRow 768 s2Step181HeadFFresh ++ (growRow 771 s2Step181HeadGvFresh ++ (growRow 770 s2Step181HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step181HeadBank_rows]
  rfl

private theorem s2Step181Front_checked : compileHmrSourceFrontLog s2Step181EntryFBefore s2Step181FrontBank 179 104 ⟨179,178,105,104⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step181FrontLog=some s2Step181FrontPlan := by
  have pairEq : s2Step181FrontPair=⟨s2Step181HeadFRow,s2Step181HeadGRow,s2Step181HeadFvRow,s2Step181HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step181FrontHead=⟨s2Step181ExitFRow,s2Step181ExitGRow,s2Step181ExitFvRow,s2Step181ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step181Add0A=s2Step181FrontHead.f.wires := by decide +kernel
  have gEq : s2Step181Add0B=s2Step181FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step181Add1A=s2Step181FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step181Add1B=s2Step181FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step181EntryFBefore s2Step181FrontBank 179 104 ⟨179,178,105,104⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step181FrontLog s2Step181FrontPlan
  · exact s2Step181Front_entry
  · exact s2Step181EntryBank_checked
  · exact s2Step181Front_sigma
  · rfl
  · exact s2Step181Front_branch
  · rfl
  · simpa only [s2Step181FrontPlan,pairEq] using s2Step181HeadBank_checked
  · simpa only [s2Step181FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step181F4_checked
  · exact s2Step181Counter_checked
  · rfl
  · simpa only [s2Step181FrontPlan,headEq] using s2Step181ExitBank_checked

private theorem s2Step181Complete_explicit_checked : compileHmrEarlyStepLog s2Step181EntryFBefore s2Step181FrontBank 179 104 ⟨179,178,105,104⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step181CompleteLog=some s2Step181CompletePlan := by
  let Q := s2Step181EarlyControlPlan
  have hq := s2Step181EarlyControl_plan_checked
  have fv1 : s2Step181CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step181CompleteOut.fv.payload[2]?.getD s2Step181CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step181CompleteOut.fv.payload[3]?.getD s2Step181CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step181CompleteOut.fv.payload[4]?.getD s2Step181CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step181EntryFBefore s2Step181EarlyControlArena s2Step181FrontBank 179 104 ⟨179,178,105,104⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step181CompleteLog s2Step181FrontPlan Q
    s2Step181Front_checked s2Step181Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step181Complete_owned s2Step181Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step181EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 832 s2Step181CompleteOut.fv.second (s2Step181CompleteOut.fv.payload[2]?.getD s2Step181CompleteOut.fv.sign) (s2Step181CompleteOut.fv.payload[3]?.getD s2Step181CompleteOut.fv.sign) (s2Step181CompleteOut.fv.payload[4]?.getD s2Step181CompleteOut.fv.sign) 846 43 s2Step181EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep181Arena : Arena := s2Step181EntryFBefore
def s2PrivateStep181Bank : WindowBank := s2Step181FrontBank
def s2PrivateStep181Spec : HmrSourceWalkStepLog := ⟨179,104,⟨179,178,105,104⟩,43,.early s2Step181CompleteLog⟩
def s2PrivateStep181Plan : HmrSourceStepPlan := .early s2Step181CompletePlan
theorem s2PrivateStep181_source : s2PrivateStep181Spec=s2ObservedLogs176[5] := rfl
theorem s2PrivateStep181_checked : compileHmrSourceStepLog s2PrivateStep181Arena s2PrivateStep181Bank
    s2PrivateStep181Spec.fgWidth s2PrivateStep181Spec.vWidth s2PrivateStep181Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]
    6 498 181 s2PrivateStep181Spec.need none s2PrivateStep181Spec.log=some s2PrivateStep181Plan := by
  change compileHmrSourceStepLog s2Step181EntryFBefore s2Step181FrontBank 179 104 ⟨179,178,105,104⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 6 498 181 43 none (.early s2Step181CompleteLog)=some (.early s2Step181CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 181<498)]
  rw [s2Step181Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
