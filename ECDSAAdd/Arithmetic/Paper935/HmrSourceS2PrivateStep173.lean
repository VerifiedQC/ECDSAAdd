import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep171
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

private def s2Step173CompleteMoves : List (Wire × Wire) := [(821,182)]

private def s2Step173EarlyControlLog : HmrEarlyControlLog := ⟨[821, 793, 785, 847, 787],[803],[799],[867, 877, 879, 882, 885, 888],[]⟩

private def s2Step173FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [820], []],[[787], [847], [793], [785]],[[], [], [], []]⟩,[846],[794],[803],[799],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[803, 799, 867, 877]⟩

private def s2Step173CompleteLog : HmrEarlyStepLog := ⟨s2Step173FrontLog,s2Step173CompleteMoves,s2Step173EarlyControlLog⟩

private def s2Step173ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694],768⟩

private def s2Step173ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820],770⟩

private def s2Step173ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181],769⟩

private def s2Step173ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805],771⟩

private def s2Step173FrontOut : WindowBank := ⟨s2Step173ExitFOut,s2Step173ExitGOut,s2Step173ExitFvOut,s2Step173ExitGvOut⟩

private def s2Step173CompleteOut : WindowBank := s2Step173FrontOut.repacked s2Step173CompleteMoves

private def s2Step173EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step173EarlyControlPositiveArena,[803],s2Step173EarlyControlEqualityArena,[799],⟨⟨846,false⟩,[⟨⟨803,false⟩,799⟩]⟩⟩

private def s2Step173EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,821⟩,⟨⟨774,false⟩,793⟩,⟨⟨775,false⟩,785⟩,⟨⟨776,false⟩,847⟩,⟨⟨777,false⟩,787⟩]⟩

private def s2Step173EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step173EarlyControlZeroArena,s2Step173EarlyControlZeroPlan,s2Step173EarlyControlClassPlan,s2Step173EarlyControlFlagArena,s2Step173EarlyControlFittedArena,s2Step173EarlyControlHistoryArena,s2Step173EarlyControlSigmaArena,s2Step173EarlyControlOutputArena,s2Step173EarlyControlLog⟩

private def s2Step173CounterWork : List Wire := [803, 799, 867, 877]

private theorem s2Step173Counter_bounded : s2Step173CounterWork.toFinset⊆arenaWires := by norm_num [s2Step173CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step173HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173CounterDuring : Arena := ⟨s2Step173HeadFvAfter.live∪s2Step173CounterWork.toFinset,Finset.union_subset s2Step173HeadFvAfter.bounded s2Step173Counter_bounded⟩

private def s2Step173EntryFFresh : List Wire := []

private def s2Step173EntryFvFresh : List Wire := [820]

private def s2Step173EntryGFresh : List Wire := []

private def s2Step173EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173EntryGvAfter : Arena := s2Step173EntryFvAfter

private def s2Step173EntryGvFresh : List Wire := []

private def s2Step173ExitFExtra : List Wire := [847]

private def s2Step173ExitFvExtra : List Wire := [785]

private def s2Step173ExitGExtra : List Wire := [182, 787]

private def s2Step173ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173ExitGvExtra : List Wire := [793]

private def s2Step173Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173Add0Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step173Add0_bounded : s2Step173Add0Work.toFinset⊆arenaWires := by
  have h : s2Step173Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step173Add0During : Arena := ⟨s2Step173Add0Arena.live∪s2Step173Add0Work.toFinset,Finset.union_subset s2Step173Add0Arena.bounded s2Step173Add0_bounded⟩

private def s2Step173Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173Add1Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step173Add1_bounded : s2Step173Add1Work.toFinset⊆arenaWires := by
  have h : s2Step173Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step173Add1During : Arena := ⟨s2Step173Add1Arena.live∪s2Step173Add1Work.toFinset,Finset.union_subset s2Step173Add1Arena.bounded s2Step173Add1_bounded⟩

private def s2Step173F4FlagArena : Arena := ⟨s2Step173HeadFvAfter.live∪{803},Finset.union_subset s2Step173HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step173F4Plan : HmrHybridF4Plan := ⟨s2Step173F4FlagArena,[803],s2Step173Add0Arena,[799],s2Step173Add0During,s2Step173Add0Work,s2Step173Add1During,s2Step173Add1Work⟩

private def s2Step173HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 847],768⟩

private def s2Step173HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 785],770⟩

private def s2Step173HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 787],769⟩

private def s2Step173HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 793],771⟩

private def s2Step173FrontHead : WindowBank := ⟨s2Step173HeadFOut,s2Step173HeadGOut,s2Step173HeadFvOut,s2Step173HeadGvOut⟩

private def s2Step173EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694],768⟩

private def s2Step173EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820],770⟩

private def s2Step173EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182],769⟩

private def s2Step173EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805],771⟩

private def s2Step173FrontPair : WindowBank := ⟨s2Step173EntryFOut,s2Step173EntryGOut,s2Step173EntryFvOut,s2Step173EntryGvOut⟩

private def s2Step173FrontSigmaArena : Arena := ⟨s2Step173EntryGvAfter.live∪{846},Finset.union_subset s2Step173EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step173HeadFFresh : List Wire := [847]

private def s2Step173HeadFvFresh : List Wire := [785]

private def s2Step173HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173HeadGFresh : List Wire := [787]

private def s2Step173HeadGvFresh : List Wire := [793]

private def s2Step173FrontPlan : HmrSourceFront := ⟨s2Step173EntryGvAfter,s2Step173FrontPair,(growRow 768 s2Step173EntryFFresh ++ (growRow 769 s2Step173EntryGFresh ++ (growRow 770 s2Step173EntryFvFresh ++ (growRow 771 s2Step173EntryGvFresh ++ [])))),s2Step173FrontSigmaArena,[846],s2Step173HeadGBefore,[794],
  s2Step173HeadFvAfter,s2Step173FrontHead,(growRow 769 s2Step173HeadGFresh ++ (growRow 768 s2Step173HeadFFresh ++ (growRow 771 s2Step173HeadGvFresh ++ (growRow 770 s2Step173HeadFvFresh ++ [])))),s2Step173F4Plan,s2Step173CounterDuring,s2Step173CounterWork,s2Step173ExitGvAfter,s2Step173FrontOut,(shrinkRow 769 s2Step173ExitGExtra ++ (shrinkRow 768 s2Step173ExitFExtra ++ (shrinkRow 770 s2Step173ExitFvExtra ++ (shrinkRow 771 s2Step173ExitGvExtra ++ []))))⟩

private def s2Step173CompletePlan : HmrEarlyStepPlan := ⟨s2Step173FrontPlan,s2Step173EarlyControlArena,s2Step173EarlyControlPlan,s2Step173CompleteMoves⟩

private theorem s2Step173Complete_apart : List.Disjoint (s2Step173CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [846, 794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step173CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[846, 794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step173Complete_owned : (s2Step173CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step173EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step173EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step173CompleteMoveArena : Arena := ⟨s2Step173ExitGvAfter.live∪{182},Finset.union_subset s2Step173ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step173Complete_repack : s2Step173ExitGvAfter.checkRepack s2Step173CompleteMoves=some s2Step173EarlyControlArena := by
  have owned : 821∈s2Step173ExitGvAfter.live := by norm_num [s2Step173ExitGvAfter,arenaWires]
  have reserve : s2Step173ExitGvAfter.reserve {182}=some s2Step173CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step173ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step173CompleteMoveArena.retireSet {821}=s2Step173EarlyControlArena := by
    unfold Arena.retireSet s2Step173EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step173CompleteMoveArena,s2Step173ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step173CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step173CompleteMoveArena.retireSet {821}).checkRepack []=some s2Step173EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step173EarlyControl_branchOwned : ([794] : List Wire).toFinset⊆s2Step173EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step173EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173EarlyControl_branch : compileHmrBranchRetirement s2Step173EarlyControlSigmaArena 794=some s2Step173EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step173EarlyControl_branchOwned
  · ext q
    simp [s2Step173EarlyControlOutputArena,s2Step173EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step173EarlyControl_classEqualityBorrow : s2Step173EarlyControlPositiveArena.checkBorrow (([846, 803] : List Wire).length-1) s2Step173EarlyControlLog.classWork=some s2Step173EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step173EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step173EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step173EarlyControlEqualityArena,s2Step173EarlyControlPositiveArena,s2Step173EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step173EarlyControl_classEqualityOwned : ([846, 803] : List Wire).toFinset⊆s2Step173EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step173EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173EarlyControl_classEquality : compileHmrEqualityLog s2Step173EarlyControlPositiveArena [846, 803] 0 s2Step173EarlyControlLog.classWork=some (s2Step173EarlyControlEqualityArena,s2Step173EarlyControlLog.classWork,s2Step173EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step173EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step173EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step173EarlyControl_classOwned : ([777, 787, 846] : List Wire).toFinset⊆s2Step173EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step173EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173EarlyControl_positiveBorrow : s2Step173EarlyControlZeroArena.checkBorrow (1) s2Step173EarlyControlLog.positiveWork=some s2Step173EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step173EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step173EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step173EarlyControlPositiveArena,s2Step173EarlyControlZeroArena,s2Step173EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step173EarlyControl_class : compileHmrSourceClassLog s2Step173EarlyControlZeroArena false 777 s2Step173EarlyControlZeroPlan.top 0 846 s2Step173EarlyControlLog.positiveWork s2Step173EarlyControlLog.classWork=some s2Step173EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step173EarlyControlClassPlan s2Step173EarlyControlZeroArena false 777 s2Step173EarlyControlZeroPlan.top 0 846
  constructor
  · decide +kernel
  · exact s2Step173EarlyControl_classOwned
  · exact s2Step173EarlyControl_positiveBorrow
  · exact s2Step173EarlyControl_classEquality

private theorem s2Step173EarlyControl_entryRecordOwned : ([794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step173EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step173EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173EarlyControl_entrySigmaOwned : ([846, 254] : List Wire).toFinset⊆s2Step173EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step173EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173EarlyControl_fitBorrow : s2Step173EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step173EarlyControlLog.recordFresh=some s2Step173EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step173EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step173EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step173EarlyControlFittedArena,s2Step173EarlyControlFlagArena,s2Step173EarlyControlLog,arenaWires]

private theorem s2Step173EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step173EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step173EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173EarlyControl_fit : compileHmrRecordGrowLog s2Step173EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step173EarlyControlLog.recordFresh=some s2Step173EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step173EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step173EarlyControl_fitBorrow

private theorem s2Step173EarlyControl_flagsBorrow : s2Step173EarlyControlEqualityArena.checkBorrow (6) s2Step173EarlyControlLog.flagWork=some s2Step173EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step173EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step173EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step173EarlyControlFlagArena,s2Step173EarlyControlEqualityArena,s2Step173EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step173EarlyControl_flagsOwned : ([799, 253, 252, 251] : List Wire).toFinset⊆s2Step173EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step173EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173EarlyControl_flags : compileHmrFlagsLog s2Step173EarlyControlClassPlan.equalityArena s2Step173EarlyControlClassPlan.equality.top 253 252 251 s2Step173EarlyControlLog.flagWork=some s2Step173EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step173EarlyControl_flagsOwned⟩
  · exact s2Step173EarlyControl_flagsBorrow

private theorem s2Step173EarlyControl_historyBorrow : s2Step173EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step173EarlyControlLog.recordFresh=some s2Step173EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step173EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step173EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step173EarlyControlHistoryArena,s2Step173EarlyControlArena,s2Step173EarlyControlLog,arenaWires]

private theorem s2Step173EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step173EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step173EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173EarlyControl_history : compileHmrRecordGrowLog s2Step173EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step173EarlyControlLog.recordFresh=some s2Step173EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step173EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step173EarlyControl_historyBorrow

private theorem s2Step173EarlyControl_sigmaOwned : ([254, 846] : List Wire).toFinset⊆s2Step173EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step173EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173EarlyControl_sigmaReleaseOwned : ([846] : List Wire).toFinset⊆s2Step173EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step173EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173EarlyControl_sigmaRelease : s2Step173EarlyControlHistoryArena.release {846} (fun _ => false)=some s2Step173EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step173EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step173EarlyControlSigmaArena,s2Step173EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step173EarlyControl_sigma : compileHmrSigmaDropLog s2Step173EarlyControlHistoryArena false 0 0 254 846 []=some s2Step173EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step173EarlyControl_sigmaOwned⟩
  · exact s2Step173EarlyControl_sigmaRelease

private theorem s2Step173EarlyControl_zeroBorrow : s2Step173EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step173EarlyControlLog.zeroWork=some s2Step173EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step173EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step173EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step173EarlyControlZeroArena,s2Step173EarlyControlArena,s2Step173EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step173EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step173EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step173EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173EarlyControl_zero : compileHmrEqualityLog s2Step173EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step173EarlyControlLog.zeroWork=some (s2Step173EarlyControlZeroArena,s2Step173EarlyControlLog.zeroWork,s2Step173EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step173EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step173EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step173EarlyControl_logged : s2Step173EarlyControlPlan.Logged s2Step173EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 794 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step173EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step173EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step173EarlyControl_zero
  · exact s2Step173EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step173EarlyControl_flags
  · exact s2Step173EarlyControl_fit
  · exact s2Step173EarlyControl_history
  · exact s2Step173EarlyControl_sigma
  · exact s2Step173EarlyControl_branch

private theorem s2Step173EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step173EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 794 42 s2Step173EarlyControlLog=some s2Step173EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step173EarlyControlPlan s2Step173EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 794 42 s2Step173EarlyControl_logged

private def s2Step173EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694],768⟩

private def s2Step173EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810],770⟩

private def s2Step173EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182],769⟩

private def s2Step173EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805],771⟩

private def s2Step173FrontBank : WindowBank := ⟨s2Step173EntryFRow,s2Step173EntryGRow,s2Step173EntryFvRow,s2Step173EntryGvRow⟩

private def s2Step173Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 847, 768]

private def s2Step173Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 787, 769]

private def s2Step173Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 785, 770]

private def s2Step173Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 793, 771]

private theorem s2Step173Counter_apart : Disjoint s2Step173HeadFvAfter.live s2Step173CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step173HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173Counter_borrowed : s2Step173HeadFvAfter.checkBorrow 4 s2Step173CounterWork=some s2Step173CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step173HeadFvAfter s2Step173CounterDuring s2Step173CounterWork.toFinset s2Step173Counter_bounded s2Step173Counter_apart rfl

private theorem s2Step173Counter_owned : (846::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step173HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step173HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173Counter_checked : compileHmrCounterStepLog s2Step173HeadFvAfter true 846 [772, 773, 774, 775, 776, 777] s2Step173CounterWork=some s2Step173CounterDuring := by
  have owned : ∀q∈846::[772, 773, 774, 775, 776, 777],q∈s2Step173HeadFvAfter.live := fun q hq => s2Step173Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step173Counter_borrowed

private def s2Step173EntryFAfter : Arena := s2Step173EntryFBefore

private theorem s2Step173EntryBank_incomingDistinct : ([s2Step173EntryFRow,s2Step173EntryGRow,s2Step173EntryFvRow,s2Step173EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173EntryF_Incoming : rowsOwned s2Step173EntryFBefore [s2Step173EntryFRow,s2Step173EntryGRow,s2Step173EntryFvRow,s2Step173EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step173EntryFRow,s2Step173EntryGRow,s2Step173EntryFvRow,s2Step173EntryGvRow] 0 s2Step173EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step173EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step173EntryBank_outgoingOwned : rowsOwned s2Step173EntryGvAfter [s2Step173EntryFOut,s2Step173EntryGOut,s2Step173EntryFvOut,s2Step173EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step173EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step173EntryF_Outgoing : rowsOwned s2Step173EntryGvAfter [s2Step173EntryFOut,s2Step173EntryGOut,s2Step173EntryFvOut,s2Step173EntryGvOut] :=
  hmrRows_owned_drop s2Step173EntryGvAfter [s2Step173EntryFOut,s2Step173EntryGOut,s2Step173EntryFvOut,s2Step173EntryGvOut] 0 s2Step173EntryBank_outgoingOwned

private theorem s2Step173EntryF_distinct : (s2Step173EntryFRow.sign::s2Step173EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173EntryF_owned : (s2Step173EntryFRow.sign::s2Step173EntryFRow.payload).toFinset⊆s2Step173EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step173EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173EntryF_reserved : s2Step173EntryFBefore.reserve s2Step173EntryFFresh.toFinset=some s2Step173EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step173EntryFFresh,arenaWires]
  · norm_num [s2Step173EntryFBefore,s2Step173EntryFFresh,arenaWires]
  · simp only [s2Step173EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step173EntryF_checked : planRowResizeLog s2Step173EntryFBefore s2Step173EntryFRow 183 s2Step173EntryFFresh=
    some (s2Step173EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694],768⟩,growRow 768 s2Step173EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step173EntryFBefore s2Step173EntryFAfter s2Step173EntryFRow 183 s2Step173EntryFFresh
    s2Step173EntryF_distinct s2Step173EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step173EntryF_reserved
  have rowEq : WindowRow.mk (s2Step173EntryFRow.payload++s2Step173EntryFFresh) s2Step173EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step173EntryFvBefore : Arena := s2Step173EntryFBefore

private theorem s2Step173EntryFv_Incoming : rowsOwned s2Step173EntryFvBefore [s2Step173EntryFvRow,s2Step173EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step173EntryFRow,s2Step173EntryGRow,s2Step173EntryFvRow,s2Step173EntryGvRow] 2 s2Step173EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step173EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step173EntryFv_Outgoing : rowsOwned s2Step173EntryGvAfter [s2Step173EntryFvOut,s2Step173EntryGvOut] :=
  hmrRows_owned_drop s2Step173EntryGvAfter [s2Step173EntryFOut,s2Step173EntryGOut,s2Step173EntryFvOut,s2Step173EntryGvOut] 2 s2Step173EntryBank_outgoingOwned

private theorem s2Step173EntryFv_distinct : (s2Step173EntryFvRow.sign::s2Step173EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173EntryFv_owned : (s2Step173EntryFvRow.sign::s2Step173EntryFvRow.payload).toFinset⊆s2Step173EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step173EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173EntryFv_reserved : s2Step173EntryFvBefore.reserve s2Step173EntryFvFresh.toFinset=some s2Step173EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step173EntryFvFresh,arenaWires]
  · norm_num [s2Step173EntryFvBefore,s2Step173EntryFBefore,s2Step173EntryFvFresh,arenaWires]
  · ext q
    simp only [s2Step173EntryFvAfter,s2Step173EntryFvBefore,s2Step173EntryFBefore,s2Step173EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step173EntryFv_checked : planRowResizeLog s2Step173EntryFvBefore s2Step173EntryFvRow 101 s2Step173EntryFvFresh=
    some (s2Step173EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820],770⟩,growRow 770 s2Step173EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step173EntryFvBefore s2Step173EntryFvAfter s2Step173EntryFvRow 101 s2Step173EntryFvFresh
    s2Step173EntryFv_distinct s2Step173EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step173EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step173EntryFvRow.payload++s2Step173EntryFvFresh) s2Step173EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step173EntryGAfter : Arena := s2Step173EntryFBefore

private def s2Step173EntryGBefore : Arena := s2Step173EntryFBefore

private theorem s2Step173EntryG_Incoming : rowsOwned s2Step173EntryGBefore [s2Step173EntryGRow,s2Step173EntryFvRow,s2Step173EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step173EntryFRow,s2Step173EntryGRow,s2Step173EntryFvRow,s2Step173EntryGvRow] 1 s2Step173EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step173EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step173EntryG_Outgoing : rowsOwned s2Step173EntryGvAfter [s2Step173EntryGOut,s2Step173EntryFvOut,s2Step173EntryGvOut] :=
  hmrRows_owned_drop s2Step173EntryGvAfter [s2Step173EntryFOut,s2Step173EntryGOut,s2Step173EntryFvOut,s2Step173EntryGvOut] 1 s2Step173EntryBank_outgoingOwned

private theorem s2Step173EntryG_distinct : (s2Step173EntryGRow.sign::s2Step173EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173EntryG_owned : (s2Step173EntryGRow.sign::s2Step173EntryGRow.payload).toFinset⊆s2Step173EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step173EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173EntryG_reserved : s2Step173EntryGBefore.reserve s2Step173EntryGFresh.toFinset=some s2Step173EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step173EntryGFresh,arenaWires]
  · norm_num [s2Step173EntryGBefore,s2Step173EntryFBefore,s2Step173EntryGFresh,arenaWires]
  · simp only [s2Step173EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step173EntryG_checked : planRowResizeLog s2Step173EntryGBefore s2Step173EntryGRow 183 s2Step173EntryGFresh=
    some (s2Step173EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182],769⟩,growRow 769 s2Step173EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step173EntryGBefore s2Step173EntryGAfter s2Step173EntryGRow 183 s2Step173EntryGFresh
    s2Step173EntryG_distinct s2Step173EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step173EntryG_reserved
  have rowEq : WindowRow.mk (s2Step173EntryGRow.payload++s2Step173EntryGFresh) s2Step173EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step173EntryGvBefore : Arena := s2Step173EntryFvAfter

private theorem s2Step173EntryGv_Incoming : rowsOwned s2Step173EntryGvBefore [s2Step173EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step173EntryFRow,s2Step173EntryGRow,s2Step173EntryFvRow,s2Step173EntryGvRow] 3 s2Step173EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step173EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step173EntryGv_Outgoing : rowsOwned s2Step173EntryGvAfter [s2Step173EntryGvOut] :=
  hmrRows_owned_drop s2Step173EntryGvAfter [s2Step173EntryFOut,s2Step173EntryGOut,s2Step173EntryFvOut,s2Step173EntryGvOut] 3 s2Step173EntryBank_outgoingOwned

private theorem s2Step173EntryGv_distinct : (s2Step173EntryGvRow.sign::s2Step173EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173EntryGv_owned : (s2Step173EntryGvRow.sign::s2Step173EntryGvRow.payload).toFinset⊆s2Step173EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step173EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173EntryGv_reserved : s2Step173EntryGvBefore.reserve s2Step173EntryGvFresh.toFinset=some s2Step173EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step173EntryGvFresh,arenaWires]
  · norm_num [s2Step173EntryGvBefore,s2Step173EntryFvAfter,s2Step173EntryGvFresh,arenaWires]
  · simp only [s2Step173EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step173EntryGv_checked : planRowResizeLog s2Step173EntryGvBefore s2Step173EntryGvRow 101 s2Step173EntryGvFresh=
    some (s2Step173EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805],771⟩,growRow 771 s2Step173EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step173EntryGvBefore s2Step173EntryGvAfter s2Step173EntryGvRow 101 s2Step173EntryGvFresh
    s2Step173EntryGv_distinct s2Step173EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step173EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step173EntryGvRow.payload++s2Step173EntryGvFresh) s2Step173EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step173EntryBank_rows : planWindowRowsLog s2Step173EntryFBefore [(s2Step173EntryFRow,183),(s2Step173EntryGRow,183),(s2Step173EntryFvRow,101),(s2Step173EntryGvRow,101)] [s2Step173EntryFFresh,s2Step173EntryGFresh,s2Step173EntryFvFresh,s2Step173EntryGvFresh]=
    some (s2Step173EntryGvAfter,[s2Step173EntryFOut,s2Step173EntryGOut,s2Step173EntryFvOut,s2Step173EntryGvOut],(growRow 768 s2Step173EntryFFresh ++ (growRow 769 s2Step173EntryGFresh ++ (growRow 770 s2Step173EntryFvFresh ++ (growRow 771 s2Step173EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step173EntryGvAfter [] []=some (s2Step173EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step173EntryGvBefore s2Step173EntryGvAfter s2Step173EntryGvAfter
    s2Step173EntryGvRow s2Step173EntryGvOut 101 s2Step173EntryGvFresh [] [] []
    (growRow 771 s2Step173EntryGvFresh) ([]) s2Step173EntryGv_Incoming s2Step173EntryGv_checked h4 s2Step173EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step173EntryFvBefore s2Step173EntryFvAfter s2Step173EntryGvAfter
    s2Step173EntryFvRow s2Step173EntryFvOut 101 s2Step173EntryFvFresh [(s2Step173EntryGvRow,101)] [s2Step173EntryGvFresh] [s2Step173EntryGvOut]
    (growRow 770 s2Step173EntryFvFresh) ((growRow 771 s2Step173EntryGvFresh ++ [])) s2Step173EntryFv_Incoming s2Step173EntryFv_checked h3 s2Step173EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step173EntryGBefore s2Step173EntryGAfter s2Step173EntryGvAfter
    s2Step173EntryGRow s2Step173EntryGOut 183 s2Step173EntryGFresh [(s2Step173EntryFvRow,101),(s2Step173EntryGvRow,101)] [s2Step173EntryFvFresh,s2Step173EntryGvFresh] [s2Step173EntryFvOut,s2Step173EntryGvOut]
    (growRow 769 s2Step173EntryGFresh) ((growRow 770 s2Step173EntryFvFresh ++ (growRow 771 s2Step173EntryGvFresh ++ []))) s2Step173EntryG_Incoming s2Step173EntryG_checked h2 s2Step173EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step173EntryFBefore s2Step173EntryFAfter s2Step173EntryGvAfter
    s2Step173EntryFRow s2Step173EntryFOut 183 s2Step173EntryFFresh [(s2Step173EntryGRow,183),(s2Step173EntryFvRow,101),(s2Step173EntryGvRow,101)] [s2Step173EntryGFresh,s2Step173EntryFvFresh,s2Step173EntryGvFresh] [s2Step173EntryGOut,s2Step173EntryFvOut,s2Step173EntryGvOut]
    (growRow 768 s2Step173EntryFFresh) ((growRow 769 s2Step173EntryGFresh ++ (growRow 770 s2Step173EntryFvFresh ++ (growRow 771 s2Step173EntryGvFresh ++ [])))) s2Step173EntryF_Incoming s2Step173EntryF_checked h1 s2Step173EntryF_Outgoing
  exact h0

private theorem s2Step173EntryBank_checked : compileHmrBankResizeLog .entry s2Step173EntryFBefore ⟨s2Step173EntryFRow,s2Step173EntryGRow,s2Step173EntryFvRow,s2Step173EntryGvRow⟩ ⟨183,183,101,101⟩ [s2Step173EntryFFresh,s2Step173EntryGFresh,s2Step173EntryFvFresh,s2Step173EntryGvFresh]=
    some (s2Step173EntryGvAfter,⟨s2Step173EntryFOut,s2Step173EntryGOut,s2Step173EntryFvOut,s2Step173EntryGvOut⟩,(growRow 768 s2Step173EntryFFresh ++ (growRow 769 s2Step173EntryGFresh ++ (growRow 770 s2Step173EntryFvFresh ++ (growRow 771 s2Step173EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step173EntryBank_rows]
  rfl

private def s2Step173ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173ExitFBefore : Arena := s2Step173ExitGAfter

private def s2Step173ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 847],768⟩

private def s2Step173ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 785],770⟩

private def s2Step173ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 787],769⟩

private def s2Step173ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 793],771⟩

private theorem s2Step173ExitBank_incomingDistinct : ([s2Step173ExitGRow,s2Step173ExitFRow,s2Step173ExitFvRow,s2Step173ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173ExitF_Incoming : rowsOwned s2Step173ExitFBefore [s2Step173ExitFRow,s2Step173ExitFvRow,s2Step173ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step173ExitGRow,s2Step173ExitFRow,s2Step173ExitFvRow,s2Step173ExitGvRow] 1 s2Step173ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step173ExitFBefore (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step173ExitBank_outgoingOwned : rowsOwned s2Step173ExitGvAfter [s2Step173ExitGOut,s2Step173ExitFOut,s2Step173ExitFvOut,s2Step173ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step173ExitGvAfter (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step173ExitF_Outgoing : rowsOwned s2Step173ExitGvAfter [s2Step173ExitFOut,s2Step173ExitFvOut,s2Step173ExitGvOut] :=
  hmrRows_owned_drop s2Step173ExitGvAfter [s2Step173ExitGOut,s2Step173ExitFOut,s2Step173ExitFvOut,s2Step173ExitGvOut] 1 s2Step173ExitBank_outgoingOwned

private theorem s2Step173ExitF_distinct : (s2Step173ExitFRow.sign::s2Step173ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173ExitF_owned : (s2Step173ExitFRow.sign::s2Step173ExitFRow.payload).toFinset⊆s2Step173ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step173ExitFBefore (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173ExitF_retired : s2Step173ExitFBefore.retireSet s2Step173ExitFExtra.toFinset=s2Step173ExitFAfter := by
  unfold Arena.retireSet s2Step173ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step173ExitFBefore,s2Step173ExitGAfter,s2Step173ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step173ExitF_checked : planRowResizeLog s2Step173ExitFBefore s2Step173ExitFRow 183 []=
    some (s2Step173ExitFAfter,s2Step173ExitFOut,shrinkRow 768 s2Step173ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step173ExitFBefore s2Step173ExitFRow 183 s2Step173ExitF_distinct s2Step173ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step173ExitFRow.payload.take 183) s2Step173ExitFRow.sign=s2Step173ExitFOut := by decide +kernel
  have hi : s2Step173ExitFRow.payload.drop 183=s2Step173ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step173ExitF_retired] at result
  exact result

private def s2Step173ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173ExitFvBefore : Arena := s2Step173ExitFAfter

private theorem s2Step173ExitFv_Incoming : rowsOwned s2Step173ExitFvBefore [s2Step173ExitFvRow,s2Step173ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step173ExitGRow,s2Step173ExitFRow,s2Step173ExitFvRow,s2Step173ExitGvRow] 2 s2Step173ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step173ExitFvBefore (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step173ExitFv_Outgoing : rowsOwned s2Step173ExitGvAfter [s2Step173ExitFvOut,s2Step173ExitGvOut] :=
  hmrRows_owned_drop s2Step173ExitGvAfter [s2Step173ExitGOut,s2Step173ExitFOut,s2Step173ExitFvOut,s2Step173ExitGvOut] 2 s2Step173ExitBank_outgoingOwned

private theorem s2Step173ExitFv_distinct : (s2Step173ExitFvRow.sign::s2Step173ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173ExitFv_owned : (s2Step173ExitFvRow.sign::s2Step173ExitFvRow.payload).toFinset⊆s2Step173ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step173ExitFvBefore (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173ExitFv_retired : s2Step173ExitFvBefore.retireSet s2Step173ExitFvExtra.toFinset=s2Step173ExitFvAfter := by
  unfold Arena.retireSet s2Step173ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step173ExitFvBefore,s2Step173ExitFAfter,s2Step173ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step173ExitFv_checked : planRowResizeLog s2Step173ExitFvBefore s2Step173ExitFvRow 101 []=
    some (s2Step173ExitFvAfter,s2Step173ExitFvOut,shrinkRow 770 s2Step173ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step173ExitFvBefore s2Step173ExitFvRow 101 s2Step173ExitFv_distinct s2Step173ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step173ExitFvRow.payload.take 101) s2Step173ExitFvRow.sign=s2Step173ExitFvOut := by decide +kernel
  have hi : s2Step173ExitFvRow.payload.drop 101=s2Step173ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step173ExitFv_retired] at result
  exact result

private def s2Step173ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step173ExitG_Incoming : rowsOwned s2Step173ExitGBefore [s2Step173ExitGRow,s2Step173ExitFRow,s2Step173ExitFvRow,s2Step173ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step173ExitGRow,s2Step173ExitFRow,s2Step173ExitFvRow,s2Step173ExitGvRow] 0 s2Step173ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step173ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step173ExitG_Outgoing : rowsOwned s2Step173ExitGvAfter [s2Step173ExitGOut,s2Step173ExitFOut,s2Step173ExitFvOut,s2Step173ExitGvOut] :=
  hmrRows_owned_drop s2Step173ExitGvAfter [s2Step173ExitGOut,s2Step173ExitFOut,s2Step173ExitFvOut,s2Step173ExitGvOut] 0 s2Step173ExitBank_outgoingOwned

private theorem s2Step173ExitG_distinct : (s2Step173ExitGRow.sign::s2Step173ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173ExitG_owned : (s2Step173ExitGRow.sign::s2Step173ExitGRow.payload).toFinset⊆s2Step173ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step173ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173ExitG_retired : s2Step173ExitGBefore.retireSet s2Step173ExitGExtra.toFinset=s2Step173ExitGAfter := by
  unfold Arena.retireSet s2Step173ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step173ExitGBefore,s2Step173ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step173ExitG_checked : planRowResizeLog s2Step173ExitGBefore s2Step173ExitGRow 182 []=
    some (s2Step173ExitGAfter,s2Step173ExitGOut,shrinkRow 769 s2Step173ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step173ExitGBefore s2Step173ExitGRow 182 s2Step173ExitG_distinct s2Step173ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step173ExitGRow.payload.take 182) s2Step173ExitGRow.sign=s2Step173ExitGOut := by decide +kernel
  have hi : s2Step173ExitGRow.payload.drop 182=s2Step173ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step173ExitG_retired] at result
  exact result

private def s2Step173ExitGvBefore : Arena := s2Step173ExitFvAfter

private theorem s2Step173ExitGv_Incoming : rowsOwned s2Step173ExitGvBefore [s2Step173ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step173ExitGRow,s2Step173ExitFRow,s2Step173ExitFvRow,s2Step173ExitGvRow] 3 s2Step173ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step173ExitGvBefore (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step173ExitGv_Outgoing : rowsOwned s2Step173ExitGvAfter [s2Step173ExitGvOut] :=
  hmrRows_owned_drop s2Step173ExitGvAfter [s2Step173ExitGOut,s2Step173ExitFOut,s2Step173ExitFvOut,s2Step173ExitGvOut] 3 s2Step173ExitBank_outgoingOwned

private theorem s2Step173ExitGv_distinct : (s2Step173ExitGvRow.sign::s2Step173ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173ExitGv_owned : (s2Step173ExitGvRow.sign::s2Step173ExitGvRow.payload).toFinset⊆s2Step173ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step173ExitGvBefore (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173ExitGv_retired : s2Step173ExitGvBefore.retireSet s2Step173ExitGvExtra.toFinset=s2Step173ExitGvAfter := by
  unfold Arena.retireSet s2Step173ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step173ExitGvBefore,s2Step173ExitFvAfter,s2Step173ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step173ExitGv_checked : planRowResizeLog s2Step173ExitGvBefore s2Step173ExitGvRow 101 []=
    some (s2Step173ExitGvAfter,s2Step173ExitGvOut,shrinkRow 771 s2Step173ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step173ExitGvBefore s2Step173ExitGvRow 101 s2Step173ExitGv_distinct s2Step173ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step173ExitGvRow.payload.take 101) s2Step173ExitGvRow.sign=s2Step173ExitGvOut := by decide +kernel
  have hi : s2Step173ExitGvRow.payload.drop 101=s2Step173ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step173ExitGv_retired] at result
  exact result

private theorem s2Step173ExitBank_rows : planWindowRowsLog s2Step173ExitGBefore [(s2Step173ExitGRow,182),(s2Step173ExitFRow,183),(s2Step173ExitFvRow,101),(s2Step173ExitGvRow,101)] [[],[],[],[]]=
    some (s2Step173ExitGvAfter,[s2Step173ExitGOut,s2Step173ExitFOut,s2Step173ExitFvOut,s2Step173ExitGvOut],(shrinkRow 769 s2Step173ExitGExtra ++ (shrinkRow 768 s2Step173ExitFExtra ++ (shrinkRow 770 s2Step173ExitFvExtra ++ (shrinkRow 771 s2Step173ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step173ExitGvAfter [] []=some (s2Step173ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step173ExitGvBefore s2Step173ExitGvAfter s2Step173ExitGvAfter
    s2Step173ExitGvRow s2Step173ExitGvOut 101 [] [] [] []
    (shrinkRow 771 s2Step173ExitGvExtra) ([]) s2Step173ExitGv_Incoming s2Step173ExitGv_checked h4 s2Step173ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step173ExitFvBefore s2Step173ExitFvAfter s2Step173ExitGvAfter
    s2Step173ExitFvRow s2Step173ExitFvOut 101 [] [(s2Step173ExitGvRow,101)] [[]] [s2Step173ExitGvOut]
    (shrinkRow 770 s2Step173ExitFvExtra) ((shrinkRow 771 s2Step173ExitGvExtra ++ [])) s2Step173ExitFv_Incoming s2Step173ExitFv_checked h3 s2Step173ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step173ExitFBefore s2Step173ExitFAfter s2Step173ExitGvAfter
    s2Step173ExitFRow s2Step173ExitFOut 183 [] [(s2Step173ExitFvRow,101),(s2Step173ExitGvRow,101)] [[],[]] [s2Step173ExitFvOut,s2Step173ExitGvOut]
    (shrinkRow 768 s2Step173ExitFExtra) ((shrinkRow 770 s2Step173ExitFvExtra ++ (shrinkRow 771 s2Step173ExitGvExtra ++ []))) s2Step173ExitF_Incoming s2Step173ExitF_checked h2 s2Step173ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step173ExitGBefore s2Step173ExitGAfter s2Step173ExitGvAfter
    s2Step173ExitGRow s2Step173ExitGOut 182 [] [(s2Step173ExitFRow,183),(s2Step173ExitFvRow,101),(s2Step173ExitGvRow,101)] [[],[],[]] [s2Step173ExitFOut,s2Step173ExitFvOut,s2Step173ExitGvOut]
    (shrinkRow 769 s2Step173ExitGExtra) ((shrinkRow 768 s2Step173ExitFExtra ++ (shrinkRow 770 s2Step173ExitFvExtra ++ (shrinkRow 771 s2Step173ExitGvExtra ++ [])))) s2Step173ExitG_Incoming s2Step173ExitG_checked h1 s2Step173ExitG_Outgoing
  exact h0

private theorem s2Step173ExitBank_checked : compileHmrBankResizeLog .exit s2Step173ExitGBefore ⟨s2Step173ExitFRow,s2Step173ExitGRow,s2Step173ExitFvRow,s2Step173ExitGvRow⟩ ⟨183,182,101,101⟩ [[],[],[],[]]=
    some (s2Step173ExitGvAfter,⟨s2Step173ExitFOut,s2Step173ExitGOut,s2Step173ExitFvOut,s2Step173ExitGvOut⟩,(shrinkRow 769 s2Step173ExitGExtra ++ (shrinkRow 768 s2Step173ExitFExtra ++ (shrinkRow 770 s2Step173ExitFvExtra ++ (shrinkRow 771 s2Step173ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step173ExitBank_rows]
  rfl

private theorem s2Step173Add0_apart : Disjoint s2Step173Add0Arena.live s2Step173Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step173Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173Add0_card : s2Step173Add0Arena.live.card=884 := by
  decide +kernel

private theorem s2Step173Add0_borrowed : s2Step173Add0Arena.checkBorrow (hmrHybridCount s2Step173Add0Arena s2Step173Add0B.length) s2Step173Add0Work=some s2Step173Add0During := by
  have len : s2Step173Add0Work.length=hmrHybridCount s2Step173Add0Arena s2Step173Add0B.length := by
    rw [hmrHybridCount,s2Step173Add0_card]
    decide +kernel
  have nd : s2Step173Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step173Add0Arena s2Step173Add0During s2Step173Add0Work.toFinset s2Step173Add0_bounded s2Step173Add0_apart rfl

private theorem s2Step173Add0_distinct : (803::794::799::(s2Step173Add0A++s2Step173Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173Add0_owned : (803::794::799::(s2Step173Add0A++s2Step173Add0B)).toFinset⊆s2Step173Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step173Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173Add0_checked : compileHmrHybridCinLog s2Step173Add0Arena 794 803 799 s2Step173Add0A s2Step173Add0B s2Step173Add0Work=some s2Step173Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step173Add0Arena s2Step173Add0During 794 803 799 s2Step173Add0A s2Step173Add0B s2Step173Add0Work
    (by decide +kernel) (by decide +kernel) s2Step173Add0_distinct
    (fun q hq => s2Step173Add0_owned (List.mem_toFinset.mpr hq)) s2Step173Add0_borrowed

private theorem s2Step173Add1_apart : Disjoint s2Step173Add1Arena.live s2Step173Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step173Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173Add1_card : s2Step173Add1Arena.live.card=884 := by
  decide +kernel

private theorem s2Step173Add1_borrowed : s2Step173Add1Arena.checkBorrow (hmrHybridCount s2Step173Add1Arena s2Step173Add1B.length) s2Step173Add1Work=some s2Step173Add1During := by
  have len : s2Step173Add1Work.length=hmrHybridCount s2Step173Add1Arena s2Step173Add1B.length := by
    rw [hmrHybridCount,s2Step173Add1_card]
    decide +kernel
  have nd : s2Step173Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step173Add1Arena s2Step173Add1During s2Step173Add1Work.toFinset s2Step173Add1_bounded s2Step173Add1_apart rfl

private theorem s2Step173Add1_distinct : (803::794::799::(s2Step173Add1A++s2Step173Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173Add1_owned : (803::794::799::(s2Step173Add1A++s2Step173Add1B)).toFinset⊆s2Step173Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step173Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173Add1_checked : compileHmrHybridCinLog s2Step173Add1Arena 794 803 799 s2Step173Add1A s2Step173Add1B s2Step173Add1Work=some s2Step173Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step173Add1Arena s2Step173Add1During 794 803 799 s2Step173Add1A s2Step173Add1B s2Step173Add1Work
    (by decide +kernel) (by decide +kernel) s2Step173Add1_distinct
    (fun q hq => s2Step173Add1_owned (List.mem_toFinset.mpr hq)) s2Step173Add1_borrowed

private theorem s2Step173F4_apart : Disjoint (s2Step173Add0A++s2Step173Add0B).toFinset (s2Step173Add1A++s2Step173Add1B).toFinset := by
  have nd : ((s2Step173Add0A++s2Step173Add0B)++(s2Step173Add1A++s2Step173Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step173F4_carry : s2Step173F4FlagArena.checkBorrow 1 [799]=some s2Step173Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step173F4FlagArena,s2Step173HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step173F4FlagArena,s2Step173HeadFvAfter,s2Step173Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step173F4_distinct : (846::794::803::799::((s2Step173Add0A++s2Step173Add1A)++(s2Step173Add0B++s2Step173Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173F4_flag : s2Step173HeadFvAfter.checkBorrow 1 [803]=some s2Step173F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step173HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step173F4_owned : (846::794::((s2Step173Add0A++s2Step173Add1A)++(s2Step173Add0B++s2Step173Add1B))).toFinset⊆s2Step173HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step173HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173F4_checked : compileHmrHybridF4Log s2Step173HeadFvAfter 846 794 s2Step173Add0A s2Step173Add0B s2Step173Add1A s2Step173Add1B [803] [799] s2Step173Add0Work s2Step173Add1Work=some s2Step173F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step173HeadFvAfter s2Step173F4FlagArena s2Step173Add0Arena s2Step173Add0During s2Step173Add1During 846 794
    s2Step173Add0A s2Step173Add0B s2Step173Add1A s2Step173Add1B [803] [799] s2Step173Add0Work s2Step173Add1Work
    (fun q hq => s2Step173F4_owned (List.mem_toFinset.mpr hq)) s2Step173F4_flag s2Step173F4_carry
    s2Step173F4_distinct s2Step173F4_apart s2Step173Add0_checked s2Step173Add1_checked

private theorem s2Step173Front_branch : s2Step173FrontSigmaArena.checkBorrow 1 [794]=some s2Step173HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step173FrontSigmaArena,s2Step173EntryGvAfter,s2Step173EntryFvAfter,arenaWires]
  · ext q
    simp only [s2Step173FrontSigmaArena,s2Step173EntryGvAfter,s2Step173EntryFvAfter,s2Step173HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step173Front_entry : HmrFrontEntryValid s2Step173EntryFBefore s2Step173FrontBank 183 101 ⟨183,182,101,101⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step173FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step173EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step173EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step173FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step173Front_sigma : s2Step173EntryGvAfter.checkBorrow 1 [846]=some s2Step173FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step173EntryGvAfter,s2Step173EntryFvAfter,arenaWires]
  · rfl

private def s2Step173HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173HeadFBefore : Arena := s2Step173HeadGAfter

private def s2Step173HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694],768⟩

private def s2Step173HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820],770⟩

private def s2Step173HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182],769⟩

private def s2Step173HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805],771⟩

private theorem s2Step173HeadBank_incomingDistinct : ([s2Step173HeadGRow,s2Step173HeadFRow,s2Step173HeadGvRow,s2Step173HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173HeadF_Incoming : rowsOwned s2Step173HeadFBefore [s2Step173HeadFRow,s2Step173HeadGvRow,s2Step173HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step173HeadGRow,s2Step173HeadFRow,s2Step173HeadGvRow,s2Step173HeadFvRow] 1 s2Step173HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step173HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step173HeadBank_outgoingOwned : rowsOwned s2Step173HeadFvAfter [s2Step173HeadGOut,s2Step173HeadFOut,s2Step173HeadGvOut,s2Step173HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step173HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step173HeadF_Outgoing : rowsOwned s2Step173HeadFvAfter [s2Step173HeadFOut,s2Step173HeadGvOut,s2Step173HeadFvOut] :=
  hmrRows_owned_drop s2Step173HeadFvAfter [s2Step173HeadGOut,s2Step173HeadFOut,s2Step173HeadGvOut,s2Step173HeadFvOut] 1 s2Step173HeadBank_outgoingOwned

private theorem s2Step173HeadF_distinct : (s2Step173HeadFRow.sign::s2Step173HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173HeadF_owned : (s2Step173HeadFRow.sign::s2Step173HeadFRow.payload).toFinset⊆s2Step173HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step173HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173HeadF_reserved : s2Step173HeadFBefore.reserve s2Step173HeadFFresh.toFinset=some s2Step173HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step173HeadFFresh,arenaWires]
  · norm_num [s2Step173HeadFBefore,s2Step173HeadGAfter,s2Step173HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step173HeadFAfter,s2Step173HeadFBefore,s2Step173HeadGAfter,s2Step173HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step173HeadF_checked : planRowResizeLog s2Step173HeadFBefore s2Step173HeadFRow 184 s2Step173HeadFFresh=
    some (s2Step173HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 847],768⟩,growRow 768 s2Step173HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step173HeadFBefore s2Step173HeadFAfter s2Step173HeadFRow 184 s2Step173HeadFFresh
    s2Step173HeadF_distinct s2Step173HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step173HeadF_reserved
  have rowEq : WindowRow.mk (s2Step173HeadFRow.payload++s2Step173HeadFFresh) s2Step173HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 847],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step173HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step173HeadFvBefore : Arena := s2Step173HeadGvAfter

private theorem s2Step173HeadFv_Incoming : rowsOwned s2Step173HeadFvBefore [s2Step173HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step173HeadGRow,s2Step173HeadFRow,s2Step173HeadGvRow,s2Step173HeadFvRow] 3 s2Step173HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step173HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step173HeadFv_Outgoing : rowsOwned s2Step173HeadFvAfter [s2Step173HeadFvOut] :=
  hmrRows_owned_drop s2Step173HeadFvAfter [s2Step173HeadGOut,s2Step173HeadFOut,s2Step173HeadGvOut,s2Step173HeadFvOut] 3 s2Step173HeadBank_outgoingOwned

private theorem s2Step173HeadFv_distinct : (s2Step173HeadFvRow.sign::s2Step173HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173HeadFv_owned : (s2Step173HeadFvRow.sign::s2Step173HeadFvRow.payload).toFinset⊆s2Step173HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step173HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173HeadFv_reserved : s2Step173HeadFvBefore.reserve s2Step173HeadFvFresh.toFinset=some s2Step173HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step173HeadFvFresh,arenaWires]
  · norm_num [s2Step173HeadFvBefore,s2Step173HeadGvAfter,s2Step173HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step173HeadFvAfter,s2Step173HeadFvBefore,s2Step173HeadGvAfter,s2Step173HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step173HeadFv_checked : planRowResizeLog s2Step173HeadFvBefore s2Step173HeadFvRow 102 s2Step173HeadFvFresh=
    some (s2Step173HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 785],770⟩,growRow 770 s2Step173HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step173HeadFvBefore s2Step173HeadFvAfter s2Step173HeadFvRow 102 s2Step173HeadFvFresh
    s2Step173HeadFv_distinct s2Step173HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step173HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step173HeadFvRow.payload++s2Step173HeadFvFresh) s2Step173HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step173HeadG_Incoming : rowsOwned s2Step173HeadGBefore [s2Step173HeadGRow,s2Step173HeadFRow,s2Step173HeadGvRow,s2Step173HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step173HeadGRow,s2Step173HeadFRow,s2Step173HeadGvRow,s2Step173HeadFvRow] 0 s2Step173HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step173HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step173HeadG_Outgoing : rowsOwned s2Step173HeadFvAfter [s2Step173HeadGOut,s2Step173HeadFOut,s2Step173HeadGvOut,s2Step173HeadFvOut] :=
  hmrRows_owned_drop s2Step173HeadFvAfter [s2Step173HeadGOut,s2Step173HeadFOut,s2Step173HeadGvOut,s2Step173HeadFvOut] 0 s2Step173HeadBank_outgoingOwned

private theorem s2Step173HeadG_distinct : (s2Step173HeadGRow.sign::s2Step173HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173HeadG_owned : (s2Step173HeadGRow.sign::s2Step173HeadGRow.payload).toFinset⊆s2Step173HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step173HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173HeadG_reserved : s2Step173HeadGBefore.reserve s2Step173HeadGFresh.toFinset=some s2Step173HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step173HeadGFresh,arenaWires]
  · norm_num [s2Step173HeadGBefore,s2Step173HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step173HeadGAfter,s2Step173HeadGBefore,s2Step173HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step173HeadG_checked : planRowResizeLog s2Step173HeadGBefore s2Step173HeadGRow 184 s2Step173HeadGFresh=
    some (s2Step173HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 787],769⟩,growRow 769 s2Step173HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step173HeadGBefore s2Step173HeadGAfter s2Step173HeadGRow 184 s2Step173HeadGFresh
    s2Step173HeadG_distinct s2Step173HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step173HeadG_reserved
  have rowEq : WindowRow.mk (s2Step173HeadGRow.payload++s2Step173HeadGFresh) s2Step173HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 787],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step173HeadGvBefore : Arena := s2Step173HeadFAfter

private theorem s2Step173HeadGv_Incoming : rowsOwned s2Step173HeadGvBefore [s2Step173HeadGvRow,s2Step173HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step173HeadGRow,s2Step173HeadFRow,s2Step173HeadGvRow,s2Step173HeadFvRow] 2 s2Step173HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step173HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step173HeadGv_Outgoing : rowsOwned s2Step173HeadFvAfter [s2Step173HeadGvOut,s2Step173HeadFvOut] :=
  hmrRows_owned_drop s2Step173HeadFvAfter [s2Step173HeadGOut,s2Step173HeadFOut,s2Step173HeadGvOut,s2Step173HeadFvOut] 2 s2Step173HeadBank_outgoingOwned

private theorem s2Step173HeadGv_distinct : (s2Step173HeadGvRow.sign::s2Step173HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step173HeadGv_owned : (s2Step173HeadGvRow.sign::s2Step173HeadGvRow.payload).toFinset⊆s2Step173HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step173HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step173HeadGv_reserved : s2Step173HeadGvBefore.reserve s2Step173HeadGvFresh.toFinset=some s2Step173HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step173HeadGvFresh,arenaWires]
  · norm_num [s2Step173HeadGvBefore,s2Step173HeadFAfter,s2Step173HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step173HeadGvAfter,s2Step173HeadGvBefore,s2Step173HeadFAfter,s2Step173HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step173HeadGv_checked : planRowResizeLog s2Step173HeadGvBefore s2Step173HeadGvRow 102 s2Step173HeadGvFresh=
    some (s2Step173HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 793],771⟩,growRow 771 s2Step173HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step173HeadGvBefore s2Step173HeadGvAfter s2Step173HeadGvRow 102 s2Step173HeadGvFresh
    s2Step173HeadGv_distinct s2Step173HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step173HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step173HeadGvRow.payload++s2Step173HeadGvFresh) s2Step173HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 793],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step173HeadBank_rows : planWindowRowsLog s2Step173HeadGBefore [(s2Step173HeadGRow,184),(s2Step173HeadFRow,184),(s2Step173HeadGvRow,102),(s2Step173HeadFvRow,102)] [s2Step173HeadGFresh,s2Step173HeadFFresh,s2Step173HeadGvFresh,s2Step173HeadFvFresh]=
    some (s2Step173HeadFvAfter,[s2Step173HeadGOut,s2Step173HeadFOut,s2Step173HeadGvOut,s2Step173HeadFvOut],(growRow 769 s2Step173HeadGFresh ++ (growRow 768 s2Step173HeadFFresh ++ (growRow 771 s2Step173HeadGvFresh ++ (growRow 770 s2Step173HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step173HeadFvAfter [] []=some (s2Step173HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step173HeadFvBefore s2Step173HeadFvAfter s2Step173HeadFvAfter
    s2Step173HeadFvRow s2Step173HeadFvOut 102 s2Step173HeadFvFresh [] [] []
    (growRow 770 s2Step173HeadFvFresh) ([]) s2Step173HeadFv_Incoming s2Step173HeadFv_checked h4 s2Step173HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step173HeadGvBefore s2Step173HeadGvAfter s2Step173HeadFvAfter
    s2Step173HeadGvRow s2Step173HeadGvOut 102 s2Step173HeadGvFresh [(s2Step173HeadFvRow,102)] [s2Step173HeadFvFresh] [s2Step173HeadFvOut]
    (growRow 771 s2Step173HeadGvFresh) ((growRow 770 s2Step173HeadFvFresh ++ [])) s2Step173HeadGv_Incoming s2Step173HeadGv_checked h3 s2Step173HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step173HeadFBefore s2Step173HeadFAfter s2Step173HeadFvAfter
    s2Step173HeadFRow s2Step173HeadFOut 184 s2Step173HeadFFresh [(s2Step173HeadGvRow,102),(s2Step173HeadFvRow,102)] [s2Step173HeadGvFresh,s2Step173HeadFvFresh] [s2Step173HeadGvOut,s2Step173HeadFvOut]
    (growRow 768 s2Step173HeadFFresh) ((growRow 771 s2Step173HeadGvFresh ++ (growRow 770 s2Step173HeadFvFresh ++ []))) s2Step173HeadF_Incoming s2Step173HeadF_checked h2 s2Step173HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step173HeadGBefore s2Step173HeadGAfter s2Step173HeadFvAfter
    s2Step173HeadGRow s2Step173HeadGOut 184 s2Step173HeadGFresh [(s2Step173HeadFRow,184),(s2Step173HeadGvRow,102),(s2Step173HeadFvRow,102)] [s2Step173HeadFFresh,s2Step173HeadGvFresh,s2Step173HeadFvFresh] [s2Step173HeadFOut,s2Step173HeadGvOut,s2Step173HeadFvOut]
    (growRow 769 s2Step173HeadGFresh) ((growRow 768 s2Step173HeadFFresh ++ (growRow 771 s2Step173HeadGvFresh ++ (growRow 770 s2Step173HeadFvFresh ++ [])))) s2Step173HeadG_Incoming s2Step173HeadG_checked h1 s2Step173HeadG_Outgoing
  exact h0

private theorem s2Step173HeadBank_checked : compileHmrBankResizeLog .headroom s2Step173HeadGBefore ⟨s2Step173HeadFRow,s2Step173HeadGRow,s2Step173HeadFvRow,s2Step173HeadGvRow⟩ ⟨184,184,102,102⟩ [s2Step173HeadGFresh,s2Step173HeadFFresh,s2Step173HeadGvFresh,s2Step173HeadFvFresh]=
    some (s2Step173HeadFvAfter,⟨s2Step173HeadFOut,s2Step173HeadGOut,s2Step173HeadFvOut,s2Step173HeadGvOut⟩,(growRow 769 s2Step173HeadGFresh ++ (growRow 768 s2Step173HeadFFresh ++ (growRow 771 s2Step173HeadGvFresh ++ (growRow 770 s2Step173HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step173HeadBank_rows]
  rfl

private theorem s2Step173Front_checked : compileHmrSourceFrontLog s2Step173EntryFBefore s2Step173FrontBank 183 101 ⟨183,182,101,101⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step173FrontLog=some s2Step173FrontPlan := by
  have pairEq : s2Step173FrontPair=⟨s2Step173HeadFRow,s2Step173HeadGRow,s2Step173HeadFvRow,s2Step173HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step173FrontHead=⟨s2Step173ExitFRow,s2Step173ExitGRow,s2Step173ExitFvRow,s2Step173ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step173Add0A=s2Step173FrontHead.f.wires := by decide +kernel
  have gEq : s2Step173Add0B=s2Step173FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step173Add1A=s2Step173FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step173Add1B=s2Step173FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step173EntryFBefore s2Step173FrontBank 183 101 ⟨183,182,101,101⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step173FrontLog s2Step173FrontPlan
  · exact s2Step173Front_entry
  · exact s2Step173EntryBank_checked
  · exact s2Step173Front_sigma
  · rfl
  · exact s2Step173Front_branch
  · rfl
  · simpa only [s2Step173FrontPlan,pairEq] using s2Step173HeadBank_checked
  · simpa only [s2Step173FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step173F4_checked
  · exact s2Step173Counter_checked
  · rfl
  · simpa only [s2Step173FrontPlan,headEq] using s2Step173ExitBank_checked

private theorem s2Step173Complete_explicit_checked : compileHmrEarlyStepLog s2Step173EntryFBefore s2Step173FrontBank 183 101 ⟨183,182,101,101⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step173CompleteLog=some s2Step173CompletePlan := by
  let Q := s2Step173EarlyControlPlan
  have hq := s2Step173EarlyControl_plan_checked
  have fv1 : s2Step173CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step173CompleteOut.fv.payload[2]?.getD s2Step173CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step173CompleteOut.fv.payload[3]?.getD s2Step173CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step173CompleteOut.fv.payload[4]?.getD s2Step173CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step173EntryFBefore s2Step173EarlyControlArena s2Step173FrontBank 183 101 ⟨183,182,101,101⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step173CompleteLog s2Step173FrontPlan Q
    s2Step173Front_checked s2Step173Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step173Complete_owned s2Step173Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step173EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 s2Step173CompleteOut.fv.second (s2Step173CompleteOut.fv.payload[2]?.getD s2Step173CompleteOut.fv.sign) (s2Step173CompleteOut.fv.payload[3]?.getD s2Step173CompleteOut.fv.sign) (s2Step173CompleteOut.fv.payload[4]?.getD s2Step173CompleteOut.fv.sign) 794 42 s2Step173EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep173Arena : Arena := s2Step173EntryFBefore
def s2PrivateStep173Bank : WindowBank := s2Step173FrontBank
def s2PrivateStep173Spec : HmrSourceWalkStepLog := ⟨183,101,⟨183,182,101,101⟩,42,.early s2Step173CompleteLog⟩
def s2PrivateStep173Plan : HmrSourceStepPlan := .early s2Step173CompletePlan
theorem s2PrivateStep173_source : s2PrivateStep173Spec=s2ObservedLogs160[13] := rfl
theorem s2PrivateStep173_checked : compileHmrSourceStepLog s2PrivateStep173Arena s2PrivateStep173Bank
    s2PrivateStep173Spec.fgWidth s2PrivateStep173Spec.vWidth s2PrivateStep173Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 173 s2PrivateStep173Spec.need none s2PrivateStep173Spec.log=some s2PrivateStep173Plan := by
  change compileHmrSourceStepLog s2Step173EntryFBefore s2Step173FrontBank 183 101 ⟨183,182,101,101⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 173 42 none (.early s2Step173CompleteLog)=some (.early s2Step173CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 173<498)]
  rw [s2Step173Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
