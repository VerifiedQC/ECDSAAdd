import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep167
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

private def s2Step169CompleteMoves : List (Wire × Wire) := []

private def s2Step169EarlyControlLog : HmrEarlyControlLog := ⟨[785, 793, 803, 810, 799],[847],[867],[877, 879, 882, 885, 888, 890],[]⟩

private def s2Step169FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [812], []],[[810], [803], [785], [793]],[[], [], [], []]⟩,[787],[820],[799],[847],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[799, 847, 867, 877]⟩

private def s2Step169CompleteLog : HmrEarlyStepLog := ⟨s2Step169FrontLog,s2Step169CompleteMoves,s2Step169EarlyControlLog⟩

private def s2Step169ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩

private def s2Step169ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812],770⟩

private def s2Step169ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],769⟩

private def s2Step169ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩

private def s2Step169FrontOut : WindowBank := ⟨s2Step169ExitFOut,s2Step169ExitGOut,s2Step169ExitFvOut,s2Step169ExitGvOut⟩

private def s2Step169CompleteOut : WindowBank := s2Step169FrontOut.repacked s2Step169CompleteMoves

private def s2Step169EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step169EarlyControlPositiveArena,[847],s2Step169EarlyControlEqualityArena,[867],⟨⟨787,false⟩,[⟨⟨847,false⟩,867⟩]⟩⟩

private def s2Step169EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step169EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step169EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,785⟩,⟨⟨774,false⟩,793⟩,⟨⟨775,false⟩,803⟩,⟨⟨776,false⟩,810⟩,⟨⟨777,false⟩,799⟩]⟩

private def s2Step169EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step169EarlyControlZeroArena,s2Step169EarlyControlZeroPlan,s2Step169EarlyControlClassPlan,s2Step169EarlyControlFlagArena,s2Step169EarlyControlFittedArena,s2Step169EarlyControlHistoryArena,s2Step169EarlyControlSigmaArena,s2Step169EarlyControlOutputArena,s2Step169EarlyControlLog⟩

private def s2Step169CounterWork : List Wire := [799, 847, 867, 877]

private theorem s2Step169Counter_bounded : s2Step169CounterWork.toFinset⊆arenaWires := by norm_num [s2Step169CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step169HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169CounterDuring : Arena := ⟨s2Step169HeadFvAfter.live∪s2Step169CounterWork.toFinset,Finset.union_subset s2Step169HeadFvAfter.bounded s2Step169Counter_bounded⟩

private def s2Step169EntryFFresh : List Wire := []

private def s2Step169EntryFvFresh : List Wire := [812]

private def s2Step169EntryGFresh : List Wire := []

private def s2Step169EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169EntryGvAfter : Arena := s2Step169EntryFvAfter

private def s2Step169EntryGvFresh : List Wire := []

private def s2Step169ExitFExtra : List Wire := [803]

private def s2Step169ExitFvExtra : List Wire := [793]

private def s2Step169ExitGExtra : List Wire := [810]

private def s2Step169ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169ExitGvExtra : List Wire := [785]

private def s2Step169Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169Add0Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step169Add0_bounded : s2Step169Add0Work.toFinset⊆arenaWires := by
  have h : s2Step169Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step169Add0During : Arena := ⟨s2Step169Add0Arena.live∪s2Step169Add0Work.toFinset,Finset.union_subset s2Step169Add0Arena.bounded s2Step169Add0_bounded⟩

private def s2Step169Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169Add1Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step169Add1_bounded : s2Step169Add1Work.toFinset⊆arenaWires := by
  have h : s2Step169Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step169Add1During : Arena := ⟨s2Step169Add1Arena.live∪s2Step169Add1Work.toFinset,Finset.union_subset s2Step169Add1Arena.bounded s2Step169Add1_bounded⟩

private def s2Step169F4FlagArena : Arena := ⟨s2Step169HeadFvAfter.live∪{799},Finset.union_subset s2Step169HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step169F4Plan : HmrHybridF4Plan := ⟨s2Step169F4FlagArena,[799],s2Step169Add0Arena,[847],s2Step169Add0During,s2Step169Add0Work,s2Step169Add1During,s2Step169Add1Work⟩

private def s2Step169HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 803],768⟩

private def s2Step169HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 793],770⟩

private def s2Step169HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 810],769⟩

private def s2Step169HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 785],771⟩

private def s2Step169FrontHead : WindowBank := ⟨s2Step169HeadFOut,s2Step169HeadGOut,s2Step169HeadFvOut,s2Step169HeadGvOut⟩

private def s2Step169EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩

private def s2Step169EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812],770⟩

private def s2Step169EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],769⟩

private def s2Step169EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩

private def s2Step169FrontPair : WindowBank := ⟨s2Step169EntryFOut,s2Step169EntryGOut,s2Step169EntryFvOut,s2Step169EntryGvOut⟩

private def s2Step169FrontSigmaArena : Arena := ⟨s2Step169EntryGvAfter.live∪{787},Finset.union_subset s2Step169EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step169HeadFFresh : List Wire := [803]

private def s2Step169HeadFvFresh : List Wire := [793]

private def s2Step169HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169HeadGFresh : List Wire := [810]

private def s2Step169HeadGvFresh : List Wire := [785]

private def s2Step169FrontPlan : HmrSourceFront := ⟨s2Step169EntryGvAfter,s2Step169FrontPair,(growRow 768 s2Step169EntryFFresh ++ (growRow 769 s2Step169EntryGFresh ++ (growRow 770 s2Step169EntryFvFresh ++ (growRow 771 s2Step169EntryGvFresh ++ [])))),s2Step169FrontSigmaArena,[787],s2Step169HeadGBefore,[820],
  s2Step169HeadFvAfter,s2Step169FrontHead,(growRow 769 s2Step169HeadGFresh ++ (growRow 768 s2Step169HeadFFresh ++ (growRow 771 s2Step169HeadGvFresh ++ (growRow 770 s2Step169HeadFvFresh ++ [])))),s2Step169F4Plan,s2Step169CounterDuring,s2Step169CounterWork,s2Step169ExitGvAfter,s2Step169FrontOut,(shrinkRow 769 s2Step169ExitGExtra ++ (shrinkRow 768 s2Step169ExitFExtra ++ (shrinkRow 770 s2Step169ExitFvExtra ++ (shrinkRow 771 s2Step169ExitGvExtra ++ []))))⟩

private def s2Step169CompletePlan : HmrEarlyStepPlan := ⟨s2Step169FrontPlan,s2Step169EarlyControlArena,s2Step169EarlyControlPlan,s2Step169CompleteMoves⟩

private theorem s2Step169Complete_apart : List.Disjoint (s2Step169CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [787, 820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step169CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[787, 820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step169Complete_owned : (s2Step169CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step169EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step169EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169Complete_repack : s2Step169ExitGvAfter.checkRepack s2Step169CompleteMoves=some s2Step169EarlyControlArena := by rfl

private theorem s2Step169EarlyControl_branchOwned : ([820] : List Wire).toFinset⊆s2Step169EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step169EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169EarlyControl_branch : compileHmrBranchRetirement s2Step169EarlyControlSigmaArena 820=some s2Step169EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step169EarlyControl_branchOwned
  · ext q
    simp [s2Step169EarlyControlOutputArena,s2Step169EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step169EarlyControl_classEqualityBorrow : s2Step169EarlyControlPositiveArena.checkBorrow (([787, 847] : List Wire).length-1) s2Step169EarlyControlLog.classWork=some s2Step169EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step169EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step169EarlyControlPositiveArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step169EarlyControlEqualityArena,s2Step169EarlyControlPositiveArena,s2Step169EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step169EarlyControl_classEqualityOwned : ([787, 847] : List Wire).toFinset⊆s2Step169EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step169EarlyControlPositiveArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169EarlyControl_classEquality : compileHmrEqualityLog s2Step169EarlyControlPositiveArena [787, 847] 0 s2Step169EarlyControlLog.classWork=some (s2Step169EarlyControlEqualityArena,s2Step169EarlyControlLog.classWork,s2Step169EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step169EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step169EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step169EarlyControl_classOwned : ([777, 799, 787] : List Wire).toFinset⊆s2Step169EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step169EarlyControlZeroArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169EarlyControl_positiveBorrow : s2Step169EarlyControlZeroArena.checkBorrow (1) s2Step169EarlyControlLog.positiveWork=some s2Step169EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step169EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step169EarlyControlZeroArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step169EarlyControlPositiveArena,s2Step169EarlyControlZeroArena,s2Step169EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step169EarlyControl_class : compileHmrSourceClassLog s2Step169EarlyControlZeroArena false 777 s2Step169EarlyControlZeroPlan.top 0 787 s2Step169EarlyControlLog.positiveWork s2Step169EarlyControlLog.classWork=some s2Step169EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step169EarlyControlClassPlan s2Step169EarlyControlZeroArena false 777 s2Step169EarlyControlZeroPlan.top 0 787
  constructor
  · decide +kernel
  · exact s2Step169EarlyControl_classOwned
  · exact s2Step169EarlyControl_positiveBorrow
  · exact s2Step169EarlyControl_classEquality

private theorem s2Step169EarlyControl_entryRecordOwned : ([820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step169EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step169EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169EarlyControl_entrySigmaOwned : ([787, 254] : List Wire).toFinset⊆s2Step169EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step169EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169EarlyControl_fitBorrow : s2Step169EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step169EarlyControlLog.recordFresh=some s2Step169EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step169EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step169EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
      decide +kernel
    · ext q
      simp [s2Step169EarlyControlFittedArena,s2Step169EarlyControlFlagArena,s2Step169EarlyControlLog,arenaWires]

private theorem s2Step169EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step169EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step169EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step169EarlyControl_fit : compileHmrRecordGrowLog s2Step169EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step169EarlyControlLog.recordFresh=some s2Step169EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step169EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step169EarlyControl_fitBorrow

private theorem s2Step169EarlyControl_flagsBorrow : s2Step169EarlyControlEqualityArena.checkBorrow (6) s2Step169EarlyControlLog.flagWork=some s2Step169EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step169EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step169EarlyControlEqualityArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step169EarlyControlFlagArena,s2Step169EarlyControlEqualityArena,s2Step169EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step169EarlyControl_flagsOwned : ([867, 253, 252, 251] : List Wire).toFinset⊆s2Step169EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step169EarlyControlEqualityArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169EarlyControl_flags : compileHmrFlagsLog s2Step169EarlyControlClassPlan.equalityArena s2Step169EarlyControlClassPlan.equality.top 253 252 251 s2Step169EarlyControlLog.flagWork=some s2Step169EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step169EarlyControl_flagsOwned⟩
  · exact s2Step169EarlyControl_flagsBorrow

private theorem s2Step169EarlyControl_historyBorrow : s2Step169EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step169EarlyControlLog.recordFresh=some s2Step169EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step169EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step169EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step169EarlyControlHistoryArena,s2Step169EarlyControlArena,s2Step169EarlyControlLog,arenaWires]

private theorem s2Step169EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step169EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step169EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169EarlyControl_history : compileHmrRecordGrowLog s2Step169EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step169EarlyControlLog.recordFresh=some s2Step169EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step169EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step169EarlyControl_historyBorrow

private theorem s2Step169EarlyControl_sigmaOwned : ([254, 787] : List Wire).toFinset⊆s2Step169EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step169EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169EarlyControl_sigmaReleaseOwned : ([787] : List Wire).toFinset⊆s2Step169EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step169EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169EarlyControl_sigmaRelease : s2Step169EarlyControlHistoryArena.release {787} (fun _ => false)=some s2Step169EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step169EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step169EarlyControlSigmaArena,s2Step169EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step169EarlyControl_sigma : compileHmrSigmaDropLog s2Step169EarlyControlHistoryArena false 0 0 254 787 []=some s2Step169EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step169EarlyControl_sigmaOwned⟩
  · exact s2Step169EarlyControl_sigmaRelease

private theorem s2Step169EarlyControl_zeroBorrow : s2Step169EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step169EarlyControlLog.zeroWork=some s2Step169EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step169EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step169EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step169EarlyControlZeroArena,s2Step169EarlyControlArena,s2Step169EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step169EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step169EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step169EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169EarlyControl_zero : compileHmrEqualityLog s2Step169EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step169EarlyControlLog.zeroWork=some (s2Step169EarlyControlZeroArena,s2Step169EarlyControlLog.zeroWork,s2Step169EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step169EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step169EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step169EarlyControl_logged : s2Step169EarlyControlPlan.Logged s2Step169EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 787 254 253 252 251 820 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step169EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step169EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step169EarlyControl_zero
  · exact s2Step169EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step169EarlyControl_flags
  · exact s2Step169EarlyControl_fit
  · exact s2Step169EarlyControl_history
  · exact s2Step169EarlyControl_sigma
  · exact s2Step169EarlyControl_branch

private theorem s2Step169EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step169EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 787 254 253 252 251 820 42 s2Step169EarlyControlLog=some s2Step169EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step169EarlyControlPlan s2Step169EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 787 254 253 252 251 820 42 s2Step169EarlyControl_logged

private def s2Step169EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩

private def s2Step169EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780],770⟩

private def s2Step169EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],769⟩

private def s2Step169EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩

private def s2Step169FrontBank : WindowBank := ⟨s2Step169EntryFRow,s2Step169EntryGRow,s2Step169EntryFvRow,s2Step169EntryGvRow⟩

private def s2Step169Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 803, 768]

private def s2Step169Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 810, 769]

private def s2Step169Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 793, 770]

private def s2Step169Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 785, 771]

private theorem s2Step169Counter_apart : Disjoint s2Step169HeadFvAfter.live s2Step169CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step169HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169Counter_borrowed : s2Step169HeadFvAfter.checkBorrow 4 s2Step169CounterWork=some s2Step169CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step169HeadFvAfter s2Step169CounterDuring s2Step169CounterWork.toFinset s2Step169Counter_bounded s2Step169Counter_apart rfl

private theorem s2Step169Counter_owned : (787::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step169HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step169HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169Counter_checked : compileHmrCounterStepLog s2Step169HeadFvAfter true 787 [772, 773, 774, 775, 776, 777] s2Step169CounterWork=some s2Step169CounterDuring := by
  have owned : ∀q∈787::[772, 773, 774, 775, 776, 777],q∈s2Step169HeadFvAfter.live := fun q hq => s2Step169Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step169Counter_borrowed

private def s2Step169EntryFAfter : Arena := s2Step169EntryFBefore

private theorem s2Step169EntryBank_incomingDistinct : ([s2Step169EntryFRow,s2Step169EntryGRow,s2Step169EntryFvRow,s2Step169EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169EntryF_Incoming : rowsOwned s2Step169EntryFBefore [s2Step169EntryFRow,s2Step169EntryGRow,s2Step169EntryFvRow,s2Step169EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step169EntryFRow,s2Step169EntryGRow,s2Step169EntryFvRow,s2Step169EntryGvRow] 0 s2Step169EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step169EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step169EntryBank_outgoingOwned : rowsOwned s2Step169EntryGvAfter [s2Step169EntryFOut,s2Step169EntryGOut,s2Step169EntryFvOut,s2Step169EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step169EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step169EntryF_Outgoing : rowsOwned s2Step169EntryGvAfter [s2Step169EntryFOut,s2Step169EntryGOut,s2Step169EntryFvOut,s2Step169EntryGvOut] :=
  hmrRows_owned_drop s2Step169EntryGvAfter [s2Step169EntryFOut,s2Step169EntryGOut,s2Step169EntryFvOut,s2Step169EntryGvOut] 0 s2Step169EntryBank_outgoingOwned

private theorem s2Step169EntryF_distinct : (s2Step169EntryFRow.sign::s2Step169EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169EntryF_owned : (s2Step169EntryFRow.sign::s2Step169EntryFRow.payload).toFinset⊆s2Step169EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step169EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169EntryF_reserved : s2Step169EntryFBefore.reserve s2Step169EntryFFresh.toFinset=some s2Step169EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step169EntryFFresh,arenaWires]
  · norm_num [s2Step169EntryFBefore,s2Step169EntryFFresh,arenaWires]
  · simp only [s2Step169EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step169EntryF_checked : planRowResizeLog s2Step169EntryFBefore s2Step169EntryFRow 185 s2Step169EntryFFresh=
    some (s2Step169EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩,growRow 768 s2Step169EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step169EntryFBefore s2Step169EntryFAfter s2Step169EntryFRow 185 s2Step169EntryFFresh
    s2Step169EntryF_distinct s2Step169EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step169EntryF_reserved
  have rowEq : WindowRow.mk (s2Step169EntryFRow.payload++s2Step169EntryFFresh) s2Step169EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step169EntryFvBefore : Arena := s2Step169EntryFBefore

private theorem s2Step169EntryFv_Incoming : rowsOwned s2Step169EntryFvBefore [s2Step169EntryFvRow,s2Step169EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step169EntryFRow,s2Step169EntryGRow,s2Step169EntryFvRow,s2Step169EntryGvRow] 2 s2Step169EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step169EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step169EntryFv_Outgoing : rowsOwned s2Step169EntryGvAfter [s2Step169EntryFvOut,s2Step169EntryGvOut] :=
  hmrRows_owned_drop s2Step169EntryGvAfter [s2Step169EntryFOut,s2Step169EntryGOut,s2Step169EntryFvOut,s2Step169EntryGvOut] 2 s2Step169EntryBank_outgoingOwned

private theorem s2Step169EntryFv_distinct : (s2Step169EntryFvRow.sign::s2Step169EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169EntryFv_owned : (s2Step169EntryFvRow.sign::s2Step169EntryFvRow.payload).toFinset⊆s2Step169EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step169EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169EntryFv_reserved : s2Step169EntryFvBefore.reserve s2Step169EntryFvFresh.toFinset=some s2Step169EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step169EntryFvFresh,arenaWires]
  · norm_num [s2Step169EntryFvBefore,s2Step169EntryFBefore,s2Step169EntryFvFresh,arenaWires]
  · ext q
    simp only [s2Step169EntryFvAfter,s2Step169EntryFvBefore,s2Step169EntryFBefore,s2Step169EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step169EntryFv_checked : planRowResizeLog s2Step169EntryFvBefore s2Step169EntryFvRow 99 s2Step169EntryFvFresh=
    some (s2Step169EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812],770⟩,growRow 770 s2Step169EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step169EntryFvBefore s2Step169EntryFvAfter s2Step169EntryFvRow 99 s2Step169EntryFvFresh
    s2Step169EntryFv_distinct s2Step169EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step169EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step169EntryFvRow.payload++s2Step169EntryFvFresh) s2Step169EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step169EntryGAfter : Arena := s2Step169EntryFBefore

private def s2Step169EntryGBefore : Arena := s2Step169EntryFBefore

private theorem s2Step169EntryG_Incoming : rowsOwned s2Step169EntryGBefore [s2Step169EntryGRow,s2Step169EntryFvRow,s2Step169EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step169EntryFRow,s2Step169EntryGRow,s2Step169EntryFvRow,s2Step169EntryGvRow] 1 s2Step169EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step169EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step169EntryG_Outgoing : rowsOwned s2Step169EntryGvAfter [s2Step169EntryGOut,s2Step169EntryFvOut,s2Step169EntryGvOut] :=
  hmrRows_owned_drop s2Step169EntryGvAfter [s2Step169EntryFOut,s2Step169EntryGOut,s2Step169EntryFvOut,s2Step169EntryGvOut] 1 s2Step169EntryBank_outgoingOwned

private theorem s2Step169EntryG_distinct : (s2Step169EntryGRow.sign::s2Step169EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169EntryG_owned : (s2Step169EntryGRow.sign::s2Step169EntryGRow.payload).toFinset⊆s2Step169EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step169EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169EntryG_reserved : s2Step169EntryGBefore.reserve s2Step169EntryGFresh.toFinset=some s2Step169EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step169EntryGFresh,arenaWires]
  · norm_num [s2Step169EntryGBefore,s2Step169EntryFBefore,s2Step169EntryGFresh,arenaWires]
  · simp only [s2Step169EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step169EntryG_checked : planRowResizeLog s2Step169EntryGBefore s2Step169EntryGRow 185 s2Step169EntryGFresh=
    some (s2Step169EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],769⟩,growRow 769 s2Step169EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step169EntryGBefore s2Step169EntryGAfter s2Step169EntryGRow 185 s2Step169EntryGFresh
    s2Step169EntryG_distinct s2Step169EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step169EntryG_reserved
  have rowEq : WindowRow.mk (s2Step169EntryGRow.payload++s2Step169EntryGFresh) s2Step169EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step169EntryGvBefore : Arena := s2Step169EntryFvAfter

private theorem s2Step169EntryGv_Incoming : rowsOwned s2Step169EntryGvBefore [s2Step169EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step169EntryFRow,s2Step169EntryGRow,s2Step169EntryFvRow,s2Step169EntryGvRow] 3 s2Step169EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step169EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step169EntryGv_Outgoing : rowsOwned s2Step169EntryGvAfter [s2Step169EntryGvOut] :=
  hmrRows_owned_drop s2Step169EntryGvAfter [s2Step169EntryFOut,s2Step169EntryGOut,s2Step169EntryFvOut,s2Step169EntryGvOut] 3 s2Step169EntryBank_outgoingOwned

private theorem s2Step169EntryGv_distinct : (s2Step169EntryGvRow.sign::s2Step169EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169EntryGv_owned : (s2Step169EntryGvRow.sign::s2Step169EntryGvRow.payload).toFinset⊆s2Step169EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step169EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169EntryGv_reserved : s2Step169EntryGvBefore.reserve s2Step169EntryGvFresh.toFinset=some s2Step169EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step169EntryGvFresh,arenaWires]
  · norm_num [s2Step169EntryGvBefore,s2Step169EntryFvAfter,s2Step169EntryGvFresh,arenaWires]
  · simp only [s2Step169EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step169EntryGv_checked : planRowResizeLog s2Step169EntryGvBefore s2Step169EntryGvRow 99 s2Step169EntryGvFresh=
    some (s2Step169EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩,growRow 771 s2Step169EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step169EntryGvBefore s2Step169EntryGvAfter s2Step169EntryGvRow 99 s2Step169EntryGvFresh
    s2Step169EntryGv_distinct s2Step169EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step169EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step169EntryGvRow.payload++s2Step169EntryGvFresh) s2Step169EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step169EntryBank_rows : planWindowRowsLog s2Step169EntryFBefore [(s2Step169EntryFRow,185),(s2Step169EntryGRow,185),(s2Step169EntryFvRow,99),(s2Step169EntryGvRow,99)] [s2Step169EntryFFresh,s2Step169EntryGFresh,s2Step169EntryFvFresh,s2Step169EntryGvFresh]=
    some (s2Step169EntryGvAfter,[s2Step169EntryFOut,s2Step169EntryGOut,s2Step169EntryFvOut,s2Step169EntryGvOut],(growRow 768 s2Step169EntryFFresh ++ (growRow 769 s2Step169EntryGFresh ++ (growRow 770 s2Step169EntryFvFresh ++ (growRow 771 s2Step169EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step169EntryGvAfter [] []=some (s2Step169EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step169EntryGvBefore s2Step169EntryGvAfter s2Step169EntryGvAfter
    s2Step169EntryGvRow s2Step169EntryGvOut 99 s2Step169EntryGvFresh [] [] []
    (growRow 771 s2Step169EntryGvFresh) ([]) s2Step169EntryGv_Incoming s2Step169EntryGv_checked h4 s2Step169EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step169EntryFvBefore s2Step169EntryFvAfter s2Step169EntryGvAfter
    s2Step169EntryFvRow s2Step169EntryFvOut 99 s2Step169EntryFvFresh [(s2Step169EntryGvRow,99)] [s2Step169EntryGvFresh] [s2Step169EntryGvOut]
    (growRow 770 s2Step169EntryFvFresh) ((growRow 771 s2Step169EntryGvFresh ++ [])) s2Step169EntryFv_Incoming s2Step169EntryFv_checked h3 s2Step169EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step169EntryGBefore s2Step169EntryGAfter s2Step169EntryGvAfter
    s2Step169EntryGRow s2Step169EntryGOut 185 s2Step169EntryGFresh [(s2Step169EntryFvRow,99),(s2Step169EntryGvRow,99)] [s2Step169EntryFvFresh,s2Step169EntryGvFresh] [s2Step169EntryFvOut,s2Step169EntryGvOut]
    (growRow 769 s2Step169EntryGFresh) ((growRow 770 s2Step169EntryFvFresh ++ (growRow 771 s2Step169EntryGvFresh ++ []))) s2Step169EntryG_Incoming s2Step169EntryG_checked h2 s2Step169EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step169EntryFBefore s2Step169EntryFAfter s2Step169EntryGvAfter
    s2Step169EntryFRow s2Step169EntryFOut 185 s2Step169EntryFFresh [(s2Step169EntryGRow,185),(s2Step169EntryFvRow,99),(s2Step169EntryGvRow,99)] [s2Step169EntryGFresh,s2Step169EntryFvFresh,s2Step169EntryGvFresh] [s2Step169EntryGOut,s2Step169EntryFvOut,s2Step169EntryGvOut]
    (growRow 768 s2Step169EntryFFresh) ((growRow 769 s2Step169EntryGFresh ++ (growRow 770 s2Step169EntryFvFresh ++ (growRow 771 s2Step169EntryGvFresh ++ [])))) s2Step169EntryF_Incoming s2Step169EntryF_checked h1 s2Step169EntryF_Outgoing
  exact h0

private theorem s2Step169EntryBank_checked : compileHmrBankResizeLog .entry s2Step169EntryFBefore ⟨s2Step169EntryFRow,s2Step169EntryGRow,s2Step169EntryFvRow,s2Step169EntryGvRow⟩ ⟨185,185,99,99⟩ [s2Step169EntryFFresh,s2Step169EntryGFresh,s2Step169EntryFvFresh,s2Step169EntryGvFresh]=
    some (s2Step169EntryGvAfter,⟨s2Step169EntryFOut,s2Step169EntryGOut,s2Step169EntryFvOut,s2Step169EntryGvOut⟩,(growRow 768 s2Step169EntryFFresh ++ (growRow 769 s2Step169EntryGFresh ++ (growRow 770 s2Step169EntryFvFresh ++ (growRow 771 s2Step169EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step169EntryBank_rows]
  rfl

private def s2Step169ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169ExitFBefore : Arena := s2Step169ExitGAfter

private def s2Step169ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 803],768⟩

private def s2Step169ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 793],770⟩

private def s2Step169ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 810],769⟩

private def s2Step169ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 785],771⟩

private theorem s2Step169ExitBank_incomingDistinct : ([s2Step169ExitGRow,s2Step169ExitFRow,s2Step169ExitFvRow,s2Step169ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169ExitF_Incoming : rowsOwned s2Step169ExitFBefore [s2Step169ExitFRow,s2Step169ExitFvRow,s2Step169ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step169ExitGRow,s2Step169ExitFRow,s2Step169ExitFvRow,s2Step169ExitGvRow] 1 s2Step169ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step169ExitFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step169ExitBank_outgoingOwned : rowsOwned s2Step169ExitGvAfter [s2Step169ExitGOut,s2Step169ExitFOut,s2Step169ExitFvOut,s2Step169ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step169ExitGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step169ExitF_Outgoing : rowsOwned s2Step169ExitGvAfter [s2Step169ExitFOut,s2Step169ExitFvOut,s2Step169ExitGvOut] :=
  hmrRows_owned_drop s2Step169ExitGvAfter [s2Step169ExitGOut,s2Step169ExitFOut,s2Step169ExitFvOut,s2Step169ExitGvOut] 1 s2Step169ExitBank_outgoingOwned

private theorem s2Step169ExitF_distinct : (s2Step169ExitFRow.sign::s2Step169ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169ExitF_owned : (s2Step169ExitFRow.sign::s2Step169ExitFRow.payload).toFinset⊆s2Step169ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step169ExitFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169ExitF_retired : s2Step169ExitFBefore.retireSet s2Step169ExitFExtra.toFinset=s2Step169ExitFAfter := by
  unfold Arena.retireSet s2Step169ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step169ExitFBefore,s2Step169ExitGAfter,s2Step169ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step169ExitF_checked : planRowResizeLog s2Step169ExitFBefore s2Step169ExitFRow 185 []=
    some (s2Step169ExitFAfter,s2Step169ExitFOut,shrinkRow 768 s2Step169ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step169ExitFBefore s2Step169ExitFRow 185 s2Step169ExitF_distinct s2Step169ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step169ExitFRow.payload.take 185) s2Step169ExitFRow.sign=s2Step169ExitFOut := by decide +kernel
  have hi : s2Step169ExitFRow.payload.drop 185=s2Step169ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step169ExitF_retired] at result
  exact result

private def s2Step169ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169ExitFvBefore : Arena := s2Step169ExitFAfter

private theorem s2Step169ExitFv_Incoming : rowsOwned s2Step169ExitFvBefore [s2Step169ExitFvRow,s2Step169ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step169ExitGRow,s2Step169ExitFRow,s2Step169ExitFvRow,s2Step169ExitGvRow] 2 s2Step169ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step169ExitFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step169ExitFv_Outgoing : rowsOwned s2Step169ExitGvAfter [s2Step169ExitFvOut,s2Step169ExitGvOut] :=
  hmrRows_owned_drop s2Step169ExitGvAfter [s2Step169ExitGOut,s2Step169ExitFOut,s2Step169ExitFvOut,s2Step169ExitGvOut] 2 s2Step169ExitBank_outgoingOwned

private theorem s2Step169ExitFv_distinct : (s2Step169ExitFvRow.sign::s2Step169ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169ExitFv_owned : (s2Step169ExitFvRow.sign::s2Step169ExitFvRow.payload).toFinset⊆s2Step169ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step169ExitFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169ExitFv_retired : s2Step169ExitFvBefore.retireSet s2Step169ExitFvExtra.toFinset=s2Step169ExitFvAfter := by
  unfold Arena.retireSet s2Step169ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step169ExitFvBefore,s2Step169ExitFAfter,s2Step169ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step169ExitFv_checked : planRowResizeLog s2Step169ExitFvBefore s2Step169ExitFvRow 99 []=
    some (s2Step169ExitFvAfter,s2Step169ExitFvOut,shrinkRow 770 s2Step169ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step169ExitFvBefore s2Step169ExitFvRow 99 s2Step169ExitFv_distinct s2Step169ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step169ExitFvRow.payload.take 99) s2Step169ExitFvRow.sign=s2Step169ExitFvOut := by decide +kernel
  have hi : s2Step169ExitFvRow.payload.drop 99=s2Step169ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step169ExitFv_retired] at result
  exact result

private def s2Step169ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step169ExitG_Incoming : rowsOwned s2Step169ExitGBefore [s2Step169ExitGRow,s2Step169ExitFRow,s2Step169ExitFvRow,s2Step169ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step169ExitGRow,s2Step169ExitFRow,s2Step169ExitFvRow,s2Step169ExitGvRow] 0 s2Step169ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step169ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step169ExitG_Outgoing : rowsOwned s2Step169ExitGvAfter [s2Step169ExitGOut,s2Step169ExitFOut,s2Step169ExitFvOut,s2Step169ExitGvOut] :=
  hmrRows_owned_drop s2Step169ExitGvAfter [s2Step169ExitGOut,s2Step169ExitFOut,s2Step169ExitFvOut,s2Step169ExitGvOut] 0 s2Step169ExitBank_outgoingOwned

private theorem s2Step169ExitG_distinct : (s2Step169ExitGRow.sign::s2Step169ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169ExitG_owned : (s2Step169ExitGRow.sign::s2Step169ExitGRow.payload).toFinset⊆s2Step169ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step169ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169ExitG_retired : s2Step169ExitGBefore.retireSet s2Step169ExitGExtra.toFinset=s2Step169ExitGAfter := by
  unfold Arena.retireSet s2Step169ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step169ExitGBefore,s2Step169ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step169ExitG_checked : planRowResizeLog s2Step169ExitGBefore s2Step169ExitGRow 185 []=
    some (s2Step169ExitGAfter,s2Step169ExitGOut,shrinkRow 769 s2Step169ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step169ExitGBefore s2Step169ExitGRow 185 s2Step169ExitG_distinct s2Step169ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step169ExitGRow.payload.take 185) s2Step169ExitGRow.sign=s2Step169ExitGOut := by decide +kernel
  have hi : s2Step169ExitGRow.payload.drop 185=s2Step169ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step169ExitG_retired] at result
  exact result

private def s2Step169ExitGvBefore : Arena := s2Step169ExitFvAfter

private theorem s2Step169ExitGv_Incoming : rowsOwned s2Step169ExitGvBefore [s2Step169ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step169ExitGRow,s2Step169ExitFRow,s2Step169ExitFvRow,s2Step169ExitGvRow] 3 s2Step169ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step169ExitGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step169ExitGv_Outgoing : rowsOwned s2Step169ExitGvAfter [s2Step169ExitGvOut] :=
  hmrRows_owned_drop s2Step169ExitGvAfter [s2Step169ExitGOut,s2Step169ExitFOut,s2Step169ExitFvOut,s2Step169ExitGvOut] 3 s2Step169ExitBank_outgoingOwned

private theorem s2Step169ExitGv_distinct : (s2Step169ExitGvRow.sign::s2Step169ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169ExitGv_owned : (s2Step169ExitGvRow.sign::s2Step169ExitGvRow.payload).toFinset⊆s2Step169ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step169ExitGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169ExitGv_retired : s2Step169ExitGvBefore.retireSet s2Step169ExitGvExtra.toFinset=s2Step169ExitGvAfter := by
  unfold Arena.retireSet s2Step169ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step169ExitGvBefore,s2Step169ExitFvAfter,s2Step169ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step169ExitGv_checked : planRowResizeLog s2Step169ExitGvBefore s2Step169ExitGvRow 99 []=
    some (s2Step169ExitGvAfter,s2Step169ExitGvOut,shrinkRow 771 s2Step169ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step169ExitGvBefore s2Step169ExitGvRow 99 s2Step169ExitGv_distinct s2Step169ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step169ExitGvRow.payload.take 99) s2Step169ExitGvRow.sign=s2Step169ExitGvOut := by decide +kernel
  have hi : s2Step169ExitGvRow.payload.drop 99=s2Step169ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step169ExitGv_retired] at result
  exact result

private theorem s2Step169ExitBank_rows : planWindowRowsLog s2Step169ExitGBefore [(s2Step169ExitGRow,185),(s2Step169ExitFRow,185),(s2Step169ExitFvRow,99),(s2Step169ExitGvRow,99)] [[],[],[],[]]=
    some (s2Step169ExitGvAfter,[s2Step169ExitGOut,s2Step169ExitFOut,s2Step169ExitFvOut,s2Step169ExitGvOut],(shrinkRow 769 s2Step169ExitGExtra ++ (shrinkRow 768 s2Step169ExitFExtra ++ (shrinkRow 770 s2Step169ExitFvExtra ++ (shrinkRow 771 s2Step169ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step169ExitGvAfter [] []=some (s2Step169ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step169ExitGvBefore s2Step169ExitGvAfter s2Step169ExitGvAfter
    s2Step169ExitGvRow s2Step169ExitGvOut 99 [] [] [] []
    (shrinkRow 771 s2Step169ExitGvExtra) ([]) s2Step169ExitGv_Incoming s2Step169ExitGv_checked h4 s2Step169ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step169ExitFvBefore s2Step169ExitFvAfter s2Step169ExitGvAfter
    s2Step169ExitFvRow s2Step169ExitFvOut 99 [] [(s2Step169ExitGvRow,99)] [[]] [s2Step169ExitGvOut]
    (shrinkRow 770 s2Step169ExitFvExtra) ((shrinkRow 771 s2Step169ExitGvExtra ++ [])) s2Step169ExitFv_Incoming s2Step169ExitFv_checked h3 s2Step169ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step169ExitFBefore s2Step169ExitFAfter s2Step169ExitGvAfter
    s2Step169ExitFRow s2Step169ExitFOut 185 [] [(s2Step169ExitFvRow,99),(s2Step169ExitGvRow,99)] [[],[]] [s2Step169ExitFvOut,s2Step169ExitGvOut]
    (shrinkRow 768 s2Step169ExitFExtra) ((shrinkRow 770 s2Step169ExitFvExtra ++ (shrinkRow 771 s2Step169ExitGvExtra ++ []))) s2Step169ExitF_Incoming s2Step169ExitF_checked h2 s2Step169ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step169ExitGBefore s2Step169ExitGAfter s2Step169ExitGvAfter
    s2Step169ExitGRow s2Step169ExitGOut 185 [] [(s2Step169ExitFRow,185),(s2Step169ExitFvRow,99),(s2Step169ExitGvRow,99)] [[],[],[]] [s2Step169ExitFOut,s2Step169ExitFvOut,s2Step169ExitGvOut]
    (shrinkRow 769 s2Step169ExitGExtra) ((shrinkRow 768 s2Step169ExitFExtra ++ (shrinkRow 770 s2Step169ExitFvExtra ++ (shrinkRow 771 s2Step169ExitGvExtra ++ [])))) s2Step169ExitG_Incoming s2Step169ExitG_checked h1 s2Step169ExitG_Outgoing
  exact h0

private theorem s2Step169ExitBank_checked : compileHmrBankResizeLog .exit s2Step169ExitGBefore ⟨s2Step169ExitFRow,s2Step169ExitGRow,s2Step169ExitFvRow,s2Step169ExitGvRow⟩ ⟨185,185,99,99⟩ [[],[],[],[]]=
    some (s2Step169ExitGvAfter,⟨s2Step169ExitFOut,s2Step169ExitGOut,s2Step169ExitFvOut,s2Step169ExitGvOut⟩,(shrinkRow 769 s2Step169ExitGExtra ++ (shrinkRow 768 s2Step169ExitFExtra ++ (shrinkRow 770 s2Step169ExitFvExtra ++ (shrinkRow 771 s2Step169ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step169ExitBank_rows]
  rfl

private theorem s2Step169Add0_apart : Disjoint s2Step169Add0Arena.live s2Step169Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step169Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169Add0_card : s2Step169Add0Arena.live.card=884 := by
  decide +kernel

private theorem s2Step169Add0_borrowed : s2Step169Add0Arena.checkBorrow (hmrHybridCount s2Step169Add0Arena s2Step169Add0B.length) s2Step169Add0Work=some s2Step169Add0During := by
  have len : s2Step169Add0Work.length=hmrHybridCount s2Step169Add0Arena s2Step169Add0B.length := by
    rw [hmrHybridCount,s2Step169Add0_card]
    decide +kernel
  have nd : s2Step169Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step169Add0Arena s2Step169Add0During s2Step169Add0Work.toFinset s2Step169Add0_bounded s2Step169Add0_apart rfl

private theorem s2Step169Add0_distinct : (799::820::847::(s2Step169Add0A++s2Step169Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169Add0_owned : (799::820::847::(s2Step169Add0A++s2Step169Add0B)).toFinset⊆s2Step169Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step169Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169Add0_checked : compileHmrHybridCinLog s2Step169Add0Arena 820 799 847 s2Step169Add0A s2Step169Add0B s2Step169Add0Work=some s2Step169Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step169Add0Arena s2Step169Add0During 820 799 847 s2Step169Add0A s2Step169Add0B s2Step169Add0Work
    (by decide +kernel) (by decide +kernel) s2Step169Add0_distinct
    (fun q hq => s2Step169Add0_owned (List.mem_toFinset.mpr hq)) s2Step169Add0_borrowed

private theorem s2Step169Add1_apart : Disjoint s2Step169Add1Arena.live s2Step169Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step169Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169Add1_card : s2Step169Add1Arena.live.card=884 := by
  decide +kernel

private theorem s2Step169Add1_borrowed : s2Step169Add1Arena.checkBorrow (hmrHybridCount s2Step169Add1Arena s2Step169Add1B.length) s2Step169Add1Work=some s2Step169Add1During := by
  have len : s2Step169Add1Work.length=hmrHybridCount s2Step169Add1Arena s2Step169Add1B.length := by
    rw [hmrHybridCount,s2Step169Add1_card]
    decide +kernel
  have nd : s2Step169Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step169Add1Arena s2Step169Add1During s2Step169Add1Work.toFinset s2Step169Add1_bounded s2Step169Add1_apart rfl

private theorem s2Step169Add1_distinct : (799::820::847::(s2Step169Add1A++s2Step169Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169Add1_owned : (799::820::847::(s2Step169Add1A++s2Step169Add1B)).toFinset⊆s2Step169Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step169Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169Add1_checked : compileHmrHybridCinLog s2Step169Add1Arena 820 799 847 s2Step169Add1A s2Step169Add1B s2Step169Add1Work=some s2Step169Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step169Add1Arena s2Step169Add1During 820 799 847 s2Step169Add1A s2Step169Add1B s2Step169Add1Work
    (by decide +kernel) (by decide +kernel) s2Step169Add1_distinct
    (fun q hq => s2Step169Add1_owned (List.mem_toFinset.mpr hq)) s2Step169Add1_borrowed

private theorem s2Step169F4_apart : Disjoint (s2Step169Add0A++s2Step169Add0B).toFinset (s2Step169Add1A++s2Step169Add1B).toFinset := by
  have nd : ((s2Step169Add0A++s2Step169Add0B)++(s2Step169Add1A++s2Step169Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step169F4_carry : s2Step169F4FlagArena.checkBorrow 1 [847]=some s2Step169Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step169F4FlagArena,s2Step169HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step169F4FlagArena,s2Step169HeadFvAfter,s2Step169Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step169F4_distinct : (787::820::799::847::((s2Step169Add0A++s2Step169Add1A)++(s2Step169Add0B++s2Step169Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169F4_flag : s2Step169HeadFvAfter.checkBorrow 1 [799]=some s2Step169F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step169HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step169F4_owned : (787::820::((s2Step169Add0A++s2Step169Add1A)++(s2Step169Add0B++s2Step169Add1B))).toFinset⊆s2Step169HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step169HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169F4_checked : compileHmrHybridF4Log s2Step169HeadFvAfter 787 820 s2Step169Add0A s2Step169Add0B s2Step169Add1A s2Step169Add1B [799] [847] s2Step169Add0Work s2Step169Add1Work=some s2Step169F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step169HeadFvAfter s2Step169F4FlagArena s2Step169Add0Arena s2Step169Add0During s2Step169Add1During 787 820
    s2Step169Add0A s2Step169Add0B s2Step169Add1A s2Step169Add1B [799] [847] s2Step169Add0Work s2Step169Add1Work
    (fun q hq => s2Step169F4_owned (List.mem_toFinset.mpr hq)) s2Step169F4_flag s2Step169F4_carry
    s2Step169F4_distinct s2Step169F4_apart s2Step169Add0_checked s2Step169Add1_checked

private theorem s2Step169Front_branch : s2Step169FrontSigmaArena.checkBorrow 1 [820]=some s2Step169HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step169FrontSigmaArena,s2Step169EntryGvAfter,s2Step169EntryFvAfter,arenaWires]
  · ext q
    simp only [s2Step169FrontSigmaArena,s2Step169EntryGvAfter,s2Step169EntryFvAfter,s2Step169HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step169Front_entry : HmrFrontEntryValid s2Step169EntryFBefore s2Step169FrontBank 185 99 ⟨185,185,99,99⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step169FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step169EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step169EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<820) ∨ (821≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step169FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step169Front_sigma : s2Step169EntryGvAfter.checkBorrow 1 [787]=some s2Step169FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step169EntryGvAfter,s2Step169EntryFvAfter,arenaWires]
  · rfl

private def s2Step169HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169HeadFBefore : Arena := s2Step169HeadGAfter

private def s2Step169HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696],768⟩

private def s2Step169HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812],770⟩

private def s2Step169HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],769⟩

private def s2Step169HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800],771⟩

private theorem s2Step169HeadBank_incomingDistinct : ([s2Step169HeadGRow,s2Step169HeadFRow,s2Step169HeadGvRow,s2Step169HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169HeadF_Incoming : rowsOwned s2Step169HeadFBefore [s2Step169HeadFRow,s2Step169HeadGvRow,s2Step169HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step169HeadGRow,s2Step169HeadFRow,s2Step169HeadGvRow,s2Step169HeadFvRow] 1 s2Step169HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step169HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step169HeadBank_outgoingOwned : rowsOwned s2Step169HeadFvAfter [s2Step169HeadGOut,s2Step169HeadFOut,s2Step169HeadGvOut,s2Step169HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step169HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step169HeadF_Outgoing : rowsOwned s2Step169HeadFvAfter [s2Step169HeadFOut,s2Step169HeadGvOut,s2Step169HeadFvOut] :=
  hmrRows_owned_drop s2Step169HeadFvAfter [s2Step169HeadGOut,s2Step169HeadFOut,s2Step169HeadGvOut,s2Step169HeadFvOut] 1 s2Step169HeadBank_outgoingOwned

private theorem s2Step169HeadF_distinct : (s2Step169HeadFRow.sign::s2Step169HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169HeadF_owned : (s2Step169HeadFRow.sign::s2Step169HeadFRow.payload).toFinset⊆s2Step169HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step169HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169HeadF_reserved : s2Step169HeadFBefore.reserve s2Step169HeadFFresh.toFinset=some s2Step169HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step169HeadFFresh,arenaWires]
  · norm_num [s2Step169HeadFBefore,s2Step169HeadGAfter,s2Step169HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step169HeadFAfter,s2Step169HeadFBefore,s2Step169HeadGAfter,s2Step169HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step169HeadF_checked : planRowResizeLog s2Step169HeadFBefore s2Step169HeadFRow 186 s2Step169HeadFFresh=
    some (s2Step169HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 803],768⟩,growRow 768 s2Step169HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step169HeadFBefore s2Step169HeadFAfter s2Step169HeadFRow 186 s2Step169HeadFFresh
    s2Step169HeadF_distinct s2Step169HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step169HeadF_reserved
  have rowEq : WindowRow.mk (s2Step169HeadFRow.payload++s2Step169HeadFFresh) s2Step169HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 803],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step169HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step169HeadFvBefore : Arena := s2Step169HeadGvAfter

private theorem s2Step169HeadFv_Incoming : rowsOwned s2Step169HeadFvBefore [s2Step169HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step169HeadGRow,s2Step169HeadFRow,s2Step169HeadGvRow,s2Step169HeadFvRow] 3 s2Step169HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step169HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step169HeadFv_Outgoing : rowsOwned s2Step169HeadFvAfter [s2Step169HeadFvOut] :=
  hmrRows_owned_drop s2Step169HeadFvAfter [s2Step169HeadGOut,s2Step169HeadFOut,s2Step169HeadGvOut,s2Step169HeadFvOut] 3 s2Step169HeadBank_outgoingOwned

private theorem s2Step169HeadFv_distinct : (s2Step169HeadFvRow.sign::s2Step169HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169HeadFv_owned : (s2Step169HeadFvRow.sign::s2Step169HeadFvRow.payload).toFinset⊆s2Step169HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step169HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169HeadFv_reserved : s2Step169HeadFvBefore.reserve s2Step169HeadFvFresh.toFinset=some s2Step169HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step169HeadFvFresh,arenaWires]
  · norm_num [s2Step169HeadFvBefore,s2Step169HeadGvAfter,s2Step169HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step169HeadFvAfter,s2Step169HeadFvBefore,s2Step169HeadGvAfter,s2Step169HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step169HeadFv_checked : planRowResizeLog s2Step169HeadFvBefore s2Step169HeadFvRow 100 s2Step169HeadFvFresh=
    some (s2Step169HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 793],770⟩,growRow 770 s2Step169HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step169HeadFvBefore s2Step169HeadFvAfter s2Step169HeadFvRow 100 s2Step169HeadFvFresh
    s2Step169HeadFv_distinct s2Step169HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step169HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step169HeadFvRow.payload++s2Step169HeadFvFresh) s2Step169HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 793],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step169HeadG_Incoming : rowsOwned s2Step169HeadGBefore [s2Step169HeadGRow,s2Step169HeadFRow,s2Step169HeadGvRow,s2Step169HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step169HeadGRow,s2Step169HeadFRow,s2Step169HeadGvRow,s2Step169HeadFvRow] 0 s2Step169HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step169HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step169HeadG_Outgoing : rowsOwned s2Step169HeadFvAfter [s2Step169HeadGOut,s2Step169HeadFOut,s2Step169HeadGvOut,s2Step169HeadFvOut] :=
  hmrRows_owned_drop s2Step169HeadFvAfter [s2Step169HeadGOut,s2Step169HeadFOut,s2Step169HeadGvOut,s2Step169HeadFvOut] 0 s2Step169HeadBank_outgoingOwned

private theorem s2Step169HeadG_distinct : (s2Step169HeadGRow.sign::s2Step169HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169HeadG_owned : (s2Step169HeadGRow.sign::s2Step169HeadGRow.payload).toFinset⊆s2Step169HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step169HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (811≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169HeadG_reserved : s2Step169HeadGBefore.reserve s2Step169HeadGFresh.toFinset=some s2Step169HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step169HeadGFresh,arenaWires]
  · norm_num [s2Step169HeadGBefore,s2Step169HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step169HeadGAfter,s2Step169HeadGBefore,s2Step169HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step169HeadG_checked : planRowResizeLog s2Step169HeadGBefore s2Step169HeadGRow 186 s2Step169HeadGFresh=
    some (s2Step169HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 810],769⟩,growRow 769 s2Step169HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step169HeadGBefore s2Step169HeadGAfter s2Step169HeadGRow 186 s2Step169HeadGFresh
    s2Step169HeadG_distinct s2Step169HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step169HeadG_reserved
  have rowEq : WindowRow.mk (s2Step169HeadGRow.payload++s2Step169HeadGFresh) s2Step169HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 810],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step169HeadGvBefore : Arena := s2Step169HeadFAfter

private theorem s2Step169HeadGv_Incoming : rowsOwned s2Step169HeadGvBefore [s2Step169HeadGvRow,s2Step169HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step169HeadGRow,s2Step169HeadFRow,s2Step169HeadGvRow,s2Step169HeadFvRow] 2 s2Step169HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step169HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step169HeadGv_Outgoing : rowsOwned s2Step169HeadFvAfter [s2Step169HeadGvOut,s2Step169HeadFvOut] :=
  hmrRows_owned_drop s2Step169HeadFvAfter [s2Step169HeadGOut,s2Step169HeadFOut,s2Step169HeadGvOut,s2Step169HeadFvOut] 2 s2Step169HeadBank_outgoingOwned

private theorem s2Step169HeadGv_distinct : (s2Step169HeadGvRow.sign::s2Step169HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step169HeadGv_owned : (s2Step169HeadGvRow.sign::s2Step169HeadGvRow.payload).toFinset⊆s2Step169HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step169HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step169HeadGv_reserved : s2Step169HeadGvBefore.reserve s2Step169HeadGvFresh.toFinset=some s2Step169HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step169HeadGvFresh,arenaWires]
  · norm_num [s2Step169HeadGvBefore,s2Step169HeadFAfter,s2Step169HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step169HeadGvAfter,s2Step169HeadGvBefore,s2Step169HeadFAfter,s2Step169HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step169HeadGv_checked : planRowResizeLog s2Step169HeadGvBefore s2Step169HeadGvRow 100 s2Step169HeadGvFresh=
    some (s2Step169HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 785],771⟩,growRow 771 s2Step169HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step169HeadGvBefore s2Step169HeadGvAfter s2Step169HeadGvRow 100 s2Step169HeadGvFresh
    s2Step169HeadGv_distinct s2Step169HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step169HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step169HeadGvRow.payload++s2Step169HeadGvFresh) s2Step169HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 785],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step169HeadBank_rows : planWindowRowsLog s2Step169HeadGBefore [(s2Step169HeadGRow,186),(s2Step169HeadFRow,186),(s2Step169HeadGvRow,100),(s2Step169HeadFvRow,100)] [s2Step169HeadGFresh,s2Step169HeadFFresh,s2Step169HeadGvFresh,s2Step169HeadFvFresh]=
    some (s2Step169HeadFvAfter,[s2Step169HeadGOut,s2Step169HeadFOut,s2Step169HeadGvOut,s2Step169HeadFvOut],(growRow 769 s2Step169HeadGFresh ++ (growRow 768 s2Step169HeadFFresh ++ (growRow 771 s2Step169HeadGvFresh ++ (growRow 770 s2Step169HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step169HeadFvAfter [] []=some (s2Step169HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step169HeadFvBefore s2Step169HeadFvAfter s2Step169HeadFvAfter
    s2Step169HeadFvRow s2Step169HeadFvOut 100 s2Step169HeadFvFresh [] [] []
    (growRow 770 s2Step169HeadFvFresh) ([]) s2Step169HeadFv_Incoming s2Step169HeadFv_checked h4 s2Step169HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step169HeadGvBefore s2Step169HeadGvAfter s2Step169HeadFvAfter
    s2Step169HeadGvRow s2Step169HeadGvOut 100 s2Step169HeadGvFresh [(s2Step169HeadFvRow,100)] [s2Step169HeadFvFresh] [s2Step169HeadFvOut]
    (growRow 771 s2Step169HeadGvFresh) ((growRow 770 s2Step169HeadFvFresh ++ [])) s2Step169HeadGv_Incoming s2Step169HeadGv_checked h3 s2Step169HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step169HeadFBefore s2Step169HeadFAfter s2Step169HeadFvAfter
    s2Step169HeadFRow s2Step169HeadFOut 186 s2Step169HeadFFresh [(s2Step169HeadGvRow,100),(s2Step169HeadFvRow,100)] [s2Step169HeadGvFresh,s2Step169HeadFvFresh] [s2Step169HeadGvOut,s2Step169HeadFvOut]
    (growRow 768 s2Step169HeadFFresh) ((growRow 771 s2Step169HeadGvFresh ++ (growRow 770 s2Step169HeadFvFresh ++ []))) s2Step169HeadF_Incoming s2Step169HeadF_checked h2 s2Step169HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step169HeadGBefore s2Step169HeadGAfter s2Step169HeadFvAfter
    s2Step169HeadGRow s2Step169HeadGOut 186 s2Step169HeadGFresh [(s2Step169HeadFRow,186),(s2Step169HeadGvRow,100),(s2Step169HeadFvRow,100)] [s2Step169HeadFFresh,s2Step169HeadGvFresh,s2Step169HeadFvFresh] [s2Step169HeadFOut,s2Step169HeadGvOut,s2Step169HeadFvOut]
    (growRow 769 s2Step169HeadGFresh) ((growRow 768 s2Step169HeadFFresh ++ (growRow 771 s2Step169HeadGvFresh ++ (growRow 770 s2Step169HeadFvFresh ++ [])))) s2Step169HeadG_Incoming s2Step169HeadG_checked h1 s2Step169HeadG_Outgoing
  exact h0

private theorem s2Step169HeadBank_checked : compileHmrBankResizeLog .headroom s2Step169HeadGBefore ⟨s2Step169HeadFRow,s2Step169HeadGRow,s2Step169HeadFvRow,s2Step169HeadGvRow⟩ ⟨186,186,100,100⟩ [s2Step169HeadGFresh,s2Step169HeadFFresh,s2Step169HeadGvFresh,s2Step169HeadFvFresh]=
    some (s2Step169HeadFvAfter,⟨s2Step169HeadFOut,s2Step169HeadGOut,s2Step169HeadFvOut,s2Step169HeadGvOut⟩,(growRow 769 s2Step169HeadGFresh ++ (growRow 768 s2Step169HeadFFresh ++ (growRow 771 s2Step169HeadGvFresh ++ (growRow 770 s2Step169HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step169HeadBank_rows]
  rfl

private theorem s2Step169Front_checked : compileHmrSourceFrontLog s2Step169EntryFBefore s2Step169FrontBank 185 99 ⟨185,185,99,99⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step169FrontLog=some s2Step169FrontPlan := by
  have pairEq : s2Step169FrontPair=⟨s2Step169HeadFRow,s2Step169HeadGRow,s2Step169HeadFvRow,s2Step169HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step169FrontHead=⟨s2Step169ExitFRow,s2Step169ExitGRow,s2Step169ExitFvRow,s2Step169ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step169Add0A=s2Step169FrontHead.f.wires := by decide +kernel
  have gEq : s2Step169Add0B=s2Step169FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step169Add1A=s2Step169FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step169Add1B=s2Step169FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step169EntryFBefore s2Step169FrontBank 185 99 ⟨185,185,99,99⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step169FrontLog s2Step169FrontPlan
  · exact s2Step169Front_entry
  · exact s2Step169EntryBank_checked
  · exact s2Step169Front_sigma
  · rfl
  · exact s2Step169Front_branch
  · rfl
  · simpa only [s2Step169FrontPlan,pairEq] using s2Step169HeadBank_checked
  · simpa only [s2Step169FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step169F4_checked
  · exact s2Step169Counter_checked
  · rfl
  · simpa only [s2Step169FrontPlan,headEq] using s2Step169ExitBank_checked

private theorem s2Step169Complete_explicit_checked : compileHmrEarlyStepLog s2Step169EntryFBefore s2Step169FrontBank 185 99 ⟨185,185,99,99⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step169CompleteLog=some s2Step169CompletePlan := by
  let Q := s2Step169EarlyControlPlan
  have hq := s2Step169EarlyControl_plan_checked
  have fv1 : s2Step169CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step169CompleteOut.fv.payload[2]?.getD s2Step169CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step169CompleteOut.fv.payload[3]?.getD s2Step169CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step169CompleteOut.fv.payload[4]?.getD s2Step169CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step169EntryFBefore s2Step169EarlyControlArena s2Step169FrontBank 185 99 ⟨185,185,99,99⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step169CompleteLog s2Step169FrontPlan Q
    s2Step169Front_checked s2Step169Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step169Complete_owned s2Step169Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step169EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 787 s2Step169CompleteOut.fv.second (s2Step169CompleteOut.fv.payload[2]?.getD s2Step169CompleteOut.fv.sign) (s2Step169CompleteOut.fv.payload[3]?.getD s2Step169CompleteOut.fv.sign) (s2Step169CompleteOut.fv.payload[4]?.getD s2Step169CompleteOut.fv.sign) 820 42 s2Step169EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep169Arena : Arena := s2Step169EntryFBefore
def s2PrivateStep169Bank : WindowBank := s2Step169FrontBank
def s2PrivateStep169Spec : HmrSourceWalkStepLog := ⟨185,99,⟨185,185,99,99⟩,42,.early s2Step169CompleteLog⟩
def s2PrivateStep169Plan : HmrSourceStepPlan := .early s2Step169CompletePlan
theorem s2PrivateStep169_source : s2PrivateStep169Spec=s2ObservedLogs160[9] := rfl
theorem s2PrivateStep169_checked : compileHmrSourceStepLog s2PrivateStep169Arena s2PrivateStep169Bank
    s2PrivateStep169Spec.fgWidth s2PrivateStep169Spec.vWidth s2PrivateStep169Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 169 s2PrivateStep169Spec.need none s2PrivateStep169Spec.log=some s2PrivateStep169Plan := by
  change compileHmrSourceStepLog s2Step169EntryFBefore s2Step169FrontBank 185 99 ⟨185,185,99,99⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 169 42 none (.early s2Step169CompleteLog)=some (.early s2Step169CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 169<498)]
  rw [s2Step169Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
