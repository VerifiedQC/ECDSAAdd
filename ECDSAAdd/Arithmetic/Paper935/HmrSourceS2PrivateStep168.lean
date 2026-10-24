import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep166
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

private def s2Step168CompleteMoves : List (Wire × Wire) := [(820,697)]

private def s2Step168EarlyControlLog : HmrEarlyControlLog := ⟨[820, 810, 803, 785, 793],[799],[847],[867, 877, 879, 882, 885, 888],[]⟩

private def s2Step168FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [799], [], [800]],[[847], [793], [810], [785]],[[], [], [], []]⟩,[787],[812],[867],[877],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882]⟩

private def s2Step168CompleteLog : HmrEarlyStepLog := ⟨s2Step168FrontLog,s2Step168CompleteMoves,s2Step168EarlyControlLog⟩

private def s2Step168ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩

private def s2Step168ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩

private def s2Step168ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],769⟩

private def s2Step168ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩

private def s2Step168FrontOut : WindowBank := ⟨s2Step168ExitFOut,s2Step168ExitGOut,s2Step168ExitFvOut,s2Step168ExitGvOut⟩

private def s2Step168CompleteOut : WindowBank := s2Step168FrontOut.repacked s2Step168CompleteMoves

private def s2Step168EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step168EarlyControlPositiveArena,[799],s2Step168EarlyControlEqualityArena,[847],⟨⟨787,false⟩,[⟨⟨799,false⟩,847⟩]⟩⟩

private def s2Step168EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,820⟩,⟨⟨774,false⟩,810⟩,⟨⟨775,false⟩,803⟩,⟨⟨776,false⟩,785⟩,⟨⟨777,false⟩,793⟩]⟩

private def s2Step168EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step168EarlyControlZeroArena,s2Step168EarlyControlZeroPlan,s2Step168EarlyControlClassPlan,s2Step168EarlyControlFlagArena,s2Step168EarlyControlFittedArena,s2Step168EarlyControlHistoryArena,s2Step168EarlyControlSigmaArena,s2Step168EarlyControlOutputArena,s2Step168EarlyControlLog⟩

private def s2Step168CounterWork : List Wire := [867, 877, 879, 882]

private theorem s2Step168Counter_bounded : s2Step168CounterWork.toFinset⊆arenaWires := by norm_num [s2Step168CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step168HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168CounterDuring : Arena := ⟨s2Step168HeadFvAfter.live∪s2Step168CounterWork.toFinset,Finset.union_subset s2Step168HeadFvAfter.bounded s2Step168Counter_bounded⟩

private def s2Step168EntryFFresh : List Wire := []

private def s2Step168EntryFvFresh : List Wire := []

private def s2Step168EntryGFresh : List Wire := [799]

private def s2Step168EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168EntryGvFresh : List Wire := [800]

private def s2Step168ExitFExtra : List Wire := [697, 793]

private def s2Step168ExitFvExtra : List Wire := [803, 785]

private def s2Step168ExitGExtra : List Wire := [799, 847]

private def s2Step168ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<697) ∨ (698≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168ExitGvExtra : List Wire := [810]

private def s2Step168Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168Add0Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step168Add0_bounded : s2Step168Add0Work.toFinset⊆arenaWires := by
  have h : s2Step168Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step168Add0During : Arena := ⟨s2Step168Add0Arena.live∪s2Step168Add0Work.toFinset,Finset.union_subset s2Step168Add0Arena.bounded s2Step168Add0_bounded⟩

private def s2Step168Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168Add1Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step168Add1_bounded : s2Step168Add1Work.toFinset⊆arenaWires := by
  have h : s2Step168Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step168Add1During : Arena := ⟨s2Step168Add1Arena.live∪s2Step168Add1Work.toFinset,Finset.union_subset s2Step168Add1Arena.bounded s2Step168Add1_bounded⟩

private def s2Step168F4FlagArena : Arena := ⟨s2Step168HeadFvAfter.live∪{867},Finset.union_subset s2Step168HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step168F4Plan : HmrHybridF4Plan := ⟨s2Step168F4FlagArena,[867],s2Step168Add0Arena,[877],s2Step168Add0During,s2Step168Add0Work,s2Step168Add1During,s2Step168Add1Work⟩

private def s2Step168HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 793],768⟩

private def s2Step168HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803, 785],770⟩

private def s2Step168HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 799, 847],769⟩

private def s2Step168HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 810],771⟩

private def s2Step168FrontHead : WindowBank := ⟨s2Step168HeadFOut,s2Step168HeadGOut,s2Step168HeadFvOut,s2Step168HeadGvOut⟩

private def s2Step168EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697],768⟩

private def s2Step168EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803],770⟩

private def s2Step168EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 799],769⟩

private def s2Step168EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩

private def s2Step168FrontPair : WindowBank := ⟨s2Step168EntryFOut,s2Step168EntryGOut,s2Step168EntryFvOut,s2Step168EntryGvOut⟩

private def s2Step168FrontSigmaArena : Arena := ⟨s2Step168EntryGvAfter.live∪{787},Finset.union_subset s2Step168EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step168HeadFFresh : List Wire := [793]

private def s2Step168HeadFvFresh : List Wire := [785]

private def s2Step168HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168HeadGFresh : List Wire := [847]

private def s2Step168HeadGvFresh : List Wire := [810]

private def s2Step168FrontPlan : HmrSourceFront := ⟨s2Step168EntryGvAfter,s2Step168FrontPair,(growRow 768 s2Step168EntryFFresh ++ (growRow 769 s2Step168EntryGFresh ++ (growRow 770 s2Step168EntryFvFresh ++ (growRow 771 s2Step168EntryGvFresh ++ [])))),s2Step168FrontSigmaArena,[787],s2Step168HeadGBefore,[812],
  s2Step168HeadFvAfter,s2Step168FrontHead,(growRow 769 s2Step168HeadGFresh ++ (growRow 768 s2Step168HeadFFresh ++ (growRow 771 s2Step168HeadGvFresh ++ (growRow 770 s2Step168HeadFvFresh ++ [])))),s2Step168F4Plan,s2Step168CounterDuring,s2Step168CounterWork,s2Step168ExitGvAfter,s2Step168FrontOut,(shrinkRow 769 s2Step168ExitGExtra ++ (shrinkRow 768 s2Step168ExitFExtra ++ (shrinkRow 770 s2Step168ExitFvExtra ++ (shrinkRow 771 s2Step168ExitGvExtra ++ []))))⟩

private def s2Step168CompletePlan : HmrEarlyStepPlan := ⟨s2Step168FrontPlan,s2Step168EarlyControlArena,s2Step168EarlyControlPlan,s2Step168CompleteMoves⟩

private theorem s2Step168Complete_apart : List.Disjoint (s2Step168CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [787, 812, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step168CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[787, 812, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step168Complete_owned : (s2Step168CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step168EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step168EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step168CompleteMoveArena : Arena := ⟨s2Step168ExitGvAfter.live∪{697},Finset.union_subset s2Step168ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step168Complete_repack : s2Step168ExitGvAfter.checkRepack s2Step168CompleteMoves=some s2Step168EarlyControlArena := by
  have owned : 820∈s2Step168ExitGvAfter.live := by norm_num [s2Step168ExitGvAfter,arenaWires]
  have reserve : s2Step168ExitGvAfter.reserve {697}=some s2Step168CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step168ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step168CompleteMoveArena.retireSet {820}=s2Step168EarlyControlArena := by
    unfold Arena.retireSet s2Step168EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step168CompleteMoveArena,s2Step168ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step168CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step168CompleteMoveArena.retireSet {820}).checkRepack []=some s2Step168EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step168EarlyControl_branchOwned : ([812] : List Wire).toFinset⊆s2Step168EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step168EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168EarlyControl_branch : compileHmrBranchRetirement s2Step168EarlyControlSigmaArena 812=some s2Step168EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step168EarlyControl_branchOwned
  · ext q
    simp [s2Step168EarlyControlOutputArena,s2Step168EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step168EarlyControl_classEqualityBorrow : s2Step168EarlyControlPositiveArena.checkBorrow (([787, 799] : List Wire).length-1) s2Step168EarlyControlLog.classWork=some s2Step168EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step168EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step168EarlyControlPositiveArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step168EarlyControlEqualityArena,s2Step168EarlyControlPositiveArena,s2Step168EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step168EarlyControl_classEqualityOwned : ([787, 799] : List Wire).toFinset⊆s2Step168EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step168EarlyControlPositiveArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168EarlyControl_classEquality : compileHmrEqualityLog s2Step168EarlyControlPositiveArena [787, 799] 0 s2Step168EarlyControlLog.classWork=some (s2Step168EarlyControlEqualityArena,s2Step168EarlyControlLog.classWork,s2Step168EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step168EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step168EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step168EarlyControl_classOwned : ([777, 793, 787] : List Wire).toFinset⊆s2Step168EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step168EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168EarlyControl_positiveBorrow : s2Step168EarlyControlZeroArena.checkBorrow (1) s2Step168EarlyControlLog.positiveWork=some s2Step168EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step168EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step168EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step168EarlyControlPositiveArena,s2Step168EarlyControlZeroArena,s2Step168EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step168EarlyControl_class : compileHmrSourceClassLog s2Step168EarlyControlZeroArena false 777 s2Step168EarlyControlZeroPlan.top 0 787 s2Step168EarlyControlLog.positiveWork s2Step168EarlyControlLog.classWork=some s2Step168EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step168EarlyControlClassPlan s2Step168EarlyControlZeroArena false 777 s2Step168EarlyControlZeroPlan.top 0 787
  constructor
  · decide +kernel
  · exact s2Step168EarlyControl_classOwned
  · exact s2Step168EarlyControl_positiveBorrow
  · exact s2Step168EarlyControl_classEquality

private theorem s2Step168EarlyControl_entryRecordOwned : ([812, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step168EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step168EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168EarlyControl_entrySigmaOwned : ([787, 254] : List Wire).toFinset⊆s2Step168EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step168EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168EarlyControl_fitBorrow : s2Step168EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step168EarlyControlLog.recordFresh=some s2Step168EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step168EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step168EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step168EarlyControlFittedArena,s2Step168EarlyControlFlagArena,s2Step168EarlyControlLog,arenaWires]

private theorem s2Step168EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step168EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step168EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168EarlyControl_fit : compileHmrRecordGrowLog s2Step168EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step168EarlyControlLog.recordFresh=some s2Step168EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step168EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step168EarlyControl_fitBorrow

private theorem s2Step168EarlyControl_flagsBorrow : s2Step168EarlyControlEqualityArena.checkBorrow (6) s2Step168EarlyControlLog.flagWork=some s2Step168EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step168EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step168EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step168EarlyControlFlagArena,s2Step168EarlyControlEqualityArena,s2Step168EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step168EarlyControl_flagsOwned : ([847, 253, 252, 251] : List Wire).toFinset⊆s2Step168EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step168EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168EarlyControl_flags : compileHmrFlagsLog s2Step168EarlyControlClassPlan.equalityArena s2Step168EarlyControlClassPlan.equality.top 253 252 251 s2Step168EarlyControlLog.flagWork=some s2Step168EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step168EarlyControl_flagsOwned⟩
  · exact s2Step168EarlyControl_flagsBorrow

private theorem s2Step168EarlyControl_historyBorrow : s2Step168EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step168EarlyControlLog.recordFresh=some s2Step168EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step168EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step168EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step168EarlyControlHistoryArena,s2Step168EarlyControlArena,s2Step168EarlyControlLog,arenaWires]

private theorem s2Step168EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step168EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step168EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168EarlyControl_history : compileHmrRecordGrowLog s2Step168EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step168EarlyControlLog.recordFresh=some s2Step168EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step168EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step168EarlyControl_historyBorrow

private theorem s2Step168EarlyControl_sigmaOwned : ([254, 787] : List Wire).toFinset⊆s2Step168EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step168EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168EarlyControl_sigmaReleaseOwned : ([787] : List Wire).toFinset⊆s2Step168EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step168EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168EarlyControl_sigmaRelease : s2Step168EarlyControlHistoryArena.release {787} (fun _ => false)=some s2Step168EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step168EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step168EarlyControlSigmaArena,s2Step168EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step168EarlyControl_sigma : compileHmrSigmaDropLog s2Step168EarlyControlHistoryArena false 0 0 254 787 []=some s2Step168EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step168EarlyControl_sigmaOwned⟩
  · exact s2Step168EarlyControl_sigmaRelease

private theorem s2Step168EarlyControl_zeroBorrow : s2Step168EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step168EarlyControlLog.zeroWork=some s2Step168EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step168EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step168EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step168EarlyControlZeroArena,s2Step168EarlyControlArena,s2Step168EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step168EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step168EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step168EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168EarlyControl_zero : compileHmrEqualityLog s2Step168EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step168EarlyControlLog.zeroWork=some (s2Step168EarlyControlZeroArena,s2Step168EarlyControlLog.zeroWork,s2Step168EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step168EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step168EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step168EarlyControl_logged : s2Step168EarlyControlPlan.Logged s2Step168EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 787 254 253 252 251 812 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step168EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step168EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step168EarlyControl_zero
  · exact s2Step168EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step168EarlyControl_flags
  · exact s2Step168EarlyControl_fit
  · exact s2Step168EarlyControl_history
  · exact s2Step168EarlyControl_sigma
  · exact s2Step168EarlyControl_branch

private theorem s2Step168EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step168EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 787 254 253 252 251 812 42 s2Step168EarlyControlLog=some s2Step168EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step168EarlyControlPlan s2Step168EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 787 254 253 252 251 812 42 s2Step168EarlyControl_logged

private def s2Step168EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697],768⟩

private def s2Step168EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803],770⟩

private def s2Step168EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],769⟩

private def s2Step168EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849],771⟩

private def s2Step168FrontBank : WindowBank := ⟨s2Step168EntryFRow,s2Step168EntryGRow,s2Step168EntryFvRow,s2Step168EntryGvRow⟩

private def s2Step168Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 793, 768]

private def s2Step168Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 799, 847, 769]

private def s2Step168Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803, 785, 770]

private def s2Step168Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 810, 771]

private theorem s2Step168Counter_apart : Disjoint s2Step168HeadFvAfter.live s2Step168CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step168HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168Counter_borrowed : s2Step168HeadFvAfter.checkBorrow 4 s2Step168CounterWork=some s2Step168CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step168HeadFvAfter s2Step168CounterDuring s2Step168CounterWork.toFinset s2Step168Counter_bounded s2Step168Counter_apart rfl

private theorem s2Step168Counter_owned : (787::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step168HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step168HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168Counter_checked : compileHmrCounterStepLog s2Step168HeadFvAfter true 787 [772, 773, 774, 775, 776, 777] s2Step168CounterWork=some s2Step168CounterDuring := by
  have owned : ∀q∈787::[772, 773, 774, 775, 776, 777],q∈s2Step168HeadFvAfter.live := fun q hq => s2Step168Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step168Counter_borrowed

private def s2Step168EntryFAfter : Arena := s2Step168EntryFBefore

private theorem s2Step168EntryBank_incomingDistinct : ([s2Step168EntryFRow,s2Step168EntryGRow,s2Step168EntryFvRow,s2Step168EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168EntryF_Incoming : rowsOwned s2Step168EntryFBefore [s2Step168EntryFRow,s2Step168EntryGRow,s2Step168EntryFvRow,s2Step168EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step168EntryFRow,s2Step168EntryGRow,s2Step168EntryFvRow,s2Step168EntryGvRow] 0 s2Step168EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step168EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step168EntryBank_outgoingOwned : rowsOwned s2Step168EntryGvAfter [s2Step168EntryFOut,s2Step168EntryGOut,s2Step168EntryFvOut,s2Step168EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step168EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step168EntryF_Outgoing : rowsOwned s2Step168EntryGvAfter [s2Step168EntryFOut,s2Step168EntryGOut,s2Step168EntryFvOut,s2Step168EntryGvOut] :=
  hmrRows_owned_drop s2Step168EntryGvAfter [s2Step168EntryFOut,s2Step168EntryGOut,s2Step168EntryFvOut,s2Step168EntryGvOut] 0 s2Step168EntryBank_outgoingOwned

private theorem s2Step168EntryF_distinct : (s2Step168EntryFRow.sign::s2Step168EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168EntryF_owned : (s2Step168EntryFRow.sign::s2Step168EntryFRow.payload).toFinset⊆s2Step168EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step168EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168EntryF_reserved : s2Step168EntryFBefore.reserve s2Step168EntryFFresh.toFinset=some s2Step168EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step168EntryFFresh,arenaWires]
  · norm_num [s2Step168EntryFBefore,s2Step168EntryFFresh,arenaWires]
  · simp only [s2Step168EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step168EntryF_checked : planRowResizeLog s2Step168EntryFBefore s2Step168EntryFRow 186 s2Step168EntryFFresh=
    some (s2Step168EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697],768⟩,growRow 768 s2Step168EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step168EntryFBefore s2Step168EntryFAfter s2Step168EntryFRow 186 s2Step168EntryFFresh
    s2Step168EntryF_distinct s2Step168EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step168EntryF_reserved
  have rowEq : WindowRow.mk (s2Step168EntryFRow.payload++s2Step168EntryFFresh) s2Step168EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step168EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168EntryFvAfter : Arena := s2Step168EntryGAfter

private def s2Step168EntryFvBefore : Arena := s2Step168EntryGAfter

private theorem s2Step168EntryFv_Incoming : rowsOwned s2Step168EntryFvBefore [s2Step168EntryFvRow,s2Step168EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step168EntryFRow,s2Step168EntryGRow,s2Step168EntryFvRow,s2Step168EntryGvRow] 2 s2Step168EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step168EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step168EntryFv_Outgoing : rowsOwned s2Step168EntryGvAfter [s2Step168EntryFvOut,s2Step168EntryGvOut] :=
  hmrRows_owned_drop s2Step168EntryGvAfter [s2Step168EntryFOut,s2Step168EntryGOut,s2Step168EntryFvOut,s2Step168EntryGvOut] 2 s2Step168EntryBank_outgoingOwned

private theorem s2Step168EntryFv_distinct : (s2Step168EntryFvRow.sign::s2Step168EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168EntryFv_owned : (s2Step168EntryFvRow.sign::s2Step168EntryFvRow.payload).toFinset⊆s2Step168EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step168EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168EntryFv_reserved : s2Step168EntryFvBefore.reserve s2Step168EntryFvFresh.toFinset=some s2Step168EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step168EntryFvFresh,arenaWires]
  · norm_num [s2Step168EntryFvBefore,s2Step168EntryGAfter,s2Step168EntryFvFresh,arenaWires]
  · simp only [s2Step168EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step168EntryFv_checked : planRowResizeLog s2Step168EntryFvBefore s2Step168EntryFvRow 99 s2Step168EntryFvFresh=
    some (s2Step168EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803],770⟩,growRow 770 s2Step168EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step168EntryFvBefore s2Step168EntryFvAfter s2Step168EntryFvRow 99 s2Step168EntryFvFresh
    s2Step168EntryFv_distinct s2Step168EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step168EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step168EntryFvRow.payload++s2Step168EntryFvFresh) s2Step168EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step168EntryGBefore : Arena := s2Step168EntryFBefore

private theorem s2Step168EntryG_Incoming : rowsOwned s2Step168EntryGBefore [s2Step168EntryGRow,s2Step168EntryFvRow,s2Step168EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step168EntryFRow,s2Step168EntryGRow,s2Step168EntryFvRow,s2Step168EntryGvRow] 1 s2Step168EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step168EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step168EntryG_Outgoing : rowsOwned s2Step168EntryGvAfter [s2Step168EntryGOut,s2Step168EntryFvOut,s2Step168EntryGvOut] :=
  hmrRows_owned_drop s2Step168EntryGvAfter [s2Step168EntryFOut,s2Step168EntryGOut,s2Step168EntryFvOut,s2Step168EntryGvOut] 1 s2Step168EntryBank_outgoingOwned

private theorem s2Step168EntryG_distinct : (s2Step168EntryGRow.sign::s2Step168EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168EntryG_owned : (s2Step168EntryGRow.sign::s2Step168EntryGRow.payload).toFinset⊆s2Step168EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step168EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168EntryG_reserved : s2Step168EntryGBefore.reserve s2Step168EntryGFresh.toFinset=some s2Step168EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step168EntryGFresh,arenaWires]
  · norm_num [s2Step168EntryGBefore,s2Step168EntryFBefore,s2Step168EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step168EntryGAfter,s2Step168EntryGBefore,s2Step168EntryFBefore,s2Step168EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step168EntryG_checked : planRowResizeLog s2Step168EntryGBefore s2Step168EntryGRow 186 s2Step168EntryGFresh=
    some (s2Step168EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 799],769⟩,growRow 769 s2Step168EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step168EntryGBefore s2Step168EntryGAfter s2Step168EntryGRow 186 s2Step168EntryGFresh
    s2Step168EntryG_distinct s2Step168EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step168EntryG_reserved
  have rowEq : WindowRow.mk (s2Step168EntryGRow.payload++s2Step168EntryGFresh) s2Step168EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 799],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step168EntryGvBefore : Arena := s2Step168EntryGAfter

private theorem s2Step168EntryGv_Incoming : rowsOwned s2Step168EntryGvBefore [s2Step168EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step168EntryFRow,s2Step168EntryGRow,s2Step168EntryFvRow,s2Step168EntryGvRow] 3 s2Step168EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step168EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step168EntryGv_Outgoing : rowsOwned s2Step168EntryGvAfter [s2Step168EntryGvOut] :=
  hmrRows_owned_drop s2Step168EntryGvAfter [s2Step168EntryFOut,s2Step168EntryGOut,s2Step168EntryFvOut,s2Step168EntryGvOut] 3 s2Step168EntryBank_outgoingOwned

private theorem s2Step168EntryGv_distinct : (s2Step168EntryGvRow.sign::s2Step168EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168EntryGv_owned : (s2Step168EntryGvRow.sign::s2Step168EntryGvRow.payload).toFinset⊆s2Step168EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step168EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168EntryGv_reserved : s2Step168EntryGvBefore.reserve s2Step168EntryGvFresh.toFinset=some s2Step168EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step168EntryGvFresh,arenaWires]
  · norm_num [s2Step168EntryGvBefore,s2Step168EntryGAfter,s2Step168EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step168EntryGvAfter,s2Step168EntryGvBefore,s2Step168EntryGAfter,s2Step168EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step168EntryGv_checked : planRowResizeLog s2Step168EntryGvBefore s2Step168EntryGvRow 99 s2Step168EntryGvFresh=
    some (s2Step168EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩,growRow 771 s2Step168EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step168EntryGvBefore s2Step168EntryGvAfter s2Step168EntryGvRow 99 s2Step168EntryGvFresh
    s2Step168EntryGv_distinct s2Step168EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step168EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step168EntryGvRow.payload++s2Step168EntryGvFresh) s2Step168EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step168EntryBank_rows : planWindowRowsLog s2Step168EntryFBefore [(s2Step168EntryFRow,186),(s2Step168EntryGRow,186),(s2Step168EntryFvRow,99),(s2Step168EntryGvRow,99)] [s2Step168EntryFFresh,s2Step168EntryGFresh,s2Step168EntryFvFresh,s2Step168EntryGvFresh]=
    some (s2Step168EntryGvAfter,[s2Step168EntryFOut,s2Step168EntryGOut,s2Step168EntryFvOut,s2Step168EntryGvOut],(growRow 768 s2Step168EntryFFresh ++ (growRow 769 s2Step168EntryGFresh ++ (growRow 770 s2Step168EntryFvFresh ++ (growRow 771 s2Step168EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step168EntryGvAfter [] []=some (s2Step168EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step168EntryGvBefore s2Step168EntryGvAfter s2Step168EntryGvAfter
    s2Step168EntryGvRow s2Step168EntryGvOut 99 s2Step168EntryGvFresh [] [] []
    (growRow 771 s2Step168EntryGvFresh) ([]) s2Step168EntryGv_Incoming s2Step168EntryGv_checked h4 s2Step168EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step168EntryFvBefore s2Step168EntryFvAfter s2Step168EntryGvAfter
    s2Step168EntryFvRow s2Step168EntryFvOut 99 s2Step168EntryFvFresh [(s2Step168EntryGvRow,99)] [s2Step168EntryGvFresh] [s2Step168EntryGvOut]
    (growRow 770 s2Step168EntryFvFresh) ((growRow 771 s2Step168EntryGvFresh ++ [])) s2Step168EntryFv_Incoming s2Step168EntryFv_checked h3 s2Step168EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step168EntryGBefore s2Step168EntryGAfter s2Step168EntryGvAfter
    s2Step168EntryGRow s2Step168EntryGOut 186 s2Step168EntryGFresh [(s2Step168EntryFvRow,99),(s2Step168EntryGvRow,99)] [s2Step168EntryFvFresh,s2Step168EntryGvFresh] [s2Step168EntryFvOut,s2Step168EntryGvOut]
    (growRow 769 s2Step168EntryGFresh) ((growRow 770 s2Step168EntryFvFresh ++ (growRow 771 s2Step168EntryGvFresh ++ []))) s2Step168EntryG_Incoming s2Step168EntryG_checked h2 s2Step168EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step168EntryFBefore s2Step168EntryFAfter s2Step168EntryGvAfter
    s2Step168EntryFRow s2Step168EntryFOut 186 s2Step168EntryFFresh [(s2Step168EntryGRow,186),(s2Step168EntryFvRow,99),(s2Step168EntryGvRow,99)] [s2Step168EntryGFresh,s2Step168EntryFvFresh,s2Step168EntryGvFresh] [s2Step168EntryGOut,s2Step168EntryFvOut,s2Step168EntryGvOut]
    (growRow 768 s2Step168EntryFFresh) ((growRow 769 s2Step168EntryGFresh ++ (growRow 770 s2Step168EntryFvFresh ++ (growRow 771 s2Step168EntryGvFresh ++ [])))) s2Step168EntryF_Incoming s2Step168EntryF_checked h1 s2Step168EntryF_Outgoing
  exact h0

private theorem s2Step168EntryBank_checked : compileHmrBankResizeLog .entry s2Step168EntryFBefore ⟨s2Step168EntryFRow,s2Step168EntryGRow,s2Step168EntryFvRow,s2Step168EntryGvRow⟩ ⟨186,186,99,99⟩ [s2Step168EntryFFresh,s2Step168EntryGFresh,s2Step168EntryFvFresh,s2Step168EntryGvFresh]=
    some (s2Step168EntryGvAfter,⟨s2Step168EntryFOut,s2Step168EntryGOut,s2Step168EntryFvOut,s2Step168EntryGvOut⟩,(growRow 768 s2Step168EntryFFresh ++ (growRow 769 s2Step168EntryGFresh ++ (growRow 770 s2Step168EntryFvFresh ++ (growRow 771 s2Step168EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step168EntryBank_rows]
  rfl

private def s2Step168ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<697) ∨ (698≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168ExitFBefore : Arena := s2Step168ExitGAfter

private def s2Step168ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 793],768⟩

private def s2Step168ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803, 785],770⟩

private def s2Step168ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 799, 847],769⟩

private def s2Step168ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 810],771⟩

private theorem s2Step168ExitBank_incomingDistinct : ([s2Step168ExitGRow,s2Step168ExitFRow,s2Step168ExitFvRow,s2Step168ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168ExitF_Incoming : rowsOwned s2Step168ExitFBefore [s2Step168ExitFRow,s2Step168ExitFvRow,s2Step168ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step168ExitGRow,s2Step168ExitFRow,s2Step168ExitFvRow,s2Step168ExitGvRow] 1 s2Step168ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step168ExitFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step168ExitBank_outgoingOwned : rowsOwned s2Step168ExitGvAfter [s2Step168ExitGOut,s2Step168ExitFOut,s2Step168ExitFvOut,s2Step168ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step168ExitGvAfter (fun q => (0≤q ∧ q<697) ∨ (698≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step168ExitF_Outgoing : rowsOwned s2Step168ExitGvAfter [s2Step168ExitFOut,s2Step168ExitFvOut,s2Step168ExitGvOut] :=
  hmrRows_owned_drop s2Step168ExitGvAfter [s2Step168ExitGOut,s2Step168ExitFOut,s2Step168ExitFvOut,s2Step168ExitGvOut] 1 s2Step168ExitBank_outgoingOwned

private theorem s2Step168ExitF_distinct : (s2Step168ExitFRow.sign::s2Step168ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168ExitF_owned : (s2Step168ExitFRow.sign::s2Step168ExitFRow.payload).toFinset⊆s2Step168ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step168ExitFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168ExitF_retired : s2Step168ExitFBefore.retireSet s2Step168ExitFExtra.toFinset=s2Step168ExitFAfter := by
  unfold Arena.retireSet s2Step168ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step168ExitFBefore,s2Step168ExitGAfter,s2Step168ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step168ExitF_checked : planRowResizeLog s2Step168ExitFBefore s2Step168ExitFRow 185 []=
    some (s2Step168ExitFAfter,s2Step168ExitFOut,shrinkRow 768 s2Step168ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step168ExitFBefore s2Step168ExitFRow 185 s2Step168ExitF_distinct s2Step168ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step168ExitFRow.payload.take 185) s2Step168ExitFRow.sign=s2Step168ExitFOut := by decide +kernel
  have hi : s2Step168ExitFRow.payload.drop 185=s2Step168ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step168ExitF_retired] at result
  exact result

private def s2Step168ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<697) ∨ (698≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168ExitFvBefore : Arena := s2Step168ExitFAfter

private theorem s2Step168ExitFv_Incoming : rowsOwned s2Step168ExitFvBefore [s2Step168ExitFvRow,s2Step168ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step168ExitGRow,s2Step168ExitFRow,s2Step168ExitFvRow,s2Step168ExitGvRow] 2 s2Step168ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step168ExitFvBefore (fun q => (0≤q ∧ q<697) ∨ (698≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step168ExitFv_Outgoing : rowsOwned s2Step168ExitGvAfter [s2Step168ExitFvOut,s2Step168ExitGvOut] :=
  hmrRows_owned_drop s2Step168ExitGvAfter [s2Step168ExitGOut,s2Step168ExitFOut,s2Step168ExitFvOut,s2Step168ExitGvOut] 2 s2Step168ExitBank_outgoingOwned

private theorem s2Step168ExitFv_distinct : (s2Step168ExitFvRow.sign::s2Step168ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168ExitFv_owned : (s2Step168ExitFvRow.sign::s2Step168ExitFvRow.payload).toFinset⊆s2Step168ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step168ExitFvBefore (fun q => (0≤q ∧ q<697) ∨ (698≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168ExitFv_retired : s2Step168ExitFvBefore.retireSet s2Step168ExitFvExtra.toFinset=s2Step168ExitFvAfter := by
  unfold Arena.retireSet s2Step168ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step168ExitFvBefore,s2Step168ExitFAfter,s2Step168ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step168ExitFv_checked : planRowResizeLog s2Step168ExitFvBefore s2Step168ExitFvRow 98 []=
    some (s2Step168ExitFvAfter,s2Step168ExitFvOut,shrinkRow 770 s2Step168ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step168ExitFvBefore s2Step168ExitFvRow 98 s2Step168ExitFv_distinct s2Step168ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step168ExitFvRow.payload.take 98) s2Step168ExitFvRow.sign=s2Step168ExitFvOut := by decide +kernel
  have hi : s2Step168ExitFvRow.payload.drop 98=s2Step168ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step168ExitFv_retired] at result
  exact result

private def s2Step168ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step168ExitG_Incoming : rowsOwned s2Step168ExitGBefore [s2Step168ExitGRow,s2Step168ExitFRow,s2Step168ExitFvRow,s2Step168ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step168ExitGRow,s2Step168ExitFRow,s2Step168ExitFvRow,s2Step168ExitGvRow] 0 s2Step168ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step168ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step168ExitG_Outgoing : rowsOwned s2Step168ExitGvAfter [s2Step168ExitGOut,s2Step168ExitFOut,s2Step168ExitFvOut,s2Step168ExitGvOut] :=
  hmrRows_owned_drop s2Step168ExitGvAfter [s2Step168ExitGOut,s2Step168ExitFOut,s2Step168ExitFvOut,s2Step168ExitGvOut] 0 s2Step168ExitBank_outgoingOwned

private theorem s2Step168ExitG_distinct : (s2Step168ExitGRow.sign::s2Step168ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168ExitG_owned : (s2Step168ExitGRow.sign::s2Step168ExitGRow.payload).toFinset⊆s2Step168ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step168ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168ExitG_retired : s2Step168ExitGBefore.retireSet s2Step168ExitGExtra.toFinset=s2Step168ExitGAfter := by
  unfold Arena.retireSet s2Step168ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step168ExitGBefore,s2Step168ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step168ExitG_checked : planRowResizeLog s2Step168ExitGBefore s2Step168ExitGRow 185 []=
    some (s2Step168ExitGAfter,s2Step168ExitGOut,shrinkRow 769 s2Step168ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step168ExitGBefore s2Step168ExitGRow 185 s2Step168ExitG_distinct s2Step168ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step168ExitGRow.payload.take 185) s2Step168ExitGRow.sign=s2Step168ExitGOut := by decide +kernel
  have hi : s2Step168ExitGRow.payload.drop 185=s2Step168ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step168ExitG_retired] at result
  exact result

private def s2Step168ExitGvBefore : Arena := s2Step168ExitFvAfter

private theorem s2Step168ExitGv_Incoming : rowsOwned s2Step168ExitGvBefore [s2Step168ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step168ExitGRow,s2Step168ExitFRow,s2Step168ExitFvRow,s2Step168ExitGvRow] 3 s2Step168ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step168ExitGvBefore (fun q => (0≤q ∧ q<697) ∨ (698≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step168ExitGv_Outgoing : rowsOwned s2Step168ExitGvAfter [s2Step168ExitGvOut] :=
  hmrRows_owned_drop s2Step168ExitGvAfter [s2Step168ExitGOut,s2Step168ExitFOut,s2Step168ExitFvOut,s2Step168ExitGvOut] 3 s2Step168ExitBank_outgoingOwned

private theorem s2Step168ExitGv_distinct : (s2Step168ExitGvRow.sign::s2Step168ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168ExitGv_owned : (s2Step168ExitGvRow.sign::s2Step168ExitGvRow.payload).toFinset⊆s2Step168ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step168ExitGvBefore (fun q => (0≤q ∧ q<697) ∨ (698≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168ExitGv_retired : s2Step168ExitGvBefore.retireSet s2Step168ExitGvExtra.toFinset=s2Step168ExitGvAfter := by
  unfold Arena.retireSet s2Step168ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step168ExitGvBefore,s2Step168ExitFvAfter,s2Step168ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step168ExitGv_checked : planRowResizeLog s2Step168ExitGvBefore s2Step168ExitGvRow 99 []=
    some (s2Step168ExitGvAfter,s2Step168ExitGvOut,shrinkRow 771 s2Step168ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step168ExitGvBefore s2Step168ExitGvRow 99 s2Step168ExitGv_distinct s2Step168ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step168ExitGvRow.payload.take 99) s2Step168ExitGvRow.sign=s2Step168ExitGvOut := by decide +kernel
  have hi : s2Step168ExitGvRow.payload.drop 99=s2Step168ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step168ExitGv_retired] at result
  exact result

private theorem s2Step168ExitBank_rows : planWindowRowsLog s2Step168ExitGBefore [(s2Step168ExitGRow,185),(s2Step168ExitFRow,185),(s2Step168ExitFvRow,98),(s2Step168ExitGvRow,99)] [[],[],[],[]]=
    some (s2Step168ExitGvAfter,[s2Step168ExitGOut,s2Step168ExitFOut,s2Step168ExitFvOut,s2Step168ExitGvOut],(shrinkRow 769 s2Step168ExitGExtra ++ (shrinkRow 768 s2Step168ExitFExtra ++ (shrinkRow 770 s2Step168ExitFvExtra ++ (shrinkRow 771 s2Step168ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step168ExitGvAfter [] []=some (s2Step168ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step168ExitGvBefore s2Step168ExitGvAfter s2Step168ExitGvAfter
    s2Step168ExitGvRow s2Step168ExitGvOut 99 [] [] [] []
    (shrinkRow 771 s2Step168ExitGvExtra) ([]) s2Step168ExitGv_Incoming s2Step168ExitGv_checked h4 s2Step168ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step168ExitFvBefore s2Step168ExitFvAfter s2Step168ExitGvAfter
    s2Step168ExitFvRow s2Step168ExitFvOut 98 [] [(s2Step168ExitGvRow,99)] [[]] [s2Step168ExitGvOut]
    (shrinkRow 770 s2Step168ExitFvExtra) ((shrinkRow 771 s2Step168ExitGvExtra ++ [])) s2Step168ExitFv_Incoming s2Step168ExitFv_checked h3 s2Step168ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step168ExitFBefore s2Step168ExitFAfter s2Step168ExitGvAfter
    s2Step168ExitFRow s2Step168ExitFOut 185 [] [(s2Step168ExitFvRow,98),(s2Step168ExitGvRow,99)] [[],[]] [s2Step168ExitFvOut,s2Step168ExitGvOut]
    (shrinkRow 768 s2Step168ExitFExtra) ((shrinkRow 770 s2Step168ExitFvExtra ++ (shrinkRow 771 s2Step168ExitGvExtra ++ []))) s2Step168ExitF_Incoming s2Step168ExitF_checked h2 s2Step168ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step168ExitGBefore s2Step168ExitGAfter s2Step168ExitGvAfter
    s2Step168ExitGRow s2Step168ExitGOut 185 [] [(s2Step168ExitFRow,185),(s2Step168ExitFvRow,98),(s2Step168ExitGvRow,99)] [[],[],[]] [s2Step168ExitFOut,s2Step168ExitFvOut,s2Step168ExitGvOut]
    (shrinkRow 769 s2Step168ExitGExtra) ((shrinkRow 768 s2Step168ExitFExtra ++ (shrinkRow 770 s2Step168ExitFvExtra ++ (shrinkRow 771 s2Step168ExitGvExtra ++ [])))) s2Step168ExitG_Incoming s2Step168ExitG_checked h1 s2Step168ExitG_Outgoing
  exact h0

private theorem s2Step168ExitBank_checked : compileHmrBankResizeLog .exit s2Step168ExitGBefore ⟨s2Step168ExitFRow,s2Step168ExitGRow,s2Step168ExitFvRow,s2Step168ExitGvRow⟩ ⟨185,185,98,99⟩ [[],[],[],[]]=
    some (s2Step168ExitGvAfter,⟨s2Step168ExitFOut,s2Step168ExitGOut,s2Step168ExitFvOut,s2Step168ExitGvOut⟩,(shrinkRow 769 s2Step168ExitGExtra ++ (shrinkRow 768 s2Step168ExitFExtra ++ (shrinkRow 770 s2Step168ExitFvExtra ++ (shrinkRow 771 s2Step168ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step168ExitBank_rows]
  rfl

private theorem s2Step168Add0_apart : Disjoint s2Step168Add0Arena.live s2Step168Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step168Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168Add0_card : s2Step168Add0Arena.live.card=886 := by
  decide +kernel

private theorem s2Step168Add0_borrowed : s2Step168Add0Arena.checkBorrow (hmrHybridCount s2Step168Add0Arena s2Step168Add0B.length) s2Step168Add0Work=some s2Step168Add0During := by
  have len : s2Step168Add0Work.length=hmrHybridCount s2Step168Add0Arena s2Step168Add0B.length := by
    rw [hmrHybridCount,s2Step168Add0_card]
    decide +kernel
  have nd : s2Step168Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step168Add0Arena s2Step168Add0During s2Step168Add0Work.toFinset s2Step168Add0_bounded s2Step168Add0_apart rfl

private theorem s2Step168Add0_distinct : (867::812::877::(s2Step168Add0A++s2Step168Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168Add0_owned : (867::812::877::(s2Step168Add0A++s2Step168Add0B)).toFinset⊆s2Step168Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step168Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168Add0_checked : compileHmrHybridCinLog s2Step168Add0Arena 812 867 877 s2Step168Add0A s2Step168Add0B s2Step168Add0Work=some s2Step168Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step168Add0Arena s2Step168Add0During 812 867 877 s2Step168Add0A s2Step168Add0B s2Step168Add0Work
    (by decide +kernel) (by decide +kernel) s2Step168Add0_distinct
    (fun q hq => s2Step168Add0_owned (List.mem_toFinset.mpr hq)) s2Step168Add0_borrowed

private theorem s2Step168Add1_apart : Disjoint s2Step168Add1Arena.live s2Step168Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step168Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168Add1_card : s2Step168Add1Arena.live.card=886 := by
  decide +kernel

private theorem s2Step168Add1_borrowed : s2Step168Add1Arena.checkBorrow (hmrHybridCount s2Step168Add1Arena s2Step168Add1B.length) s2Step168Add1Work=some s2Step168Add1During := by
  have len : s2Step168Add1Work.length=hmrHybridCount s2Step168Add1Arena s2Step168Add1B.length := by
    rw [hmrHybridCount,s2Step168Add1_card]
    decide +kernel
  have nd : s2Step168Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step168Add1Arena s2Step168Add1During s2Step168Add1Work.toFinset s2Step168Add1_bounded s2Step168Add1_apart rfl

private theorem s2Step168Add1_distinct : (867::812::877::(s2Step168Add1A++s2Step168Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168Add1_owned : (867::812::877::(s2Step168Add1A++s2Step168Add1B)).toFinset⊆s2Step168Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step168Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168Add1_checked : compileHmrHybridCinLog s2Step168Add1Arena 812 867 877 s2Step168Add1A s2Step168Add1B s2Step168Add1Work=some s2Step168Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step168Add1Arena s2Step168Add1During 812 867 877 s2Step168Add1A s2Step168Add1B s2Step168Add1Work
    (by decide +kernel) (by decide +kernel) s2Step168Add1_distinct
    (fun q hq => s2Step168Add1_owned (List.mem_toFinset.mpr hq)) s2Step168Add1_borrowed

private theorem s2Step168F4_apart : Disjoint (s2Step168Add0A++s2Step168Add0B).toFinset (s2Step168Add1A++s2Step168Add1B).toFinset := by
  have nd : ((s2Step168Add0A++s2Step168Add0B)++(s2Step168Add1A++s2Step168Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step168F4_carry : s2Step168F4FlagArena.checkBorrow 1 [877]=some s2Step168Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step168F4FlagArena,s2Step168HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step168F4FlagArena,s2Step168HeadFvAfter,s2Step168Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step168F4_distinct : (787::812::867::877::((s2Step168Add0A++s2Step168Add1A)++(s2Step168Add0B++s2Step168Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168F4_flag : s2Step168HeadFvAfter.checkBorrow 1 [867]=some s2Step168F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step168HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step168F4_owned : (787::812::((s2Step168Add0A++s2Step168Add1A)++(s2Step168Add0B++s2Step168Add1B))).toFinset⊆s2Step168HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step168HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168F4_checked : compileHmrHybridF4Log s2Step168HeadFvAfter 787 812 s2Step168Add0A s2Step168Add0B s2Step168Add1A s2Step168Add1B [867] [877] s2Step168Add0Work s2Step168Add1Work=some s2Step168F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step168HeadFvAfter s2Step168F4FlagArena s2Step168Add0Arena s2Step168Add0During s2Step168Add1During 787 812
    s2Step168Add0A s2Step168Add0B s2Step168Add1A s2Step168Add1B [867] [877] s2Step168Add0Work s2Step168Add1Work
    (fun q hq => s2Step168F4_owned (List.mem_toFinset.mpr hq)) s2Step168F4_flag s2Step168F4_carry
    s2Step168F4_distinct s2Step168F4_apart s2Step168Add0_checked s2Step168Add1_checked

private theorem s2Step168Front_branch : s2Step168FrontSigmaArena.checkBorrow 1 [812]=some s2Step168HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step168FrontSigmaArena,s2Step168EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step168FrontSigmaArena,s2Step168EntryGvAfter,s2Step168HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step168Front_entry : HmrFrontEntryValid s2Step168EntryFBefore s2Step168FrontBank 186 99 ⟨185,185,98,99⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step168FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step168EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step168EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step168FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step168Front_sigma : s2Step168EntryGvAfter.checkBorrow 1 [787]=some s2Step168FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step168EntryGvAfter,arenaWires]
  · rfl

private def s2Step168HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168HeadFBefore : Arena := s2Step168HeadGAfter

private def s2Step168HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697],768⟩

private def s2Step168HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803],770⟩

private def s2Step168HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 799],769⟩

private def s2Step168HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩

private theorem s2Step168HeadBank_incomingDistinct : ([s2Step168HeadGRow,s2Step168HeadFRow,s2Step168HeadGvRow,s2Step168HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168HeadF_Incoming : rowsOwned s2Step168HeadFBefore [s2Step168HeadFRow,s2Step168HeadGvRow,s2Step168HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step168HeadGRow,s2Step168HeadFRow,s2Step168HeadGvRow,s2Step168HeadFvRow] 1 s2Step168HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step168HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step168HeadBank_outgoingOwned : rowsOwned s2Step168HeadFvAfter [s2Step168HeadGOut,s2Step168HeadFOut,s2Step168HeadGvOut,s2Step168HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step168HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step168HeadF_Outgoing : rowsOwned s2Step168HeadFvAfter [s2Step168HeadFOut,s2Step168HeadGvOut,s2Step168HeadFvOut] :=
  hmrRows_owned_drop s2Step168HeadFvAfter [s2Step168HeadGOut,s2Step168HeadFOut,s2Step168HeadGvOut,s2Step168HeadFvOut] 1 s2Step168HeadBank_outgoingOwned

private theorem s2Step168HeadF_distinct : (s2Step168HeadFRow.sign::s2Step168HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168HeadF_owned : (s2Step168HeadFRow.sign::s2Step168HeadFRow.payload).toFinset⊆s2Step168HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step168HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168HeadF_reserved : s2Step168HeadFBefore.reserve s2Step168HeadFFresh.toFinset=some s2Step168HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step168HeadFFresh,arenaWires]
  · norm_num [s2Step168HeadFBefore,s2Step168HeadGAfter,s2Step168HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step168HeadFAfter,s2Step168HeadFBefore,s2Step168HeadGAfter,s2Step168HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step168HeadF_checked : planRowResizeLog s2Step168HeadFBefore s2Step168HeadFRow 187 s2Step168HeadFFresh=
    some (s2Step168HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 793],768⟩,growRow 768 s2Step168HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step168HeadFBefore s2Step168HeadFAfter s2Step168HeadFRow 187 s2Step168HeadFFresh
    s2Step168HeadF_distinct s2Step168HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step168HeadF_reserved
  have rowEq : WindowRow.mk (s2Step168HeadFRow.payload++s2Step168HeadFFresh) s2Step168HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 793],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step168HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step168HeadFvBefore : Arena := s2Step168HeadGvAfter

private theorem s2Step168HeadFv_Incoming : rowsOwned s2Step168HeadFvBefore [s2Step168HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step168HeadGRow,s2Step168HeadFRow,s2Step168HeadGvRow,s2Step168HeadFvRow] 3 s2Step168HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step168HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step168HeadFv_Outgoing : rowsOwned s2Step168HeadFvAfter [s2Step168HeadFvOut] :=
  hmrRows_owned_drop s2Step168HeadFvAfter [s2Step168HeadGOut,s2Step168HeadFOut,s2Step168HeadGvOut,s2Step168HeadFvOut] 3 s2Step168HeadBank_outgoingOwned

private theorem s2Step168HeadFv_distinct : (s2Step168HeadFvRow.sign::s2Step168HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168HeadFv_owned : (s2Step168HeadFvRow.sign::s2Step168HeadFvRow.payload).toFinset⊆s2Step168HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step168HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168HeadFv_reserved : s2Step168HeadFvBefore.reserve s2Step168HeadFvFresh.toFinset=some s2Step168HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step168HeadFvFresh,arenaWires]
  · norm_num [s2Step168HeadFvBefore,s2Step168HeadGvAfter,s2Step168HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step168HeadFvAfter,s2Step168HeadFvBefore,s2Step168HeadGvAfter,s2Step168HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step168HeadFv_checked : planRowResizeLog s2Step168HeadFvBefore s2Step168HeadFvRow 100 s2Step168HeadFvFresh=
    some (s2Step168HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803, 785],770⟩,growRow 770 s2Step168HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step168HeadFvBefore s2Step168HeadFvAfter s2Step168HeadFvRow 100 s2Step168HeadFvFresh
    s2Step168HeadFv_distinct s2Step168HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step168HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step168HeadFvRow.payload++s2Step168HeadFvFresh) s2Step168HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 803, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step168HeadG_Incoming : rowsOwned s2Step168HeadGBefore [s2Step168HeadGRow,s2Step168HeadFRow,s2Step168HeadGvRow,s2Step168HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step168HeadGRow,s2Step168HeadFRow,s2Step168HeadGvRow,s2Step168HeadFvRow] 0 s2Step168HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step168HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step168HeadG_Outgoing : rowsOwned s2Step168HeadFvAfter [s2Step168HeadGOut,s2Step168HeadFOut,s2Step168HeadGvOut,s2Step168HeadFvOut] :=
  hmrRows_owned_drop s2Step168HeadFvAfter [s2Step168HeadGOut,s2Step168HeadFOut,s2Step168HeadGvOut,s2Step168HeadFvOut] 0 s2Step168HeadBank_outgoingOwned

private theorem s2Step168HeadG_distinct : (s2Step168HeadGRow.sign::s2Step168HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168HeadG_owned : (s2Step168HeadGRow.sign::s2Step168HeadGRow.payload).toFinset⊆s2Step168HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step168HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168HeadG_reserved : s2Step168HeadGBefore.reserve s2Step168HeadGFresh.toFinset=some s2Step168HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step168HeadGFresh,arenaWires]
  · norm_num [s2Step168HeadGBefore,s2Step168HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step168HeadGAfter,s2Step168HeadGBefore,s2Step168HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step168HeadG_checked : planRowResizeLog s2Step168HeadGBefore s2Step168HeadGRow 187 s2Step168HeadGFresh=
    some (s2Step168HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 799, 847],769⟩,growRow 769 s2Step168HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step168HeadGBefore s2Step168HeadGAfter s2Step168HeadGRow 187 s2Step168HeadGFresh
    s2Step168HeadG_distinct s2Step168HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step168HeadG_reserved
  have rowEq : WindowRow.mk (s2Step168HeadGRow.payload++s2Step168HeadGFresh) s2Step168HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 799, 847],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step168HeadGvBefore : Arena := s2Step168HeadFAfter

private theorem s2Step168HeadGv_Incoming : rowsOwned s2Step168HeadGvBefore [s2Step168HeadGvRow,s2Step168HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step168HeadGRow,s2Step168HeadFRow,s2Step168HeadGvRow,s2Step168HeadFvRow] 2 s2Step168HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step168HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step168HeadGv_Outgoing : rowsOwned s2Step168HeadFvAfter [s2Step168HeadGvOut,s2Step168HeadFvOut] :=
  hmrRows_owned_drop s2Step168HeadFvAfter [s2Step168HeadGOut,s2Step168HeadFOut,s2Step168HeadGvOut,s2Step168HeadFvOut] 2 s2Step168HeadBank_outgoingOwned

private theorem s2Step168HeadGv_distinct : (s2Step168HeadGvRow.sign::s2Step168HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step168HeadGv_owned : (s2Step168HeadGvRow.sign::s2Step168HeadGvRow.payload).toFinset⊆s2Step168HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step168HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<810) ∨ (811≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step168HeadGv_reserved : s2Step168HeadGvBefore.reserve s2Step168HeadGvFresh.toFinset=some s2Step168HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step168HeadGvFresh,arenaWires]
  · norm_num [s2Step168HeadGvBefore,s2Step168HeadFAfter,s2Step168HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step168HeadGvAfter,s2Step168HeadGvBefore,s2Step168HeadFAfter,s2Step168HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step168HeadGv_checked : planRowResizeLog s2Step168HeadGvBefore s2Step168HeadGvRow 100 s2Step168HeadGvFresh=
    some (s2Step168HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 810],771⟩,growRow 771 s2Step168HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step168HeadGvBefore s2Step168HeadGvAfter s2Step168HeadGvRow 100 s2Step168HeadGvFresh
    s2Step168HeadGv_distinct s2Step168HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step168HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step168HeadGvRow.payload++s2Step168HeadGvFresh) s2Step168HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 810],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step168HeadBank_rows : planWindowRowsLog s2Step168HeadGBefore [(s2Step168HeadGRow,187),(s2Step168HeadFRow,187),(s2Step168HeadGvRow,100),(s2Step168HeadFvRow,100)] [s2Step168HeadGFresh,s2Step168HeadFFresh,s2Step168HeadGvFresh,s2Step168HeadFvFresh]=
    some (s2Step168HeadFvAfter,[s2Step168HeadGOut,s2Step168HeadFOut,s2Step168HeadGvOut,s2Step168HeadFvOut],(growRow 769 s2Step168HeadGFresh ++ (growRow 768 s2Step168HeadFFresh ++ (growRow 771 s2Step168HeadGvFresh ++ (growRow 770 s2Step168HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step168HeadFvAfter [] []=some (s2Step168HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step168HeadFvBefore s2Step168HeadFvAfter s2Step168HeadFvAfter
    s2Step168HeadFvRow s2Step168HeadFvOut 100 s2Step168HeadFvFresh [] [] []
    (growRow 770 s2Step168HeadFvFresh) ([]) s2Step168HeadFv_Incoming s2Step168HeadFv_checked h4 s2Step168HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step168HeadGvBefore s2Step168HeadGvAfter s2Step168HeadFvAfter
    s2Step168HeadGvRow s2Step168HeadGvOut 100 s2Step168HeadGvFresh [(s2Step168HeadFvRow,100)] [s2Step168HeadFvFresh] [s2Step168HeadFvOut]
    (growRow 771 s2Step168HeadGvFresh) ((growRow 770 s2Step168HeadFvFresh ++ [])) s2Step168HeadGv_Incoming s2Step168HeadGv_checked h3 s2Step168HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step168HeadFBefore s2Step168HeadFAfter s2Step168HeadFvAfter
    s2Step168HeadFRow s2Step168HeadFOut 187 s2Step168HeadFFresh [(s2Step168HeadGvRow,100),(s2Step168HeadFvRow,100)] [s2Step168HeadGvFresh,s2Step168HeadFvFresh] [s2Step168HeadGvOut,s2Step168HeadFvOut]
    (growRow 768 s2Step168HeadFFresh) ((growRow 771 s2Step168HeadGvFresh ++ (growRow 770 s2Step168HeadFvFresh ++ []))) s2Step168HeadF_Incoming s2Step168HeadF_checked h2 s2Step168HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step168HeadGBefore s2Step168HeadGAfter s2Step168HeadFvAfter
    s2Step168HeadGRow s2Step168HeadGOut 187 s2Step168HeadGFresh [(s2Step168HeadFRow,187),(s2Step168HeadGvRow,100),(s2Step168HeadFvRow,100)] [s2Step168HeadFFresh,s2Step168HeadGvFresh,s2Step168HeadFvFresh] [s2Step168HeadFOut,s2Step168HeadGvOut,s2Step168HeadFvOut]
    (growRow 769 s2Step168HeadGFresh) ((growRow 768 s2Step168HeadFFresh ++ (growRow 771 s2Step168HeadGvFresh ++ (growRow 770 s2Step168HeadFvFresh ++ [])))) s2Step168HeadG_Incoming s2Step168HeadG_checked h1 s2Step168HeadG_Outgoing
  exact h0

private theorem s2Step168HeadBank_checked : compileHmrBankResizeLog .headroom s2Step168HeadGBefore ⟨s2Step168HeadFRow,s2Step168HeadGRow,s2Step168HeadFvRow,s2Step168HeadGvRow⟩ ⟨187,187,100,100⟩ [s2Step168HeadGFresh,s2Step168HeadFFresh,s2Step168HeadGvFresh,s2Step168HeadFvFresh]=
    some (s2Step168HeadFvAfter,⟨s2Step168HeadFOut,s2Step168HeadGOut,s2Step168HeadFvOut,s2Step168HeadGvOut⟩,(growRow 769 s2Step168HeadGFresh ++ (growRow 768 s2Step168HeadFFresh ++ (growRow 771 s2Step168HeadGvFresh ++ (growRow 770 s2Step168HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step168HeadBank_rows]
  rfl

private theorem s2Step168Front_checked : compileHmrSourceFrontLog s2Step168EntryFBefore s2Step168FrontBank 186 99 ⟨185,185,98,99⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step168FrontLog=some s2Step168FrontPlan := by
  have pairEq : s2Step168FrontPair=⟨s2Step168HeadFRow,s2Step168HeadGRow,s2Step168HeadFvRow,s2Step168HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step168FrontHead=⟨s2Step168ExitFRow,s2Step168ExitGRow,s2Step168ExitFvRow,s2Step168ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step168Add0A=s2Step168FrontHead.f.wires := by decide +kernel
  have gEq : s2Step168Add0B=s2Step168FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step168Add1A=s2Step168FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step168Add1B=s2Step168FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step168EntryFBefore s2Step168FrontBank 186 99 ⟨185,185,98,99⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step168FrontLog s2Step168FrontPlan
  · exact s2Step168Front_entry
  · exact s2Step168EntryBank_checked
  · exact s2Step168Front_sigma
  · rfl
  · exact s2Step168Front_branch
  · rfl
  · simpa only [s2Step168FrontPlan,pairEq] using s2Step168HeadBank_checked
  · simpa only [s2Step168FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step168F4_checked
  · exact s2Step168Counter_checked
  · rfl
  · simpa only [s2Step168FrontPlan,headEq] using s2Step168ExitBank_checked

private theorem s2Step168Complete_explicit_checked : compileHmrEarlyStepLog s2Step168EntryFBefore s2Step168FrontBank 186 99 ⟨185,185,98,99⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step168CompleteLog=some s2Step168CompletePlan := by
  let Q := s2Step168EarlyControlPlan
  have hq := s2Step168EarlyControl_plan_checked
  have fv1 : s2Step168CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step168CompleteOut.fv.payload[2]?.getD s2Step168CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step168CompleteOut.fv.payload[3]?.getD s2Step168CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step168CompleteOut.fv.payload[4]?.getD s2Step168CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step168EntryFBefore s2Step168EarlyControlArena s2Step168FrontBank 186 99 ⟨185,185,98,99⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step168CompleteLog s2Step168FrontPlan Q
    s2Step168Front_checked s2Step168Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step168Complete_owned s2Step168Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step168EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 787 s2Step168CompleteOut.fv.second (s2Step168CompleteOut.fv.payload[2]?.getD s2Step168CompleteOut.fv.sign) (s2Step168CompleteOut.fv.payload[3]?.getD s2Step168CompleteOut.fv.sign) (s2Step168CompleteOut.fv.payload[4]?.getD s2Step168CompleteOut.fv.sign) 812 42 s2Step168EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep168Arena : Arena := s2Step168EntryFBefore
def s2PrivateStep168Bank : WindowBank := s2Step168FrontBank
def s2PrivateStep168Spec : HmrSourceWalkStepLog := ⟨186,99,⟨185,185,98,99⟩,42,.early s2Step168CompleteLog⟩
def s2PrivateStep168Plan : HmrSourceStepPlan := .early s2Step168CompletePlan
theorem s2PrivateStep168_source : s2PrivateStep168Spec=s2ObservedLogs160[8] := rfl
theorem s2PrivateStep168_checked : compileHmrSourceStepLog s2PrivateStep168Arena s2PrivateStep168Bank
    s2PrivateStep168Spec.fgWidth s2PrivateStep168Spec.vWidth s2PrivateStep168Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 168 s2PrivateStep168Spec.need none s2PrivateStep168Spec.log=some s2PrivateStep168Plan := by
  change compileHmrSourceStepLog s2Step168EntryFBefore s2Step168FrontBank 186 99 ⟨185,185,98,99⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 168 42 none (.early s2Step168CompleteLog)=some (.early s2Step168CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 168<498)]
  rw [s2Step168Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
