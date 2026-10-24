import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep178
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

private def s2Step180CompleteMoves : List (Wire × Wire) := []

private def s2Step180EarlyControlLog : HmrEarlyControlLog := ⟨[830, 794, 824, 785, 807],[806],[803],[799, 867, 877, 879, 882, 885],[888]⟩

private def s2Step180FrontLog : HmrFrontAllocationLog := ⟨⟨[[824], [], [], []],[[806], [785], [830], [794]],[[], [], [], []]⟩,[846],[832],[803],[799],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[803, 799, 867, 877]⟩

private def s2Step180CompleteLog : HmrEarlyStepLog := ⟨s2Step180FrontLog,s2Step180CompleteMoves,s2Step180EarlyControlLog⟩

private def s2Step180ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690],768⟩

private def s2Step180ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819],770⟩

private def s2Step180ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178],769⟩

private def s2Step180ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩

private def s2Step180FrontOut : WindowBank := ⟨s2Step180ExitFOut,s2Step180ExitGOut,s2Step180ExitFvOut,s2Step180ExitGvOut⟩

private def s2Step180CompleteOut : WindowBank := s2Step180FrontOut.repacked s2Step180CompleteMoves

private def s2Step180EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step180EarlyControlPositiveArena,[806],s2Step180EarlyControlEqualityArena,[803],⟨⟨846,false⟩,[⟨⟨806,false⟩,803⟩]⟩⟩

private def s2Step180EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,830⟩,⟨⟨774,false⟩,794⟩,⟨⟨775,false⟩,824⟩,⟨⟨776,false⟩,785⟩,⟨⟨777,false⟩,807⟩]⟩

private def s2Step180EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step180EarlyControlZeroArena,s2Step180EarlyControlZeroPlan,s2Step180EarlyControlClassPlan,s2Step180EarlyControlFlagArena,s2Step180EarlyControlFittedArena,s2Step180EarlyControlHistoryArena,s2Step180EarlyControlSigmaArena,s2Step180EarlyControlOutputArena,s2Step180EarlyControlLog⟩

private def s2Step180CounterWork : List Wire := [803, 799, 867, 877]

private theorem s2Step180Counter_bounded : s2Step180CounterWork.toFinset⊆arenaWires := by norm_num [s2Step180CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step180HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180CounterDuring : Arena := ⟨s2Step180HeadFvAfter.live∪s2Step180CounterWork.toFinset,Finset.union_subset s2Step180HeadFvAfter.bounded s2Step180Counter_bounded⟩

private def s2Step180EntryFFresh : List Wire := [824]

private def s2Step180EntryFvFresh : List Wire := []

private def s2Step180EntryGFresh : List Wire := []

private def s2Step180EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180EntryGvAfter : Arena := s2Step180EntryFAfter

private def s2Step180EntryGvFresh : List Wire := []

private def s2Step180ExitFExtra : List Wire := [824, 785]

private def s2Step180ExitFvExtra : List Wire := [794]

private def s2Step180ExitGExtra : List Wire := [807, 806]

private def s2Step180ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180ExitGvExtra : List Wire := [830]

private def s2Step180Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180Add0Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step180Add0_bounded : s2Step180Add0Work.toFinset⊆arenaWires := by
  have h : s2Step180Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step180Add0During : Arena := ⟨s2Step180Add0Arena.live∪s2Step180Add0Work.toFinset,Finset.union_subset s2Step180Add0Arena.bounded s2Step180Add0_bounded⟩

private def s2Step180Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180Add1Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step180Add1_bounded : s2Step180Add1Work.toFinset⊆arenaWires := by
  have h : s2Step180Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step180Add1During : Arena := ⟨s2Step180Add1Arena.live∪s2Step180Add1Work.toFinset,Finset.union_subset s2Step180Add1Arena.bounded s2Step180Add1_bounded⟩

private def s2Step180F4FlagArena : Arena := ⟨s2Step180HeadFvAfter.live∪{803},Finset.union_subset s2Step180HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step180F4Plan : HmrHybridF4Plan := ⟨s2Step180F4FlagArena,[803],s2Step180Add0Arena,[799],s2Step180Add0During,s2Step180Add0Work,s2Step180Add1During,s2Step180Add1Work⟩

private def s2Step180HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 824, 785],768⟩

private def s2Step180HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 794],770⟩

private def s2Step180HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807, 806],769⟩

private def s2Step180HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 830],771⟩

private def s2Step180FrontHead : WindowBank := ⟨s2Step180HeadFOut,s2Step180HeadGOut,s2Step180HeadFvOut,s2Step180HeadGvOut⟩

private def s2Step180EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 824],768⟩

private def s2Step180EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819],770⟩

private def s2Step180EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807],769⟩

private def s2Step180EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩

private def s2Step180FrontPair : WindowBank := ⟨s2Step180EntryFOut,s2Step180EntryGOut,s2Step180EntryFvOut,s2Step180EntryGvOut⟩

private def s2Step180FrontSigmaArena : Arena := ⟨s2Step180EntryGvAfter.live∪{846},Finset.union_subset s2Step180EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step180HeadFFresh : List Wire := [785]

private def s2Step180HeadFvFresh : List Wire := [794]

private def s2Step180HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180HeadGFresh : List Wire := [806]

private def s2Step180HeadGvFresh : List Wire := [830]

private def s2Step180FrontPlan : HmrSourceFront := ⟨s2Step180EntryGvAfter,s2Step180FrontPair,(growRow 768 s2Step180EntryFFresh ++ (growRow 769 s2Step180EntryGFresh ++ (growRow 770 s2Step180EntryFvFresh ++ (growRow 771 s2Step180EntryGvFresh ++ [])))),s2Step180FrontSigmaArena,[846],s2Step180HeadGBefore,[832],
  s2Step180HeadFvAfter,s2Step180FrontHead,(growRow 769 s2Step180HeadGFresh ++ (growRow 768 s2Step180HeadFFresh ++ (growRow 771 s2Step180HeadGvFresh ++ (growRow 770 s2Step180HeadFvFresh ++ [])))),s2Step180F4Plan,s2Step180CounterDuring,s2Step180CounterWork,s2Step180ExitGvAfter,s2Step180FrontOut,(shrinkRow 769 s2Step180ExitGExtra ++ (shrinkRow 768 s2Step180ExitFExtra ++ (shrinkRow 770 s2Step180ExitFvExtra ++ (shrinkRow 771 s2Step180ExitGvExtra ++ []))))⟩

private def s2Step180CompletePlan : HmrEarlyStepPlan := ⟨s2Step180FrontPlan,s2Step180EarlyControlArena,s2Step180EarlyControlPlan,s2Step180CompleteMoves⟩

private theorem s2Step180Complete_apart : List.Disjoint (s2Step180CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [846, 832, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step180CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[846, 832, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step180Complete_owned : (s2Step180CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step180EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step180EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180Complete_repack : s2Step180ExitGvAfter.checkRepack s2Step180CompleteMoves=some s2Step180EarlyControlArena := by rfl

private theorem s2Step180EarlyControl_branchOwned : ([832] : List Wire).toFinset⊆s2Step180EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step180EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180EarlyControl_branch : compileHmrBranchRetirement s2Step180EarlyControlSigmaArena 832=some s2Step180EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step180EarlyControl_branchOwned
  · ext q
    simp [s2Step180EarlyControlOutputArena,s2Step180EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step180EarlyControl_classEqualityBorrow : s2Step180EarlyControlPositiveArena.checkBorrow (([846, 806] : List Wire).length-1) s2Step180EarlyControlLog.classWork=some s2Step180EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step180EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step180EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step180EarlyControlEqualityArena,s2Step180EarlyControlPositiveArena,s2Step180EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step180EarlyControl_classEqualityOwned : ([846, 806] : List Wire).toFinset⊆s2Step180EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step180EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180EarlyControl_classEquality : compileHmrEqualityLog s2Step180EarlyControlPositiveArena [846, 806] 0 s2Step180EarlyControlLog.classWork=some (s2Step180EarlyControlEqualityArena,s2Step180EarlyControlLog.classWork,s2Step180EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step180EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step180EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step180EarlyControl_classOwned : ([777, 807, 846] : List Wire).toFinset⊆s2Step180EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step180EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180EarlyControl_positiveBorrow : s2Step180EarlyControlZeroArena.checkBorrow (1) s2Step180EarlyControlLog.positiveWork=some s2Step180EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step180EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step180EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step180EarlyControlPositiveArena,s2Step180EarlyControlZeroArena,s2Step180EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step180EarlyControl_class : compileHmrSourceClassLog s2Step180EarlyControlZeroArena false 777 s2Step180EarlyControlZeroPlan.top 0 846 s2Step180EarlyControlLog.positiveWork s2Step180EarlyControlLog.classWork=some s2Step180EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step180EarlyControlClassPlan s2Step180EarlyControlZeroArena false 777 s2Step180EarlyControlZeroPlan.top 0 846
  constructor
  · decide +kernel
  · exact s2Step180EarlyControl_classOwned
  · exact s2Step180EarlyControl_positiveBorrow
  · exact s2Step180EarlyControl_classEquality

private theorem s2Step180EarlyControl_entryRecordOwned : ([832, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step180EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step180EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180EarlyControl_entrySigmaOwned : ([846, 254] : List Wire).toFinset⊆s2Step180EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step180EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180EarlyControl_fitBorrow : s2Step180EarlyControlFlagArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step180EarlyControlLog.recordFresh=some s2Step180EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step180EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step180EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step180EarlyControlFittedArena,s2Step180EarlyControlFlagArena,s2Step180EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step180EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step180EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step180EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180EarlyControl_fit : compileHmrRecordGrowLog s2Step180EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 43 s2Step180EarlyControlLog.recordFresh=some s2Step180EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step180EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step180EarlyControl_fitBorrow

private theorem s2Step180EarlyControl_flagsBorrow : s2Step180EarlyControlEqualityArena.checkBorrow (6) s2Step180EarlyControlLog.flagWork=some s2Step180EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step180EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step180EarlyControlEqualityArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step180EarlyControlFlagArena,s2Step180EarlyControlEqualityArena,s2Step180EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step180EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s2Step180EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step180EarlyControlEqualityArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180EarlyControl_flags : compileHmrFlagsLog s2Step180EarlyControlClassPlan.equalityArena s2Step180EarlyControlClassPlan.equality.top 253 252 251 s2Step180EarlyControlLog.flagWork=some s2Step180EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step180EarlyControl_flagsOwned⟩
  · exact s2Step180EarlyControl_flagsBorrow

private theorem s2Step180EarlyControl_historyBorrow : s2Step180EarlyControlArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step180EarlyControlLog.recordFresh=some s2Step180EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step180EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step180EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step180EarlyControlHistoryArena,s2Step180EarlyControlArena,s2Step180EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step180EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step180EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step180EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180EarlyControl_history : compileHmrRecordGrowLog s2Step180EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 43 s2Step180EarlyControlLog.recordFresh=some s2Step180EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step180EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step180EarlyControl_historyBorrow

private theorem s2Step180EarlyControl_sigmaOwned : ([254, 846] : List Wire).toFinset⊆s2Step180EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step180EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180EarlyControl_sigmaReleaseOwned : ([846] : List Wire).toFinset⊆s2Step180EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step180EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180EarlyControl_sigmaRelease : s2Step180EarlyControlHistoryArena.release {846} (fun _ => false)=some s2Step180EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step180EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step180EarlyControlSigmaArena,s2Step180EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step180EarlyControl_sigma : compileHmrSigmaDropLog s2Step180EarlyControlHistoryArena false 0 0 254 846 []=some s2Step180EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step180EarlyControl_sigmaOwned⟩
  · exact s2Step180EarlyControl_sigmaRelease

private theorem s2Step180EarlyControl_zeroBorrow : s2Step180EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step180EarlyControlLog.zeroWork=some s2Step180EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step180EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step180EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step180EarlyControlZeroArena,s2Step180EarlyControlArena,s2Step180EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step180EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step180EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step180EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180EarlyControl_zero : compileHmrEqualityLog s2Step180EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step180EarlyControlLog.zeroWork=some (s2Step180EarlyControlZeroArena,s2Step180EarlyControlLog.zeroWork,s2Step180EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step180EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step180EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step180EarlyControl_logged : s2Step180EarlyControlPlan.Logged s2Step180EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 832 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step180EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step180EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step180EarlyControl_zero
  · exact s2Step180EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step180EarlyControl_flags
  · exact s2Step180EarlyControl_fit
  · exact s2Step180EarlyControl_history
  · exact s2Step180EarlyControl_sigma
  · exact s2Step180EarlyControl_branch

private theorem s2Step180EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step180EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 832 43 s2Step180EarlyControlLog=some s2Step180EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step180EarlyControlPlan s2Step180EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 832 43 s2Step180EarlyControl_logged

private def s2Step180EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690],768⟩

private def s2Step180EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819],770⟩

private def s2Step180EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807],769⟩

private def s2Step180EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩

private def s2Step180FrontBank : WindowBank := ⟨s2Step180EntryFRow,s2Step180EntryGRow,s2Step180EntryFvRow,s2Step180EntryGvRow⟩

private def s2Step180Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 824, 785, 768]

private def s2Step180Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807, 806, 769]

private def s2Step180Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 794, 770]

private def s2Step180Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 830, 771]

private theorem s2Step180Counter_apart : Disjoint s2Step180HeadFvAfter.live s2Step180CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step180HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180Counter_borrowed : s2Step180HeadFvAfter.checkBorrow 4 s2Step180CounterWork=some s2Step180CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step180HeadFvAfter s2Step180CounterDuring s2Step180CounterWork.toFinset s2Step180Counter_bounded s2Step180Counter_apart rfl

private theorem s2Step180Counter_owned : (846::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step180HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step180HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180Counter_checked : compileHmrCounterStepLog s2Step180HeadFvAfter true 846 [772, 773, 774, 775, 776, 777] s2Step180CounterWork=some s2Step180CounterDuring := by
  have owned : ∀q∈846::[772, 773, 774, 775, 776, 777],q∈s2Step180HeadFvAfter.live := fun q hq => s2Step180Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step180Counter_borrowed

private theorem s2Step180EntryBank_incomingDistinct : ([s2Step180EntryFRow,s2Step180EntryGRow,s2Step180EntryFvRow,s2Step180EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180EntryF_Incoming : rowsOwned s2Step180EntryFBefore [s2Step180EntryFRow,s2Step180EntryGRow,s2Step180EntryFvRow,s2Step180EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step180EntryFRow,s2Step180EntryGRow,s2Step180EntryFvRow,s2Step180EntryGvRow] 0 s2Step180EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step180EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step180EntryBank_outgoingOwned : rowsOwned s2Step180EntryGvAfter [s2Step180EntryFOut,s2Step180EntryGOut,s2Step180EntryFvOut,s2Step180EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step180EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step180EntryF_Outgoing : rowsOwned s2Step180EntryGvAfter [s2Step180EntryFOut,s2Step180EntryGOut,s2Step180EntryFvOut,s2Step180EntryGvOut] :=
  hmrRows_owned_drop s2Step180EntryGvAfter [s2Step180EntryFOut,s2Step180EntryGOut,s2Step180EntryFvOut,s2Step180EntryGvOut] 0 s2Step180EntryBank_outgoingOwned

private theorem s2Step180EntryF_distinct : (s2Step180EntryFRow.sign::s2Step180EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180EntryF_owned : (s2Step180EntryFRow.sign::s2Step180EntryFRow.payload).toFinset⊆s2Step180EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step180EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180EntryF_reserved : s2Step180EntryFBefore.reserve s2Step180EntryFFresh.toFinset=some s2Step180EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step180EntryFFresh,arenaWires]
  · norm_num [s2Step180EntryFBefore,s2Step180EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step180EntryFAfter,s2Step180EntryFBefore,s2Step180EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step180EntryF_checked : planRowResizeLog s2Step180EntryFBefore s2Step180EntryFRow 180 s2Step180EntryFFresh=
    some (s2Step180EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 824],768⟩,growRow 768 s2Step180EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step180EntryFBefore s2Step180EntryFAfter s2Step180EntryFRow 180 s2Step180EntryFFresh
    s2Step180EntryF_distinct s2Step180EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step180EntryF_reserved
  have rowEq : WindowRow.mk (s2Step180EntryFRow.payload++s2Step180EntryFFresh) s2Step180EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 824],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step180EntryFvAfter : Arena := s2Step180EntryFAfter

private def s2Step180EntryFvBefore : Arena := s2Step180EntryFAfter

private theorem s2Step180EntryFv_Incoming : rowsOwned s2Step180EntryFvBefore [s2Step180EntryFvRow,s2Step180EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step180EntryFRow,s2Step180EntryGRow,s2Step180EntryFvRow,s2Step180EntryGvRow] 2 s2Step180EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step180EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step180EntryFv_Outgoing : rowsOwned s2Step180EntryGvAfter [s2Step180EntryFvOut,s2Step180EntryGvOut] :=
  hmrRows_owned_drop s2Step180EntryGvAfter [s2Step180EntryFOut,s2Step180EntryGOut,s2Step180EntryFvOut,s2Step180EntryGvOut] 2 s2Step180EntryBank_outgoingOwned

private theorem s2Step180EntryFv_distinct : (s2Step180EntryFvRow.sign::s2Step180EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180EntryFv_owned : (s2Step180EntryFvRow.sign::s2Step180EntryFvRow.payload).toFinset⊆s2Step180EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step180EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180EntryFv_reserved : s2Step180EntryFvBefore.reserve s2Step180EntryFvFresh.toFinset=some s2Step180EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step180EntryFvFresh,arenaWires]
  · norm_num [s2Step180EntryFvBefore,s2Step180EntryFAfter,s2Step180EntryFvFresh,arenaWires]
  · simp only [s2Step180EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step180EntryFv_checked : planRowResizeLog s2Step180EntryFvBefore s2Step180EntryFvRow 104 s2Step180EntryFvFresh=
    some (s2Step180EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819],770⟩,growRow 770 s2Step180EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step180EntryFvBefore s2Step180EntryFvAfter s2Step180EntryFvRow 104 s2Step180EntryFvFresh
    s2Step180EntryFv_distinct s2Step180EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step180EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step180EntryFvRow.payload++s2Step180EntryFvFresh) s2Step180EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step180EntryGAfter : Arena := s2Step180EntryFAfter

private def s2Step180EntryGBefore : Arena := s2Step180EntryFAfter

private theorem s2Step180EntryG_Incoming : rowsOwned s2Step180EntryGBefore [s2Step180EntryGRow,s2Step180EntryFvRow,s2Step180EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step180EntryFRow,s2Step180EntryGRow,s2Step180EntryFvRow,s2Step180EntryGvRow] 1 s2Step180EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step180EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step180EntryG_Outgoing : rowsOwned s2Step180EntryGvAfter [s2Step180EntryGOut,s2Step180EntryFvOut,s2Step180EntryGvOut] :=
  hmrRows_owned_drop s2Step180EntryGvAfter [s2Step180EntryFOut,s2Step180EntryGOut,s2Step180EntryFvOut,s2Step180EntryGvOut] 1 s2Step180EntryBank_outgoingOwned

private theorem s2Step180EntryG_distinct : (s2Step180EntryGRow.sign::s2Step180EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180EntryG_owned : (s2Step180EntryGRow.sign::s2Step180EntryGRow.payload).toFinset⊆s2Step180EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step180EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180EntryG_reserved : s2Step180EntryGBefore.reserve s2Step180EntryGFresh.toFinset=some s2Step180EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step180EntryGFresh,arenaWires]
  · norm_num [s2Step180EntryGBefore,s2Step180EntryFAfter,s2Step180EntryGFresh,arenaWires]
  · simp only [s2Step180EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step180EntryG_checked : planRowResizeLog s2Step180EntryGBefore s2Step180EntryGRow 180 s2Step180EntryGFresh=
    some (s2Step180EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807],769⟩,growRow 769 s2Step180EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step180EntryGBefore s2Step180EntryGAfter s2Step180EntryGRow 180 s2Step180EntryGFresh
    s2Step180EntryG_distinct s2Step180EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step180EntryG_reserved
  have rowEq : WindowRow.mk (s2Step180EntryGRow.payload++s2Step180EntryGFresh) s2Step180EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step180EntryGvBefore : Arena := s2Step180EntryFAfter

private theorem s2Step180EntryGv_Incoming : rowsOwned s2Step180EntryGvBefore [s2Step180EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step180EntryFRow,s2Step180EntryGRow,s2Step180EntryFvRow,s2Step180EntryGvRow] 3 s2Step180EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step180EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step180EntryGv_Outgoing : rowsOwned s2Step180EntryGvAfter [s2Step180EntryGvOut] :=
  hmrRows_owned_drop s2Step180EntryGvAfter [s2Step180EntryFOut,s2Step180EntryGOut,s2Step180EntryFvOut,s2Step180EntryGvOut] 3 s2Step180EntryBank_outgoingOwned

private theorem s2Step180EntryGv_distinct : (s2Step180EntryGvRow.sign::s2Step180EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180EntryGv_owned : (s2Step180EntryGvRow.sign::s2Step180EntryGvRow.payload).toFinset⊆s2Step180EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step180EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180EntryGv_reserved : s2Step180EntryGvBefore.reserve s2Step180EntryGvFresh.toFinset=some s2Step180EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step180EntryGvFresh,arenaWires]
  · norm_num [s2Step180EntryGvBefore,s2Step180EntryFAfter,s2Step180EntryGvFresh,arenaWires]
  · simp only [s2Step180EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step180EntryGv_checked : planRowResizeLog s2Step180EntryGvBefore s2Step180EntryGvRow 104 s2Step180EntryGvFresh=
    some (s2Step180EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩,growRow 771 s2Step180EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step180EntryGvBefore s2Step180EntryGvAfter s2Step180EntryGvRow 104 s2Step180EntryGvFresh
    s2Step180EntryGv_distinct s2Step180EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step180EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step180EntryGvRow.payload++s2Step180EntryGvFresh) s2Step180EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step180EntryBank_rows : planWindowRowsLog s2Step180EntryFBefore [(s2Step180EntryFRow,180),(s2Step180EntryGRow,180),(s2Step180EntryFvRow,104),(s2Step180EntryGvRow,104)] [s2Step180EntryFFresh,s2Step180EntryGFresh,s2Step180EntryFvFresh,s2Step180EntryGvFresh]=
    some (s2Step180EntryGvAfter,[s2Step180EntryFOut,s2Step180EntryGOut,s2Step180EntryFvOut,s2Step180EntryGvOut],(growRow 768 s2Step180EntryFFresh ++ (growRow 769 s2Step180EntryGFresh ++ (growRow 770 s2Step180EntryFvFresh ++ (growRow 771 s2Step180EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step180EntryGvAfter [] []=some (s2Step180EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step180EntryGvBefore s2Step180EntryGvAfter s2Step180EntryGvAfter
    s2Step180EntryGvRow s2Step180EntryGvOut 104 s2Step180EntryGvFresh [] [] []
    (growRow 771 s2Step180EntryGvFresh) ([]) s2Step180EntryGv_Incoming s2Step180EntryGv_checked h4 s2Step180EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step180EntryFvBefore s2Step180EntryFvAfter s2Step180EntryGvAfter
    s2Step180EntryFvRow s2Step180EntryFvOut 104 s2Step180EntryFvFresh [(s2Step180EntryGvRow,104)] [s2Step180EntryGvFresh] [s2Step180EntryGvOut]
    (growRow 770 s2Step180EntryFvFresh) ((growRow 771 s2Step180EntryGvFresh ++ [])) s2Step180EntryFv_Incoming s2Step180EntryFv_checked h3 s2Step180EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step180EntryGBefore s2Step180EntryGAfter s2Step180EntryGvAfter
    s2Step180EntryGRow s2Step180EntryGOut 180 s2Step180EntryGFresh [(s2Step180EntryFvRow,104),(s2Step180EntryGvRow,104)] [s2Step180EntryFvFresh,s2Step180EntryGvFresh] [s2Step180EntryFvOut,s2Step180EntryGvOut]
    (growRow 769 s2Step180EntryGFresh) ((growRow 770 s2Step180EntryFvFresh ++ (growRow 771 s2Step180EntryGvFresh ++ []))) s2Step180EntryG_Incoming s2Step180EntryG_checked h2 s2Step180EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step180EntryFBefore s2Step180EntryFAfter s2Step180EntryGvAfter
    s2Step180EntryFRow s2Step180EntryFOut 180 s2Step180EntryFFresh [(s2Step180EntryGRow,180),(s2Step180EntryFvRow,104),(s2Step180EntryGvRow,104)] [s2Step180EntryGFresh,s2Step180EntryFvFresh,s2Step180EntryGvFresh] [s2Step180EntryGOut,s2Step180EntryFvOut,s2Step180EntryGvOut]
    (growRow 768 s2Step180EntryFFresh) ((growRow 769 s2Step180EntryGFresh ++ (growRow 770 s2Step180EntryFvFresh ++ (growRow 771 s2Step180EntryGvFresh ++ [])))) s2Step180EntryF_Incoming s2Step180EntryF_checked h1 s2Step180EntryF_Outgoing
  exact h0

private theorem s2Step180EntryBank_checked : compileHmrBankResizeLog .entry s2Step180EntryFBefore ⟨s2Step180EntryFRow,s2Step180EntryGRow,s2Step180EntryFvRow,s2Step180EntryGvRow⟩ ⟨180,180,104,104⟩ [s2Step180EntryFFresh,s2Step180EntryGFresh,s2Step180EntryFvFresh,s2Step180EntryGvFresh]=
    some (s2Step180EntryGvAfter,⟨s2Step180EntryFOut,s2Step180EntryGOut,s2Step180EntryFvOut,s2Step180EntryGvOut⟩,(growRow 768 s2Step180EntryFFresh ++ (growRow 769 s2Step180EntryGFresh ++ (growRow 770 s2Step180EntryFvFresh ++ (growRow 771 s2Step180EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step180EntryBank_rows]
  rfl

private def s2Step180ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180ExitFBefore : Arena := s2Step180ExitGAfter

private def s2Step180ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 824, 785],768⟩

private def s2Step180ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 794],770⟩

private def s2Step180ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807, 806],769⟩

private def s2Step180ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 830],771⟩

private theorem s2Step180ExitBank_incomingDistinct : ([s2Step180ExitGRow,s2Step180ExitFRow,s2Step180ExitFvRow,s2Step180ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180ExitF_Incoming : rowsOwned s2Step180ExitFBefore [s2Step180ExitFRow,s2Step180ExitFvRow,s2Step180ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step180ExitGRow,s2Step180ExitFRow,s2Step180ExitFvRow,s2Step180ExitGvRow] 1 s2Step180ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step180ExitFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step180ExitBank_outgoingOwned : rowsOwned s2Step180ExitGvAfter [s2Step180ExitGOut,s2Step180ExitFOut,s2Step180ExitFvOut,s2Step180ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step180ExitGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step180ExitF_Outgoing : rowsOwned s2Step180ExitGvAfter [s2Step180ExitFOut,s2Step180ExitFvOut,s2Step180ExitGvOut] :=
  hmrRows_owned_drop s2Step180ExitGvAfter [s2Step180ExitGOut,s2Step180ExitFOut,s2Step180ExitFvOut,s2Step180ExitGvOut] 1 s2Step180ExitBank_outgoingOwned

private theorem s2Step180ExitF_distinct : (s2Step180ExitFRow.sign::s2Step180ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180ExitF_owned : (s2Step180ExitFRow.sign::s2Step180ExitFRow.payload).toFinset⊆s2Step180ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step180ExitFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180ExitF_retired : s2Step180ExitFBefore.retireSet s2Step180ExitFExtra.toFinset=s2Step180ExitFAfter := by
  unfold Arena.retireSet s2Step180ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step180ExitFBefore,s2Step180ExitGAfter,s2Step180ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step180ExitF_checked : planRowResizeLog s2Step180ExitFBefore s2Step180ExitFRow 179 []=
    some (s2Step180ExitFAfter,s2Step180ExitFOut,shrinkRow 768 s2Step180ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step180ExitFBefore s2Step180ExitFRow 179 s2Step180ExitF_distinct s2Step180ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step180ExitFRow.payload.take 179) s2Step180ExitFRow.sign=s2Step180ExitFOut := by decide +kernel
  have hi : s2Step180ExitFRow.payload.drop 179=s2Step180ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step180ExitF_retired] at result
  exact result

private def s2Step180ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180ExitFvBefore : Arena := s2Step180ExitFAfter

private theorem s2Step180ExitFv_Incoming : rowsOwned s2Step180ExitFvBefore [s2Step180ExitFvRow,s2Step180ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step180ExitGRow,s2Step180ExitFRow,s2Step180ExitFvRow,s2Step180ExitGvRow] 2 s2Step180ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step180ExitFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step180ExitFv_Outgoing : rowsOwned s2Step180ExitGvAfter [s2Step180ExitFvOut,s2Step180ExitGvOut] :=
  hmrRows_owned_drop s2Step180ExitGvAfter [s2Step180ExitGOut,s2Step180ExitFOut,s2Step180ExitFvOut,s2Step180ExitGvOut] 2 s2Step180ExitBank_outgoingOwned

private theorem s2Step180ExitFv_distinct : (s2Step180ExitFvRow.sign::s2Step180ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180ExitFv_owned : (s2Step180ExitFvRow.sign::s2Step180ExitFvRow.payload).toFinset⊆s2Step180ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step180ExitFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180ExitFv_retired : s2Step180ExitFvBefore.retireSet s2Step180ExitFvExtra.toFinset=s2Step180ExitFvAfter := by
  unfold Arena.retireSet s2Step180ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step180ExitFvBefore,s2Step180ExitFAfter,s2Step180ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step180ExitFv_checked : planRowResizeLog s2Step180ExitFvBefore s2Step180ExitFvRow 104 []=
    some (s2Step180ExitFvAfter,s2Step180ExitFvOut,shrinkRow 770 s2Step180ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step180ExitFvBefore s2Step180ExitFvRow 104 s2Step180ExitFv_distinct s2Step180ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step180ExitFvRow.payload.take 104) s2Step180ExitFvRow.sign=s2Step180ExitFvOut := by decide +kernel
  have hi : s2Step180ExitFvRow.payload.drop 104=s2Step180ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step180ExitFv_retired] at result
  exact result

private def s2Step180ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step180ExitG_Incoming : rowsOwned s2Step180ExitGBefore [s2Step180ExitGRow,s2Step180ExitFRow,s2Step180ExitFvRow,s2Step180ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step180ExitGRow,s2Step180ExitFRow,s2Step180ExitFvRow,s2Step180ExitGvRow] 0 s2Step180ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step180ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step180ExitG_Outgoing : rowsOwned s2Step180ExitGvAfter [s2Step180ExitGOut,s2Step180ExitFOut,s2Step180ExitFvOut,s2Step180ExitGvOut] :=
  hmrRows_owned_drop s2Step180ExitGvAfter [s2Step180ExitGOut,s2Step180ExitFOut,s2Step180ExitFvOut,s2Step180ExitGvOut] 0 s2Step180ExitBank_outgoingOwned

private theorem s2Step180ExitG_distinct : (s2Step180ExitGRow.sign::s2Step180ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180ExitG_owned : (s2Step180ExitGRow.sign::s2Step180ExitGRow.payload).toFinset⊆s2Step180ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step180ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180ExitG_retired : s2Step180ExitGBefore.retireSet s2Step180ExitGExtra.toFinset=s2Step180ExitGAfter := by
  unfold Arena.retireSet s2Step180ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step180ExitGBefore,s2Step180ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step180ExitG_checked : planRowResizeLog s2Step180ExitGBefore s2Step180ExitGRow 179 []=
    some (s2Step180ExitGAfter,s2Step180ExitGOut,shrinkRow 769 s2Step180ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step180ExitGBefore s2Step180ExitGRow 179 s2Step180ExitG_distinct s2Step180ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step180ExitGRow.payload.take 179) s2Step180ExitGRow.sign=s2Step180ExitGOut := by decide +kernel
  have hi : s2Step180ExitGRow.payload.drop 179=s2Step180ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step180ExitG_retired] at result
  exact result

private def s2Step180ExitGvBefore : Arena := s2Step180ExitFvAfter

private theorem s2Step180ExitGv_Incoming : rowsOwned s2Step180ExitGvBefore [s2Step180ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step180ExitGRow,s2Step180ExitFRow,s2Step180ExitFvRow,s2Step180ExitGvRow] 3 s2Step180ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step180ExitGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step180ExitGv_Outgoing : rowsOwned s2Step180ExitGvAfter [s2Step180ExitGvOut] :=
  hmrRows_owned_drop s2Step180ExitGvAfter [s2Step180ExitGOut,s2Step180ExitFOut,s2Step180ExitFvOut,s2Step180ExitGvOut] 3 s2Step180ExitBank_outgoingOwned

private theorem s2Step180ExitGv_distinct : (s2Step180ExitGvRow.sign::s2Step180ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180ExitGv_owned : (s2Step180ExitGvRow.sign::s2Step180ExitGvRow.payload).toFinset⊆s2Step180ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step180ExitGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180ExitGv_retired : s2Step180ExitGvBefore.retireSet s2Step180ExitGvExtra.toFinset=s2Step180ExitGvAfter := by
  unfold Arena.retireSet s2Step180ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step180ExitGvBefore,s2Step180ExitFvAfter,s2Step180ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step180ExitGv_checked : planRowResizeLog s2Step180ExitGvBefore s2Step180ExitGvRow 104 []=
    some (s2Step180ExitGvAfter,s2Step180ExitGvOut,shrinkRow 771 s2Step180ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step180ExitGvBefore s2Step180ExitGvRow 104 s2Step180ExitGv_distinct s2Step180ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step180ExitGvRow.payload.take 104) s2Step180ExitGvRow.sign=s2Step180ExitGvOut := by decide +kernel
  have hi : s2Step180ExitGvRow.payload.drop 104=s2Step180ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step180ExitGv_retired] at result
  exact result

private theorem s2Step180ExitBank_rows : planWindowRowsLog s2Step180ExitGBefore [(s2Step180ExitGRow,179),(s2Step180ExitFRow,179),(s2Step180ExitFvRow,104),(s2Step180ExitGvRow,104)] [[],[],[],[]]=
    some (s2Step180ExitGvAfter,[s2Step180ExitGOut,s2Step180ExitFOut,s2Step180ExitFvOut,s2Step180ExitGvOut],(shrinkRow 769 s2Step180ExitGExtra ++ (shrinkRow 768 s2Step180ExitFExtra ++ (shrinkRow 770 s2Step180ExitFvExtra ++ (shrinkRow 771 s2Step180ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step180ExitGvAfter [] []=some (s2Step180ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step180ExitGvBefore s2Step180ExitGvAfter s2Step180ExitGvAfter
    s2Step180ExitGvRow s2Step180ExitGvOut 104 [] [] [] []
    (shrinkRow 771 s2Step180ExitGvExtra) ([]) s2Step180ExitGv_Incoming s2Step180ExitGv_checked h4 s2Step180ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step180ExitFvBefore s2Step180ExitFvAfter s2Step180ExitGvAfter
    s2Step180ExitFvRow s2Step180ExitFvOut 104 [] [(s2Step180ExitGvRow,104)] [[]] [s2Step180ExitGvOut]
    (shrinkRow 770 s2Step180ExitFvExtra) ((shrinkRow 771 s2Step180ExitGvExtra ++ [])) s2Step180ExitFv_Incoming s2Step180ExitFv_checked h3 s2Step180ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step180ExitFBefore s2Step180ExitFAfter s2Step180ExitGvAfter
    s2Step180ExitFRow s2Step180ExitFOut 179 [] [(s2Step180ExitFvRow,104),(s2Step180ExitGvRow,104)] [[],[]] [s2Step180ExitFvOut,s2Step180ExitGvOut]
    (shrinkRow 768 s2Step180ExitFExtra) ((shrinkRow 770 s2Step180ExitFvExtra ++ (shrinkRow 771 s2Step180ExitGvExtra ++ []))) s2Step180ExitF_Incoming s2Step180ExitF_checked h2 s2Step180ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step180ExitGBefore s2Step180ExitGAfter s2Step180ExitGvAfter
    s2Step180ExitGRow s2Step180ExitGOut 179 [] [(s2Step180ExitFRow,179),(s2Step180ExitFvRow,104),(s2Step180ExitGvRow,104)] [[],[],[]] [s2Step180ExitFOut,s2Step180ExitFvOut,s2Step180ExitGvOut]
    (shrinkRow 769 s2Step180ExitGExtra) ((shrinkRow 768 s2Step180ExitFExtra ++ (shrinkRow 770 s2Step180ExitFvExtra ++ (shrinkRow 771 s2Step180ExitGvExtra ++ [])))) s2Step180ExitG_Incoming s2Step180ExitG_checked h1 s2Step180ExitG_Outgoing
  exact h0

private theorem s2Step180ExitBank_checked : compileHmrBankResizeLog .exit s2Step180ExitGBefore ⟨s2Step180ExitFRow,s2Step180ExitGRow,s2Step180ExitFvRow,s2Step180ExitGvRow⟩ ⟨179,179,104,104⟩ [[],[],[],[]]=
    some (s2Step180ExitGvAfter,⟨s2Step180ExitFOut,s2Step180ExitGOut,s2Step180ExitFvOut,s2Step180ExitGvOut⟩,(shrinkRow 769 s2Step180ExitGExtra ++ (shrinkRow 768 s2Step180ExitFExtra ++ (shrinkRow 770 s2Step180ExitFvExtra ++ (shrinkRow 771 s2Step180ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step180ExitBank_rows]
  rfl

private theorem s2Step180Add0_apart : Disjoint s2Step180Add0Arena.live s2Step180Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step180Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180Add0_card : s2Step180Add0Arena.live.card=884 := by
  decide +kernel

private theorem s2Step180Add0_borrowed : s2Step180Add0Arena.checkBorrow (hmrHybridCount s2Step180Add0Arena s2Step180Add0B.length) s2Step180Add0Work=some s2Step180Add0During := by
  have len : s2Step180Add0Work.length=hmrHybridCount s2Step180Add0Arena s2Step180Add0B.length := by
    rw [hmrHybridCount,s2Step180Add0_card]
    decide +kernel
  have nd : s2Step180Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step180Add0Arena s2Step180Add0During s2Step180Add0Work.toFinset s2Step180Add0_bounded s2Step180Add0_apart rfl

private theorem s2Step180Add0_distinct : (803::832::799::(s2Step180Add0A++s2Step180Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180Add0_owned : (803::832::799::(s2Step180Add0A++s2Step180Add0B)).toFinset⊆s2Step180Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step180Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180Add0_checked : compileHmrHybridCinLog s2Step180Add0Arena 832 803 799 s2Step180Add0A s2Step180Add0B s2Step180Add0Work=some s2Step180Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step180Add0Arena s2Step180Add0During 832 803 799 s2Step180Add0A s2Step180Add0B s2Step180Add0Work
    (by decide +kernel) (by decide +kernel) s2Step180Add0_distinct
    (fun q hq => s2Step180Add0_owned (List.mem_toFinset.mpr hq)) s2Step180Add0_borrowed

private theorem s2Step180Add1_apart : Disjoint s2Step180Add1Arena.live s2Step180Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step180Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180Add1_card : s2Step180Add1Arena.live.card=884 := by
  decide +kernel

private theorem s2Step180Add1_borrowed : s2Step180Add1Arena.checkBorrow (hmrHybridCount s2Step180Add1Arena s2Step180Add1B.length) s2Step180Add1Work=some s2Step180Add1During := by
  have len : s2Step180Add1Work.length=hmrHybridCount s2Step180Add1Arena s2Step180Add1B.length := by
    rw [hmrHybridCount,s2Step180Add1_card]
    decide +kernel
  have nd : s2Step180Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step180Add1Arena s2Step180Add1During s2Step180Add1Work.toFinset s2Step180Add1_bounded s2Step180Add1_apart rfl

private theorem s2Step180Add1_distinct : (803::832::799::(s2Step180Add1A++s2Step180Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180Add1_owned : (803::832::799::(s2Step180Add1A++s2Step180Add1B)).toFinset⊆s2Step180Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step180Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180Add1_checked : compileHmrHybridCinLog s2Step180Add1Arena 832 803 799 s2Step180Add1A s2Step180Add1B s2Step180Add1Work=some s2Step180Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step180Add1Arena s2Step180Add1During 832 803 799 s2Step180Add1A s2Step180Add1B s2Step180Add1Work
    (by decide +kernel) (by decide +kernel) s2Step180Add1_distinct
    (fun q hq => s2Step180Add1_owned (List.mem_toFinset.mpr hq)) s2Step180Add1_borrowed

private theorem s2Step180F4_apart : Disjoint (s2Step180Add0A++s2Step180Add0B).toFinset (s2Step180Add1A++s2Step180Add1B).toFinset := by
  have nd : ((s2Step180Add0A++s2Step180Add0B)++(s2Step180Add1A++s2Step180Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step180F4_carry : s2Step180F4FlagArena.checkBorrow 1 [799]=some s2Step180Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step180F4FlagArena,s2Step180HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step180F4FlagArena,s2Step180HeadFvAfter,s2Step180Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step180F4_distinct : (846::832::803::799::((s2Step180Add0A++s2Step180Add1A)++(s2Step180Add0B++s2Step180Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180F4_flag : s2Step180HeadFvAfter.checkBorrow 1 [803]=some s2Step180F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step180HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step180F4_owned : (846::832::((s2Step180Add0A++s2Step180Add1A)++(s2Step180Add0B++s2Step180Add1B))).toFinset⊆s2Step180HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step180HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180F4_checked : compileHmrHybridF4Log s2Step180HeadFvAfter 846 832 s2Step180Add0A s2Step180Add0B s2Step180Add1A s2Step180Add1B [803] [799] s2Step180Add0Work s2Step180Add1Work=some s2Step180F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step180HeadFvAfter s2Step180F4FlagArena s2Step180Add0Arena s2Step180Add0During s2Step180Add1During 846 832
    s2Step180Add0A s2Step180Add0B s2Step180Add1A s2Step180Add1B [803] [799] s2Step180Add0Work s2Step180Add1Work
    (fun q hq => s2Step180F4_owned (List.mem_toFinset.mpr hq)) s2Step180F4_flag s2Step180F4_carry
    s2Step180F4_distinct s2Step180F4_apart s2Step180Add0_checked s2Step180Add1_checked

private theorem s2Step180Front_branch : s2Step180FrontSigmaArena.checkBorrow 1 [832]=some s2Step180HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step180FrontSigmaArena,s2Step180EntryGvAfter,s2Step180EntryFAfter,arenaWires]
  · ext q
    simp only [s2Step180FrontSigmaArena,s2Step180EntryGvAfter,s2Step180EntryFAfter,s2Step180HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step180Front_entry : HmrFrontEntryValid s2Step180EntryFBefore s2Step180FrontBank 180 104 ⟨179,179,104,104⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step180FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step180EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step180EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step180FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step180Front_sigma : s2Step180EntryGvAfter.checkBorrow 1 [846]=some s2Step180FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step180EntryGvAfter,s2Step180EntryFAfter,arenaWires]
  · rfl

private def s2Step180HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180HeadFBefore : Arena := s2Step180HeadGAfter

private def s2Step180HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 824],768⟩

private def s2Step180HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819],770⟩

private def s2Step180HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807],769⟩

private def s2Step180HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792],771⟩

private theorem s2Step180HeadBank_incomingDistinct : ([s2Step180HeadGRow,s2Step180HeadFRow,s2Step180HeadGvRow,s2Step180HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180HeadF_Incoming : rowsOwned s2Step180HeadFBefore [s2Step180HeadFRow,s2Step180HeadGvRow,s2Step180HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step180HeadGRow,s2Step180HeadFRow,s2Step180HeadGvRow,s2Step180HeadFvRow] 1 s2Step180HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step180HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step180HeadBank_outgoingOwned : rowsOwned s2Step180HeadFvAfter [s2Step180HeadGOut,s2Step180HeadFOut,s2Step180HeadGvOut,s2Step180HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step180HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step180HeadF_Outgoing : rowsOwned s2Step180HeadFvAfter [s2Step180HeadFOut,s2Step180HeadGvOut,s2Step180HeadFvOut] :=
  hmrRows_owned_drop s2Step180HeadFvAfter [s2Step180HeadGOut,s2Step180HeadFOut,s2Step180HeadGvOut,s2Step180HeadFvOut] 1 s2Step180HeadBank_outgoingOwned

private theorem s2Step180HeadF_distinct : (s2Step180HeadFRow.sign::s2Step180HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180HeadF_owned : (s2Step180HeadFRow.sign::s2Step180HeadFRow.payload).toFinset⊆s2Step180HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step180HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180HeadF_reserved : s2Step180HeadFBefore.reserve s2Step180HeadFFresh.toFinset=some s2Step180HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step180HeadFFresh,arenaWires]
  · norm_num [s2Step180HeadFBefore,s2Step180HeadGAfter,s2Step180HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step180HeadFAfter,s2Step180HeadFBefore,s2Step180HeadGAfter,s2Step180HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step180HeadF_checked : planRowResizeLog s2Step180HeadFBefore s2Step180HeadFRow 181 s2Step180HeadFFresh=
    some (s2Step180HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 824, 785],768⟩,growRow 768 s2Step180HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step180HeadFBefore s2Step180HeadFAfter s2Step180HeadFRow 181 s2Step180HeadFFresh
    s2Step180HeadF_distinct s2Step180HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step180HeadF_reserved
  have rowEq : WindowRow.mk (s2Step180HeadFRow.payload++s2Step180HeadFFresh) s2Step180HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 824, 785],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step180HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step180HeadFvBefore : Arena := s2Step180HeadGvAfter

private theorem s2Step180HeadFv_Incoming : rowsOwned s2Step180HeadFvBefore [s2Step180HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step180HeadGRow,s2Step180HeadFRow,s2Step180HeadGvRow,s2Step180HeadFvRow] 3 s2Step180HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step180HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step180HeadFv_Outgoing : rowsOwned s2Step180HeadFvAfter [s2Step180HeadFvOut] :=
  hmrRows_owned_drop s2Step180HeadFvAfter [s2Step180HeadGOut,s2Step180HeadFOut,s2Step180HeadGvOut,s2Step180HeadFvOut] 3 s2Step180HeadBank_outgoingOwned

private theorem s2Step180HeadFv_distinct : (s2Step180HeadFvRow.sign::s2Step180HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180HeadFv_owned : (s2Step180HeadFvRow.sign::s2Step180HeadFvRow.payload).toFinset⊆s2Step180HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step180HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180HeadFv_reserved : s2Step180HeadFvBefore.reserve s2Step180HeadFvFresh.toFinset=some s2Step180HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step180HeadFvFresh,arenaWires]
  · norm_num [s2Step180HeadFvBefore,s2Step180HeadGvAfter,s2Step180HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step180HeadFvAfter,s2Step180HeadFvBefore,s2Step180HeadGvAfter,s2Step180HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step180HeadFv_checked : planRowResizeLog s2Step180HeadFvBefore s2Step180HeadFvRow 105 s2Step180HeadFvFresh=
    some (s2Step180HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 794],770⟩,growRow 770 s2Step180HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step180HeadFvBefore s2Step180HeadFvAfter s2Step180HeadFvRow 105 s2Step180HeadFvFresh
    s2Step180HeadFv_distinct s2Step180HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step180HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step180HeadFvRow.payload++s2Step180HeadFvFresh) s2Step180HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 794],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step180HeadG_Incoming : rowsOwned s2Step180HeadGBefore [s2Step180HeadGRow,s2Step180HeadFRow,s2Step180HeadGvRow,s2Step180HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step180HeadGRow,s2Step180HeadFRow,s2Step180HeadGvRow,s2Step180HeadFvRow] 0 s2Step180HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step180HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step180HeadG_Outgoing : rowsOwned s2Step180HeadFvAfter [s2Step180HeadGOut,s2Step180HeadFOut,s2Step180HeadGvOut,s2Step180HeadFvOut] :=
  hmrRows_owned_drop s2Step180HeadFvAfter [s2Step180HeadGOut,s2Step180HeadFOut,s2Step180HeadGvOut,s2Step180HeadFvOut] 0 s2Step180HeadBank_outgoingOwned

private theorem s2Step180HeadG_distinct : (s2Step180HeadGRow.sign::s2Step180HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180HeadG_owned : (s2Step180HeadGRow.sign::s2Step180HeadGRow.payload).toFinset⊆s2Step180HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step180HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180HeadG_reserved : s2Step180HeadGBefore.reserve s2Step180HeadGFresh.toFinset=some s2Step180HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step180HeadGFresh,arenaWires]
  · norm_num [s2Step180HeadGBefore,s2Step180HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step180HeadGAfter,s2Step180HeadGBefore,s2Step180HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step180HeadG_checked : planRowResizeLog s2Step180HeadGBefore s2Step180HeadGRow 181 s2Step180HeadGFresh=
    some (s2Step180HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807, 806],769⟩,growRow 769 s2Step180HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step180HeadGBefore s2Step180HeadGAfter s2Step180HeadGRow 181 s2Step180HeadGFresh
    s2Step180HeadG_distinct s2Step180HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step180HeadG_reserved
  have rowEq : WindowRow.mk (s2Step180HeadGRow.payload++s2Step180HeadGFresh) s2Step180HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 807, 806],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step180HeadGvBefore : Arena := s2Step180HeadFAfter

private theorem s2Step180HeadGv_Incoming : rowsOwned s2Step180HeadGvBefore [s2Step180HeadGvRow,s2Step180HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step180HeadGRow,s2Step180HeadFRow,s2Step180HeadGvRow,s2Step180HeadFvRow] 2 s2Step180HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step180HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step180HeadGv_Outgoing : rowsOwned s2Step180HeadFvAfter [s2Step180HeadGvOut,s2Step180HeadFvOut] :=
  hmrRows_owned_drop s2Step180HeadFvAfter [s2Step180HeadGOut,s2Step180HeadFOut,s2Step180HeadGvOut,s2Step180HeadFvOut] 2 s2Step180HeadBank_outgoingOwned

private theorem s2Step180HeadGv_distinct : (s2Step180HeadGvRow.sign::s2Step180HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step180HeadGv_owned : (s2Step180HeadGvRow.sign::s2Step180HeadGvRow.payload).toFinset⊆s2Step180HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step180HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step180HeadGv_reserved : s2Step180HeadGvBefore.reserve s2Step180HeadGvFresh.toFinset=some s2Step180HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step180HeadGvFresh,arenaWires]
  · norm_num [s2Step180HeadGvBefore,s2Step180HeadFAfter,s2Step180HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step180HeadGvAfter,s2Step180HeadGvBefore,s2Step180HeadFAfter,s2Step180HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step180HeadGv_checked : planRowResizeLog s2Step180HeadGvBefore s2Step180HeadGvRow 105 s2Step180HeadGvFresh=
    some (s2Step180HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 830],771⟩,growRow 771 s2Step180HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step180HeadGvBefore s2Step180HeadGvAfter s2Step180HeadGvRow 105 s2Step180HeadGvFresh
    s2Step180HeadGv_distinct s2Step180HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step180HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step180HeadGvRow.payload++s2Step180HeadGvFresh) s2Step180HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 830],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step180HeadBank_rows : planWindowRowsLog s2Step180HeadGBefore [(s2Step180HeadGRow,181),(s2Step180HeadFRow,181),(s2Step180HeadGvRow,105),(s2Step180HeadFvRow,105)] [s2Step180HeadGFresh,s2Step180HeadFFresh,s2Step180HeadGvFresh,s2Step180HeadFvFresh]=
    some (s2Step180HeadFvAfter,[s2Step180HeadGOut,s2Step180HeadFOut,s2Step180HeadGvOut,s2Step180HeadFvOut],(growRow 769 s2Step180HeadGFresh ++ (growRow 768 s2Step180HeadFFresh ++ (growRow 771 s2Step180HeadGvFresh ++ (growRow 770 s2Step180HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step180HeadFvAfter [] []=some (s2Step180HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step180HeadFvBefore s2Step180HeadFvAfter s2Step180HeadFvAfter
    s2Step180HeadFvRow s2Step180HeadFvOut 105 s2Step180HeadFvFresh [] [] []
    (growRow 770 s2Step180HeadFvFresh) ([]) s2Step180HeadFv_Incoming s2Step180HeadFv_checked h4 s2Step180HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step180HeadGvBefore s2Step180HeadGvAfter s2Step180HeadFvAfter
    s2Step180HeadGvRow s2Step180HeadGvOut 105 s2Step180HeadGvFresh [(s2Step180HeadFvRow,105)] [s2Step180HeadFvFresh] [s2Step180HeadFvOut]
    (growRow 771 s2Step180HeadGvFresh) ((growRow 770 s2Step180HeadFvFresh ++ [])) s2Step180HeadGv_Incoming s2Step180HeadGv_checked h3 s2Step180HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step180HeadFBefore s2Step180HeadFAfter s2Step180HeadFvAfter
    s2Step180HeadFRow s2Step180HeadFOut 181 s2Step180HeadFFresh [(s2Step180HeadGvRow,105),(s2Step180HeadFvRow,105)] [s2Step180HeadGvFresh,s2Step180HeadFvFresh] [s2Step180HeadGvOut,s2Step180HeadFvOut]
    (growRow 768 s2Step180HeadFFresh) ((growRow 771 s2Step180HeadGvFresh ++ (growRow 770 s2Step180HeadFvFresh ++ []))) s2Step180HeadF_Incoming s2Step180HeadF_checked h2 s2Step180HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step180HeadGBefore s2Step180HeadGAfter s2Step180HeadFvAfter
    s2Step180HeadGRow s2Step180HeadGOut 181 s2Step180HeadGFresh [(s2Step180HeadFRow,181),(s2Step180HeadGvRow,105),(s2Step180HeadFvRow,105)] [s2Step180HeadFFresh,s2Step180HeadGvFresh,s2Step180HeadFvFresh] [s2Step180HeadFOut,s2Step180HeadGvOut,s2Step180HeadFvOut]
    (growRow 769 s2Step180HeadGFresh) ((growRow 768 s2Step180HeadFFresh ++ (growRow 771 s2Step180HeadGvFresh ++ (growRow 770 s2Step180HeadFvFresh ++ [])))) s2Step180HeadG_Incoming s2Step180HeadG_checked h1 s2Step180HeadG_Outgoing
  exact h0

private theorem s2Step180HeadBank_checked : compileHmrBankResizeLog .headroom s2Step180HeadGBefore ⟨s2Step180HeadFRow,s2Step180HeadGRow,s2Step180HeadFvRow,s2Step180HeadGvRow⟩ ⟨181,181,105,105⟩ [s2Step180HeadGFresh,s2Step180HeadFFresh,s2Step180HeadGvFresh,s2Step180HeadFvFresh]=
    some (s2Step180HeadFvAfter,⟨s2Step180HeadFOut,s2Step180HeadGOut,s2Step180HeadFvOut,s2Step180HeadGvOut⟩,(growRow 769 s2Step180HeadGFresh ++ (growRow 768 s2Step180HeadFFresh ++ (growRow 771 s2Step180HeadGvFresh ++ (growRow 770 s2Step180HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step180HeadBank_rows]
  rfl

private theorem s2Step180Front_checked : compileHmrSourceFrontLog s2Step180EntryFBefore s2Step180FrontBank 180 104 ⟨179,179,104,104⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step180FrontLog=some s2Step180FrontPlan := by
  have pairEq : s2Step180FrontPair=⟨s2Step180HeadFRow,s2Step180HeadGRow,s2Step180HeadFvRow,s2Step180HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step180FrontHead=⟨s2Step180ExitFRow,s2Step180ExitGRow,s2Step180ExitFvRow,s2Step180ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step180Add0A=s2Step180FrontHead.f.wires := by decide +kernel
  have gEq : s2Step180Add0B=s2Step180FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step180Add1A=s2Step180FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step180Add1B=s2Step180FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step180EntryFBefore s2Step180FrontBank 180 104 ⟨179,179,104,104⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step180FrontLog s2Step180FrontPlan
  · exact s2Step180Front_entry
  · exact s2Step180EntryBank_checked
  · exact s2Step180Front_sigma
  · rfl
  · exact s2Step180Front_branch
  · rfl
  · simpa only [s2Step180FrontPlan,pairEq] using s2Step180HeadBank_checked
  · simpa only [s2Step180FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step180F4_checked
  · exact s2Step180Counter_checked
  · rfl
  · simpa only [s2Step180FrontPlan,headEq] using s2Step180ExitBank_checked

private theorem s2Step180Complete_explicit_checked : compileHmrEarlyStepLog s2Step180EntryFBefore s2Step180FrontBank 180 104 ⟨179,179,104,104⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 43 s2Step180CompleteLog=some s2Step180CompletePlan := by
  let Q := s2Step180EarlyControlPlan
  have hq := s2Step180EarlyControl_plan_checked
  have fv1 : s2Step180CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step180CompleteOut.fv.payload[2]?.getD s2Step180CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step180CompleteOut.fv.payload[3]?.getD s2Step180CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step180CompleteOut.fv.payload[4]?.getD s2Step180CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step180EntryFBefore s2Step180EarlyControlArena s2Step180FrontBank 180 104 ⟨179,179,104,104⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 43 s2Step180CompleteLog s2Step180FrontPlan Q
    s2Step180Front_checked s2Step180Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step180Complete_owned s2Step180Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step180EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 s2Step180CompleteOut.fv.second (s2Step180CompleteOut.fv.payload[2]?.getD s2Step180CompleteOut.fv.sign) (s2Step180CompleteOut.fv.payload[3]?.getD s2Step180CompleteOut.fv.sign) (s2Step180CompleteOut.fv.payload[4]?.getD s2Step180CompleteOut.fv.sign) 832 43 s2Step180EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep180Arena : Arena := s2Step180EntryFBefore
def s2PrivateStep180Bank : WindowBank := s2Step180FrontBank
def s2PrivateStep180Spec : HmrSourceWalkStepLog := ⟨180,104,⟨179,179,104,104⟩,43,.early s2Step180CompleteLog⟩
def s2PrivateStep180Plan : HmrSourceStepPlan := .early s2Step180CompletePlan
theorem s2PrivateStep180_source : s2PrivateStep180Spec=s2ObservedLogs176[4] := rfl
theorem s2PrivateStep180_checked : compileHmrSourceStepLog s2PrivateStep180Arena s2PrivateStep180Bank
    s2PrivateStep180Spec.fgWidth s2PrivateStep180Spec.vWidth s2PrivateStep180Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 180 s2PrivateStep180Spec.need none s2PrivateStep180Spec.log=some s2PrivateStep180Plan := by
  change compileHmrSourceStepLog s2Step180EntryFBefore s2Step180FrontBank 180 104 ⟨179,179,104,104⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 180 43 none (.early s2Step180CompleteLog)=some (.early s2Step180CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 180<498)]
  rw [s2Step180Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
